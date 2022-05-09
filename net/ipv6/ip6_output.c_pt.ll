; ModuleID = '/llk/IR_all_yes/net/ipv6/ip6_output.c_pt.bc'
source_filename = "../net/ipv6/ip6_output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip6_output\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_output\09\09\09\09"
module asm "\09.long\09__crc_ip6_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_output:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_output\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_xmit\09\09\09\09"
module asm "\09.long\09__crc_ip6_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6_fraglist_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_fraglist_init\09\09\09\09"
module asm "\09.long\09__crc_ip6_fraglist_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_fraglist_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6_fraglist_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_fraglist_prepare\09\09\09\09"
module asm "\09.long\09__crc_ip6_fraglist_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_fraglist_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6_frag_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_frag_init\09\09\09\09"
module asm "\09.long\09__crc_ip6_frag_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_frag_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6_frag_next\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_frag_next\09\09\09\09"
module asm "\09.long\09__crc_ip6_frag_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_frag_next\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_dst_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_dst_lookup\09\09\09\09"
module asm "\09.long\09__crc_ip6_dst_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_dst_lookup_flow\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_dst_lookup_flow\09\09\09\09"
module asm "\09.long\09__crc_ip6_dst_lookup_flow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_lookup_flow\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_sk_dst_lookup_flow\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_sk_dst_lookup_flow\09\09\09\09"
module asm "\09.long\09__crc_ip6_sk_dst_lookup_flow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_sk_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_sk_dst_lookup_flow\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_sk_dst_lookup_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_dst_lookup_tunnel\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_dst_lookup_tunnel\09\09\09\09"
module asm "\09.long\09__crc_ip6_dst_lookup_tunnel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_dst_lookup_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_dst_lookup_tunnel\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_dst_lookup_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_append_data\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_append_data\09\09\09\09"
module asm "\09.long\09__crc_ip6_append_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_append_data:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_append_data\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_append_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_push_pending_frames\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_push_pending_frames\09\09\09\09"
module asm "\09.long\09__crc_ip6_push_pending_frames\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_push_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_push_pending_frames\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_push_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip6_flush_pending_frames\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6_flush_pending_frames\09\09\09\09"
module asm "\09.long\09__crc_ip6_flush_pending_frames\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_flush_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_flush_pending_frames\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_flush_pending_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.219, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.anon.219 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.162, %union.anon.163, [48 x i8], %union.anon.164, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.166, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { i64 }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type { i32, ptr }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.168, i32, i32, i32, i16, i16, %union.anon.170, i32, %union.anon.171, %union.anon.172, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.168 = type { i32 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.142 }
%union.anon.142 = type { [4 x i32] }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.193, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.193 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.181, [0 x i32], %union.anon.182, i16, i16, %union.anon.183, %struct.refcount_struct, [0 x i32], %union.anon.184 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { %struct.hlist_node }
%union.anon.183 = type { i32 }
%union.anon.184 = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.201, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.201 = type { %struct.anon.202 }
%struct.anon.202 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.213, i16 }
%union.anon.213 = type { %struct.anon.214 }
%struct.anon.214 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.215 }
%union.anon.215 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.217, i16 }
%struct.anon.217 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.218 }
%union.anon.218 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.185, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.186, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.187, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.185 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.186 = type { ptr }
%union.anon.187 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.144 }
%union.anon.144 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.161 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.inetpeer_addr = type { %union.anon.205, i16 }
%union.anon.205 = type { %struct.in6_addr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.ip6_ra_chain = type { ptr, ptr, i32, ptr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.ip6_fraglist_iter = type { ptr, ptr, i32, i32, i32, i8 }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.ip6_frag_state = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.149, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.149 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.152, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.152 = type { %struct.in6_addr }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.150 }
%union.anon.150 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.154, %struct.list_head, ptr }
%union.anon.154 = type { %struct.anon.156 }
%struct.anon.156 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.151 }
%union.anon.151 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.208, i16, i8, i8, i32, i16, i16 }
%union.anon.208 = type { %struct.anon.210 }
%struct.anon.210 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.xfrm_dst = type { %union.anon.220, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.220 = type { %struct.rt6_info }
%struct.ubuf_info = type { ptr, %union.anon.221, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.221 = type { %struct.anon.223 }
%struct.anon.223 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.page = type { i32, %union.anon.21, %union.anon.78, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.78 = type { %struct.atomic_t }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }

@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_ip6_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_output = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_output to i32), ptr @__kstrtab_ip6_output, ptr @__kstrtabns_ip6_output }, section "___ksymtab+ip6_output", align 4
@__kstrtab_ip6_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_xmit to i32), ptr @__kstrtab_ip6_xmit, ptr @__kstrtabns_ip6_xmit }, section "___ksymtab+ip6_xmit", align 4
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@__kstrtab_ip6_fraglist_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_fraglist_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_fraglist_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_fraglist_init to i32), ptr @__kstrtab_ip6_fraglist_init, ptr @__kstrtabns_ip6_fraglist_init }, section "___ksymtab+ip6_fraglist_init", align 4
@__kstrtab_ip6_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_fraglist_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_fraglist_prepare to i32), ptr @__kstrtab_ip6_fraglist_prepare, ptr @__kstrtabns_ip6_fraglist_prepare }, section "___ksymtab+ip6_fraglist_prepare", align 4
@__kstrtab_ip6_frag_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_frag_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_frag_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_frag_init to i32), ptr @__kstrtab_ip6_frag_init, ptr @__kstrtabns_ip6_frag_init }, section "___ksymtab+ip6_frag_init", align 4
@__kstrtab_ip6_frag_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_frag_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_frag_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_frag_next to i32), ptr @__kstrtab_ip6_frag_next, ptr @__kstrtabns_ip6_frag_next }, section "___ksymtab+ip6_frag_next", align 4
@__kstrtab_ip6_dst_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_lookup to i32), ptr @__kstrtab_ip6_dst_lookup, ptr @__kstrtabns_ip6_dst_lookup }, section "___ksymtab_gpl+ip6_dst_lookup", align 4
@__kstrtab_ip6_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_lookup_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_lookup_flow to i32), ptr @__kstrtab_ip6_dst_lookup_flow, ptr @__kstrtabns_ip6_dst_lookup_flow }, section "___ksymtab_gpl+ip6_dst_lookup_flow", align 4
@__kstrtab_ip6_sk_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_sk_dst_lookup_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_sk_dst_lookup_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_sk_dst_lookup_flow to i32), ptr @__kstrtab_ip6_sk_dst_lookup_flow, ptr @__kstrtabns_ip6_sk_dst_lookup_flow }, section "___ksymtab_gpl+ip6_sk_dst_lookup_flow", align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip6_dst_lookup_tunnel\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ipv6/ip6_output.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no route to %pI6\0A\00", [46 x i8] zeroinitializer }, align 32
@ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"circular route to %pI6\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_ip6_dst_lookup_tunnel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_dst_lookup_tunnel = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_dst_lookup_tunnel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_dst_lookup_tunnel to i32), ptr @__kstrtab_ip6_dst_lookup_tunnel, ptr @__kstrtabns_ip6_dst_lookup_tunnel }, section "___ksymtab_gpl+ip6_dst_lookup_tunnel", align 4
@__kstrtab_ip6_append_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_append_data = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_append_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_append_data to i32), ptr @__kstrtab_ip6_append_data, ptr @__kstrtabns_ip6_append_data }, section "___ksymtab_gpl+ip6_append_data", align 4
@__kstrtab_ip6_push_pending_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_push_pending_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_push_pending_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_push_pending_frames to i32), ptr @__kstrtab_ip6_push_pending_frames, ptr @__kstrtabns_ip6_push_pending_frames }, section "___ksymtab_gpl+ip6_push_pending_frames", align 4
@__kstrtab_ip6_flush_pending_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_flush_pending_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_flush_pending_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_flush_pending_frames to i32), ptr @__kstrtab_ip6_flush_pending_frames, ptr @__kstrtabns_ip6_flush_pending_frames }, section "___ksymtab_gpl+ip6_flush_pending_frames", align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_hook.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/neighbour.h\00", [40 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___neigh_lookup_noref.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@neigh_hh_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@__in6_dev_get_safely.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@ip6_ra_lock = external dso_local global %struct.rwlock_t, align 4
@ip6_ra_chain = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@ip6_dst_lookup_tail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_fib6_nh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@nexthop_fib6_nh.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 255]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1298, i32 3 }
@___asan_gen_.42 = private constant [25 x i8] c"../net/ipv6/ip6_output.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1302, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1011, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 271, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 229, i32 15 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 749, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/net/neighbour.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 305, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 760, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 341, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 161, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 487, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1160, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_ip6_append_data, ptr @__ksymtab_ip6_dst_lookup, ptr @__ksymtab_ip6_dst_lookup_flow, ptr @__ksymtab_ip6_dst_lookup_tunnel, ptr @__ksymtab_ip6_flush_pending_frames, ptr @__ksymtab_ip6_frag_init, ptr @__ksymtab_ip6_frag_next, ptr @__ksymtab_ip6_fraglist_init, ptr @__ksymtab_ip6_fraglist_prepare, ptr @__ksymtab_ip6_output, ptr @__ksymtab_ip6_push_pending_frames, ptr @__ksymtab_ip6_sk_dst_lookup_flow, ptr @__ksymtab_ip6_xmit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
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
  %8 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %and.i69 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %skb_dst.exit.skb_dst.exit79_crit_edge, label %land.lhs.true.i73

skb_dst.exit.skb_dst.exit79_crit_edge:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit79

land.lhs.true.i73:                                ; preds = %skb_dst.exit
  %call.i71 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool1.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool1.not.i72, label %land.rhs.i76, label %land.lhs.true.i73.skb_dst.exit79_crit_edge

land.lhs.true.i73.skb_dst.exit79_crit_edge:       ; preds = %land.lhs.true.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit79

land.rhs.i76:                                     ; preds = %land.lhs.true.i73
  %call2.i74 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74)
  %tobool3.not.i75 = icmp eq i32 %call2.i74, 0
  br i1 %tobool3.not.i75, label %do.end.i77, label %land.rhs.i76.skb_dst.exit79_crit_edge, !prof !107

land.rhs.i76.skb_dst.exit79_crit_edge:            ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit79

do.end.i77:                                       ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit79

skb_dst.exit79:                                   ; preds = %do.end.i77, %land.rhs.i76.skb_dst.exit79_crit_edge, %land.lhs.true.i73.skb_dst.exit79_crit_edge, %skb_dst.exit.skb_dst.exit79_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i78 = and i32 %12, -2
  %13 = inttoptr i32 %and25.i78 to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rt6i_idev.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -31011, ptr %protocol, align 8
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %8, align 8
  %disable_ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 32, i32 35
  %18 = ptrtoint ptr %disable_ipv6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %disable_ipv6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end47, label %if.then, !prof !108

if.then:                                          ; preds = %skb_dst.exit79
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %if.then.do.body24_crit_edge, label %do.body, !prof !107

if.then.do.body24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %15, i32 0, i32 33, i32 1
  %20 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipv6, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i80 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i80 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx17 = getelementptr [37 x i64], ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx17, align 8
  %add18 = add i64 %31, 1
  store i64 %add18, ptr %arrayidx17, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1, i32 0, i32 1
  %32 = tail call ptr @llvm.returnaddress(i32 0) #11
  %33 = ptrtoint ptr %32 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %34 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body24

do.body24:                                        ; preds = %do.body, %if.then.do.body24_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %36 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipv6_statistics, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i81 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i81 to ptr
  %cpu35 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu35, align 4
  %arrayidx36 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx36, align 4
  %add37 = add i32 %44, %38
  %45 = inttoptr i32 %add37 to ptr
  %syncp38 = getelementptr inbounds %struct.ipstats_mib, ptr %45, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp38)
  %arrayidx40 = getelementptr [37 x i64], ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx40, align 8
  %add41 = add i64 %47, 1
  store i64 %add41, ptr %arrayidx40, align 8
  %dep_map.i.i82 = getelementptr inbounds %struct.ipstats_mib, ptr %45, i32 0, i32 1, i32 0, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #11
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i82, i32 noundef %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %50 = ptrtoint ptr %syncp38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp38, align 4
  %inc.i.i.i83 = add i32 %51, 1
  store i32 %inc.i.i.i83, ptr %syncp38, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end47:                                         ; preds = %skb_dst.exit79
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 8
  %54 = and i16 %53, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool48.not = icmp eq i16 %54, 0
  br i1 %tobool48.not, label %lor.lhs.false.i, label %if.end47.if.then.i_crit_edge

if.end47.if.then.i_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end47
  %call.i84 = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %10, ptr noundef %7, ptr noundef nonnull @ip6_finish_output) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i84)
  %cmp.i = icmp eq i32 %call.i84, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end47.if.then.i_crit_edge
  %call1.i = tail call i32 @ip6_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %do.body24
  %retval.0 = phi i32 [ 0, %do.body24 ], [ %call1.i, %if.then.i ], [ %call.i84, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  %5 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !111
  %14 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !113
  %33 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !108

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 1), ptr blockaddress(@ip6_finish_output, %l_yes.i)) #11
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !115

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  %tobool3.not = icmp eq ptr %sk, null
  %or.cond = or i1 %tobool3.not, %retval.0.i
  br i1 %or.cond, label %arch_static_branch.exit.sw.bb_crit_edge, label %land.lhs.true4

arch_static_branch.exit.sw.bb_crit_edge:          ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

land.lhs.true4:                                   ; preds = %arch_static_branch.exit
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, %sk
  br i1 %cmp, label %land.lhs.true.i, label %land.lhs.true4.sw.bb_crit_edge

land.lhs.true4.sw.bb_crit_edge:                   ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

land.lhs.true.i:                                  ; preds = %land.lhs.true4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i = icmp eq i8 %4, 12
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.sk_to_full_sk.exit_crit_edge

land.lhs.true.i.sk_to_full_sk.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sk_to_full_sk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  br label %sk_to_full_sk.exit

sk_to_full_sk.exit:                               ; preds = %if.then.i, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %7, %if.then.i ], [ %sk, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge ]
  %skc_state.i27 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i27 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i27, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %sk_to_full_sk.exit.sw.bb_crit_edge, label %if.end9

sk_to_full_sk.exit.sw.bb_crit_edge:               ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end9:                                          ; preds = %sk_to_full_sk.exit
  %call8 = tail call i32 @__cgroup_bpf_run_filter_skb(ptr noundef %sk.addr.0.i, ptr noundef %skb, i32 noundef 1) #11
  %10 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %sw.default [
    i32 0, label %if.end9.sw.bb_crit_edge
    i32 2, label %sw.bb12
  ]

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %sk_to_full_sk.exit.sw.bb_crit_edge, %land.lhs.true4.sw.bb_crit_edge, %arch_static_branch.exit.sw.bb_crit_edge
  %call11 = tail call fastcc i32 @__ip6_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call fastcc i32 @__ip6_finish_output(ptr noundef %net, ptr noundef nonnull %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool14.not, i32 2, i32 %call13
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb12, %sw.bb
  %retval.0 = phi i32 [ %call8, %sw.default ], [ %spec.select, %sw.bb12 ], [ %call11, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ip6_autoflowlabel(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %np) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %autoflowlabel_set = getelementptr inbounds %struct.ipv6_pinfo, ptr %np, i32 0, i32 10
  %0 = ptrtoint ptr %autoflowlabel_set to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %autoflowlabel_set, align 2
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %auto_flowlabels.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 17
  %2 = ptrtoint ptr %auto_flowlabels.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %auto_flowlabels.i, align 1
  %4 = add i8 %3, -1
  %switch.and.i = and i8 %4, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool5 = icmp ne i16 %5, 0
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i1 [ %tobool5, %if.else ], [ %switch.selectcmp.i, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_xmit(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl6, i32 noundef %mark, ptr noundef %opt, i32 noundef %tclass, i32 noundef %priority) #0 align 64 {
entry:
  %keys.i.i = alloca %struct.flow_keys, align 8
  %first_hop = alloca ptr, align 4
  %proto = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %4 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_hop) #11
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %6 = ptrtoint ptr %first_hop to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %daddr, ptr %first_hop, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %inet6_sk.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit.skb_dst.exit_crit_edge:             ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %inet6_sk.exit.skb_dst.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rt6i_idev.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto) #11
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %17 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flowic_proto, align 2
  %19 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %proto, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %23 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 21
  %24 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %needed_headroom, align 8
  %conv5 = zext i16 %25 to i32
  %add = add nuw nsw i32 %conv5, %conv
  %and = and i32 %add, 131056
  %add7 = add nuw nsw i32 %and, 56
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %skb_dst.exit.if.end_crit_edge, label %if.then

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 3
  %26 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %opt_nflen, align 2
  %conv8 = zext i16 %27 to i32
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 2
  %28 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %opt_flen, align 4
  %conv9 = zext i16 %29 to i32
  %add10 = add nuw nsw i32 %add7, %conv8
  %add11 = add nuw nsw i32 %add10, %conv9
  br label %if.end

if.end:                                           ; preds = %if.then, %skb_dst.exit.if.end_crit_edge
  %head_room.0 = phi i32 [ %add11, %if.then ], [ %add7, %skb_dst.exit.if.end_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %head_room.0, i32 %sub.ptr.sub.i)
  %cmp = icmp ugt i32 %head_room.0, %sub.ptr.sub.i
  br i1 %cmp, label %if.then16, label %if.end.if.end66_crit_edge, !prof !107

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then16:                                        ; preds = %if.end
  %call17 = tail call ptr @skb_expand_head(ptr noundef %skb, i32 noundef %head_room.0) #11
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end66_crit_edge

if.then16.if.end66_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then19:                                        ; preds = %if.then16
  %cmp20.not = icmp eq ptr %16, null
  br i1 %cmp20.not, label %if.then19.do.body42_crit_edge, label %do.body, !prof !107

if.then19.do.body42_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body42

do.body:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 1
  %34 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ipv6, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i545 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i545 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %add33 = add i32 %42, %36
  %43 = inttoptr i32 %add33 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx34 = getelementptr [37 x i64], ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx34, align 8
  %add35 = add i64 %45, 1
  store i64 %add35, ptr %arrayidx34, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %43, i32 0, i32 1, i32 0, i32 1
  %46 = tail call ptr @llvm.returnaddress(i32 0) #11
  %47 = ptrtoint ptr %46 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %47) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body42

do.body42:                                        ; preds = %do.body, %if.then19.do.body42_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 1
  %50 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ipv6_statistics, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i546 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i546 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu53, align 4
  %arrayidx54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %58, %52
  %59 = inttoptr i32 %add55 to ptr
  %syncp56 = getelementptr inbounds %struct.ipstats_mib, ptr %59, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp56)
  %arrayidx58 = getelementptr [37 x i64], ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx58, align 8
  %add59 = add i64 %61, 1
  store i64 %add59, ptr %arrayidx58, align 8
  %dep_map.i.i547 = getelementptr inbounds %struct.ipstats_mib, ptr %59, i32 0, i32 1, i32 0, i32 1
  %62 = tail call ptr @llvm.returnaddress(i32 0) #11
  %63 = ptrtoint ptr %62 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i547, i32 noundef %63) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %64 = ptrtoint ptr %syncp56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %syncp56, align 4
  %inc.i.i.i548 = add i32 %65, 1
  store i32 %inc.i.i.i548, ptr %syncp56, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end66:                                         ; preds = %if.then16.if.end66_crit_edge, %if.end.if.end66_crit_edge
  %skb.addr.0 = phi ptr [ %call17, %if.then16.if.end66_crit_edge ], [ %skb, %if.end.if.end66_crit_edge ]
  br i1 %tobool.not, label %if.end66.if.end83_crit_edge, label %if.then68

if.end66.if.end83_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then68:                                        ; preds = %if.end66
  %opt_nflen69 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 3
  %66 = ptrtoint ptr %opt_nflen69 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %opt_nflen69, align 2
  %conv70 = zext i16 %67 to i32
  %opt_flen71 = getelementptr inbounds %struct.ipv6_txoptions, ptr %opt, i32 0, i32 2
  %68 = ptrtoint ptr %opt_flen71 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %opt_flen71, align 4
  %conv72 = zext i16 %69 to i32
  %add73 = add i32 %21, %conv70
  %add74 = add i32 %add73, %conv72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool76.not = icmp eq i16 %69, 0
  br i1 %tobool76.not, label %if.then68.if.end78_crit_edge, label %if.then77

if.then68.if.end78_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then77:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  call void @ipv6_push_frag_opts(ptr noundef %skb.addr.0, ptr noundef nonnull %opt, ptr noundef nonnull %proto) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.then68.if.end78_crit_edge
  %70 = ptrtoint ptr %opt_nflen69 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %opt_nflen69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool80.not = icmp eq i16 %71, 0
  br i1 %tobool80.not, label %if.end78.if.end83_crit_edge, label %if.then81

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  call void @ipv6_push_nfrag_opts(ptr noundef %skb.addr.0, ptr noundef nonnull %opt, ptr noundef nonnull %proto, ptr noundef nonnull %first_hop, ptr noundef %saddr) #11
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end78.if.end83_crit_edge, %if.end66.if.end83_crit_edge
  %seg_len.0 = phi i32 [ %add74, %if.then81 ], [ %add74, %if.end78.if.end83_crit_edge ], [ %21, %if.end66.if.end83_crit_edge ]
  %call84 = call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 40) #11
  %data.i549 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %72 = ptrtoint ptr %data.i549 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i549, align 4
  %head.i550 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %74 = ptrtoint ptr %head.i550 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i550, align 8
  %sub.ptr.lhs.cast.i551 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i552 = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i553 = sub i32 %sub.ptr.lhs.cast.i551, %sub.ptr.rhs.cast.i552
  %conv.i = trunc i32 %sub.ptr.sub.i553 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %76 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i554 = and i32 %sub.ptr.sub.i553, 65535
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 %conv.i.i554
  %tobool86.not = icmp eq ptr %cond.i, null
  br i1 %tobool86.not, label %if.end83.if.then92_crit_edge, label %if.end89

if.end83.if.then92_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92

if.end89:                                         ; preds = %if.end83
  %hop_limit = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 6
  %77 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load = load i32, ptr %hop_limit, align 4
  %bf.ashr = ashr i32 %bf.load, 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %cmp90 = icmp slt i32 %bf.load, 0
  br i1 %cmp90, label %if.end89.if.then92_crit_edge, label %if.end89.if.end94_crit_edge

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.end89.if.then92_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then92

if.then92:                                        ; preds = %if.end89.if.then92_crit_edge, %if.end83.if.then92_crit_edge
  %call93 = call i32 @ip6_dst_hoplimit(ptr noundef %12) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89.if.end94_crit_edge
  %hlimit.1 = phi i32 [ %call93, %if.then92 ], [ %bf.ashr, %if.end89.if.end94_crit_edge ]
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %78 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flowlabel, align 8
  %autoflowlabel_set.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %80 = ptrtoint ptr %autoflowlabel_set.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i = load i16, ptr %autoflowlabel_set.i, align 2
  %81 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.not.i555 = icmp eq i16 %81, 0
  br i1 %tobool.not.i555, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %auto_flowlabels.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 17
  %82 = ptrtoint ptr %auto_flowlabels.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %auto_flowlabels.i.i, align 1
  %84 = add i8 %83, -1
  %switch.and.i.i = and i8 %84, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br label %ip6_autoflowlabel.exit

if.else.i:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %85 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool5.i = icmp ne i16 %85, 0
  br label %ip6_autoflowlabel.exit

ip6_autoflowlabel.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i1 [ %tobool5.i, %if.else.i ], [ %switch.selectcmp.i.i, %if.then.i ]
  %and.i556 = and i32 %79, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i556)
  %tobool.not.i557 = icmp eq i32 %and.i556, 0
  br i1 %tobool.not.i557, label %lor.lhs.false.i, label %ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge

ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge: ; preds = %ip6_autoflowlabel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_make_flowlabel.exit

lor.lhs.false.i:                                  ; preds = %ip6_autoflowlabel.exit
  %auto_flowlabels.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 17
  %86 = ptrtoint ptr %auto_flowlabels.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %auto_flowlabels.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp.i = icmp ne i8 %87, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %87)
  %cmp8.not.i = icmp eq i8 %87, 3
  %or.cond24.i = select i1 %retval.0.i, i1 %cmp.i, i1 %cmp8.not.i
  br i1 %or.cond24.i, label %if.end.i, label %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge

lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_make_flowlabel.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %88 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %89 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %if.then.i.i, label %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge

if.end.i.skb_get_hash_flowi6.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get_hash_flowi6.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys.i.i) #11
  %91 = call ptr @memset(ptr %keys.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__get_hash_from_flowi6(ptr noundef %fl6, ptr noundef nonnull %keys.i.i) #11
  %ports.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %92 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i.i, label %flow_keys_have_l4.exit.i.i, label %flow_keys_have_l4.exit.thread.i.i

flow_keys_have_l4.exit.thread.i.i:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i11.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear.i.i12.i.i = and i16 %bf.load.i.i11.i.i, -193
  br label %98

flow_keys_have_l4.exit.i.i:                       ; preds = %if.then.i.i
  %tags.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 2
  %95 = ptrtoint ptr %tags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool1.i.not.i.i = icmp eq i32 %96, 0
  %97 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i.i.i.i = load i16, ptr %l4_hash.i.i, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, -193
  br i1 %tobool1.i.not.i.i, label %flow_keys_have_l4.exit.i.i._crit_edge, label %flow_keys_have_l4.exit.i.i._crit_edge586

flow_keys_have_l4.exit.i.i._crit_edge586:         ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %98

flow_keys_have_l4.exit.i.i._crit_edge:            ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %99

98:                                               ; preds = %flow_keys_have_l4.exit.i.i._crit_edge586, %flow_keys_have_l4.exit.thread.i.i
  %bf.clear.i.i14.i.i = phi i16 [ %bf.clear.i.i12.i.i, %flow_keys_have_l4.exit.thread.i.i ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge586 ]
  br label %99

99:                                               ; preds = %98, %flow_keys_have_l4.exit.i.i._crit_edge
  %bf.clear.i.i13.i.i = phi i16 [ %bf.clear.i.i14.i.i, %98 ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %100 = phi i16 [ 192, %98 ], [ 64, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %bf.set8.i.i.i.i = or i16 %100, %bf.clear.i.i13.i.i
  %101 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %bf.set8.i.i.i.i, ptr %l4_hash.i.i, align 8
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 8
  %102 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call.i.i, ptr %hash10.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys.i.i) #11
  br label %skb_get_hash_flowi6.exit.i

skb_get_hash_flowi6.exit.i:                       ; preds = %99, %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge
  %hash7.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 8
  %103 = ptrtoint ptr %hash7.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hash7.i.i, align 4
  %or.i.i = call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 16) #11
  %and11.i = and i32 %or.i.i, 1048575
  %flowlabel_state_ranges.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 1, i32 27
  %105 = ptrtoint ptr %flowlabel_state_ranges.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %flowlabel_state_ranges.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool14.not.i = icmp eq i8 %106, 0
  %or.i = or i32 %and11.i, 524288
  %spec.select.i = select i1 %tobool14.not.i, i32 %and11.i, i32 %or.i
  br label %ip6_make_flowlabel.exit

ip6_make_flowlabel.exit:                          ; preds = %skb_get_hash_flowi6.exit.i, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge, %ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge
  %retval.0.i558 = phi i32 [ %spec.select.i, %skb_get_hash_flowi6.exit.i ], [ 0, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge ], [ %and.i556, %ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge ]
  %shl.i = shl i32 %tclass, 20
  %or.i559 = or i32 %shl.i, %retval.0.i558
  %or1.i = or i32 %or.i559, 1610612736
  %107 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or1.i, ptr %add.ptr.i.i, align 4
  %conv97 = trunc i32 %seg_len.0 to i16
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv97, ptr %payload_len, align 4
  %109 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %proto, align 1
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %nexthdr, align 2
  %conv98 = trunc i32 %hlimit.1 to i8
  %hop_limit99 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %hop_limit99 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv98, ptr %hop_limit99, align 1
  %saddr100 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %saddr101 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %113 = call ptr @memcpy(ptr %saddr100, ptr %saddr101, i32 16)
  %daddr102 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %114 = ptrtoint ptr %first_hop to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %first_hop, align 4
  %116 = call ptr @memcpy(ptr %daddr102, ptr %115, i32 16)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 18
  %117 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -31011, ptr %protocol, align 8
  %priority103 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 6
  %118 = ptrtoint ptr %priority103 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %priority, ptr %priority103, align 4
  %119 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 13
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %mark, ptr %119, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 1
  %121 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mtu.i, align 4
  %call.i560 = call i32 %124(ptr noundef %12) #11
  %len105 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %125 = ptrtoint ptr %len105 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %call.i560)
  %cmp106.not = icmp ugt i32 %126, %call.i560
  br i1 %cmp106.not, label %lor.lhs.false, label %ip6_make_flowlabel.exit.if.then115_crit_edge

ip6_make_flowlabel.exit.if.then115_crit_edge:     ; preds = %ip6_make_flowlabel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then115

lor.lhs.false:                                    ; preds = %ip6_make_flowlabel.exit
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %127 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load108 = load i16, ptr %ignore_df, align 8
  %128 = and i16 %bf.load108, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool111.not = icmp eq i16 %128, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %lor.lhs.false.if.then115_crit_edge

lor.lhs.false.if.then115_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then115

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 17
  %129 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.i.not = icmp eq i16 %132, 0
  br i1 %tobool.i.not, label %if.end392, label %lor.lhs.false112.if.then115_crit_edge

lor.lhs.false112.if.then115_crit_edge:            ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then115

if.then115:                                       ; preds = %lor.lhs.false112.if.then115_crit_edge, %lor.lhs.false.if.then115_crit_edge, %ip6_make_flowlabel.exit.if.then115_crit_edge
  %cmp117.not = icmp eq ptr %16, null
  br i1 %cmp117.not, label %if.then115.do.body251_crit_edge, label %do.body126, !prof !107

if.then115.do.body251_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body251

do.body126:                                       ; preds = %if.then115
  %ipv6129 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 1
  %133 = ptrtoint ptr %ipv6129 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ipv6129, align 4
  %135 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %arrayidx151 = getelementptr i64, ptr %134, i32 5
  %136 = ptrtoint ptr %arrayidx151 to i32
  %137 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i561 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i561 to ptr
  %cpu154 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %cpu154 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cpu154, align 4
  %arrayidx155 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %140
  %141 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx155, align 4
  %add156 = add i32 %142, %136
  %143 = inttoptr i32 %add156 to ptr
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %143, align 8
  %add157 = add i64 %145, 1
  store i64 %add157, ptr %143, align 8
  %146 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i562 = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i562)
  %tobool168.not = icmp eq i32 %and.i.i562, 0
  br i1 %tobool168.not, label %if.then177, label %do.body126.do.end180_crit_edge, !prof !107

do.body126.do.end180_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end180

if.then177:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end180

do.end180:                                        ; preds = %if.then177, %do.body126.do.end180_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #11, !srcloc !118
  %147 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %148 = ptrtoint ptr %len105 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len105, align 4
  %conv205 = zext i32 %149 to i64
  %arrayidx212 = getelementptr i64, ptr %134, i32 6
  %150 = ptrtoint ptr %arrayidx212 to i32
  %151 = ptrtoint ptr %cpu154 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %cpu154, align 4
  %arrayidx216 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %152
  %153 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx216, align 4
  %add217 = add i32 %154, %150
  %155 = inttoptr i32 %add217 to ptr
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %155, align 8
  %add218 = add i64 %157, %conv205
  store i64 %add218, ptr %155, align 8
  %158 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i563 = and i32 %158, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i563)
  %tobool229.not = icmp eq i32 %and.i.i563, 0
  br i1 %tobool229.not, label %if.then238, label %do.end180.do.end241_crit_edge, !prof !107

do.end180.do.end241_crit_edge:                    ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end241

if.then238:                                       ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end241

do.end241:                                        ; preds = %if.then238, %do.end180.do.end241_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %147) #11, !srcloc !118
  br label %do.body251

do.body251:                                       ; preds = %do.end241, %if.then115.do.body251_crit_edge
  %ipv6_statistics254 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 1
  %159 = ptrtoint ptr %ipv6_statistics254 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ipv6_statistics254, align 4
  %161 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %arrayidx280 = getelementptr i64, ptr %160, i32 5
  %162 = ptrtoint ptr %arrayidx280 to i32
  %163 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i564 = and i32 %163, -16384
  %164 = inttoptr i32 %and.i564 to ptr
  %cpu283 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %cpu283 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu283, align 4
  %arrayidx284 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx284, align 4
  %add285 = add i32 %168, %162
  %169 = inttoptr i32 %add285 to ptr
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %169, align 8
  %add286 = add i64 %171, 1
  store i64 %add286, ptr %169, align 8
  %172 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i565 = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i565)
  %tobool297.not = icmp eq i32 %and.i.i565, 0
  br i1 %tobool297.not, label %if.then306, label %do.body251.do.end309_crit_edge, !prof !107

do.body251.do.end309_crit_edge:                   ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end309

if.then306:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end309

do.end309:                                        ; preds = %if.then306, %do.body251.do.end309_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %161) #11, !srcloc !118
  %173 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %174 = ptrtoint ptr %len105 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len105, align 4
  %conv334 = zext i32 %175 to i64
  %arrayidx341 = getelementptr i64, ptr %160, i32 6
  %176 = ptrtoint ptr %arrayidx341 to i32
  %177 = ptrtoint ptr %cpu283 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cpu283, align 4
  %arrayidx345 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %178
  %179 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx345, align 4
  %add346 = add i32 %180, %176
  %181 = inttoptr i32 %add346 to ptr
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %181, align 8
  %add347 = add i64 %183, %conv334
  store i64 %add347, ptr %181, align 8
  %184 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i566 = and i32 %184, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i566)
  %tobool358.not = icmp eq i32 %and.i.i566, 0
  br i1 %tobool358.not, label %if.then367, label %do.end309.do.end370_crit_edge, !prof !107

do.end309.do.end370_crit_edge:                    ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end370

if.then367:                                       ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end370

do.end370:                                        ; preds = %if.then367, %do.end309.do.end370_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %173) #11, !srcloc !118
  %185 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 8
  %and.i.i.i = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i567 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i567, label %do.end370.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

do.end370.skb_dst.exit.i.i_crit_edge:             ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end370
  %call.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !107

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %do.end370.skb_dst.exit.i.i_crit_edge
  %188 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %185, align 8
  %and25.i.i.i = and i32 %189, -2
  %190 = inttoptr i32 %and25.i.i.i to ptr
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %192, i32 0, i32 15
  %193 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i1.i.i = and i64 %194, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i1.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i1.i.i, 0
  br i1 %tobool.i.not.i.i, label %skb_dst.exit.i.i.l3mdev_ip6_out.exit_crit_edge, label %if.then.i.i568

skb_dst.exit.i.i.l3mdev_ip6_out.exit_crit_edge:   ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %l3mdev_ip6_out.exit

if.then.i.i568:                                   ; preds = %skb_dst.exit.i.i
  %call3.i.i = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %192) #11
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i568.l3mdev_ip6_out.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.i568.l3mdev_ip6_out.exit_crit_edge:     ; preds = %if.then.i.i568
  call void @__sanitizer_cov_trace_pc() #13
  br label %l3mdev_ip6_out.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i568
  %l3mdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 45
  %195 = ptrtoint ptr %l3mdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %l3mdev_ops.i.i, align 4
  %l3mdev_l3_out.i.i = getelementptr inbounds %struct.l3mdev_ops, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %l3mdev_l3_out.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %l3mdev_l3_out.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %198, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.l3mdev_ip6_out.exit_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.l3mdev_ip6_out.exit_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %l3mdev_ip6_out.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i.i = call ptr %198(ptr noundef nonnull %call3.i.i, ptr noundef %sk, ptr noundef %skb.addr.0, i16 noundef zeroext 10) #11
  br label %l3mdev_ip6_out.exit

l3mdev_ip6_out.exit:                              ; preds = %if.then5.i.i, %land.lhs.true.i.i.l3mdev_ip6_out.exit_crit_edge, %if.then.i.i568.l3mdev_ip6_out.exit_crit_edge, %skb_dst.exit.i.i.l3mdev_ip6_out.exit_crit_edge
  %skb.addr.1.i.i = phi ptr [ %skb.addr.0, %skb_dst.exit.i.i.l3mdev_ip6_out.exit_crit_edge ], [ %call8.i.i, %if.then5.i.i ], [ %skb.addr.0, %land.lhs.true.i.i.l3mdev_ip6_out.exit_crit_edge ], [ %skb.addr.0, %if.then.i.i568.l3mdev_ip6_out.exit_crit_edge ]
  %tobool380.not = icmp eq ptr %skb.addr.1.i.i, null
  br i1 %tobool380.not, label %l3mdev_ip6_out.exit.cleanup_crit_edge, label %if.end390, !prof !107

l3mdev_ip6_out.exit.cleanup_crit_edge:            ; preds = %l3mdev_ip6_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end390:                                        ; preds = %l3mdev_ip6_out.exit
  %call.i569 = call fastcc i32 @nf_hook(i32 noundef 3, ptr noundef %1, ptr noundef %sk, ptr noundef nonnull %skb.addr.1.i.i, ptr noundef null, ptr noundef %14, ptr noundef nonnull @dst_output) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i569)
  %cmp.i570 = icmp eq i32 %call.i569, 1
  br i1 %cmp.i570, label %if.then.i571, label %if.end390.cleanup_crit_edge

if.end390.cleanup_crit_edge:                      ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i571:                                     ; preds = %if.end390
  %199 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i, i32 0, i32 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %199, align 8
  %and.i.i579 = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i579)
  %tobool.not.i.i580 = icmp eq i32 %and.i.i579, 0
  br i1 %tobool.not.i.i580, label %if.then.i571.dst_output.exit_crit_edge, label %land.lhs.true.i.i582

if.then.i571.dst_output.exit_crit_edge:           ; preds = %if.then.i571
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.lhs.true.i.i582:                             ; preds = %if.then.i571
  %call.i.i581 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i581)
  %tobool1.not.i.i = icmp eq i32 %call.i.i581, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i582.dst_output.exit_crit_edge

land.lhs.true.i.i582.dst_output.exit_crit_edge:   ; preds = %land.lhs.true.i.i582
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i582
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !107

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i582.dst_output.exit_crit_edge, %if.then.i571.dst_output.exit_crit_edge
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %199, align 8
  %and25.i.i = and i32 %203, -2
  %204 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %204, i32 0, i32 6
  %205 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %output.i, align 4
  %call1.i583 = call i32 %206(ptr noundef %1, ptr noundef %sk, ptr noundef nonnull %skb.addr.1.i.i) #11
  br label %cleanup

if.end392:                                        ; preds = %lor.lhs.false112
  %207 = getelementptr inbounds %struct.anon.83, ptr %skb.addr.0, i32 0, i32 2
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %14, ptr %207, align 8
  call void @ipv6_local_error(ptr noundef %sk, i32 noundef 90, ptr noundef %fl6, i32 noundef %call.i560) #11
  %cmp394.not = icmp eq ptr %16, null
  br i1 %cmp394.not, label %if.end392.do.body429_crit_edge, label %do.body403, !prof !107

if.end392.do.body429_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body429

do.body403:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6413 = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 33, i32 1
  %209 = ptrtoint ptr %ipv6413 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ipv6413, align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i573 = and i32 %212, -16384
  %213 = inttoptr i32 %and.i573 to ptr
  %cpu416 = getelementptr inbounds %struct.thread_info, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %cpu416 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %cpu416, align 4
  %arrayidx417 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %215
  %216 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx417, align 4
  %add418 = add i32 %217, %211
  %218 = inttoptr i32 %add418 to ptr
  %syncp419 = getelementptr inbounds %struct.ipstats_mib, ptr %218, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp419)
  %arrayidx421 = getelementptr [37 x i64], ptr %218, i32 0, i32 21
  %219 = ptrtoint ptr %arrayidx421 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx421, align 8
  %add422 = add i64 %220, 1
  store i64 %add422, ptr %arrayidx421, align 8
  %dep_map.i.i574 = getelementptr inbounds %struct.ipstats_mib, ptr %218, i32 0, i32 1, i32 0, i32 1
  %221 = call ptr @llvm.returnaddress(i32 0) #11
  %222 = ptrtoint ptr %221 to i32
  call void @lock_release(ptr noundef %dep_map.i.i574, i32 noundef %222) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %223 = ptrtoint ptr %syncp419 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %syncp419, align 4
  %inc.i.i.i575 = add i32 %224, 1
  store i32 %inc.i.i.i575, ptr %syncp419, align 4
  call fastcc void @local_bh_enable()
  br label %do.body429

do.body429:                                       ; preds = %do.body403, %if.end392.do.body429_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics439 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30, i32 1
  %225 = ptrtoint ptr %ipv6_statistics439 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ipv6_statistics439, align 4
  %227 = ptrtoint ptr %226 to i32
  %228 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i576 = and i32 %228, -16384
  %229 = inttoptr i32 %and.i576 to ptr
  %cpu442 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %cpu442 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cpu442, align 4
  %arrayidx443 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %231
  %232 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx443, align 4
  %add444 = add i32 %233, %227
  %234 = inttoptr i32 %add444 to ptr
  %syncp445 = getelementptr inbounds %struct.ipstats_mib, ptr %234, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp445)
  %arrayidx447 = getelementptr [37 x i64], ptr %234, i32 0, i32 21
  %235 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %arrayidx447, align 8
  %add448 = add i64 %236, 1
  store i64 %add448, ptr %arrayidx447, align 8
  %dep_map.i.i577 = getelementptr inbounds %struct.ipstats_mib, ptr %234, i32 0, i32 1, i32 0, i32 1
  %237 = call ptr @llvm.returnaddress(i32 0) #11
  %238 = ptrtoint ptr %237 to i32
  call void @lock_release(ptr noundef %dep_map.i.i577, i32 noundef %238) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %239 = ptrtoint ptr %syncp445 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %syncp445, align 4
  %inc.i.i.i578 = add i32 %240, 1
  store i32 %inc.i.i.i578, ptr %syncp445, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body429, %dst_output.exit, %if.end390.cleanup_crit_edge, %l3mdev_ip6_out.exit.cleanup_crit_edge, %do.body42
  %retval.0 = phi i32 [ -90, %do.body429 ], [ -105, %do.body42 ], [ 0, %l3mdev_ip6_out.exit.cleanup_crit_edge ], [ %call1.i583, %dst_output.exit ], [ %call.i569, %if.end390.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_hop) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_push_frag_opts(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_push_nfrag_opts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %output = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %call1 = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_forward(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %daddr.i796 = alloca %struct.inetpeer_addr, align 4
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 127
  %12 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nd_net.i, align 4
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb, align 8
  %call5 = tail call ptr @dev_get_by_index_rcu(ptr noundef %13, i32 noundef %15) #11
  %tobool.not.i732 = icmp eq ptr %call5, null
  br i1 %tobool.not.i732, label %skb_dst.exit.__in6_dev_get_safely.exit_crit_edge, label %if.then.i, !prof !107

skb_dst.exit.__in6_dev_get_safely.exit_crit_edge: ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get_safely.exit

if.then.i:                                        ; preds = %skb_dst.exit
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 80
  %16 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i733 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i733, label %if.then.i.__in6_dev_get_safely.exit_crit_edge, label %lor.lhs.false.i

if.then.i.__in6_dev_get_safely.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get_safely.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %call4.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i734, label %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge

lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get_safely.exit

land.lhs.true.i734:                               ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i734.__in6_dev_get_safely.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i734.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true.i734
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get_safely.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i734
  %.b15.i = load i1, ptr @__in6_dev_get_safely.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, label %if.then10.i

land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get_safely.exit

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__in6_dev_get_safely.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 341, ptr noundef nonnull @.str.8) #11
  br label %__in6_dev_get_safely.exit

__in6_dev_get_safely.exit:                        ; preds = %if.then10.i, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge, %land.lhs.true.i734.__in6_dev_get_safely.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge, %if.then.i.__in6_dev_get_safely.exit_crit_edge, %skb_dst.exit.__in6_dev_get_safely.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.then10.i ], [ %17, %land.lhs.true8.i.__in6_dev_get_safely.exit_crit_edge ], [ %17, %land.lhs.true.i734.__in6_dev_get_safely.exit_crit_edge ], [ %17, %lor.lhs.false.i.__in6_dev_get_safely.exit_crit_edge ], [ %17, %if.then.i.__in6_dev_get_safely.exit_crit_edge ], [ null, %skb_dst.exit.__in6_dev_get_safely.exit_crit_edge ]
  %devconf_all = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 36, i32 2
  %18 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devconf_all, align 32
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %__in6_dev_get_safely.exit.error_crit_edge, label %if.end

__in6_dev_get_safely.exit.error_crit_edge:        ; preds = %__in6_dev_get_safely.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end:                                           ; preds = %__in6_dev_get_safely.exit
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp7.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp7.not, label %if.end10, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end10:                                         ; preds = %if.end
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %if.end14, label %if.end10.drop_crit_edge, !prof !108

if.end10.drop_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end14:                                         ; preds = %if.end10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %if.end14.if.end17_crit_edge, label %land.lhs.true.i735

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true.i735:                               ; preds = %if.end14
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i = icmp eq i16 %31, 0
  br i1 %cmp.not.i, label %land.lhs.true.i735.if.end17_crit_edge, label %land.lhs.true3.i

land.lhs.true.i735.if.end17_crit_edge:            ; preds = %land.lhs.true.i735
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i735
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 8
  %32 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gso_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp4.i = icmp eq i32 %33, 0
  br i1 %cmp4.i, label %skb_warn_if_lro.exit, label %land.lhs.true3.i.if.end17_crit_edge, !prof !107

land.lhs.true3.i.if.end17_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

skb_warn_if_lro.exit:                             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__skb_warn_lro_forwarding(ptr noundef %skb) #11
  br label %drop

if.end17:                                         ; preds = %land.lhs.true3.i.if.end17_crit_edge, %land.lhs.true.i735.if.end17_crit_edge, %if.end14.if.end17_crit_edge
  %34 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devconf_all, align 32
  %disable_policy = getelementptr inbounds %struct.ipv6_devconf, ptr %35, i32 0, i32 50
  %36 = ptrtoint ptr %disable_policy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %disable_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool20.not = icmp eq i32 %37, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end17.if.end72_crit_edge

if.end17.if.end72_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end17
  %disable_policy21 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 32, i32 50
  %38 = ptrtoint ptr %disable_policy21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %disable_policy21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool22.not = icmp eq i32 %39, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

land.lhs.true23:                                  ; preds = %land.lhs.true
  %40 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 127
  %43 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %44, i32 0, i32 46, i32 23
  %45 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %policy_default.i.i.i.i, align 16
  %47 = and i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool13.i.i.i.i = icmp eq i8 %47, 0
  br i1 %tobool13.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %land.lhs.true23
  %arrayidx6.i.i.i = getelementptr %struct.net, ptr %44, i32 0, i32 46, i32 13, i32 2
  %48 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool7.not.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %50 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool10.not.i.i.i = icmp eq i8 %52, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end72_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end72_crit_edge:          ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %0, align 8
  %and.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !107

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr.i.i.i = load i32, ptr %0, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %56 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %54, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %tobool12.not.i.i.i = icmp ult i32 %56, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.xfrm6_policy_check.exit_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.xfrm6_policy_check.exit_crit_edge: ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm6_policy_check.exit

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !107

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %0, align 8
  %and25.i11.i.i.i = and i32 %58, -2
  %59 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags.i.i.i, align 4
  %62 = and i16 %61, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool16.not.i.i.i = icmp eq i16 %62, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.xfrm6_policy_check.exit_crit_edge, label %skb_dst.exit12.i.i.i.if.end72_crit_edge

skb_dst.exit12.i.i.i.if.end72_crit_edge:          ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

skb_dst.exit12.i.i.i.xfrm6_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm6_policy_check.exit

if.else.i.i.i:                                    ; preds = %land.lhs.true23
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %0, align 8
  %and.i13.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !107

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr35.i.i.i = load i32, ptr %0, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %66 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %64, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %tobool21.not.i.i.i = icmp ult i32 %66, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.xfrm6_policy_check.exit_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.xfrm6_policy_check.exit_crit_edge: ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm6_policy_check.exit

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !107

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %0, align 8
  %and25.i33.i.i.i = and i32 %68, -2
  %69 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags24.i.i.i, align 4
  %72 = and i16 %71, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool27.not.i.i.i = icmp eq i16 %72, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.xfrm6_policy_check.exit_crit_edge, label %skb_dst.exit34.i.i.i.if.end72_crit_edge

skb_dst.exit34.i.i.i.if.end72_crit_edge:          ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

skb_dst.exit34.i.i.i.xfrm6_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm6_policy_check.exit

xfrm6_policy_check.exit:                          ; preds = %skb_dst.exit34.i.i.i.xfrm6_policy_check.exit_crit_edge, %skb_dst.exit23.i.i.i.xfrm6_policy_check.exit_crit_edge, %skb_dst.exit12.i.i.i.xfrm6_policy_check.exit_crit_edge, %skb_dst.exit.i.i.i.xfrm6_policy_check.exit_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 2, ptr noundef %skb, i16 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i.not = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.i.i.i.not, label %if.then26, label %xfrm6_policy_check.exit.if.end72_crit_edge

xfrm6_policy_check.exit.if.end72_crit_edge:       ; preds = %xfrm6_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then26:                                        ; preds = %xfrm6_policy_check.exit
  %cmp27.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp27.not, label %if.then26.do.body49_crit_edge, label %do.body, !prof !107

if.then26.do.body49_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body49

do.body:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv638 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %73 = ptrtoint ptr %ipv638 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ipv638, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i738 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i738 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  %add = add i32 %81, %75
  %82 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %82, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx41 = getelementptr [37 x i64], ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx41, align 8
  %add42 = add i64 %84, 1
  store i64 %add42, ptr %arrayidx41, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %82, i32 0, i32 1, i32 0, i32 1
  %85 = tail call ptr @llvm.returnaddress(i32 0) #11
  %86 = ptrtoint ptr %85 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %86) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %87 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body49

do.body49:                                        ; preds = %do.body, %if.then26.do.body49_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %89 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ipv6_statistics, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i739 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i739 to ptr
  %cpu60 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cpu60 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu60, align 4
  %arrayidx61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %97, %91
  %98 = inttoptr i32 %add62 to ptr
  %syncp63 = getelementptr inbounds %struct.ipstats_mib, ptr %98, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp63)
  %arrayidx65 = getelementptr [37 x i64], ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx65, align 8
  %add66 = add i64 %100, 1
  store i64 %add66, ptr %arrayidx65, align 8
  %dep_map.i.i740 = getelementptr inbounds %struct.ipstats_mib, ptr %98, i32 0, i32 1, i32 0, i32 1
  %101 = tail call ptr @llvm.returnaddress(i32 0) #11
  %102 = ptrtoint ptr %101 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i740, i32 noundef %102) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %103 = ptrtoint ptr %syncp63 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %syncp63, align 4
  %inc.i.i.i741 = add i32 %104, 1
  store i32 %inc.i.i.i741, ptr %syncp63, align 4
  tail call fastcc void @local_bh_enable()
  br label %drop

if.end72:                                         ; preds = %xfrm6_policy_check.exit.if.end72_crit_edge, %skb_dst.exit34.i.i.i.if.end72_crit_edge, %skb_dst.exit12.i.i.i.if.end72_crit_edge, %land.lhs.true8.i.i.i.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end17.if.end72_crit_edge
  %105 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i = load i16, ptr %pkt_type, align 8
  %106 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %106)
  %cmp.i = icmp eq i16 %106, 1024
  br i1 %cmp.i, label %if.then.i742, label %if.end72.skb_forward_csum.exit_crit_edge

if.end72.skb_forward_csum.exit_crit_edge:         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_forward_csum.exit

if.then.i742:                                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear4.i = and i16 %bf.load.i, -1537
  %107 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %bf.clear4.i, ptr %pkt_type, align 8
  br label %skb_forward_csum.exit

skb_forward_csum.exit:                            ; preds = %if.then.i742, %if.end72.skb_forward_csum.exit_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %108 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %flags, align 4
  %110 = and i16 %109, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool74.not = icmp eq i16 %110, 0
  br i1 %tobool74.not, label %skb_forward_csum.exit.if.end87_crit_edge, label %if.then81, !prof !108

skb_forward_csum.exit.if.end87_crit_edge:         ; preds = %skb_forward_csum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then81:                                        ; preds = %skb_forward_csum.exit
  %ra = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %111 = ptrtoint ptr %ra to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %ra, align 4
  %conv82 = zext i16 %112 to i32
  %call83 = tail call fastcc i32 @ip6_call_ra_chain(ptr noundef %skb, i32 noundef %conv82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then81.if.end87_crit_edge, label %if.then81.cleanup611_crit_edge

if.then81.cleanup611_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup611

if.then81.if.end87_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.end87:                                         ; preds = %if.then81.if.end87_crit_edge, %skb_forward_csum.exit.if.end87_crit_edge
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %hop_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %114)
  %cmp89 = icmp ult i8 %114, 2
  br i1 %cmp89, label %if.then91, label %if.end153

if.then91:                                        ; preds = %if.end87
  tail call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null, ptr noundef %cb) #11
  %cmp93.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp93.not, label %if.then91.do.body128_crit_edge, label %do.body102, !prof !107

if.then91.do.body128_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body128

do.body102:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6112 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %115 = ptrtoint ptr %ipv6112 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ipv6112, align 4
  %117 = ptrtoint ptr %116 to i32
  %118 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i743 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i743 to ptr
  %cpu115 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %cpu115 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu115, align 4
  %arrayidx116 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx116, align 4
  %add117 = add i32 %123, %117
  %124 = inttoptr i32 %add117 to ptr
  %syncp118 = getelementptr inbounds %struct.ipstats_mib, ptr %124, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp118)
  %arrayidx120 = getelementptr [37 x i64], ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx120, align 8
  %add121 = add i64 %126, 1
  store i64 %add121, ptr %arrayidx120, align 8
  %dep_map.i.i744 = getelementptr inbounds %struct.ipstats_mib, ptr %124, i32 0, i32 1, i32 0, i32 1
  %127 = tail call ptr @llvm.returnaddress(i32 0) #11
  %128 = ptrtoint ptr %127 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i744, i32 noundef %128) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %129 = ptrtoint ptr %syncp118 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %syncp118, align 4
  %inc.i.i.i745 = add i32 %130, 1
  store i32 %inc.i.i.i745, ptr %syncp118, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body128

do.body128:                                       ; preds = %do.body102, %if.then91.do.body128_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics138 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %131 = ptrtoint ptr %ipv6_statistics138 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ipv6_statistics138, align 4
  %133 = ptrtoint ptr %132 to i32
  %134 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i746 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i746 to ptr
  %cpu141 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %cpu141 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cpu141, align 4
  %arrayidx142 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %137
  %138 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx142, align 4
  %add143 = add i32 %139, %133
  %140 = inttoptr i32 %add143 to ptr
  %syncp144 = getelementptr inbounds %struct.ipstats_mib, ptr %140, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp144)
  %arrayidx146 = getelementptr [37 x i64], ptr %140, i32 0, i32 7
  %141 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx146, align 8
  %add147 = add i64 %142, 1
  store i64 %add147, ptr %arrayidx146, align 8
  %dep_map.i.i747 = getelementptr inbounds %struct.ipstats_mib, ptr %140, i32 0, i32 1, i32 0, i32 1
  %143 = tail call ptr @llvm.returnaddress(i32 0) #11
  %144 = ptrtoint ptr %143 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i747, i32 noundef %144) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %145 = ptrtoint ptr %syncp144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %syncp144, align 4
  %inc.i.i.i748 = add i32 %146, 1
  store i32 %inc.i.i.i748, ptr %syncp144, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup611

if.end153:                                        ; preds = %if.end87
  %147 = ptrtoint ptr %devconf_all to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %devconf_all, align 32
  %proxy_ndp = getelementptr inbounds %struct.ipv6_devconf, ptr %148, i32 0, i32 29
  %149 = ptrtoint ptr %proxy_ndp to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %proxy_ndp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool156.not = icmp eq i32 %150, 0
  br i1 %tobool156.not, label %if.end153.if.end233_crit_edge, label %land.lhs.true157

if.end153.if.end233_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

land.lhs.true157:                                 ; preds = %if.end153
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %151 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 8
  %call158 = tail call ptr @pneigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %13, ptr noundef %daddr, ptr noundef %153, i32 noundef 0) #11
  %tobool159.not = icmp eq ptr %call158, null
  br i1 %tobool159.not, label %land.lhs.true157.if.end233_crit_edge, label %if.then160

land.lhs.true157.if.end233_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end233

if.then160:                                       ; preds = %land.lhs.true157
  %154 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %head.i.i, align 8
  %156 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %157 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %155, i32 %conv.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #11
  %nexthdr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %nexthdr1.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %nexthdr1.i, align 2
  %160 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %nexthdr.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #11
  %161 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !119
  %call2.i749 = tail call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %159) #11
  br i1 %call2.i749, label %if.then.i751, label %if.then160.if.end5.i_crit_edge

if.then160.if.end5.i_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i751:                                     ; preds = %if.then160
  %call3.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i750 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i750, label %if.then.i751.cleanup.thread842_crit_edge, label %if.end5thread-pre-split.i

if.then.i751.cleanup.thread842_crit_edge:         ; preds = %if.then.i751
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread842

if.end5thread-pre-split.i:                        ; preds = %if.then.i751
  call void @__sanitizer_cov_trace_pc() #13
  %162 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %.pr.i = load i8, ptr %nexthdr.i, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5thread-pre-split.i, %if.then160.if.end5.i_crit_edge
  %163 = phi i8 [ %.pr.i, %if.end5thread-pre-split.i ], [ %159, %if.then160.if.end5.i_crit_edge ]
  %offset.0.i = phi i32 [ %call3.i, %if.end5thread-pre-split.i ], [ 40, %if.then160.if.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %163)
  %cmp6.i = icmp eq i8 %163, 58
  br i1 %cmp6.i, label %if.then8.i, label %if.end5.i.if.end17.i_crit_edge

if.end5.i.if.end17.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then8.i:                                       ; preds = %if.end5.i
  %164 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %head.i.i, align 8
  %166 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i752 = zext i16 %167 to i32
  %add.ptr.i.i753 = getelementptr i8, ptr %165, i32 %conv.i.i752
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i753, i32 %offset.0.i
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %168 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr10.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %169 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %170 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %len.i.i.i, align 4
  %172 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %171, %173
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %sub.ptr.sub.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then8.i.cleanup.i_crit_edge, !prof !107

if.then8.i.cleanup.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %sub.ptr.sub.i)
  %cmp3.i.i = icmp ult i32 %171, %sub.ptr.sub.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup.thread842_crit_edge, label %pskb_may_pull.exit.i, !prof !107

if.end.i.i.cleanup.thread842_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread842

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %sub.ptr.sub.i, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #11
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup.thread842_crit_edge, label %pskb_may_pull.exit.i.cleanup.i_crit_edge

pskb_may_pull.exit.i.cleanup.i_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

pskb_may_pull.exit.i.cleanup.thread842_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread842

cleanup.i:                                        ; preds = %pskb_may_pull.exit.i.cleanup.i_crit_edge, %if.then8.i.cleanup.i_crit_edge
  %174 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %head.i.i, align 8
  %176 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %network_header.i.i, align 4
  %conv.i37.i = zext i16 %177 to i32
  %add.ptr.i38.i = getelementptr i8, ptr %175, i32 %conv.i37.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i38.i, i32 %offset.0.i
  %178 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %add.ptr15.i, align 4
  %180 = add i8 %179, 118
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %180)
  %switch.i = icmp ult i8 %180, -5
  br i1 %switch.i, label %cleanup.i.if.end17.i_crit_edge, label %cleanup.thread

cleanup.i.if.end17.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.end17.i:                                       ; preds = %cleanup.i.if.end17.i_crit_edge, %if.end5.i.if.end17.i_crit_edge
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %call.i.i = call i32 @__ipv6_addr_type(ptr noundef %daddr.i) #11
  %and.i754 = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i754)
  %tobool.not.i755 = icmp eq i32 %and.i754, 0
  br i1 %tobool.not.i755, label %if.end17.i.cleanup.thread842_crit_edge, label %if.then19.i

if.end17.i.cleanup.thread842_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread842

if.then19.i:                                      ; preds = %if.end17.i
  %181 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %0, align 8
  %and.i.i.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then19.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then19.i.skb_dst.exit.i.i_crit_edge:           ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then19.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !107

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then19.i.skb_dst.exit.i.i_crit_edge
  %183 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %184, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.i.i.if.then169_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.i.i.if.then169_crit_edge:            ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then169

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %185 = inttoptr i32 %and25.i.i.i to ptr
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %187, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.then169_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.if.then169_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then169

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %link_failure.i.i = getelementptr inbounds %struct.dst_ops, ptr %187, i32 0, i32 10
  %188 = ptrtoint ptr %link_failure.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %link_failure.i.i, align 8
  %tobool4.not.i.i = icmp eq ptr %189, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.if.then169_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.if.then169_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then169

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %189(ptr noundef %skb) #11
  br label %if.then169

cleanup.thread:                                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #11
  %190 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %hop_limit, align 1
  %dec = add i8 %191, -1
  store i8 %dec, ptr %hop_limit, align 1
  %call166 = call i32 @ip6_input(ptr noundef %skb) #11
  br label %cleanup611

cleanup.thread842:                                ; preds = %if.end17.i.cleanup.thread842_crit_edge, %pskb_may_pull.exit.i.cleanup.thread842_crit_edge, %if.end.i.i.cleanup.thread842_crit_edge, %if.then.i751.cleanup.thread842_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #11
  br label %if.end233

if.then169:                                       ; preds = %if.then.i.i, %land.lhs.true2.i.i.if.then169_crit_edge, %land.lhs.true.i.i.if.then169_crit_edge, %skb_dst.exit.i.i.if.then169_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #11
  %cmp171.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp171.not, label %if.then169.cleanup_crit_edge, label %do.body180, !prof !107

if.then169.cleanup_crit_edge:                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body180:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6190 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %192 = ptrtoint ptr %ipv6190 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ipv6190, align 4
  %194 = ptrtoint ptr %193 to i32
  %195 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i756 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i756 to ptr
  %cpu193 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %cpu193 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cpu193, align 4
  %arrayidx194 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %198
  %199 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx194, align 4
  %add195 = add i32 %200, %194
  %201 = inttoptr i32 %add195 to ptr
  %syncp196 = getelementptr inbounds %struct.ipstats_mib, ptr %201, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp196)
  %arrayidx198 = getelementptr [37 x i64], ptr %201, i32 0, i32 13
  %202 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %arrayidx198, align 8
  %add199 = add i64 %203, 1
  store i64 %add199, ptr %arrayidx198, align 8
  %dep_map.i.i757 = getelementptr inbounds %struct.ipstats_mib, ptr %201, i32 0, i32 1, i32 0, i32 1
  %204 = call ptr @llvm.returnaddress(i32 0) #11
  %205 = ptrtoint ptr %204 to i32
  call void @lock_release(ptr noundef %dep_map.i.i757, i32 noundef %205) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %206 = ptrtoint ptr %syncp196 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %syncp196, align 4
  %inc.i.i.i758 = add i32 %207, 1
  store i32 %inc.i.i.i758, ptr %syncp196, align 4
  call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %do.body180, %if.then169.cleanup_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics216 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %208 = ptrtoint ptr %ipv6_statistics216 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ipv6_statistics216, align 4
  %210 = ptrtoint ptr %209 to i32
  %211 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i759 = and i32 %211, -16384
  %212 = inttoptr i32 %and.i759 to ptr
  %cpu219 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %cpu219 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %cpu219, align 4
  %arrayidx220 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %214
  %215 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx220, align 4
  %add221 = add i32 %216, %210
  %217 = inttoptr i32 %add221 to ptr
  %syncp222 = getelementptr inbounds %struct.ipstats_mib, ptr %217, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp222)
  %arrayidx224 = getelementptr [37 x i64], ptr %217, i32 0, i32 13
  %218 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %arrayidx224, align 8
  %add225 = add i64 %219, 1
  store i64 %add225, ptr %arrayidx224, align 8
  %dep_map.i.i760 = getelementptr inbounds %struct.ipstats_mib, ptr %217, i32 0, i32 1, i32 0, i32 1
  %220 = call ptr @llvm.returnaddress(i32 0) #11
  %221 = ptrtoint ptr %220 to i32
  call void @lock_release(ptr noundef %dep_map.i.i760, i32 noundef %221) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %222 = ptrtoint ptr %syncp222 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %syncp222, align 4
  %inc.i.i.i761 = add i32 %223, 1
  store i32 %inc.i.i.i761, ptr %syncp222, align 4
  call fastcc void @local_bh_enable()
  br label %drop

if.end233:                                        ; preds = %cleanup.thread842, %land.lhs.true157.if.end233_crit_edge, %if.end153.if.end233_crit_edge
  %224 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 127
  %227 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %nd_net.i.i.i, align 4
  %policy_default.i.i.i = getelementptr inbounds %struct.net, ptr %228, i32 0, i32 46, i32 23
  %229 = ptrtoint ptr %policy_default.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %policy_default.i.i.i, align 16
  %231 = and i8 %230, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool7.i.i.i = icmp eq i8 %231, 0
  br i1 %tobool7.i.i.i, label %if.then.i.i763, label %if.else.i.i

if.then.i.i763:                                   ; preds = %if.end233
  %arrayidx.i.i = getelementptr %struct.net, ptr %228, i32 0, i32 46, i32 13, i32 1
  %232 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool.not.i.i762 = icmp eq i32 %233, 0
  br i1 %tobool.not.i.i762, label %if.then.i.i763.if.end298_crit_edge, label %lor.lhs.false.i.i

if.then.i.i763.if.end298_crit_edge:               ; preds = %if.then.i.i763
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

lor.lhs.false.i.i:                                ; preds = %if.then.i.i763
  %234 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %0, align 8
  %and.i.i.i764 = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i764)
  %tobool.not.i.i.i765 = icmp eq i32 %and.i.i.i764, 0
  br i1 %tobool.not.i.i.i765, label %lor.lhs.false.i.i.skb_dst.exit.i.i774_crit_edge, label %land.lhs.true.i.i.i768

lor.lhs.false.i.i.skb_dst.exit.i.i774_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i774

land.lhs.true.i.i.i768:                           ; preds = %lor.lhs.false.i.i
  %call.i.i.i766 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i766)
  %tobool1.not.i.i.i767 = icmp eq i32 %call.i.i.i766, 0
  br i1 %tobool1.not.i.i.i767, label %land.rhs.i.i.i771, label %land.lhs.true.i.i.i768.skb_dst.exit.i.i774_crit_edge

land.lhs.true.i.i.i768.skb_dst.exit.i.i774_crit_edge: ; preds = %land.lhs.true.i.i.i768
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i774

land.rhs.i.i.i771:                                ; preds = %land.lhs.true.i.i.i768
  %call2.i.i.i769 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i769)
  %tobool3.not.i.i.i770 = icmp eq i32 %call2.i.i.i769, 0
  br i1 %tobool3.not.i.i.i770, label %do.end.i.i.i772, label %land.rhs.i.i.i771.skb_dst.exit.i.i774_crit_edge, !prof !107

land.rhs.i.i.i771.skb_dst.exit.i.i774_crit_edge:  ; preds = %land.rhs.i.i.i771
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i774

do.end.i.i.i772:                                  ; preds = %land.rhs.i.i.i771
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i.i774

skb_dst.exit.i.i774:                              ; preds = %do.end.i.i.i772, %land.rhs.i.i.i771.skb_dst.exit.i.i774_crit_edge, %land.lhs.true.i.i.i768.skb_dst.exit.i.i774_crit_edge, %lor.lhs.false.i.i.skb_dst.exit.i.i774_crit_edge
  %236 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %0, align 8
  %and25.i.i.i773 = and i32 %237, -2
  %238 = inttoptr i32 %and25.i.i.i773 to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %238, i32 0, i32 7
  %239 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %flags.i.i, align 4
  %241 = and i16 %240, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool3.not.i.i = icmp eq i16 %241, 0
  br i1 %tobool3.not.i.i, label %skb_dst.exit.i.i774.xfrm6_route_forward.exit_crit_edge, label %skb_dst.exit.i.i774.if.end298_crit_edge

skb_dst.exit.i.i774.if.end298_crit_edge:          ; preds = %skb_dst.exit.i.i774
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

skb_dst.exit.i.i774.xfrm6_route_forward.exit_crit_edge: ; preds = %skb_dst.exit.i.i774
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm6_route_forward.exit

if.else.i.i:                                      ; preds = %if.end233
  %242 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %0, align 8
  %and.i2.i.i = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.else.i.i.skb_dst.exit12.i.i_crit_edge, label %land.lhs.true.i6.i.i

if.else.i.i.skb_dst.exit12.i.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i

land.lhs.true.i6.i.i:                             ; preds = %if.else.i.i
  %call.i4.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %tobool1.not.i5.i.i = icmp eq i32 %call.i4.i.i, 0
  br i1 %tobool1.not.i5.i.i, label %land.rhs.i9.i.i, label %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge

land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i

land.rhs.i9.i.i:                                  ; preds = %land.lhs.true.i6.i.i
  %call2.i7.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i)
  %tobool3.not.i8.i.i = icmp eq i32 %call2.i7.i.i, 0
  br i1 %tobool3.not.i8.i.i, label %do.end.i10.i.i, label %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, !prof !107

land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge:     ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit12.i.i

do.end.i10.i.i:                                   ; preds = %land.rhs.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit12.i.i

skb_dst.exit12.i.i:                               ; preds = %do.end.i10.i.i, %land.rhs.i9.i.i.skb_dst.exit12.i.i_crit_edge, %land.lhs.true.i6.i.i.skb_dst.exit12.i.i_crit_edge, %if.else.i.i.skb_dst.exit12.i.i_crit_edge
  %244 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %0, align 8
  %and25.i11.i.i = and i32 %245, -2
  %246 = inttoptr i32 %and25.i11.i.i to ptr
  %flags7.i.i = getelementptr inbounds %struct.dst_entry, ptr %246, i32 0, i32 7
  %247 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %flags7.i.i, align 4
  %249 = and i16 %248, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %249)
  %tobool10.not.i.i = icmp eq i16 %249, 0
  br i1 %tobool10.not.i.i, label %skb_dst.exit12.i.i.xfrm6_route_forward.exit_crit_edge, label %skb_dst.exit12.i.i.if.end298_crit_edge

skb_dst.exit12.i.i.if.end298_crit_edge:           ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

skb_dst.exit12.i.i.xfrm6_route_forward.exit_crit_edge: ; preds = %skb_dst.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm6_route_forward.exit

xfrm6_route_forward.exit:                         ; preds = %skb_dst.exit12.i.i.xfrm6_route_forward.exit_crit_edge, %skb_dst.exit.i.i774.xfrm6_route_forward.exit_crit_edge
  %call12.i.i = call i32 @__xfrm_route_forward(ptr noundef %skb, i16 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.i.i.not = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.i.i.not, label %if.then236, label %xfrm6_route_forward.exit.if.end298_crit_edge

xfrm6_route_forward.exit.if.end298_crit_edge:     ; preds = %xfrm6_route_forward.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end298

if.then236:                                       ; preds = %xfrm6_route_forward.exit
  %cmp238.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp238.not, label %if.then236.do.body273_crit_edge, label %do.body247, !prof !107

if.then236.do.body273_crit_edge:                  ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body273

do.body247:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6257 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %250 = ptrtoint ptr %ipv6257 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ipv6257, align 4
  %252 = ptrtoint ptr %251 to i32
  %253 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i775 = and i32 %253, -16384
  %254 = inttoptr i32 %and.i775 to ptr
  %cpu260 = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 3
  %255 = ptrtoint ptr %cpu260 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %cpu260, align 4
  %arrayidx261 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %256
  %257 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx261, align 4
  %add262 = add i32 %258, %252
  %259 = inttoptr i32 %add262 to ptr
  %syncp263 = getelementptr inbounds %struct.ipstats_mib, ptr %259, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp263)
  %arrayidx265 = getelementptr [37 x i64], ptr %259, i32 0, i32 13
  %260 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %arrayidx265, align 8
  %add266 = add i64 %261, 1
  store i64 %add266, ptr %arrayidx265, align 8
  %dep_map.i.i776 = getelementptr inbounds %struct.ipstats_mib, ptr %259, i32 0, i32 1, i32 0, i32 1
  %262 = call ptr @llvm.returnaddress(i32 0) #11
  %263 = ptrtoint ptr %262 to i32
  call void @lock_release(ptr noundef %dep_map.i.i776, i32 noundef %263) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %264 = ptrtoint ptr %syncp263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %syncp263, align 4
  %inc.i.i.i777 = add i32 %265, 1
  store i32 %inc.i.i.i777, ptr %syncp263, align 4
  call fastcc void @local_bh_enable()
  br label %do.body273

do.body273:                                       ; preds = %do.body247, %if.then236.do.body273_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics283 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %266 = ptrtoint ptr %ipv6_statistics283 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ipv6_statistics283, align 4
  %268 = ptrtoint ptr %267 to i32
  %269 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i778 = and i32 %269, -16384
  %270 = inttoptr i32 %and.i778 to ptr
  %cpu286 = getelementptr inbounds %struct.thread_info, ptr %270, i32 0, i32 3
  %271 = ptrtoint ptr %cpu286 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %cpu286, align 4
  %arrayidx287 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %272
  %273 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx287, align 4
  %add288 = add i32 %274, %268
  %275 = inttoptr i32 %add288 to ptr
  %syncp289 = getelementptr inbounds %struct.ipstats_mib, ptr %275, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp289)
  %arrayidx291 = getelementptr [37 x i64], ptr %275, i32 0, i32 13
  %276 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %arrayidx291, align 8
  %add292 = add i64 %277, 1
  store i64 %add292, ptr %arrayidx291, align 8
  %dep_map.i.i779 = getelementptr inbounds %struct.ipstats_mib, ptr %275, i32 0, i32 1, i32 0, i32 1
  %278 = call ptr @llvm.returnaddress(i32 0) #11
  %279 = ptrtoint ptr %278 to i32
  call void @lock_release(ptr noundef %dep_map.i.i779, i32 noundef %279) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %280 = ptrtoint ptr %syncp289 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %syncp289, align 4
  %inc.i.i.i780 = add i32 %281, 1
  store i32 %inc.i.i.i780, ptr %syncp289, align 4
  call fastcc void @local_bh_enable()
  br label %drop

if.end298:                                        ; preds = %xfrm6_route_forward.exit.if.end298_crit_edge, %skb_dst.exit12.i.i.if.end298_crit_edge, %skb_dst.exit.i.i774.if.end298_crit_edge, %if.then.i.i763.if.end298_crit_edge
  %282 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %0, align 8
  %and.i781 = and i32 %283, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i781)
  %tobool.not.i782 = icmp eq i32 %and.i781, 0
  br i1 %tobool.not.i782, label %if.end298.skb_dst.exit791_crit_edge, label %land.lhs.true.i785

if.end298.skb_dst.exit791_crit_edge:              ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit791

land.lhs.true.i785:                               ; preds = %if.end298
  %call.i783 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i783)
  %tobool1.not.i784 = icmp eq i32 %call.i783, 0
  br i1 %tobool1.not.i784, label %land.rhs.i788, label %land.lhs.true.i785.skb_dst.exit791_crit_edge

land.lhs.true.i785.skb_dst.exit791_crit_edge:     ; preds = %land.lhs.true.i785
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit791

land.rhs.i788:                                    ; preds = %land.lhs.true.i785
  %call2.i786 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i786)
  %tobool3.not.i787 = icmp eq i32 %call2.i786, 0
  br i1 %tobool3.not.i787, label %do.end.i789, label %land.rhs.i788.skb_dst.exit791_crit_edge, !prof !107

land.rhs.i788.skb_dst.exit791_crit_edge:          ; preds = %land.rhs.i788
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit791

do.end.i789:                                      ; preds = %land.rhs.i788
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit791

skb_dst.exit791:                                  ; preds = %do.end.i789, %land.rhs.i788.skb_dst.exit791_crit_edge, %land.lhs.true.i785.skb_dst.exit791_crit_edge, %if.end298.skb_dst.exit791_crit_edge
  %284 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %0, align 8
  %and25.i790 = and i32 %285, -2
  %286 = inttoptr i32 %and25.i790 to ptr
  %287 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %cb, align 8
  %289 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %286, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %290, i32 0, i32 17
  %291 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %292)
  %cmp304 = icmp eq i32 %288, %292
  br i1 %cmp304, label %land.lhs.true306, label %skb_dst.exit791.if.else329_crit_edge

skb_dst.exit791.if.else329_crit_edge:             ; preds = %skb_dst.exit791
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else329

land.lhs.true306:                                 ; preds = %skb_dst.exit791
  %srcrt = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %293 = ptrtoint ptr %srcrt to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %srcrt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %294)
  %cmp308 = icmp eq i16 %294, 0
  br i1 %cmp308, label %land.lhs.true310, label %land.lhs.true306.if.else329_crit_edge

land.lhs.true306.if.else329_crit_edge:            ; preds = %land.lhs.true306
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else329

land.lhs.true310:                                 ; preds = %land.lhs.true306
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %295 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %active_extensions.i.i.i, align 1
  %297 = and i8 %296, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool.i.not.i.i = icmp eq i8 %297, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true310.if.then313_crit_edge, label %skb_sec_path.exit

land.lhs.true310.if.then313_crit_edge:            ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then313

skb_sec_path.exit:                                ; preds = %land.lhs.true310
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %298 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i792 = getelementptr %struct.skb_ext, ptr %299, i32 0, i32 1, i32 1
  %300 = ptrtoint ptr %arrayidx.i.i792 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx.i.i792, align 1
  %conv.i.i793 = zext i8 %301 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i793, 3
  %add.ptr.i.i794 = getelementptr i8, ptr %299, i32 %shl.i.i
  %tobool312.not = icmp eq ptr %add.ptr.i.i794, null
  br i1 %tobool312.not, label %skb_sec_path.exit.if.then313_crit_edge, label %skb_sec_path.exit.if.else329_crit_edge

skb_sec_path.exit.if.else329_crit_edge:           ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else329

skb_sec_path.exit.if.then313_crit_edge:           ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then313

if.then313:                                       ; preds = %skb_sec_path.exit.if.then313_crit_edge, %land.lhs.true310.if.then313_crit_edge
  %rt6i_flags = getelementptr inbounds %struct.rt6_info, ptr %286, i32 0, i32 7
  %302 = ptrtoint ptr %rt6i_flags to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %rt6i_flags, align 4
  %daddr318 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %peers = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 36, i32 4
  %304 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %peers, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr.i796) #11
  %306 = getelementptr inbounds i8, ptr %daddr.i796, i32 16
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 720895, ptr %306, align 4
  %308 = call ptr @memcpy(ptr %daddr.i796, ptr %daddr318, i32 16)
  %call.i797 = call ptr @inet_getpeer(ptr noundef %305, ptr noundef nonnull %daddr.i796, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i796) #11
  %call323 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %call.i797, i32 noundef 100) #11
  br i1 %call323, label %if.then324, label %if.then313.if.end325_crit_edge

if.then313.if.end325_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end325

if.then324:                                       ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #13
  %and314 = and i32 %303, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  %rt6i_gateway = getelementptr inbounds %struct.rt6_info, ptr %286, i32 0, i32 5
  %target.0 = select i1 %tobool315.not, ptr %daddr318, ptr %rt6i_gateway
  call void @ndisc_send_redirect(ptr noundef %skb, ptr noundef %target.0) #11
  br label %if.end325

if.end325:                                        ; preds = %if.then324, %if.then313.if.end325_crit_edge
  %tobool326.not = icmp eq ptr %call.i797, null
  br i1 %tobool326.not, label %if.end325.if.end344_crit_edge, label %if.then327

if.end325.if.end344_crit_edge:                    ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end344

if.then327:                                       ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #13
  call void @inet_putpeer(ptr noundef nonnull %call.i797) #11
  br label %if.end344

if.else329:                                       ; preds = %skb_sec_path.exit.if.else329_crit_edge, %land.lhs.true306.if.else329_crit_edge, %skb_dst.exit791.if.else329_crit_edge
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call.i798 = call i32 @__ipv6_addr_type(ptr noundef %saddr) #11
  %and.i799 = and i32 %call.i798, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i799)
  %cmp331 = icmp ne i32 %and.i799, 0
  %and333 = and i32 %call.i798, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333)
  %tobool334.not = icmp eq i32 %and333, 0
  %or.cond = and i1 %cmp331, %tobool334.not
  br i1 %or.cond, label %if.end336, label %if.else329.error_crit_edge

if.else329.error_crit_edge:                       ; preds = %if.else329
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end336:                                        ; preds = %if.else329
  %and337 = and i32 %call.i798, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %tobool338.not = icmp eq i32 %and337, 0
  br i1 %tobool338.not, label %if.end336.if.end344_crit_edge, label %if.then339

if.end336.if.end344_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end344

if.then339:                                       ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #13
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext 2, i32 noundef 0, ptr noundef null, ptr noundef %cb) #11
  br label %error

if.end344:                                        ; preds = %if.end336.if.end344_crit_edge, %if.then327, %if.end325.if.end344_crit_edge
  %call345 = call fastcc i32 @ip6_dst_mtu_maybe_forward(ptr noundef %286)
  %309 = call i32 @llvm.umax.i32(i32 %call345, i32 1280)
  %call350 = call fastcc zeroext i1 @ip6_pkt_too_big(ptr noundef %skb, i32 noundef %309)
  %310 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %286, align 4
  br i1 %call350, label %if.then351, label %if.end476

if.then351:                                       ; preds = %if.end344
  %312 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %311, ptr %224, align 8
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %309, ptr noundef null, ptr noundef %cb) #11
  %cmp354.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp354.not, label %if.then351.do.body389_crit_edge, label %do.body363, !prof !107

if.then351.do.body389_crit_edge:                  ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body389

do.body363:                                       ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6373 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %313 = ptrtoint ptr %ipv6373 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ipv6373, align 4
  %315 = ptrtoint ptr %314 to i32
  %316 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i802 = and i32 %316, -16384
  %317 = inttoptr i32 %and.i802 to ptr
  %cpu376 = getelementptr inbounds %struct.thread_info, ptr %317, i32 0, i32 3
  %318 = ptrtoint ptr %cpu376 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %cpu376, align 4
  %arrayidx377 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %319
  %320 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx377, align 4
  %add378 = add i32 %321, %315
  %322 = inttoptr i32 %add378 to ptr
  %syncp379 = getelementptr inbounds %struct.ipstats_mib, ptr %322, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp379)
  %arrayidx381 = getelementptr [37 x i64], ptr %322, i32 0, i32 8
  %323 = ptrtoint ptr %arrayidx381 to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %arrayidx381, align 8
  %add382 = add i64 %324, 1
  store i64 %add382, ptr %arrayidx381, align 8
  %dep_map.i.i803 = getelementptr inbounds %struct.ipstats_mib, ptr %322, i32 0, i32 1, i32 0, i32 1
  %325 = call ptr @llvm.returnaddress(i32 0) #11
  %326 = ptrtoint ptr %325 to i32
  call void @lock_release(ptr noundef %dep_map.i.i803, i32 noundef %326) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %327 = ptrtoint ptr %syncp379 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %syncp379, align 4
  %inc.i.i.i804 = add i32 %328, 1
  store i32 %inc.i.i.i804, ptr %syncp379, align 4
  call fastcc void @local_bh_enable()
  br label %do.body389

do.body389:                                       ; preds = %do.body363, %if.then351.do.body389_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics399 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %329 = ptrtoint ptr %ipv6_statistics399 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ipv6_statistics399, align 4
  %331 = ptrtoint ptr %330 to i32
  %332 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i805 = and i32 %332, -16384
  %333 = inttoptr i32 %and.i805 to ptr
  %cpu402 = getelementptr inbounds %struct.thread_info, ptr %333, i32 0, i32 3
  %334 = ptrtoint ptr %cpu402 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %cpu402, align 4
  %arrayidx403 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %335
  %336 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx403, align 4
  %add404 = add i32 %337, %331
  %338 = inttoptr i32 %add404 to ptr
  %syncp405 = getelementptr inbounds %struct.ipstats_mib, ptr %338, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp405)
  %arrayidx407 = getelementptr [37 x i64], ptr %338, i32 0, i32 8
  %339 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %arrayidx407, align 8
  %add408 = add i64 %340, 1
  store i64 %add408, ptr %arrayidx407, align 8
  %dep_map.i.i806 = getelementptr inbounds %struct.ipstats_mib, ptr %338, i32 0, i32 1, i32 0, i32 1
  %341 = call ptr @llvm.returnaddress(i32 0) #11
  %342 = ptrtoint ptr %341 to i32
  call void @lock_release(ptr noundef %dep_map.i.i806, i32 noundef %342) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %343 = ptrtoint ptr %syncp405 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %syncp405, align 4
  %inc.i.i.i807 = add i32 %344, 1
  store i32 %inc.i.i.i807, ptr %syncp405, align 4
  call fastcc void @local_bh_enable()
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %286, i32 0, i32 6
  %345 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp416.not = icmp eq ptr %346, null
  br i1 %cmp416.not, label %do.body389.do.body451_crit_edge, label %do.body425, !prof !107

do.body389.do.body451_crit_edge:                  ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body451

do.body425:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6435 = getelementptr inbounds %struct.inet6_dev, ptr %346, i32 0, i32 33, i32 1
  %347 = ptrtoint ptr %ipv6435 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ipv6435, align 4
  %349 = ptrtoint ptr %348 to i32
  %350 = ptrtoint ptr %cpu402 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %cpu402, align 4
  %arrayidx439 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %351
  %352 = ptrtoint ptr %arrayidx439 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx439, align 4
  %add440 = add i32 %353, %349
  %354 = inttoptr i32 %add440 to ptr
  %syncp441 = getelementptr inbounds %struct.ipstats_mib, ptr %354, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp441)
  %arrayidx443 = getelementptr [37 x i64], ptr %354, i32 0, i32 21
  %355 = ptrtoint ptr %arrayidx443 to i32
  call void @__asan_load8_noabort(i32 %355)
  %356 = load i64, ptr %arrayidx443, align 8
  %add444 = add i64 %356, 1
  store i64 %add444, ptr %arrayidx443, align 8
  %dep_map.i.i808 = getelementptr inbounds %struct.ipstats_mib, ptr %354, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i808, i32 noundef %342) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %357 = ptrtoint ptr %syncp441 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %syncp441, align 4
  %inc.i.i.i809 = add i32 %358, 1
  store i32 %inc.i.i.i809, ptr %syncp441, align 4
  call fastcc void @local_bh_enable()
  br label %do.body451

do.body451:                                       ; preds = %do.body425, %do.body389.do.body451_crit_edge
  call fastcc void @local_bh_disable()
  %359 = ptrtoint ptr %ipv6_statistics399 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ipv6_statistics399, align 4
  %361 = ptrtoint ptr %360 to i32
  %362 = ptrtoint ptr %cpu402 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %cpu402, align 4
  %arrayidx465 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %363
  %364 = ptrtoint ptr %arrayidx465 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx465, align 4
  %add466 = add i32 %365, %361
  %366 = inttoptr i32 %add466 to ptr
  %syncp467 = getelementptr inbounds %struct.ipstats_mib, ptr %366, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp467)
  %arrayidx469 = getelementptr [37 x i64], ptr %366, i32 0, i32 21
  %367 = ptrtoint ptr %arrayidx469 to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %arrayidx469, align 8
  %add470 = add i64 %368, 1
  store i64 %add470, ptr %arrayidx469, align 8
  %dep_map.i.i810 = getelementptr inbounds %struct.ipstats_mib, ptr %366, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i810, i32 noundef %342) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %369 = ptrtoint ptr %syncp467 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %syncp467, align 4
  %inc.i.i.i811 = add i32 %370, 1
  store i32 %inc.i.i.i811, ptr %syncp467, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup611

if.end476:                                        ; preds = %if.end344
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %311, i32 0, i32 19
  %371 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %hard_header_len, align 2
  %conv478 = zext i16 %372 to i32
  %call479 = call fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef %conv478)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call479)
  %tobool480.not = icmp eq i32 %call479, 0
  br i1 %tobool480.not, label %if.end544, label %if.then481

if.then481:                                       ; preds = %if.end476
  %rt6i_idev.i812 = getelementptr inbounds %struct.rt6_info, ptr %286, i32 0, i32 6
  %373 = ptrtoint ptr %rt6i_idev.i812 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %rt6i_idev.i812, align 4
  %cmp484.not = icmp eq ptr %374, null
  br i1 %cmp484.not, label %if.then481.do.body519_crit_edge, label %do.body493, !prof !107

if.then481.do.body519_crit_edge:                  ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body519

do.body493:                                       ; preds = %if.then481
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6503 = getelementptr inbounds %struct.inet6_dev, ptr %374, i32 0, i32 33, i32 1
  %375 = ptrtoint ptr %ipv6503 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ipv6503, align 4
  %377 = ptrtoint ptr %376 to i32
  %378 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i813 = and i32 %378, -16384
  %379 = inttoptr i32 %and.i813 to ptr
  %cpu506 = getelementptr inbounds %struct.thread_info, ptr %379, i32 0, i32 3
  %380 = ptrtoint ptr %cpu506 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %cpu506, align 4
  %arrayidx507 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %381
  %382 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %arrayidx507, align 4
  %add508 = add i32 %383, %377
  %384 = inttoptr i32 %add508 to ptr
  %syncp509 = getelementptr inbounds %struct.ipstats_mib, ptr %384, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp509)
  %arrayidx511 = getelementptr [37 x i64], ptr %384, i32 0, i32 14
  %385 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load8_noabort(i32 %385)
  %386 = load i64, ptr %arrayidx511, align 8
  %add512 = add i64 %386, 1
  store i64 %add512, ptr %arrayidx511, align 8
  %dep_map.i.i814 = getelementptr inbounds %struct.ipstats_mib, ptr %384, i32 0, i32 1, i32 0, i32 1
  %387 = call ptr @llvm.returnaddress(i32 0) #11
  %388 = ptrtoint ptr %387 to i32
  call void @lock_release(ptr noundef %dep_map.i.i814, i32 noundef %388) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %389 = ptrtoint ptr %syncp509 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %syncp509, align 4
  %inc.i.i.i815 = add i32 %390, 1
  store i32 %inc.i.i.i815, ptr %syncp509, align 4
  call fastcc void @local_bh_enable()
  br label %do.body519

do.body519:                                       ; preds = %do.body493, %if.then481.do.body519_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics529 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %391 = ptrtoint ptr %ipv6_statistics529 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %ipv6_statistics529, align 4
  %393 = ptrtoint ptr %392 to i32
  %394 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i816 = and i32 %394, -16384
  %395 = inttoptr i32 %and.i816 to ptr
  %cpu532 = getelementptr inbounds %struct.thread_info, ptr %395, i32 0, i32 3
  %396 = ptrtoint ptr %cpu532 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %cpu532, align 4
  %arrayidx533 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %397
  %398 = ptrtoint ptr %arrayidx533 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx533, align 4
  %add534 = add i32 %399, %393
  %400 = inttoptr i32 %add534 to ptr
  %syncp535 = getelementptr inbounds %struct.ipstats_mib, ptr %400, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp535)
  %arrayidx537 = getelementptr [37 x i64], ptr %400, i32 0, i32 14
  %401 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %arrayidx537, align 8
  %add538 = add i64 %402, 1
  store i64 %add538, ptr %arrayidx537, align 8
  %dep_map.i.i817 = getelementptr inbounds %struct.ipstats_mib, ptr %400, i32 0, i32 1, i32 0, i32 1
  %403 = call ptr @llvm.returnaddress(i32 0) #11
  %404 = ptrtoint ptr %403 to i32
  call void @lock_release(ptr noundef %dep_map.i.i817, i32 noundef %404) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %405 = ptrtoint ptr %syncp535 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %syncp535, align 4
  %inc.i.i.i818 = add i32 %406, 1
  store i32 %inc.i.i.i818, ptr %syncp535, align 4
  call fastcc void @local_bh_enable()
  br label %drop

if.end544:                                        ; preds = %if.end476
  %407 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %head.i.i, align 8
  %409 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i821 = zext i16 %410 to i32
  %add.ptr.i.i822 = getelementptr i8, ptr %408, i32 %conv.i.i821
  %hop_limit546 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i822, i32 0, i32 4
  %411 = ptrtoint ptr %hop_limit546 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %hop_limit546, align 1
  %dec547 = add i8 %412, -1
  store i8 %dec547, ptr %hop_limit546, align 1
  %413 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %224, align 8
  %415 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %286, align 4
  %call.i823 = call fastcc i32 @nf_hook(i32 noundef 2, ptr noundef %13, ptr noundef null, ptr noundef %skb, ptr noundef %414, ptr noundef %416, ptr noundef nonnull @ip6_forward_finish) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i823)
  %cmp.i824 = icmp eq i32 %call.i823, 1
  br i1 %cmp.i824, label %if.then.i825, label %if.end544.cleanup611_crit_edge

if.end544.cleanup611_crit_edge:                   ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup611

if.then.i825:                                     ; preds = %if.end544
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = call i32 @ip6_forward_finish(ptr noundef %13, ptr noundef null, ptr noundef %skb) #11, !callees !120
  br label %cleanup611

error:                                            ; preds = %if.then339, %if.else329.error_crit_edge, %__in6_dev_get_safely.exit.error_crit_edge
  %cmp551.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp551.not, label %error.do.body586_crit_edge, label %do.body560, !prof !107

error.do.body586_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body586

do.body560:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6570 = getelementptr inbounds %struct.inet6_dev, ptr %retval.0.i, i32 0, i32 33, i32 1
  %417 = ptrtoint ptr %ipv6570 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %ipv6570, align 4
  %419 = ptrtoint ptr %418 to i32
  %420 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i826 = and i32 %420, -16384
  %421 = inttoptr i32 %and.i826 to ptr
  %cpu573 = getelementptr inbounds %struct.thread_info, ptr %421, i32 0, i32 3
  %422 = ptrtoint ptr %cpu573 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %cpu573, align 4
  %arrayidx574 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %423
  %424 = ptrtoint ptr %arrayidx574 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx574, align 4
  %add575 = add i32 %425, %419
  %426 = inttoptr i32 %add575 to ptr
  %syncp576 = getelementptr inbounds %struct.ipstats_mib, ptr %426, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp576)
  %arrayidx578 = getelementptr [37 x i64], ptr %426, i32 0, i32 10
  %427 = ptrtoint ptr %arrayidx578 to i32
  call void @__asan_load8_noabort(i32 %427)
  %428 = load i64, ptr %arrayidx578, align 8
  %add579 = add i64 %428, 1
  store i64 %add579, ptr %arrayidx578, align 8
  %dep_map.i.i827 = getelementptr inbounds %struct.ipstats_mib, ptr %426, i32 0, i32 1, i32 0, i32 1
  %429 = call ptr @llvm.returnaddress(i32 0) #11
  %430 = ptrtoint ptr %429 to i32
  call void @lock_release(ptr noundef %dep_map.i.i827, i32 noundef %430) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %431 = ptrtoint ptr %syncp576 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %syncp576, align 4
  %inc.i.i.i828 = add i32 %432, 1
  store i32 %inc.i.i.i828, ptr %syncp576, align 4
  call fastcc void @local_bh_enable()
  br label %do.body586

do.body586:                                       ; preds = %do.body560, %error.do.body586_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics596 = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 30, i32 1
  %433 = ptrtoint ptr %ipv6_statistics596 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %ipv6_statistics596, align 4
  %435 = ptrtoint ptr %434 to i32
  %436 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i829 = and i32 %436, -16384
  %437 = inttoptr i32 %and.i829 to ptr
  %cpu599 = getelementptr inbounds %struct.thread_info, ptr %437, i32 0, i32 3
  %438 = ptrtoint ptr %cpu599 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %cpu599, align 4
  %arrayidx600 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %439
  %440 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %arrayidx600, align 4
  %add601 = add i32 %441, %435
  %442 = inttoptr i32 %add601 to ptr
  %syncp602 = getelementptr inbounds %struct.ipstats_mib, ptr %442, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp602)
  %arrayidx604 = getelementptr [37 x i64], ptr %442, i32 0, i32 10
  %443 = ptrtoint ptr %arrayidx604 to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %arrayidx604, align 8
  %add605 = add i64 %444, 1
  store i64 %add605, ptr %arrayidx604, align 8
  %dep_map.i.i830 = getelementptr inbounds %struct.ipstats_mib, ptr %442, i32 0, i32 1, i32 0, i32 1
  %445 = call ptr @llvm.returnaddress(i32 0) #11
  %446 = ptrtoint ptr %445 to i32
  call void @lock_release(ptr noundef %dep_map.i.i830, i32 noundef %446) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %447 = ptrtoint ptr %syncp602 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %syncp602, align 4
  %inc.i.i.i831 = add i32 %448, 1
  store i32 %inc.i.i.i831, ptr %syncp602, align 4
  call fastcc void @local_bh_enable()
  br label %drop

drop:                                             ; preds = %do.body586, %do.body519, %do.body273, %cleanup, %do.body49, %skb_warn_if_lro.exit, %if.end10.drop_crit_edge, %if.end.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup611

cleanup611:                                       ; preds = %drop, %if.then.i825, %if.end544.cleanup611_crit_edge, %do.body451, %cleanup.thread, %do.body128, %if.then81.cleanup611_crit_edge
  %retval.2 = phi i32 [ -22, %drop ], [ -110, %do.body128 ], [ -90, %do.body451 ], [ 0, %if.then81.cleanup611_crit_edge ], [ %call166, %cleanup.thread ], [ %call1.i, %if.then.i825 ], [ %call.i823, %if.end544.cleanup611_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6_call_ra_chain(ptr noundef %skb, i32 noundef %sel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @ip6_ra_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ip6_ra_chain to i32))
  %ra.055 = load ptr, ptr @ip6_ra_chain, align 4
  %tobool.not56 = icmp eq ptr %ra.055, null
  br i1 %tobool.not56, label %entry.cleanup34_crit_edge, label %for.body.lr.ph

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup27.for.body_crit_edge, %for.body.lr.ph
  %ra.059 = phi ptr [ %ra.055, %for.body.lr.ph ], [ %ra.0, %cleanup27.for.body_crit_edge ]
  %last.057 = phi ptr [ null, %for.body.lr.ph ], [ %last.3, %cleanup27.for.body_crit_edge ]
  %sk1 = getelementptr inbounds %struct.ip6_ra_chain, ptr %ra.059, i32 0, i32 1
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %for.body.cleanup27_crit_edge, label %land.lhs.true

for.body.cleanup27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

land.lhs.true:                                    ; preds = %for.body
  %sel3 = getelementptr inbounds %struct.ip6_ra_chain, ptr %ra.059, i32 0, i32 2
  %3 = ptrtoint ptr %sel3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sel3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sel)
  %cmp = icmp eq i32 %4, %sel
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.cleanup27_crit_edge

land.lhs.true.cleanup27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

land.lhs.true4:                                   ; preds = %land.lhs.true
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.then_crit_edge, label %lor.lhs.false

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp8 = icmp eq i32 %6, %10
  br i1 %cmp8, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup27_crit_edge

lor.lhs.false.cleanup27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true4.if.then_crit_edge
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.if.end_crit_edge, label %inet6_sk.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

inet6_sk.exit:                                    ; preds = %if.then
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pinet6.i, align 8
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %inet6_sk.exit.if.end_crit_edge, label %land.lhs.true10

inet6_sk.exit.if.end_crit_edge:                   ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true10:                                  ; preds = %inet6_sk.exit
  %rtalert_isolate = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %rtalert_isolate to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %rtalert_isolate, align 2
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %tobool11.not = icmp eq i16 %bf.clear, 0
  br i1 %tobool11.not, label %land.lhs.true10.if.end_crit_edge, label %land.lhs.true12

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 127
  %20 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %17, %21
  br i1 %cmp.i.not, label %land.lhs.true12.if.end_crit_edge, label %land.lhs.true12.cleanup27_crit_edge

land.lhs.true12.cleanup27_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true12.if.end_crit_edge, %land.lhs.true10.if.end_crit_edge, %inet6_sk.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %tobool18.not = icmp eq ptr %last.057, null
  br i1 %tobool18.not, label %if.end.cleanup27_crit_edge, label %if.then19

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

if.then19:                                        ; preds = %if.end
  %call20 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.then19.cleanup27_crit_edge, label %if.then22

if.then19.cleanup27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 @rawv6_rcv(ptr noundef nonnull %last.057, ptr noundef nonnull %call20) #11
  br label %cleanup27

cleanup27:                                        ; preds = %if.then22, %if.then19.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %land.lhs.true12.cleanup27_crit_edge, %lor.lhs.false.cleanup27_crit_edge, %land.lhs.true.cleanup27_crit_edge, %for.body.cleanup27_crit_edge
  %last.3 = phi ptr [ %last.057, %lor.lhs.false.cleanup27_crit_edge ], [ %last.057, %land.lhs.true.cleanup27_crit_edge ], [ %last.057, %for.body.cleanup27_crit_edge ], [ %last.057, %land.lhs.true12.cleanup27_crit_edge ], [ %2, %if.then19.cleanup27_crit_edge ], [ %2, %if.then22 ], [ %2, %if.end.cleanup27_crit_edge ]
  %22 = ptrtoint ptr %ra.059 to i32
  call void @__asan_load4_noabort(i32 %22)
  %ra.0 = load ptr, ptr %ra.059, align 4
  %tobool.not = icmp eq ptr %ra.0, null
  br i1 %tobool.not, label %for.end, label %cleanup27.for.body_crit_edge

cleanup27.for.body_crit_edge:                     ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup27
  %tobool30.not = icmp eq ptr %last.3, null
  br i1 %tobool30.not, label %for.end.cleanup34_crit_edge, label %if.then31

for.end.cleanup34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @rawv6_rcv(ptr noundef nonnull %last.3, ptr noundef %skb) #11
  br label %cleanup34

cleanup34:                                        ; preds = %if.then31, %for.end.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ 1, %if.then31 ], [ 0, %entry.cleanup34_crit_edge ], [ 0, %for.end.cleanup34_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @ip6_ra_lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_input(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_send_redirect(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6_dst_mtu_maybe_forward(ptr nocapture noundef readonly %dst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 2
  %0 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i.i.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr i32, ptr %2, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end5.rcu_read_lock.exit_crit_edge
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst, align 4
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 80
  %13 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i2 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i2, label %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.__in6_dev_get.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i3 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

land.lhs.true.i4:                                 ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i4.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i4.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i4
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i5

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__in6_dev_get.exit

if.then.i5:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 313, ptr noundef nonnull @.str.8) #11
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i5, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i4.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %rcu_read_lock.exit.__in6_dev_get.exit_crit_edge
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %__in6_dev_get.exit.if.end9_crit_edge, label %if.then8

__in6_dev_get.exit.if.end9_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mtu6 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 2
  %15 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu6, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %__in6_dev_get.exit.if.end9_crit_edge
  %mtu.0 = phi i32 [ %16, %if.then8 ], [ 1280, %__in6_dev_get.exit.if.end9_crit_edge ]
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i6, label %if.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end9
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  %17 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i13 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %out

out:                                              ; preds = %rcu_read_unlock.exit, %if.then.out_crit_edge
  %mtu.1 = phi i32 [ %6, %if.then.out_crit_edge ], [ %mtu.0, %rcu_read_unlock.exit ]
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 13
  %21 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lwtstate, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %out.if.end.i_crit_edge, label %land.lhs.true.i.i

out.if.end.i_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %out
  %flags.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i.i, align 2
  %25 = and i16 %24, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i15

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i15:                                ; preds = %land.lhs.true.i.i
  %headroom.i = getelementptr inbounds %struct.lwtunnel_state, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %headroom.i, align 4
  %conv.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mtu.1, i32 %conv.i)
  %cmp.i = icmp ugt i32 %mtu.1, %conv.i
  br i1 %cmp.i, label %land.lhs.true.i15.lwtunnel_headroom.exit_crit_edge, label %land.lhs.true.i15.if.end.i_crit_edge

land.lhs.true.i15.if.end.i_crit_edge:             ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i15.lwtunnel_headroom.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %lwtunnel_headroom.exit

if.end.i:                                         ; preds = %land.lhs.true.i15.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %out.if.end.i_crit_edge
  br label %lwtunnel_headroom.exit

lwtunnel_headroom.exit:                           ; preds = %if.end.i, %land.lhs.true.i15.lwtunnel_headroom.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %conv.i, %land.lhs.true.i15.lwtunnel_headroom.exit_crit_edge ]
  %sub = sub i32 %mtu.1, %retval.0.i
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ip6_pkt_too_big(ptr noundef %skb, i32 noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mtu)
  %cmp.not = icmp ugt i32 %1, %mtu
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %frag_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp ne i16 %3, 0
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mtu)
  %cmp5 = icmp ugt i32 %conv, %mtu
  %or.cond = and i1 %tobool.not, %cmp5
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end8:                                          ; preds = %if.end
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %4 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ignore_df, align 8
  %5 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end11:                                         ; preds = %if.end8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not = icmp eq i16 %9, 0
  br i1 %tobool.i.not, label %if.end11.if.end17_crit_edge, label %land.lhs.true13

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end11
  %call14 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %mtu) #11
  br i1 %call14, label %land.lhs.true13.return_crit_edge, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true13.return_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  br label %return

return:                                           ; preds = %if.end17, %land.lhs.true13.return_crit_edge, %if.end8.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end17 ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ false, %if.end8.return_crit_edge ], [ false, %land.lhs.true13.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow(ptr noundef %skb, i32 noundef %headroom) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.skb_cloned.exit_crit_edge, label %land.rhs.i

entry.skb_cloned.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_cloned.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br label %skb_cloned.exit

skb_cloned.exit:                                  ; preds = %land.rhs.i, %entry.skb_cloned.exit_crit_edge
  %5 = phi i1 [ true, %entry.skb_cloned.exit_crit_edge ], [ %cmp.i.not, %land.rhs.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %headroom)
  %tobool.not.i3 = icmp uge i32 %sub.ptr.sub.i.i, %headroom
  %or.cond.i = and i1 %5, %tobool.not.i3
  br i1 %or.cond.i, label %skb_cloned.exit.__skb_cow.exit_crit_edge, label %if.then3.i

skb_cloned.exit.__skb_cow.exit_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_cow.exit

if.then3.i:                                       ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %headroom, i32 %sub.ptr.sub.i.i) #11
  %add.i = add i32 %10, 127
  %and.i4 = and i32 %add.i, -128
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4, i32 noundef 0, i32 noundef 2592) #11
  br label %__skb_cow.exit

__skb_cow.exit:                                   ; preds = %if.then3.i, %skb_cloned.exit.__skb_cow.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.then3.i ], [ 0, %skb_cloned.exit.__skb_cow.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %skb_dst.exit.do.body14_crit_edge, label %do.body, !prof !107

skb_dst.exit.do.body14_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14

do.body:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 33, i32 1
  %8 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipv6, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i122 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i122 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx7 = getelementptr [37 x i64], ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx7, align 8
  %add8 = add i64 %19, 1
  store i64 %add8, ptr %arrayidx7, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1, i32 0, i32 1
  %20 = tail call ptr @llvm.returnaddress(i32 0) #11
  %21 = ptrtoint ptr %20 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %22 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body14

do.body14:                                        ; preds = %do.body, %skb_dst.exit.do.body14_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %24 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipv6_statistics, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i123 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i123 to ptr
  %cpu25 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu25, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %32, %26
  %33 = inttoptr i32 %add27 to ptr
  %syncp28 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp28)
  %arrayidx30 = getelementptr [37 x i64], ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx30, align 8
  %add31 = add i64 %35, 1
  store i64 %add31, ptr %arrayidx30, align 8
  %dep_map.i.i124 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1, i32 0, i32 1
  %36 = tail call ptr @llvm.returnaddress(i32 0) #11
  %37 = ptrtoint ptr %36 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i124, i32 noundef %37) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %38 = ptrtoint ptr %syncp28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %syncp28, align 4
  %inc.i.i.i125 = add i32 %39, 1
  store i32 %inc.i.i.i125, ptr %syncp28, align 4
  tail call fastcc void @local_bh_enable()
  %40 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp39.not = icmp eq ptr %41, null
  br i1 %cmp39.not, label %do.body14.if.end73_crit_edge, label %if.then46, !prof !107

do.body14.if.end73_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then46:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %conv = zext i32 %43 to i64
  %ipv660 = getelementptr inbounds %struct.inet6_dev, ptr %41, i32 0, i32 33, i32 1
  %44 = ptrtoint ptr %ipv660 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ipv660, align 4
  %arrayidx62 = getelementptr [37 x i64], ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %arrayidx62 to i32
  %47 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu25, align 4
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx66, align 4
  %add67 = add i32 %50, %46
  %51 = inttoptr i32 %add67 to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %51, align 8
  %add68 = add i64 %53, %conv
  store i64 %add68, ptr %51, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then46, %do.body14.if.end73_crit_edge
  %len80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %54 = ptrtoint ptr %len80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len80, align 4
  %conv81 = zext i32 %55 to i64
  %56 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ipv6_statistics, align 4
  %arrayidx91 = getelementptr [37 x i64], ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %arrayidx91 to i32
  %59 = ptrtoint ptr %cpu25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu25, align 4
  %arrayidx95 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx95, align 4
  %add96 = add i32 %62, %58
  %63 = inttoptr i32 %add96 to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %63, align 8
  %add97 = add i64 %65, %conv81
  store i64 %add97, ptr %63, align 8
  %offload_l3_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %66 = ptrtoint ptr %offload_l3_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %bf.load = load i32, ptr %offload_l3_fwd_mark, align 2
  %67 = and i32 %bf.load, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool102.not = icmp eq i32 %67, 0
  br i1 %tobool102.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end104:                                        ; preds = %if.end73
  %68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %68, align 8
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %0, align 8
  %and.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end104.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.end104.dst_output.exit_crit_edge:              ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.end104
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !107

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.end104.dst_output.exit_crit_edge
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %73, -2
  %74 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %76(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %dst_output.exit, %if.then103
  %retval.0 = phi i32 [ 0, %if.then103 ], [ %call1.i, %dst_output.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_fraglist_init(ptr noundef %skb, i32 noundef %hlen, ptr nocapture noundef writeonly %prevhdr, i8 noundef zeroext %nexthdr, i32 noundef %frag_id, ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prevhdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 44, ptr %prevhdr, align 1
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %2, i32 %conv.i
  %call1 = tail call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef %hlen, i32 noundef 2592) #11
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %iter, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %frag_list, align 8
  %frag = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 1
  %10 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %frag, align 4
  %11 = load ptr, ptr %end.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %frag_list.i, align 8
  %offset = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %offset, align 4
  %hlen4 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 3
  %14 = ptrtoint ptr %hlen4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %hlen, ptr %hlen4, align 4
  %frag_id5 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 4
  %15 = ptrtoint ptr %frag_id5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %frag_id, ptr %frag_id5, align 4
  %nexthdr6 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 5
  %16 = ptrtoint ptr %nexthdr6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %nexthdr, ptr %nexthdr6, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %18, %hlen
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %20)
  %cmp.i = icmp ult i32 %sub.i, %20
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !107

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

__skb_pull.exit:                                  ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %22, i32 %hlen
  %add.ptr.i50 = getelementptr i8, ptr %add.ptr.i48, i32 -8
  %idx.neg.i = sub i32 0, %hlen
  %add.ptr.i53 = getelementptr i8, ptr %add.ptr.i50, i32 %idx.neg.i
  store ptr %add.ptr.i53, ptr %data.i, align 4
  %add.i55 = add i32 %18, 8
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i55, ptr %len1.i, align 4
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i53 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i58 = trunc i32 %sub.ptr.sub.i to i16
  %26 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i58, ptr %network_header.i, align 4
  %conv.i62 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i63 = getelementptr i8, ptr %25, i32 %conv.i62
  %27 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iter, align 4
  %29 = call ptr @memcpy(ptr %add.ptr.i63, ptr %28, i32 %hlen)
  %30 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %nexthdr, ptr %add.ptr.i50, align 4
  %reserved = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr.i50, i32 0, i32 1
  %31 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reserved, align 1
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr.i50, i32 0, i32 2
  %32 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %frag_off, align 2
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr.i50, i32 0, i32 3
  %33 = ptrtoint ptr %identification to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %frag_id, ptr %identification, align 4
  %34 = load i32, ptr %len1.i, align 4
  %35 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i, align 8
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp10.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp10.not.i.i, label %__skb_pull.exit.skb_pagelen.exit_crit_edge, label %for.body.preheader.i.i

__skb_pull.exit.skb_pagelen.exit_crit_edge:       ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_pagelen.exit

for.body.preheader.i.i:                           ; preds = %__skb_pull.exit
  %conv.i.i = zext i8 %40 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %38, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %41 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i = add i32 %42, %len.011.i.i
  %cmp.i.i = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.skb_pagelen.exit_crit_edge

for.body.i.i.skb_pagelen.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i.skb_pagelen.exit_crit_edge, %__skb_pull.exit.skb_pagelen.exit_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %__skb_pull.exit.skb_pagelen.exit_crit_edge ], [ %add.i.i, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  %sub.i.i = sub i32 %34, %36
  %add.i64 = add i32 %len.0.lcssa.i.i, %sub.i.i
  %43 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %len.0.lcssa.i.i, ptr %data_len.i, align 8
  %44 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add.i64, ptr %len1.i, align 4
  %45 = trunc i32 %add.i64 to i16
  %conv = add i16 %45, -40
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i, align 8
  %48 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %network_header.i, align 4
  %conv.i.i67 = zext i16 %49 to i32
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %conv.i.i67
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv, ptr %payload_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %skb_pagelen.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skb_pagelen.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6_fraglist_prepare(ptr nocapture noundef readonly %skb, ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frag1 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %frag1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frag1, align 4
  %hlen2 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 3
  %2 = ptrtoint ptr %hlen2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hlen2, align 4
  %idx.neg.i = sub i32 0, %3
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %add.ptr.i = getelementptr i8, ptr %6, i32 -8
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %11, 8
  %add.ptr.i39 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  store ptr %add.ptr.i39, ptr %data.i, align 4
  %add.i41 = add i32 %add.i, %3
  store i32 %add.i41, ptr %len1.i, align 4
  %sub.ptr.lhs.cast.i44 = ptrtoint ptr %add.ptr.i39 to i32
  %sub.ptr.sub.i46 = sub i32 %sub.ptr.lhs.cast.i44, %sub.ptr.rhs.cast.i
  %conv.i47 = trunc i32 %sub.ptr.sub.i46 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i47, ptr %network_header.i, align 4
  %conv.i50 = and i32 %sub.ptr.sub.i46, 65535
  %add.ptr.i51 = getelementptr i8, ptr %8, i32 %conv.i50
  %13 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iter, align 4
  %15 = call ptr @memcpy(ptr %add.ptr.i51, ptr %14, i32 %3)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %offset = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 2
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %sub = sub i32 -8, %3
  %sub5 = add i32 %sub, %17
  %add = add i32 %sub5, %19
  store i32 %add, ptr %offset, align 4
  %nexthdr = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 5
  %20 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nexthdr, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %add.ptr.i, align 4
  %reserved = getelementptr i8, ptr %6, i32 -7
  %23 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %reserved, align 1
  %24 = load i32, ptr %offset, align 4
  %conv = trunc i32 %24 to i16
  %frag_off = getelementptr i8, ptr %6, i32 -6
  %25 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %frag_off, align 2
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv10 = or i16 %conv, 1
  %28 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv10, ptr %frag_off, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %frag_id = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 4
  %29 = ptrtoint ptr %frag_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frag_id, align 4
  %identification = getelementptr i8, ptr %6, i32 -4
  %31 = ptrtoint ptr %identification to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %identification, align 4
  %32 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len1.i, align 4
  %34 = trunc i32 %33 to i16
  %conv13 = add i16 %34, -40
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %37 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %38 to i32
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %conv.i.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv13, ptr %payload_len, align 4
  tail call fastcc void @ip6_copy_metadata(ptr noundef %1, ptr noundef %skb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_copy_metadata(ptr nocapture noundef %to, ptr nocapture noundef readonly %from) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = and i16 %bf.load, -8192
  %pkt_type1 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load2 = load i16, ptr %pkt_type1, align 8
  %bf.clear = and i16 %bf.load2, 8191
  %bf.set = or i16 %bf.clear, %bf.lshr
  store i16 %bf.set, ptr %pkt_type1, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority, align 4
  %priority3 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %priority3, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 8
  %protocol4 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %protocol4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %entry.skb_dst_drop.exit_crit_edge, label %if.then.i

entry.skb_dst_drop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %10, -2
  %11 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %11) #11
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %8, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %entry.skb_dst_drop.exit_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i28 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i28, label %skb_dst_drop.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i

skb_dst_drop.exit.skb_dst.exit_crit_edge:         ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %skb_dst_drop.exit
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %skb_dst_drop.exit.skb_dst.exit_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %and25.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not.i29 = icmp eq i32 %and25.i, 0
  br i1 %tobool.not.i29, label %skb_dst.exit.dst_clone.exit_crit_edge, label %if.then.i30

skb_dst.exit.dst_clone.exit_crit_edge:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_clone.exit

if.then.i30:                                      ; preds = %skb_dst.exit
  %18 = inttoptr i32 %and25.i to ptr
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 231, i32 noundef 9, ptr noundef null) #11
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %skb_dst.exit.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 3
  %20 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i29, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and25.i, ptr %8, align 8
  %22 = getelementptr inbounds %struct.anon.83, ptr %from, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = getelementptr inbounds %struct.anon.83, ptr %to, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %30, align 4
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 8
  %32 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash.i, align 4
  %hash1.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 8
  %34 = ptrtoint ptr %hash1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hash1.i, align 4
  %35 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load.i32 = load i16, ptr %pkt_type, align 8
  %36 = ptrtoint ptr %pkt_type1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load3.i = load i16, ptr %pkt_type1, align 8
  %bf.shl.i33 = and i16 %bf.load.i32, 64
  %bf.clear4.i34 = and i16 %bf.load3.i, -65
  %bf.set.i35 = or i16 %bf.clear4.i34, %bf.shl.i33
  store i16 %bf.set.i35, ptr %pkt_type1, align 8
  %bf.load5.i = load i16, ptr %pkt_type, align 8
  %bf.shl12.i = and i16 %bf.load5.i, 128
  %bf.clear13.i = and i16 %bf.set.i35, -129
  %bf.set14.i = or i16 %bf.clear13.i, %bf.shl12.i
  store i16 %bf.set14.i, ptr %pkt_type1, align 8
  %tc_index = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 4
  %37 = ptrtoint ptr %tc_index to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tc_index, align 2
  %tc_index6 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 4
  %39 = ptrtoint ptr %tc_index6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %tc_index6, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 5
  %40 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i36 = and i32 %41, -8
  %42 = inttoptr i32 %and.i.i36 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %dst_clone.exit.nf_conntrack_put.exit.i_crit_edge, label %land.lhs.true.i.i

dst_clone.exit.nf_conntrack_put.exit.i_crit_edge: ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_conntrack_put.exit.i

land.lhs.true.i.i:                                ; preds = %dst_clone.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %42, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr nonnull %42, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %42, ptr nonnull %42, i32 1, ptr nonnull elementtype(i32) %42) #11, !srcloc !128
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i38, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !108

if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_conntrack_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %42, i32 noundef 3) #11
  br label %nf_conntrack_put.exit.i

if.then.i.i38:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %42) #11
  br label %nf_conntrack_put.exit.i

nf_conntrack_put.exit.i:                          ; preds = %if.then.i.i38, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge, %dst_clone.exit.nf_conntrack_put.exit.i_crit_edge
  %slow_gro.i39 = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 3
  %44 = ptrtoint ptr %slow_gro.i39 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load.i40 = load i32, ptr %slow_gro.i39, align 2
  %bf.cast.i = and i32 %bf.load.i40, 4096
  %45 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %bf.load2.i = load i32, ptr %slow_gro.i, align 2
  %bf.clear3.i = and i32 %bf.load2.i, -4097
  %bf.set.i41 = or i32 %bf.clear3.i, %bf.cast.i
  store i32 %bf.set.i41, ptr %slow_gro.i, align 2
  %_nfct.i7.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 5
  %46 = ptrtoint ptr %_nfct.i7.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %_nfct.i7.i, align 8
  %48 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %_nfct.i.i, align 8
  %49 = load i32, ptr %_nfct.i7.i, align 8
  %and.i.i.i = and i32 %49, -8
  %50 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %nf_conntrack_put.exit.i.nf_copy.exit_crit_edge, label %if.then.i.i.i

nf_conntrack_put.exit.i.nf_copy.exit_crit_edge:   ; preds = %nf_conntrack_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_copy.exit

if.then.i.i.i:                                    ; preds = %nf_conntrack_put.exit.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %50, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull %50, i32 1, i32 3, i32 1) #11
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %50, ptr nonnull %50, i32 1, ptr nonnull elementtype(i32) %50) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i8.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i8.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i8.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !107

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i8.i, 1
  %52 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %.not.i.i.i.i.i.i = icmp sgt i32 %52, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.nf_copy.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.nf_copy.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_copy.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %50, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %nf_copy.exit

nf_copy.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.nf_copy.exit_crit_edge, %nf_conntrack_put.exit.i.nf_copy.exit_crit_edge
  %53 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i.i = load i16, ptr %pkt_type, align 8
  %54 = and i16 %bf.load.i.i, 2048
  %55 = ptrtoint ptr %pkt_type1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load3.i.i = load i16, ptr %pkt_type1, align 8
  %bf.clear4.i.i = and i16 %bf.load3.i.i, -2049
  %bf.set.i.i = or i16 %bf.clear4.i.i, %54
  store i16 %bf.set.i.i, ptr %pkt_type1, align 8
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 13
  %56 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %active_extensions.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i42 = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i42, label %nf_copy.exit.skb_ext_put.exit.i_crit_edge, label %if.then.i.i43

nf_copy.exit.skb_ext_put.exit.i_crit_edge:        ; preds = %nf_copy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_ext_put.exit.i

if.then.i.i43:                                    ; preds = %nf_copy.exit
  call void @__sanitizer_cov_trace_pc() #13
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 22
  %58 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %extensions.i.i, align 8
  tail call void @__skb_ext_put(ptr noundef %59) #11
  br label %skb_ext_put.exit.i

skb_ext_put.exit.i:                               ; preds = %if.then.i.i43, %nf_copy.exit.skb_ext_put.exit.i_crit_edge
  %active_extensions.i2.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 13
  %60 = ptrtoint ptr %active_extensions.i2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %active_extensions.i2.i, align 1
  %62 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %active_extensions.i.i, align 1
  %63 = load i8, ptr %active_extensions.i2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i3.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i3.i, label %skb_ext_put.exit.i.skb_ext_copy.exit_crit_edge, label %if.then.i5.i

skb_ext_put.exit.i.skb_ext_copy.exit_crit_edge:   ; preds = %skb_ext_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_ext_copy.exit

if.then.i5.i:                                     ; preds = %skb_ext_put.exit.i
  %extensions.i4.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 22
  %64 = ptrtoint ptr %extensions.i4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %extensions.i4.i, align 8
  %call.i.i.i.i.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %65, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %65, i32 1, i32 3, i32 1) #11
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !107

if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i5.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %67 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %.not.i.i.i.i.i45 = icmp sgt i32 %67, -1
  br i1 %.not.i.i.i.i.i45, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %65, i32 noundef %.sink.i.i.i.i.i) #11
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %extensions3.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 22
  %68 = ptrtoint ptr %extensions3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %extensions3.i.i, align 8
  br label %skb_ext_copy.exit

skb_ext_copy.exit:                                ; preds = %refcount_inc.exit.i.i, %skb_ext_put.exit.i.skb_ext_copy.exit_crit_edge
  %secmark.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 12
  %69 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %secmark.i, align 8
  %secmark1.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 12
  %71 = ptrtoint ptr %secmark1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %secmark1.i, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ip6_frag_init(ptr nocapture noundef readonly %skb, i32 noundef %hlen, i32 noundef %mtu, i16 noundef zeroext %needed_tailroom, i32 noundef %hdr_room, ptr noundef %prevhdr, i8 noundef zeroext %nexthdr, i32 noundef %frag_id, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %prevhdr, ptr %state, align 4
  %nexthdr2 = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 9
  %1 = ptrtoint ptr %nexthdr2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %nexthdr, ptr %nexthdr2, align 4
  %frag_id3 = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 8
  %2 = ptrtoint ptr %frag_id3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %frag_id, ptr %frag_id3, align 4
  %hlen4 = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %hlen4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %hlen, ptr %hlen4, align 4
  %mtu5 = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %mtu5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mtu, ptr %mtu5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %sub = sub i32 %6, %hlen
  %left = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %left, align 4
  %ptr = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 5
  %8 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %hlen, ptr %ptr, align 4
  %hroom = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 6
  %9 = ptrtoint ptr %hroom to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %hdr_room, ptr %hroom, align 4
  %conv = zext i16 %needed_tailroom to i32
  %troom = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 7
  %10 = ptrtoint ptr %troom to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %troom, align 4
  %offset = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %offset, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip6_frag_next(ptr noundef %skb, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %left = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %left, align 4
  %mtu = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5)
  %and = and i32 %6, -8
  %len.1 = select i1 %cmp, i32 %and, i32 %6
  %hlen = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hlen, align 4
  %hroom = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 6
  %9 = ptrtoint ptr %hroom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hroom, align 4
  %troom = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 7
  %11 = ptrtoint ptr %troom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %troom, align 4
  %add = add i32 %len.1, 8
  %add7 = add i32 %add, %8
  %add8 = add i32 %add7, %10
  %add9 = add i32 %add8, %12
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add9, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %entry
  tail call fastcc void @ip6_copy_metadata(ptr noundef nonnull %call.i, ptr noundef %skb)
  %13 = ptrtoint ptr %hroom to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hroom, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %14
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %18, i32 %14
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %19 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hlen, align 4
  %add16 = add i32 %add, %20
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add16) #11
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i125 = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i126 = getelementptr i8, ptr %24, i32 %conv.i125
  %26 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hlen, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i126, i32 %27
  %28 = trunc i32 %27 to i16
  %29 = add i16 %28, 8
  %conv23 = add i16 %29, %conv.i
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %30 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv23, ptr %transport_header, align 2
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %if.end12.if.end26_crit_edge, label %if.then25

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef nonnull %33) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end12.if.end26_crit_edge
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %36 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i, align 4
  %conv.i129 = zext i16 %37 to i32
  %add.ptr.i130 = getelementptr i8, ptr %35, i32 %conv.i129
  %38 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hlen, align 4
  %data.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data.i131 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i131, align 4
  %42 = call ptr @memcpy(ptr %add.ptr.i130, ptr %41, i32 %39)
  %43 = load ptr, ptr %head.i, align 8
  %44 = load i16, ptr %network_header.i, align 4
  %conv.i134 = zext i16 %44 to i32
  %add.ptr.i135 = getelementptr i8, ptr %43, i32 %conv.i134
  %head.i136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %45 = ptrtoint ptr %head.i136 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i136, align 8
  %network_header.i137 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %47 = ptrtoint ptr %network_header.i137 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i137, align 4
  %conv.i138 = zext i16 %48 to i32
  %add.ptr.i139 = getelementptr i8, ptr %46, i32 %conv.i138
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i139 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr31 = getelementptr i8, ptr %add.ptr.i135, i32 %sub.ptr.sub
  %49 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 44, ptr %add.ptr31, align 1
  %nexthdr = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 9
  %50 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nexthdr, align 4
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %add.ptr, align 4
  %reserved = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr, i32 0, i32 1
  %53 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %reserved, align 1
  %frag_id = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 8
  %54 = ptrtoint ptr %frag_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %frag_id, align 4
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr, i32 0, i32 3
  %56 = ptrtoint ptr %identification to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %identification, align 4
  %ptr = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 5
  %57 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr, align 4
  %59 = load ptr, ptr %head.i, align 8
  %60 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %transport_header, align 2
  %conv.i141 = zext i16 %61 to i32
  %add.ptr.i142 = getelementptr i8, ptr %59, i32 %conv.i141
  %call34 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %58, ptr noundef %add.ptr.i142, i32 noundef %len.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end45, label %do.body39, !prof !108

do.body39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 794, 0\0A.popsection", ""() #11, !srcloc !131
  unreachable

do.end45:                                         ; preds = %if.end26
  %62 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %left, align 4
  %sub = sub i32 %63, %len.1
  store i32 %sub, ptr %left, align 4
  %offset = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 4
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 4
  %conv47 = trunc i32 %65 to i16
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr, i32 0, i32 2
  %66 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv47, ptr %frag_off, align 2
  %67 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp49.not = icmp eq i32 %67, 0
  br i1 %cmp49.not, label %do.end45.if.end55_crit_edge, label %if.then51

do.end45.if.end55_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then51:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #13
  %conv54 = or i16 %conv47, 1
  %68 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv54, ptr %frag_off, align 2
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.end45.if.end55_crit_edge
  %len56 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %69 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len56, align 4
  %71 = trunc i32 %70 to i16
  %conv58 = add i16 %71, -40
  %72 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %head.i, align 8
  %74 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %75 to i32
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 %conv.i.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv58, ptr %payload_len, align 4
  %77 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ptr, align 4
  %add61 = add i32 %78, %len.1
  store i32 %add61, ptr %ptr, align 4
  %79 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offset, align 4
  %add63 = add i32 %80, %len.1
  store i32 %add63, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end55 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %output) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.ip6_frag_state, align 4
  %prevhdr = alloca ptr, align 4
  %iter = alloca %struct.ip6_fraglist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %skb_dst.exit.cond.end_crit_edge, label %land.lhs.true

skb_dst.exit.cond.end_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true:                                    ; preds = %skb_dst.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %12, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  %13 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %18, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11) to i32)
  %19 = inttoptr i32 %add.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load volatile i16, ptr %19, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %22 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i19.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool2.not = icmp eq i16 %21, 0
  br i1 %tobool2.not, label %cond.true, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %29 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i734 = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i734)
  %tobool.i.not.i = icmp eq i32 %and.i.i734, 0
  br i1 %tobool.i.not.i, label %cond.true.cond.end_crit_edge, label %cond.true.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true.i:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pinet6.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.true.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %skb_dst.exit.cond.end_crit_edge
  %cond = phi ptr [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %skb_dst.exit.cond.end_crit_edge ], [ %31, %cond.true.i ], [ null, %cond.true.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %state) #11
  %32 = call ptr @memset(ptr %state, i32 255, i32 40)
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prevhdr) #11
  %36 = ptrtoint ptr %prevhdr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %prevhdr, align 4, !annotation !119
  %call4 = call i32 @ip6_find_1stfragopt(ptr noundef %skb, ptr noundef nonnull %prevhdr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %cond.end.fail_crit_edge, label %if.end

cond.end.fail_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %cond.end
  %37 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prevhdr, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i, align 4
  %conv.i735 = zext i16 %44 to i32
  %add.ptr.i = getelementptr i8, ptr %42, i32 %conv.i735
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call6 = call fastcc i32 @ip6_skb_dst_mtu(ptr noundef %skb)
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %45 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load = load i16, ptr %ignore_df, align 8
  %46 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool7.not = icmp eq i16 %46, 0
  br i1 %tobool7.not, label %land.rhs, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.rhs:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %call6)
  %cmp8 = icmp ugt i32 %48, %call6
  br i1 %cmp8, label %land.rhs.fail_toobig_crit_edge, label %land.rhs.if.end12_crit_edge, !prof !107

land.rhs.if.end12_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

land.rhs.fail_toobig_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_toobig

if.end12:                                         ; preds = %land.rhs.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %49 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %frag_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool13.not = icmp eq i16 %50, 0
  br i1 %tobool13.not, label %if.end12.if.end30_crit_edge, label %if.then14

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then14:                                        ; preds = %if.end12
  %conv = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %conv)
  %cmp18 = icmp ult i32 %call6, %conv
  br i1 %cmp18, label %if.then14.fail_toobig_crit_edge, label %if.end21

if.then14.fail_toobig_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_toobig

if.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %51 = call i32 @llvm.umax.i32(i32 %conv, i32 1280)
  br label %if.end30

if.end30:                                         ; preds = %if.end21, %if.end12.if.end30_crit_edge
  %mtu.0 = phi i32 [ %51, %if.end21 ], [ %call6, %if.end12.if.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %cond, null
  br i1 %tobool31.not, label %if.end30.if.end41_crit_edge, label %land.lhs.true32

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

land.lhs.true32:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %frag_size = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond, i32 0, i32 5
  %52 = ptrtoint ptr %frag_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frag_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %mtu.0)
  %cmp33 = icmp uge i32 %53, %mtu.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool37.not = icmp eq i32 %53, 0
  %or.cond = or i1 %cmp33, %tobool37.not
  %spec.select = select i1 %or.cond, i32 %mtu.0, i32 %53
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true32, %if.end30.if.end41_crit_edge
  %mtu.1 = phi i32 [ %mtu.0, %if.end30.if.end41_crit_edge ], [ %spec.select, %land.lhs.true32 ]
  %add42 = add nuw i32 %call4, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %mtu.1, i32 %add42)
  %cmp43 = icmp ult i32 %mtu.1, %add42
  br i1 %cmp43, label %if.end41.fail_toobig_crit_edge, label %if.end46

if.end41.fail_toobig_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_toobig

if.end46:                                         ; preds = %if.end41
  %add.neg = sub nuw i32 -8, %call4
  %sub = add i32 %add.neg, %mtu.1
  %54 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i, align 8
  %56 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %network_header.i, align 4
  %conv.i.i736 = zext i16 %57 to i32
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %conv.i.i736
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call50 = call i32 @ipv6_select_ident(ptr noundef %net, ptr noundef %daddr, ptr noundef %saddr) #11
  %58 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load51 = load i16, ptr %ignore_df, align 8
  %59 = and i16 %bf.load51, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %59)
  %cmp56 = icmp eq i16 %59, 1536
  br i1 %cmp56, label %land.lhs.true58, label %if.end46.if.end62_crit_edge

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

land.lhs.true58:                                  ; preds = %if.end46
  %call59 = call i32 @skb_checksum_help(ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.if.end62_crit_edge, label %land.lhs.true58.fail_crit_edge

land.lhs.true58.fail_crit_edge:                   ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

land.lhs.true58.if.end62_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true58.if.end62_crit_edge, %if.end46.if.end62_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true58.if.end62_crit_edge ], [ %call4, %if.end46.if.end62_crit_edge ]
  %60 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i, align 8
  %62 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i, align 4
  %conv.i743 = zext i16 %63 to i32
  %add.ptr.i744 = getelementptr i8, ptr %61, i32 %conv.i743
  %add.ptr = getelementptr i8, ptr %add.ptr.i744, i32 %sub.ptr.sub
  %64 = ptrtoint ptr %prevhdr to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr, ptr %prevhdr, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 19
  %67 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %hard_header_len, align 2
  %conv64 = zext i16 %68 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 21
  %69 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %needed_headroom, align 8
  %conv67 = zext i16 %70 to i32
  %add68 = add nuw nsw i32 %conv67, %conv64
  %and = and i32 %add68, 131056
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %71 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %74, null
  br i1 %cmp.i.not, label %if.end62.slow_path_crit_edge, label %if.then71

if.end62.slow_path_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path

if.then71:                                        ; preds = %if.end62
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %75 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %77 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_len.i.i, align 8
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 2
  %79 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp10.not.i.i = icmp eq i8 %80, 0
  br i1 %cmp10.not.i.i, label %if.then71.skb_pagelen.exit_crit_edge, label %for.body.preheader.i.i

if.then71.skb_pagelen.exit_crit_edge:             ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_pagelen.exit

for.body.preheader.i.i:                           ; preds = %if.then71
  %conv.i.i745 = zext i8 %80 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i745, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i746, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %72, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %81 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i746 = add i32 %82, %len.011.i.i
  %cmp.i.i = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.skb_pagelen.exit_crit_edge

for.body.i.i.skb_pagelen.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i.skb_pagelen.exit_crit_edge, %if.then71.skb_pagelen.exit_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %if.then71.skb_pagelen.exit_crit_edge ], [ %add.i.i746, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #11
  %83 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %84 = add i32 %call4, %78
  %85 = sub i32 %76, %84
  %sub73 = add i32 %85, %len.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub73, i32 %sub)
  %cmp74 = icmp ule i32 %sub73, %sub
  %and77 = and i32 %sub73, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %or.cond732 = and i1 %cmp74, %tobool78.not
  br i1 %or.cond732, label %lor.lhs.false79, label %skb_pagelen.exit.cleanup.thread_crit_edge

skb_pagelen.exit.cleanup.thread_crit_edge:        ; preds = %skb_pagelen.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

lor.lhs.false79:                                  ; preds = %skb_pagelen.exit
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %86 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i749 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i749, label %lor.lhs.false79.lor.lhs.false82_crit_edge, label %skb_cloned.exit

lor.lhs.false79.lor.lhs.false82_crit_edge:        ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false82

skb_cloned.exit:                                  ; preds = %lor.lhs.false79
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #11
  %87 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %dataref.i, align 4
  %and.i751 = and i32 %88, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i751)
  %cmp.i752.not = icmp eq i32 %and.i751, 1
  br i1 %cmp.i752.not, label %skb_cloned.exit.lor.lhs.false82_crit_edge, label %skb_cloned.exit.cleanup.thread_crit_edge

skb_cloned.exit.cleanup.thread_crit_edge:         ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

skb_cloned.exit.lor.lhs.false82_crit_edge:        ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %skb_cloned.exit.lor.lhs.false82_crit_edge, %lor.lhs.false79.lor.lhs.false82_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %91 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %90 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add84 = add nuw nsw i32 %and, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add84)
  %cmp85 = icmp ult i32 %sub.ptr.sub.i, %add84
  br i1 %cmp85, label %lor.lhs.false82.cleanup.thread_crit_edge, label %if.end88

lor.lhs.false82.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end88:                                         ; preds = %lor.lhs.false82
  %93 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %95)
  %frag.0872 = load ptr, ptr %frag_list, align 8
  %tobool90.not873 = icmp eq ptr %frag.0872, null
  br i1 %tobool90.not873, label %if.end88.for.end_crit_edge, label %for.body.lr.ph

if.end88.for.end_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end88
  %add102 = add i32 %call4, 24
  %add103 = add i32 %add102, %and
  %truesize130 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end129.for.body_crit_edge, %for.body.lr.ph
  %frag.0874 = phi ptr [ %frag.0872, %for.body.lr.ph ], [ %frag.0, %if.end129.for.body_crit_edge ]
  %len91 = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 6
  %96 = ptrtoint ptr %len91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %sub)
  %cmp92 = icmp ugt i32 %97, %sub
  br i1 %cmp92, label %for.body.slow_path_clean_crit_edge, label %lor.lhs.false94

for.body.slow_path_clean_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path_clean

lor.lhs.false94:                                  ; preds = %for.body
  %and96 = and i32 %97, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %lor.lhs.false94.lor.lhs.false100_crit_edge, label %land.lhs.true98

lor.lhs.false94.lor.lhs.false100_crit_edge:       ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false100

land.lhs.true98:                                  ; preds = %lor.lhs.false94
  %98 = ptrtoint ptr %frag.0874 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %frag.0874, align 8
  %tobool99.not = icmp eq ptr %99, null
  br i1 %tobool99.not, label %land.lhs.true98.lor.lhs.false100_crit_edge, label %land.lhs.true98.slow_path_clean_crit_edge

land.lhs.true98.slow_path_clean_crit_edge:        ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path_clean

land.lhs.true98.lor.lhs.false100_crit_edge:       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %land.lhs.true98.lor.lhs.false100_crit_edge, %lor.lhs.false94.lor.lhs.false100_crit_edge
  %data.i755 = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 19
  %100 = ptrtoint ptr %data.i755 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i755, align 4
  %head.i756 = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 18
  %102 = ptrtoint ptr %head.i756 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i756, align 8
  %sub.ptr.lhs.cast.i757 = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i758 = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i759 = sub i32 %sub.ptr.lhs.cast.i757, %sub.ptr.rhs.cast.i758
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i759, i32 %add103)
  %cmp104 = icmp ult i32 %sub.ptr.sub.i759, %add103
  br i1 %cmp104, label %lor.lhs.false100.slow_path_clean_crit_edge, label %if.end107

lor.lhs.false100.slow_path_clean_crit_edge:       ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path_clean

if.end107:                                        ; preds = %lor.lhs.false100
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #11
  %104 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp.i760.not = icmp eq i32 %105, 1
  br i1 %cmp.i760.not, label %do.body, label %if.end107.slow_path_clean_crit_edge

if.end107.slow_path_clean_crit_edge:              ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path_clean

do.body:                                          ; preds = %if.end107
  %106 = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %tobool112.not = icmp eq ptr %108, null
  br i1 %tobool112.not, label %do.end126, label %do.body120, !prof !108

do.body120:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/ip6_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #11, !srcloc !134
  unreachable

do.end126:                                        ; preds = %do.body
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %6, align 4
  %tobool127.not = icmp eq ptr %110, null
  br i1 %tobool127.not, label %do.end126.if.end129_crit_edge, label %if.then128

do.end126.if.end129_crit_edge:                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.then128:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %106, align 4
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 4, i32 0, i32 1
  %112 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @sock_wfree, ptr %destructor, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %do.end126.if.end129_crit_edge
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %frag.0874, i32 0, i32 20
  %113 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %truesize, align 8
  %115 = ptrtoint ptr %truesize130 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %truesize130, align 8
  %sub131 = sub i32 %116, %114
  store i32 %sub131, ptr %truesize130, align 8
  %117 = ptrtoint ptr %frag.0874 to i32
  call void @__asan_load4_noabort(i32 %117)
  %frag.0 = load ptr, ptr %frag.0874, align 8
  %tobool90.not = icmp eq ptr %frag.0, null
  br i1 %tobool90.not, label %if.end129.for.end_crit_edge, label %if.end129.for.body_crit_edge

if.end129.for.body_crit_edge:                     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end129.for.end_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end129.for.end_crit_edge, %if.end88.for.end_crit_edge
  %118 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prevhdr, align 4
  %call133 = call i32 @ip6_fraglist_init(ptr noundef %skb, i32 noundef %call4, ptr noundef %119, i8 noundef zeroext %40, i32 noundef %call50, ptr noundef nonnull %iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %cleanup, label %for.cond138.preheader

for.cond138.preheader:                            ; preds = %for.end
  %frag139 = getelementptr inbounds %struct.ip6_fraglist_iter, ptr %iter, i32 0, i32 1
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 6
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %120 = ptrtoint ptr %frag139 to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr = load ptr, ptr %frag139, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %if.end202, %for.cond138.preheader
  %121 = phi ptr [ %.pr, %for.cond138.preheader ], [ %161, %if.end202 ]
  %skb.addr.0 = phi ptr [ %skb, %for.cond138.preheader ], [ %159, %if.end202 ]
  %tobool140.not = icmp eq ptr %121, null
  br i1 %tobool140.not, label %for.cond138.if.end142_crit_edge, label %if.then141

for.cond138.if.end142_crit_edge:                  ; preds = %for.cond138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then141:                                       ; preds = %for.cond138
  call void @__sanitizer_cov_trace_pc() #13
  call void @ip6_fraglist_prepare(ptr noundef %skb.addr.0, ptr noundef nonnull %iter)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %for.cond138.if.end142_crit_edge
  %122 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 2
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %35, ptr %122, align 8
  %call143 = call i32 %output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb.addr.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then145, label %if.end271

if.then145:                                       ; preds = %if.end142
  %124 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp148.not = icmp eq ptr %125, null
  br i1 %cmp148.not, label %if.then145.do.body173_crit_edge, label %do.body157, !prof !107

if.then145.do.body173_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body173

do.body157:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %125, i32 0, i32 33, i32 1
  %126 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ipv6, align 4
  %128 = ptrtoint ptr %127 to i32
  %129 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i762 = and i32 %129, -16384
  %130 = inttoptr i32 %and.i762 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx, align 4
  %add164 = add i32 %134, %128
  %135 = inttoptr i32 %add164 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %135, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx165 = getelementptr [37 x i64], ptr %135, i32 0, i32 22
  %136 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx165, align 8
  %add166 = add i64 %137, 1
  store i64 %add166, ptr %arrayidx165, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %135, i32 0, i32 1, i32 0, i32 1
  %138 = call ptr @llvm.returnaddress(i32 0) #11
  %139 = ptrtoint ptr %138 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %139) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %140 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %141, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  br label %do.body173

do.body173:                                       ; preds = %do.body157, %if.then145.do.body173_crit_edge
  call fastcc void @local_bh_disable()
  %142 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ipv6_statistics, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i763 = and i32 %145, -16384
  %146 = inttoptr i32 %and.i763 to ptr
  %cpu184 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %cpu184 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cpu184, align 4
  %arrayidx185 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx185, align 4
  %add186 = add i32 %150, %144
  %151 = inttoptr i32 %add186 to ptr
  %syncp187 = getelementptr inbounds %struct.ipstats_mib, ptr %151, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp187)
  %arrayidx189 = getelementptr [37 x i64], ptr %151, i32 0, i32 22
  %152 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx189, align 8
  %add190 = add i64 %153, 1
  store i64 %add190, ptr %arrayidx189, align 8
  %dep_map.i.i764 = getelementptr inbounds %struct.ipstats_mib, ptr %151, i32 0, i32 1, i32 0, i32 1
  %154 = call ptr @llvm.returnaddress(i32 0) #11
  %155 = ptrtoint ptr %154 to i32
  call void @lock_release(ptr noundef %dep_map.i.i764, i32 noundef %155) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %156 = ptrtoint ptr %syncp187 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %syncp187, align 4
  %inc.i.i.i765 = add i32 %157, 1
  store i32 %inc.i.i.i765, ptr %syncp187, align 4
  call fastcc void @local_bh_enable()
  %158 = ptrtoint ptr %frag139 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %frag139, align 4
  %tobool200.not = icmp eq ptr %159, null
  br i1 %tobool200.not, label %if.then207, label %if.end202

if.end202:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 8
  %162 = ptrtoint ptr %frag139 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %161, ptr %frag139, align 4
  store ptr null, ptr %159, align 8
  br label %for.cond138

if.then207:                                       ; preds = %do.body173
  %163 = ptrtoint ptr %154 to i32
  %164 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %iter, align 4
  call void @kfree(ptr noundef %165) #11
  %166 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp211.not = icmp eq ptr %167, null
  br i1 %cmp211.not, label %if.then207.do.body246_crit_edge, label %do.body220, !prof !107

if.then207.do.body246_crit_edge:                  ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body246

do.body220:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6230 = getelementptr inbounds %struct.inet6_dev, ptr %167, i32 0, i32 33, i32 1
  %168 = ptrtoint ptr %ipv6230 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ipv6230, align 4
  %170 = ptrtoint ptr %169 to i32
  %171 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i767 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i767 to ptr
  %cpu233 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %cpu233 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cpu233, align 4
  %arrayidx234 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx234, align 4
  %add235 = add i32 %176, %170
  %177 = inttoptr i32 %add235 to ptr
  %syncp236 = getelementptr inbounds %struct.ipstats_mib, ptr %177, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp236)
  %arrayidx238 = getelementptr [37 x i64], ptr %177, i32 0, i32 20
  %178 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %arrayidx238, align 8
  %add239 = add i64 %179, 1
  store i64 %add239, ptr %arrayidx238, align 8
  %dep_map.i.i768 = getelementptr inbounds %struct.ipstats_mib, ptr %177, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i768, i32 noundef %163) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %180 = ptrtoint ptr %syncp236 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %syncp236, align 4
  %inc.i.i.i769 = add i32 %181, 1
  store i32 %inc.i.i.i769, ptr %syncp236, align 4
  call fastcc void @local_bh_enable()
  br label %do.body246

do.body246:                                       ; preds = %do.body220, %if.then207.do.body246_crit_edge
  call fastcc void @local_bh_disable()
  %182 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ipv6_statistics, align 4
  %184 = ptrtoint ptr %183 to i32
  %185 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i770 = and i32 %185, -16384
  %186 = inttoptr i32 %and.i770 to ptr
  %cpu259 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %cpu259 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cpu259, align 4
  %arrayidx260 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %188
  %189 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx260, align 4
  %add261 = add i32 %190, %184
  %191 = inttoptr i32 %add261 to ptr
  %syncp262 = getelementptr inbounds %struct.ipstats_mib, ptr %191, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp262)
  %arrayidx264 = getelementptr [37 x i64], ptr %191, i32 0, i32 20
  %192 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %arrayidx264, align 8
  %add265 = add i64 %193, 1
  store i64 %add265, ptr %arrayidx264, align 8
  %dep_map.i.i771 = getelementptr inbounds %struct.ipstats_mib, ptr %191, i32 0, i32 1, i32 0, i32 1
  call void @lock_release(ptr noundef %dep_map.i.i771, i32 noundef %163) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  br label %cleanup.thread858

if.end271:                                        ; preds = %if.end142
  %194 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %iter, align 4
  call void @kfree(ptr noundef %195) #11
  %196 = ptrtoint ptr %frag139 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %frag139, align 4
  call void @kfree_skb_list(ptr noundef %197) #11
  %198 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp276.not = icmp eq ptr %199, null
  br i1 %cmp276.not, label %if.end271.do.body311_crit_edge, label %do.body285, !prof !107

if.end271.do.body311_crit_edge:                   ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body311

do.body285:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6295 = getelementptr inbounds %struct.inet6_dev, ptr %199, i32 0, i32 33, i32 1
  %200 = ptrtoint ptr %ipv6295 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ipv6295, align 4
  %202 = ptrtoint ptr %201 to i32
  %203 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i774 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i774 to ptr
  %cpu298 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %cpu298 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cpu298, align 4
  %arrayidx299 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %206
  %207 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx299, align 4
  %add300 = add i32 %208, %202
  %209 = inttoptr i32 %add300 to ptr
  %syncp301 = getelementptr inbounds %struct.ipstats_mib, ptr %209, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp301)
  %arrayidx303 = getelementptr [37 x i64], ptr %209, i32 0, i32 21
  %210 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %arrayidx303, align 8
  %add304 = add i64 %211, 1
  store i64 %add304, ptr %arrayidx303, align 8
  %dep_map.i.i775 = getelementptr inbounds %struct.ipstats_mib, ptr %209, i32 0, i32 1, i32 0, i32 1
  %212 = call ptr @llvm.returnaddress(i32 0) #11
  %213 = ptrtoint ptr %212 to i32
  call void @lock_release(ptr noundef %dep_map.i.i775, i32 noundef %213) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %214 = ptrtoint ptr %syncp301 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %syncp301, align 4
  %inc.i.i.i776 = add i32 %215, 1
  store i32 %inc.i.i.i776, ptr %syncp301, align 4
  call fastcc void @local_bh_enable()
  br label %do.body311

do.body311:                                       ; preds = %do.body285, %if.end271.do.body311_crit_edge
  call fastcc void @local_bh_disable()
  %216 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ipv6_statistics, align 4
  %218 = ptrtoint ptr %217 to i32
  %219 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i777 = and i32 %219, -16384
  %220 = inttoptr i32 %and.i777 to ptr
  %cpu324 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %cpu324 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cpu324, align 4
  %arrayidx325 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %222
  %223 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx325, align 4
  %add326 = add i32 %224, %218
  %225 = inttoptr i32 %add326 to ptr
  %syncp327 = getelementptr inbounds %struct.ipstats_mib, ptr %225, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp327)
  %arrayidx329 = getelementptr [37 x i64], ptr %225, i32 0, i32 21
  %226 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx329, align 8
  %add330 = add i64 %227, 1
  store i64 %add330, ptr %arrayidx329, align 8
  %dep_map.i.i778 = getelementptr inbounds %struct.ipstats_mib, ptr %225, i32 0, i32 1, i32 0, i32 1
  %228 = call ptr @llvm.returnaddress(i32 0) #11
  %229 = ptrtoint ptr %228 to i32
  call void @lock_release(ptr noundef %dep_map.i.i778, i32 noundef %229) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  br label %cleanup.thread858

slow_path_clean:                                  ; preds = %if.end107.slow_path_clean_crit_edge, %lor.lhs.false100.slow_path_clean_crit_edge, %land.lhs.true98.slow_path_clean_crit_edge, %for.body.slow_path_clean_crit_edge
  %230 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %end.i.i, align 4
  %frag_list337 = getelementptr inbounds %struct.skb_shared_info, ptr %231, i32 0, i32 6
  %232 = ptrtoint ptr %frag_list337 to i32
  call void @__asan_load4_noabort(i32 %232)
  %frag2.0875 = load ptr, ptr %frag_list337, align 8
  %tobool339.not876 = icmp eq ptr %frag2.0875, null
  %cmp341877 = icmp eq ptr %frag2.0875, %frag.0874
  %or.cond733878 = select i1 %tobool339.not876, i1 true, i1 %cmp341877
  br i1 %or.cond733878, label %slow_path_clean.cleanup.thread_crit_edge, label %slow_path_clean.if.end344_crit_edge

slow_path_clean.if.end344_crit_edge:              ; preds = %slow_path_clean
  br label %if.end344

slow_path_clean.cleanup.thread_crit_edge:         ; preds = %slow_path_clean
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end344:                                        ; preds = %if.end344.if.end344_crit_edge, %slow_path_clean.if.end344_crit_edge
  %frag2.0879 = phi ptr [ %frag2.0, %if.end344.if.end344_crit_edge ], [ %frag2.0875, %slow_path_clean.if.end344_crit_edge ]
  %233 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0879, i32 0, i32 1
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %233, align 4
  %destructor345 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0879, i32 0, i32 4, i32 0, i32 1
  %235 = ptrtoint ptr %destructor345 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr null, ptr %destructor345, align 4
  %truesize346 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0879, i32 0, i32 20
  %236 = ptrtoint ptr %truesize346 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %truesize346, align 8
  %238 = ptrtoint ptr %truesize130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %truesize130, align 8
  %add348 = add i32 %239, %237
  store i32 %add348, ptr %truesize130, align 8
  %240 = ptrtoint ptr %frag2.0879 to i32
  call void @__asan_load4_noabort(i32 %240)
  %frag2.0 = load ptr, ptr %frag2.0879, align 8
  %tobool339.not = icmp eq ptr %frag2.0, null
  %cmp341 = icmp eq ptr %frag2.0, %frag.0874
  %or.cond733 = select i1 %tobool339.not, i1 true, i1 %cmp341
  br i1 %or.cond733, label %if.end344.cleanup.thread_crit_edge, label %if.end344.if.end344_crit_edge

if.end344.if.end344_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end344

if.end344.cleanup.thread_crit_edge:               ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end344.cleanup.thread_crit_edge, %slow_path_clean.cleanup.thread_crit_edge, %lor.lhs.false82.cleanup.thread_crit_edge, %skb_cloned.exit.cleanup.thread_crit_edge, %skb_pagelen.exit.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #11
  br label %slow_path

cleanup.thread858:                                ; preds = %do.body311, %do.body246
  %syncp262.sink896 = phi ptr [ %syncp262, %do.body246 ], [ %syncp327, %do.body311 ]
  %241 = ptrtoint ptr %syncp262.sink896 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %syncp262.sink896, align 4
  %inc.i.i.i772 = add i32 %242, 1
  store i32 %inc.i.i.i772, ptr %syncp262.sink896, align 4
  call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #11
  br label %cleanup575

cleanup:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #11
  br label %fail

slow_path:                                        ; preds = %cleanup.thread, %if.end62.slow_path_crit_edge
  %243 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %5, align 4
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %244, i32 0, i32 22
  %245 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %needed_tailroom, align 2
  %hard_header_len359 = getelementptr inbounds %struct.net_device, ptr %244, i32 0, i32 19
  %247 = ptrtoint ptr %hard_header_len359 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %hard_header_len359, align 2
  %conv360 = zext i16 %248 to i32
  %needed_headroom363 = getelementptr inbounds %struct.net_device, ptr %244, i32 0, i32 21
  %249 = ptrtoint ptr %needed_headroom363 to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %needed_headroom363, align 8
  %conv364 = zext i16 %250 to i32
  %add365 = add nuw nsw i32 %conv364, %conv360
  %and366 = and i32 %add365, 131056
  %add367 = add nuw nsw i32 %and366, 16
  %251 = ptrtoint ptr %prevhdr to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %prevhdr, align 4
  %253 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %252, ptr %state, align 4
  %nexthdr2.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 9
  %254 = ptrtoint ptr %nexthdr2.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %40, ptr %nexthdr2.i, align 4
  %frag_id3.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 8
  %255 = ptrtoint ptr %frag_id3.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %call50, ptr %frag_id3.i, align 4
  %hlen4.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 1
  %256 = ptrtoint ptr %hlen4.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %call4, ptr %hlen4.i, align 4
  %mtu5.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 2
  %257 = ptrtoint ptr %mtu5.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %sub, ptr %mtu5.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %258 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %259, %call4
  %left.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 3
  %260 = ptrtoint ptr %left.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub.i, ptr %left.i, align 4
  %ptr.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 5
  %261 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %call4, ptr %ptr.i, align 4
  %hroom.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 6
  %262 = ptrtoint ptr %hroom.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %add367, ptr %hroom.i, align 4
  %conv.i781 = zext i16 %246 to i32
  %troom.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 7
  %263 = ptrtoint ptr %troom.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %conv.i781, ptr %troom.i, align 4
  %offset.i = getelementptr inbounds %struct.ip6_frag_state, ptr %state, i32 0, i32 4
  %264 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %call4)
  %cmp368.not880 = icmp eq i32 %259, %call4
  br i1 %cmp368.not880, label %slow_path.while.end_crit_edge, label %while.body.lr.ph

slow_path.while.end_crit_edge:                    ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %slow_path
  %ipv6_statistics427 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  br label %while.body

while.body:                                       ; preds = %do.body417.while.body_crit_edge, %while.body.lr.ph
  %call370 = call ptr @ip6_frag_next(ptr noundef %skb, ptr noundef nonnull %state)
  %cmp.i782 = icmp ugt ptr %call370, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i782, label %if.then372, label %if.end374

if.then372:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %265 = ptrtoint ptr %call370 to i32
  br label %fail

if.end374:                                        ; preds = %while.body
  %266 = getelementptr inbounds %struct.sk_buff, ptr %call370, i32 0, i32 2
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store8_noabort(i32 %267)
  store i64 %35, ptr %266, align 8
  %call375 = call i32 %output(ptr noundef %net, ptr noundef %sk, ptr noundef %call370) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call375)
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %if.end378, label %if.end374.fail_crit_edge

if.end374.fail_crit_edge:                         ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end378:                                        ; preds = %if.end374
  %268 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %0, align 8
  %and.i783 = and i32 %269, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i783)
  %tobool.not.i784 = icmp eq i32 %and.i783, 0
  br i1 %tobool.not.i784, label %if.end378.skb_dst.exit793_crit_edge, label %land.lhs.true.i787

if.end378.skb_dst.exit793_crit_edge:              ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit793

land.lhs.true.i787:                               ; preds = %if.end378
  %call.i785 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i785)
  %tobool1.not.i786 = icmp eq i32 %call.i785, 0
  br i1 %tobool1.not.i786, label %land.rhs.i790, label %land.lhs.true.i787.skb_dst.exit793_crit_edge

land.lhs.true.i787.skb_dst.exit793_crit_edge:     ; preds = %land.lhs.true.i787
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit793

land.rhs.i790:                                    ; preds = %land.lhs.true.i787
  %call2.i788 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i788)
  %tobool3.not.i789 = icmp eq i32 %call2.i788, 0
  br i1 %tobool3.not.i789, label %do.end.i791, label %land.rhs.i790.skb_dst.exit793_crit_edge, !prof !107

land.rhs.i790.skb_dst.exit793_crit_edge:          ; preds = %land.rhs.i790
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit793

do.end.i791:                                      ; preds = %land.rhs.i790
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit793

skb_dst.exit793:                                  ; preds = %do.end.i791, %land.rhs.i790.skb_dst.exit793_crit_edge, %land.lhs.true.i787.skb_dst.exit793_crit_edge, %if.end378.skb_dst.exit793_crit_edge
  %270 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %0, align 8
  %and25.i792 = and i32 %271, -2
  %272 = inttoptr i32 %and25.i792 to ptr
  %rt6i_idev.i794 = getelementptr inbounds %struct.rt6_info, ptr %272, i32 0, i32 6
  %273 = ptrtoint ptr %rt6i_idev.i794 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rt6i_idev.i794, align 4
  %cmp382.not = icmp eq ptr %274, null
  br i1 %cmp382.not, label %skb_dst.exit793.do.body417_crit_edge, label %do.body391, !prof !107

skb_dst.exit793.do.body417_crit_edge:             ; preds = %skb_dst.exit793
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body417

do.body391:                                       ; preds = %skb_dst.exit793
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6401 = getelementptr inbounds %struct.inet6_dev, ptr %274, i32 0, i32 33, i32 1
  %275 = ptrtoint ptr %ipv6401 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ipv6401, align 4
  %277 = ptrtoint ptr %276 to i32
  %278 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i795 = and i32 %278, -16384
  %279 = inttoptr i32 %and.i795 to ptr
  %cpu404 = getelementptr inbounds %struct.thread_info, ptr %279, i32 0, i32 3
  %280 = ptrtoint ptr %cpu404 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %cpu404, align 4
  %arrayidx405 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %281
  %282 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx405, align 4
  %add406 = add i32 %283, %277
  %284 = inttoptr i32 %add406 to ptr
  %syncp407 = getelementptr inbounds %struct.ipstats_mib, ptr %284, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp407)
  %arrayidx409 = getelementptr [37 x i64], ptr %284, i32 0, i32 22
  %285 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %arrayidx409, align 8
  %add410 = add i64 %286, 1
  store i64 %add410, ptr %arrayidx409, align 8
  %dep_map.i.i796 = getelementptr inbounds %struct.ipstats_mib, ptr %284, i32 0, i32 1, i32 0, i32 1
  %287 = call ptr @llvm.returnaddress(i32 0) #11
  %288 = ptrtoint ptr %287 to i32
  call void @lock_release(ptr noundef %dep_map.i.i796, i32 noundef %288) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %289 = ptrtoint ptr %syncp407 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %syncp407, align 4
  %inc.i.i.i797 = add i32 %290, 1
  store i32 %inc.i.i.i797, ptr %syncp407, align 4
  call fastcc void @local_bh_enable()
  br label %do.body417

do.body417:                                       ; preds = %do.body391, %skb_dst.exit793.do.body417_crit_edge
  call fastcc void @local_bh_disable()
  %291 = ptrtoint ptr %ipv6_statistics427 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ipv6_statistics427, align 4
  %293 = ptrtoint ptr %292 to i32
  %294 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i798 = and i32 %294, -16384
  %295 = inttoptr i32 %and.i798 to ptr
  %cpu430 = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 3
  %296 = ptrtoint ptr %cpu430 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %cpu430, align 4
  %arrayidx431 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %297
  %298 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx431, align 4
  %add432 = add i32 %299, %293
  %300 = inttoptr i32 %add432 to ptr
  %syncp433 = getelementptr inbounds %struct.ipstats_mib, ptr %300, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp433)
  %arrayidx435 = getelementptr [37 x i64], ptr %300, i32 0, i32 22
  %301 = ptrtoint ptr %arrayidx435 to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %arrayidx435, align 8
  %add436 = add i64 %302, 1
  store i64 %add436, ptr %arrayidx435, align 8
  %dep_map.i.i799 = getelementptr inbounds %struct.ipstats_mib, ptr %300, i32 0, i32 1, i32 0, i32 1
  %303 = call ptr @llvm.returnaddress(i32 0) #11
  %304 = ptrtoint ptr %303 to i32
  call void @lock_release(ptr noundef %dep_map.i.i799, i32 noundef %304) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %305 = ptrtoint ptr %syncp433 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %syncp433, align 4
  %inc.i.i.i800 = add i32 %306, 1
  store i32 %inc.i.i.i800, ptr %syncp433, align 4
  call fastcc void @local_bh_enable()
  %307 = ptrtoint ptr %left.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %left.i, align 4
  %cmp368.not = icmp eq i32 %308, 0
  br i1 %cmp368.not, label %do.body417.while.end_crit_edge, label %do.body417.while.body_crit_edge

do.body417.while.body_crit_edge:                  ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.body417.while.end_crit_edge:                   ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.body417.while.end_crit_edge, %slow_path.while.end_crit_edge
  %err.3.lcssa = phi i32 [ %err.0, %slow_path.while.end_crit_edge ], [ 0, %do.body417.while.end_crit_edge ]
  %309 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %0, align 8
  %and.i801 = and i32 %310, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i801)
  %tobool.not.i802 = icmp eq i32 %and.i801, 0
  br i1 %tobool.not.i802, label %while.end.skb_dst.exit811_crit_edge, label %land.lhs.true.i805

while.end.skb_dst.exit811_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit811

land.lhs.true.i805:                               ; preds = %while.end
  %call.i803 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i803)
  %tobool1.not.i804 = icmp eq i32 %call.i803, 0
  br i1 %tobool1.not.i804, label %land.rhs.i808, label %land.lhs.true.i805.skb_dst.exit811_crit_edge

land.lhs.true.i805.skb_dst.exit811_crit_edge:     ; preds = %land.lhs.true.i805
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit811

land.rhs.i808:                                    ; preds = %land.lhs.true.i805
  %call2.i806 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i806)
  %tobool3.not.i807 = icmp eq i32 %call2.i806, 0
  br i1 %tobool3.not.i807, label %do.end.i809, label %land.rhs.i808.skb_dst.exit811_crit_edge, !prof !107

land.rhs.i808.skb_dst.exit811_crit_edge:          ; preds = %land.rhs.i808
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit811

do.end.i809:                                      ; preds = %land.rhs.i808
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit811

skb_dst.exit811:                                  ; preds = %do.end.i809, %land.rhs.i808.skb_dst.exit811_crit_edge, %land.lhs.true.i805.skb_dst.exit811_crit_edge, %while.end.skb_dst.exit811_crit_edge
  %311 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %0, align 8
  %and25.i810 = and i32 %312, -2
  %313 = inttoptr i32 %and25.i810 to ptr
  %rt6i_idev.i812 = getelementptr inbounds %struct.rt6_info, ptr %313, i32 0, i32 6
  %314 = ptrtoint ptr %rt6i_idev.i812 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %rt6i_idev.i812, align 4
  %cmp445.not = icmp eq ptr %315, null
  br i1 %cmp445.not, label %skb_dst.exit811.do.body480_crit_edge, label %do.body454, !prof !107

skb_dst.exit811.do.body480_crit_edge:             ; preds = %skb_dst.exit811
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body480

do.body454:                                       ; preds = %skb_dst.exit811
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6464 = getelementptr inbounds %struct.inet6_dev, ptr %315, i32 0, i32 33, i32 1
  %316 = ptrtoint ptr %ipv6464 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ipv6464, align 4
  %318 = ptrtoint ptr %317 to i32
  %319 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i813 = and i32 %319, -16384
  %320 = inttoptr i32 %and.i813 to ptr
  %cpu467 = getelementptr inbounds %struct.thread_info, ptr %320, i32 0, i32 3
  %321 = ptrtoint ptr %cpu467 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %cpu467, align 4
  %arrayidx468 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %322
  %323 = ptrtoint ptr %arrayidx468 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx468, align 4
  %add469 = add i32 %324, %318
  %325 = inttoptr i32 %add469 to ptr
  %syncp470 = getelementptr inbounds %struct.ipstats_mib, ptr %325, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp470)
  %arrayidx472 = getelementptr [37 x i64], ptr %325, i32 0, i32 20
  %326 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %arrayidx472, align 8
  %add473 = add i64 %327, 1
  store i64 %add473, ptr %arrayidx472, align 8
  %dep_map.i.i814 = getelementptr inbounds %struct.ipstats_mib, ptr %325, i32 0, i32 1, i32 0, i32 1
  %328 = call ptr @llvm.returnaddress(i32 0) #11
  %329 = ptrtoint ptr %328 to i32
  call void @lock_release(ptr noundef %dep_map.i.i814, i32 noundef %329) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %330 = ptrtoint ptr %syncp470 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %syncp470, align 4
  %inc.i.i.i815 = add i32 %331, 1
  store i32 %inc.i.i.i815, ptr %syncp470, align 4
  call fastcc void @local_bh_enable()
  br label %do.body480

do.body480:                                       ; preds = %do.body454, %skb_dst.exit811.do.body480_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics490 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %332 = ptrtoint ptr %ipv6_statistics490 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ipv6_statistics490, align 4
  %334 = ptrtoint ptr %333 to i32
  %335 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i816 = and i32 %335, -16384
  %336 = inttoptr i32 %and.i816 to ptr
  %cpu493 = getelementptr inbounds %struct.thread_info, ptr %336, i32 0, i32 3
  %337 = ptrtoint ptr %cpu493 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %cpu493, align 4
  %arrayidx494 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %338
  %339 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx494, align 4
  %add495 = add i32 %340, %334
  %341 = inttoptr i32 %add495 to ptr
  %syncp496 = getelementptr inbounds %struct.ipstats_mib, ptr %341, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp496)
  %arrayidx498 = getelementptr [37 x i64], ptr %341, i32 0, i32 20
  %342 = ptrtoint ptr %arrayidx498 to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %arrayidx498, align 8
  %add499 = add i64 %343, 1
  store i64 %add499, ptr %arrayidx498, align 8
  %dep_map.i.i817 = getelementptr inbounds %struct.ipstats_mib, ptr %341, i32 0, i32 1, i32 0, i32 1
  %344 = call ptr @llvm.returnaddress(i32 0) #11
  %345 = ptrtoint ptr %344 to i32
  call void @lock_release(ptr noundef %dep_map.i.i817, i32 noundef %345) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %346 = ptrtoint ptr %syncp496 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %syncp496, align 4
  %inc.i.i.i818 = add i32 %347, 1
  store i32 %inc.i.i.i818, ptr %syncp496, align 4
  call fastcc void @local_bh_enable()
  call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup575

fail_toobig:                                      ; preds = %if.end41.fail_toobig_crit_edge, %if.then14.fail_toobig_crit_edge, %land.rhs.fail_toobig_crit_edge
  %mtu.2 = phi i32 [ %call6, %land.rhs.fail_toobig_crit_edge ], [ %call6, %if.then14.fail_toobig_crit_edge ], [ %mtu.1, %if.end41.fail_toobig_crit_edge ]
  %348 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %6, align 4
  %tobool505.not = icmp eq ptr %349, null
  br i1 %tobool505.not, label %fail_toobig.if.end511_crit_edge, label %land.lhs.true506

fail_toobig.if.end511_crit_edge:                  ; preds = %fail_toobig
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end511

land.lhs.true506:                                 ; preds = %fail_toobig
  %350 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %0, align 8
  %and.i819 = and i32 %351, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i819)
  %tobool.not.i820 = icmp eq i32 %and.i819, 0
  br i1 %tobool.not.i820, label %land.lhs.true506.skb_dst.exit829_crit_edge, label %land.lhs.true.i823

land.lhs.true506.skb_dst.exit829_crit_edge:       ; preds = %land.lhs.true506
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit829

land.lhs.true.i823:                               ; preds = %land.lhs.true506
  %call.i821 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i821)
  %tobool1.not.i822 = icmp eq i32 %call.i821, 0
  br i1 %tobool1.not.i822, label %land.rhs.i826, label %land.lhs.true.i823.skb_dst.exit829_crit_edge

land.lhs.true.i823.skb_dst.exit829_crit_edge:     ; preds = %land.lhs.true.i823
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit829

land.rhs.i826:                                    ; preds = %land.lhs.true.i823
  %call2.i824 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i824)
  %tobool3.not.i825 = icmp eq i32 %call2.i824, 0
  br i1 %tobool3.not.i825, label %do.end.i827, label %land.rhs.i826.skb_dst.exit829_crit_edge, !prof !107

land.rhs.i826.skb_dst.exit829_crit_edge:          ; preds = %land.rhs.i826
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit829

do.end.i827:                                      ; preds = %land.rhs.i826
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit829

skb_dst.exit829:                                  ; preds = %do.end.i827, %land.rhs.i826.skb_dst.exit829_crit_edge, %land.lhs.true.i823.skb_dst.exit829_crit_edge, %land.lhs.true506.skb_dst.exit829_crit_edge
  %352 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %0, align 8
  %and25.i828 = and i32 %353, -2
  %354 = inttoptr i32 %and25.i828 to ptr
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %354, i32 0, i32 2
  %355 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i830 = and i32 %356, -4
  %357 = inttoptr i32 %and.i.i.i.i830 to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %357, i32 11
  %358 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i831 = and i32 %359, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i831)
  %tobool509.not = icmp eq i32 %and.i.i831, 0
  br i1 %tobool509.not, label %skb_dst.exit829.if.end511_crit_edge, label %if.then510

skb_dst.exit829.if.end511_crit_edge:              ; preds = %skb_dst.exit829
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end511

if.then510:                                       ; preds = %skb_dst.exit829
  call void @__sanitizer_cov_trace_pc() #13
  %360 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %6, align 4
  %sk_gso_disabled.i = getelementptr inbounds %struct.sock, ptr %361, i32 0, i32 43
  %362 = ptrtoint ptr %sk_gso_disabled.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %bf.load.i832 = load i8, ptr %sk_gso_disabled.i, align 8
  %bf.set.i = or i8 %bf.load.i832, -128
  store i8 %bf.set.i, ptr %sk_gso_disabled.i, align 8
  %sk_route_caps.i = getelementptr inbounds %struct.sock, ptr %361, i32 0, i32 38
  %363 = ptrtoint ptr %sk_route_caps.i to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %sk_route_caps.i, align 8
  %and.i833 = and i64 %364, -34359672833
  store i64 %and.i833, ptr %sk_route_caps.i, align 8
  br label %if.end511

if.end511:                                        ; preds = %if.then510, %skb_dst.exit829.if.end511_crit_edge, %fail_toobig.if.end511_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @icmp6_send(ptr noundef %skb, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %mtu.2, ptr noundef null, ptr noundef %cb.i) #11
  br label %fail

fail:                                             ; preds = %if.end511, %if.end374.fail_crit_edge, %if.then372, %cleanup, %land.lhs.true58.fail_crit_edge, %cond.end.fail_crit_edge
  %err.4 = phi i32 [ %call4, %cond.end.fail_crit_edge ], [ -90, %if.end511 ], [ %call59, %land.lhs.true58.fail_crit_edge ], [ %call133, %cleanup ], [ %265, %if.then372 ], [ %call375, %if.end374.fail_crit_edge ]
  %365 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %0, align 8
  %and.i834 = and i32 %366, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i834)
  %tobool.not.i835 = icmp eq i32 %and.i834, 0
  br i1 %tobool.not.i835, label %fail.skb_dst.exit844_crit_edge, label %land.lhs.true.i838

fail.skb_dst.exit844_crit_edge:                   ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit844

land.lhs.true.i838:                               ; preds = %fail
  %call.i836 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i836)
  %tobool1.not.i837 = icmp eq i32 %call.i836, 0
  br i1 %tobool1.not.i837, label %land.rhs.i841, label %land.lhs.true.i838.skb_dst.exit844_crit_edge

land.lhs.true.i838.skb_dst.exit844_crit_edge:     ; preds = %land.lhs.true.i838
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit844

land.rhs.i841:                                    ; preds = %land.lhs.true.i838
  %call2.i839 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i839)
  %tobool3.not.i840 = icmp eq i32 %call2.i839, 0
  br i1 %tobool3.not.i840, label %do.end.i842, label %land.rhs.i841.skb_dst.exit844_crit_edge, !prof !107

land.rhs.i841.skb_dst.exit844_crit_edge:          ; preds = %land.rhs.i841
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit844

do.end.i842:                                      ; preds = %land.rhs.i841
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit844

skb_dst.exit844:                                  ; preds = %do.end.i842, %land.rhs.i841.skb_dst.exit844_crit_edge, %land.lhs.true.i838.skb_dst.exit844_crit_edge, %fail.skb_dst.exit844_crit_edge
  %367 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %0, align 8
  %and25.i843 = and i32 %368, -2
  %369 = inttoptr i32 %and25.i843 to ptr
  %rt6i_idev.i845 = getelementptr inbounds %struct.rt6_info, ptr %369, i32 0, i32 6
  %370 = ptrtoint ptr %rt6i_idev.i845 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %rt6i_idev.i845, align 4
  %cmp515.not = icmp eq ptr %371, null
  br i1 %cmp515.not, label %skb_dst.exit844.do.body550_crit_edge, label %do.body524, !prof !107

skb_dst.exit844.do.body550_crit_edge:             ; preds = %skb_dst.exit844
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body550

do.body524:                                       ; preds = %skb_dst.exit844
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6534 = getelementptr inbounds %struct.inet6_dev, ptr %371, i32 0, i32 33, i32 1
  %372 = ptrtoint ptr %ipv6534 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ipv6534, align 4
  %374 = ptrtoint ptr %373 to i32
  %375 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i846 = and i32 %375, -16384
  %376 = inttoptr i32 %and.i846 to ptr
  %cpu537 = getelementptr inbounds %struct.thread_info, ptr %376, i32 0, i32 3
  %377 = ptrtoint ptr %cpu537 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %cpu537, align 4
  %arrayidx538 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %378
  %379 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx538, align 4
  %add539 = add i32 %380, %374
  %381 = inttoptr i32 %add539 to ptr
  %syncp540 = getelementptr inbounds %struct.ipstats_mib, ptr %381, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp540)
  %arrayidx542 = getelementptr [37 x i64], ptr %381, i32 0, i32 21
  %382 = ptrtoint ptr %arrayidx542 to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %arrayidx542, align 8
  %add543 = add i64 %383, 1
  store i64 %add543, ptr %arrayidx542, align 8
  %dep_map.i.i847 = getelementptr inbounds %struct.ipstats_mib, ptr %381, i32 0, i32 1, i32 0, i32 1
  %384 = call ptr @llvm.returnaddress(i32 0) #11
  %385 = ptrtoint ptr %384 to i32
  call void @lock_release(ptr noundef %dep_map.i.i847, i32 noundef %385) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %386 = ptrtoint ptr %syncp540 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %syncp540, align 4
  %inc.i.i.i848 = add i32 %387, 1
  store i32 %inc.i.i.i848, ptr %syncp540, align 4
  call fastcc void @local_bh_enable()
  br label %do.body550

do.body550:                                       ; preds = %do.body524, %skb_dst.exit844.do.body550_crit_edge
  call fastcc void @local_bh_disable()
  %ipv6_statistics560 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %388 = ptrtoint ptr %ipv6_statistics560 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %ipv6_statistics560, align 4
  %390 = ptrtoint ptr %389 to i32
  %391 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i849 = and i32 %391, -16384
  %392 = inttoptr i32 %and.i849 to ptr
  %cpu563 = getelementptr inbounds %struct.thread_info, ptr %392, i32 0, i32 3
  %393 = ptrtoint ptr %cpu563 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %cpu563, align 4
  %arrayidx564 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %394
  %395 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %arrayidx564, align 4
  %add565 = add i32 %396, %390
  %397 = inttoptr i32 %add565 to ptr
  %syncp566 = getelementptr inbounds %struct.ipstats_mib, ptr %397, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp566)
  %arrayidx568 = getelementptr [37 x i64], ptr %397, i32 0, i32 21
  %398 = ptrtoint ptr %arrayidx568 to i32
  call void @__asan_load8_noabort(i32 %398)
  %399 = load i64, ptr %arrayidx568, align 8
  %add569 = add i64 %399, 1
  store i64 %add569, ptr %arrayidx568, align 8
  %dep_map.i.i850 = getelementptr inbounds %struct.ipstats_mib, ptr %397, i32 0, i32 1, i32 0, i32 1
  %400 = call ptr @llvm.returnaddress(i32 0) #11
  %401 = ptrtoint ptr %400 to i32
  call void @lock_release(ptr noundef %dep_map.i.i850, i32 noundef %401) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %402 = ptrtoint ptr %syncp566 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %syncp566, align 4
  %inc.i.i.i851 = add i32 %403, 1
  store i32 %inc.i.i.i851, ptr %syncp566, align 4
  call fastcc void @local_bh_enable()
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup575

cleanup575:                                       ; preds = %do.body550, %do.body480, %cleanup.thread858
  %retval.1 = phi i32 [ %err.4, %do.body550 ], [ %err.3.lcssa, %do.body480 ], [ %call143, %cleanup.thread858 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prevhdr) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %state) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_find_1stfragopt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6_skb_dst_mtu(ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %land.lhs.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

land.lhs.true:                                    ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %6, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !132
  %7 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11) to i32)
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load volatile i16, ptr %13, align 2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !133
  %16 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i19.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool1.not = icmp eq i16 %15, 0
  br i1 %tobool1.not, label %cond.true, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i17 = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.i.not.i = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.i.not.i, label %cond.true.cond.end_crit_edge, label %cond.true.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true.i:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pinet6.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true.i, %cond.true.cond.end_crit_edge, %land.lhs.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ null, %land.lhs.true.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ], [ %25, %cond.true.i ], [ null, %cond.true.cond.end_crit_edge ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

cond.end.skb_dst.exit_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %cond.end
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %cond.end.skb_dst.exit_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 8
  %and25.i = and i32 %30, -2
  %31 = inttoptr i32 %and25.i to ptr
  %tobool4.not = icmp eq ptr %cond, null
  br i1 %tobool4.not, label %skb_dst.exit.if.else_crit_edge, label %land.lhs.true5

skb_dst.exit.if.else_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true5:                                   ; preds = %skb_dst.exit
  %pmtudisc = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond, i32 0, i32 10
  %32 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %pmtudisc, align 2
  %33 = and i16 %bf.load, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %33)
  %cmp = icmp ugt i16 %33, 2048
  br i1 %cmp, label %do.end, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end:                                           ; preds = %land.lhs.true5
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %mtu7 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 20
  %36 = ptrtoint ptr %mtu7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %mtu7, align 4
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 13
  %38 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lwtstate, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %do.end.if.end.i_crit_edge, label %land.lhs.true.i.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %do.end
  %flags.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i, align 2
  %42 = and i16 %41, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i19

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i19:                                ; preds = %land.lhs.true.i.i
  %headroom.i = getelementptr inbounds %struct.lwtunnel_state, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %headroom.i, align 4
  %conv.i18 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv.i18)
  %cmp.i = icmp ugt i32 %37, %conv.i18
  br i1 %cmp.i, label %land.lhs.true.i19.lwtunnel_headroom.exit_crit_edge, label %land.lhs.true.i19.if.end.i_crit_edge

land.lhs.true.i19.if.end.i_crit_edge:             ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i19.lwtunnel_headroom.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %lwtunnel_headroom.exit

if.end.i:                                         ; preds = %land.lhs.true.i19.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  br label %lwtunnel_headroom.exit

lwtunnel_headroom.exit:                           ; preds = %if.end.i, %land.lhs.true.i19.lwtunnel_headroom.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %conv.i18, %land.lhs.true.i19.lwtunnel_headroom.exit_crit_edge ]
  %sub = sub i32 %37, %retval.0.i
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %skb_dst.exit.if.else_crit_edge
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 1
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mtu.i, align 4
  %call.i20 = tail call i32 %49(ptr noundef %31) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %lwtunnel_headroom.exit
  %mtu.0 = phi i32 [ %sub, %lwtunnel_headroom.exit ], [ %call.i20, %if.else ]
  ret i32 %mtu.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_select_ident(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_dst_lookup(ptr noundef %net, ptr noundef %sk, ptr nocapture noundef %dst, ptr noundef %fl6) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dst, align 4
  %call = tail call fastcc i32 @ip6_dst_lookup_tail(ptr noundef %net, ptr noundef %sk, ptr noundef %dst, ptr noundef %fl6)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6_dst_lookup_tail(ptr noundef %net, ptr noundef %sk, ptr nocapture noundef %dst, ptr noundef %fl6) unnamed_addr #0 align 64 {
entry:
  %fl_gw6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then:                                          ; preds = %entry
  %call.i209 = tail call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef %sk, ptr noundef %fl6, i32 noundef 0) #11
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i209, ptr %dst, align 4
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i209, i32 0, i32 15
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %spec.select = select i1 %tobool.not, ptr %call.i209, ptr null
  %11 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %tobool3.not = icmp eq ptr %spec.select, null
  br i1 %tobool3.not, label %rcu_read_lock.exit.cond.end18_crit_edge, label %cond.true4

rcu_read_lock.exit.cond.end18_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

cond.true4:                                       ; preds = %rcu_read_lock.exit
  %from5 = getelementptr inbounds %struct.rt6_info, ptr %spec.select, i32 0, i32 1
  %15 = ptrtoint ptr %from5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %from5, align 4
  %call7 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %cond.true4.cond.end18_crit_edge

cond.true4.cond.end18_crit_edge:                  ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

land.lhs.true:                                    ; preds = %cond.true4
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.cond.end18_crit_edge, label %land.lhs.true11

land.lhs.true.cond.end18_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b205 = load i1, ptr @ip6_dst_lookup_tail.__warned, align 1
  br i1 %.b205, label %land.lhs.true11.cond.end18_crit_edge, label %if.then13

land.lhs.true11.cond.end18_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end18

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ip6_dst_lookup_tail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1074, ptr noundef nonnull @.str.8) #11
  br label %cond.end18

cond.end18:                                       ; preds = %if.then13, %land.lhs.true11.cond.end18_crit_edge, %land.lhs.true.cond.end18_crit_edge, %cond.true4.cond.end18_crit_edge, %rcu_read_lock.exit.cond.end18_crit_edge
  %cond19 = phi ptr [ null, %rcu_read_lock.exit.cond.end18_crit_edge ], [ %16, %if.then13 ], [ %16, %land.lhs.true11.cond.end18_crit_edge ], [ %16, %land.lhs.true.cond.end18_crit_edge ], [ %16, %cond.true4.cond.end18_crit_edge ]
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %tobool20.not = icmp eq ptr %sk, null
  br i1 %tobool20.not, label %cond.end18.cond.end25_crit_edge, label %cond.true21

cond.end18.cond.end25_crit_edge:                  ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end25

cond.true21:                                      ; preds = %cond.end18
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.true21.inet6_sk.exit_crit_edge, label %cond.true.i

cond.true21.inet6_sk.exit_crit_edge:              ; preds = %cond.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %cond.true21
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %19 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %cond.true21.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %20, %cond.true.i ], [ null, %cond.true21.inet6_sk.exit_crit_edge ]
  %srcprefs = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %21 = ptrtoint ptr %srcprefs to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %srcprefs, align 2
  %bf.lshr = lshr i16 %bf.load, 6
  %bf.clear = and i16 %bf.lshr, 7
  %conv23 = zext i16 %bf.clear to i32
  br label %cond.end25

cond.end25:                                       ; preds = %inet6_sk.exit, %cond.end18.cond.end25_crit_edge
  %cond26 = phi i32 [ %conv23, %inet6_sk.exit ], [ 0, %cond.end18.cond.end25_crit_edge ]
  %tobool.not.i210 = icmp eq ptr %cond19, null
  br i1 %tobool.not.i210, label %cond.end25.cond.end.i_crit_edge, label %land.lhs.true.i211

cond.end25.cond.end.i_crit_edge:                  ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

land.lhs.true.i211:                               ; preds = %cond.end25
  %plen.i = getelementptr inbounds %struct.fib6_info, ptr %cond19, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.i = icmp eq i32 %23, 0
  br i1 %tobool1.not.i, label %cond.true.critedge.i, label %if.then.i212

if.then.i212:                                     ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #13
  %fib6_prefsrc.i = getelementptr inbounds %struct.fib6_info, ptr %cond19, i32 0, i32 11
  %24 = call ptr @memcpy(ptr %saddr, ptr %fib6_prefsrc.i, i32 16)
  br label %ip6_route_get_saddr.exit

cond.true.critedge.i:                             ; preds = %land.lhs.true.i211
  %nh.i.i = getelementptr inbounds %struct.fib6_info, ptr %cond19, i32 0, i32 20
  %25 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %cond.true.critedge.i
  %is_group.i.i.i = getelementptr inbounds %struct.nexthop, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %is_group.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_group.i.i.i, align 2, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.if.end16.i.i.i_crit_edge, label %if.then.i.i.i

cond.true.i.i.if.end16.i.i.i_crit_edge:           ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  %29 = getelementptr inbounds %struct.nexthop, ptr %26, i32 0, i32 12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %29, align 4
  %call.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call.i.i.i, label %if.then.i.i.i.do.end10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.i.i.do.end10.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true6.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b46.i.i.i = load i1, ptr @nexthop_fib6_nh.__warned, align 1
  br i1 %.b46.i.i.i, label %land.lhs.true6.i.i.i.do.end10.i.i.i_crit_edge, label %if.then8.i.i.i

land.lhs.true6.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i.i

if.then8.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nexthop_fib6_nh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 487, ptr noundef nonnull @.str.8) #11
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then8.i.i.i, %land.lhs.true6.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge, %if.then.i.i.i.do.end10.i.i.i_crit_edge
  %num_nh.i.i.i.i = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %num_nh.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_nh.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.i.i.i.i = icmp eq i16 %33, 0
  br i1 %cmp.i.i.i.i, label %do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge, label %nexthop_mpath_select.exit.i.i.i

do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge: ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib6_info_nh_dev.exit.i

nexthop_mpath_select.exit.i.i.i:                  ; preds = %do.end10.i.i.i
  %nh_entries.i.i.i.i = getelementptr inbounds %struct.nh_group, ptr %31, i32 0, i32 8
  %34 = ptrtoint ptr %nh_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nh_entries.i.i.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool13.not.i.i.i, label %nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge, label %nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge

nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i.i

nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fib6_info_nh_dev.exit.i

if.end16.i.i.i:                                   ; preds = %nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge, %cond.true.i.i.if.end16.i.i.i_crit_edge
  %nh.addr.0.i.i.i = phi ptr [ %35, %nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge ], [ %26, %cond.true.i.i.if.end16.i.i.i_crit_edge ]
  %36 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.0.i.i.i, i32 0, i32 12
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %36, align 4
  %call22.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call22.i.i.i, label %if.end16.i.i.i.do.end34.i.i.i_crit_edge, label %lor.lhs.false23.i.i.i

if.end16.i.i.i.do.end34.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i.i.i

lor.lhs.false23.i.i.i:                            ; preds = %if.end16.i.i.i
  %call24.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call24.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %land.lhs.true26.i.i.i, label %lor.lhs.false23.i.i.i.do.end34.i.i.i_crit_edge

lor.lhs.false23.i.i.i.do.end34.i.i.i_crit_edge:   ; preds = %lor.lhs.false23.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i.i.i

land.lhs.true26.i.i.i:                            ; preds = %lor.lhs.false23.i.i.i
  %call27.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %land.lhs.true26.i.i.i.do.end34.i.i.i_crit_edge, label %land.lhs.true29.i.i.i

land.lhs.true26.i.i.i.do.end34.i.i.i_crit_edge:   ; preds = %land.lhs.true26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i.i.i

land.lhs.true29.i.i.i:                            ; preds = %land.lhs.true26.i.i.i
  %.b4445.i.i.i = load i1, ptr @nexthop_fib6_nh.__warned.26, align 1
  br i1 %.b4445.i.i.i, label %land.lhs.true29.i.i.i.do.end34.i.i.i_crit_edge, label %if.then31.i.i.i

land.lhs.true29.i.i.i.do.end34.i.i.i_crit_edge:   ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i.i.i

if.then31.i.i.i:                                  ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nexthop_fib6_nh.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 493, ptr noundef nonnull @.str.8) #11
  br label %do.end34.i.i.i

do.end34.i.i.i:                                   ; preds = %if.then31.i.i.i, %land.lhs.true29.i.i.i.do.end34.i.i.i_crit_edge, %land.lhs.true26.i.i.i.do.end34.i.i.i_crit_edge, %lor.lhs.false23.i.i.i.do.end34.i.i.i_crit_edge, %if.end16.i.i.i.do.end34.i.i.i_crit_edge
  %family.i.i.i = getelementptr inbounds %struct.nh_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %40)
  %cmp.i.i.i = icmp eq i8 %40, 10
  %41 = getelementptr inbounds %struct.nh_info, ptr %38, i32 0, i32 5
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %41, ptr null
  br label %fib6_info_nh_dev.exit.i

cond.false.i.i:                                   ; preds = %cond.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %fib6_nh2.i.i = getelementptr inbounds %struct.fib6_info, ptr %cond19, i32 0, i32 21
  br label %fib6_info_nh_dev.exit.i

fib6_info_nh_dev.exit.i:                          ; preds = %cond.false.i.i, %do.end34.i.i.i, %nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge, %do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge
  %cond.i.i = phi ptr [ %fib6_nh2.i.i, %cond.false.i.i ], [ null, %nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge ], [ %spec.select.i.i.i, %do.end34.i.i.i ], [ null, %do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge ]
  %42 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cond.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %fib6_info_nh_dev.exit.i, %cond.end25.cond.end.i_crit_edge
  %cond.i213 = phi ptr [ %43, %fib6_info_nh_dev.exit.i ], [ null, %cond.end25.cond.end.i_crit_edge ]
  %call4.i = tail call i32 @ipv6_dev_get_saddr(ptr noundef %net, ptr noundef %cond.i213, ptr noundef %daddr, i32 noundef %cond26, ptr noundef %saddr) #11
  br label %ip6_route_get_saddr.exit

ip6_route_get_saddr.exit:                         ; preds = %cond.end.i, %if.then.i212
  %err.0.i = phi i32 [ 0, %if.then.i212 ], [ %call4.i, %cond.end.i ]
  %call.i214 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i214, label %ip6_route_get_saddr.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i217

ip6_route_get_saddr.exit.rcu_read_unlock.exit_crit_edge: ; preds = %ip6_route_get_saddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i217:                               ; preds = %ip6_route_get_saddr.exit
  %call1.i215 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i215)
  %tobool.not.i216 = icmp eq i32 %call1.i215, 0
  br i1 %tobool.not.i216, label %land.lhs.true.i217.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i219

land.lhs.true.i217.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i219:                              ; preds = %land.lhs.true.i217
  %.b4.i218 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i218, label %land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge, label %if.then.i220

land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i220:                                     ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i220, %land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i217.rcu_read_unlock.exit_crit_edge, %ip6_route_get_saddr.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  %44 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i221 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i221 to ptr
  %preempt_count.i.i.i.i222 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i222, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i222, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool29.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool29.not, label %if.end31, label %rcu_read_unlock.exit.out_err_release_crit_edge

rcu_read_unlock.exit.out_err_release_crit_edge:   ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err_release

if.end31:                                         ; preds = %rcu_read_unlock.exit
  %48 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst, align 4
  %error32 = getelementptr inbounds %struct.dst_entry, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %error32 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %error32, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool33.not = icmp eq i16 %51, 0
  br i1 %tobool33.not, label %if.end31.cleanup.thread_crit_edge, label %if.then34

if.end31.cleanup.thread_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dst_release(ptr noundef %49) #11
  %52 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %dst, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then34, %if.end31.cleanup.thread_crit_edge
  %53 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool36.not = icmp ne i32 %54, 0
  %spec.select206 = zext i1 %tobool36.not to i32
  br label %if.end40

if.end40:                                         ; preds = %cleanup.thread, %entry.if.end40_crit_edge
  %flags.2 = phi i32 [ 0, %entry.if.end40_crit_edge ], [ %spec.select206, %cleanup.thread ]
  %55 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dst, align 4
  %tobool41.not = icmp eq ptr %56, null
  br i1 %tobool41.not, label %if.then42, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef %sk, ptr noundef %fl6, i32 noundef %flags.2) #11
  %57 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call43, ptr %dst, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40.if.end44_crit_edge
  %58 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dst, align 4
  %error45 = getelementptr inbounds %struct.dst_entry, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %error45 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %error45, align 4
  %conv46 = sext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool47.not = icmp eq i16 %61, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.out_err_release_crit_edge

if.end44.out_err_release_crit_edge:               ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err_release

if.end49:                                         ; preds = %if.end44
  tail call fastcc void @local_bh_disable() #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #11
  %call.i223 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i223, label %if.end49.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i226

if.end49.rcu_read_lock_bh.exit_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

land.lhs.true.i226:                               ; preds = %if.end49
  %call1.i224 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i224)
  %tobool.not.i225 = icmp eq i32 %call1.i224, 0
  br i1 %tobool.not.i225, label %land.lhs.true.i226.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i228

land.lhs.true.i226.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i228:                              ; preds = %land.lhs.true.i226
  %.b4.i227 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i227, label %land.lhs.true2.i228.rcu_read_lock_bh.exit_crit_edge, label %if.then.i229

land.lhs.true2.i228.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i228
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

if.then.i229:                                     ; preds = %land.lhs.true2.i228
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i229, %land.lhs.true2.i228.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i226.rcu_read_lock_bh.exit_crit_edge, %if.end49.rcu_read_lock_bh.exit_crit_edge
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %daddr51 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %59, i32 0, i32 7
  %64 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rt6i_flags.i, align 4
  %and.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i230 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i230, label %if.else.i, label %if.then.i231

if.then.i231:                                     ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %59, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %rcu_read_lock_bh.exit
  %and2.i = and i32 %65, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !108

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %59, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i231
  %retval.0.i = phi ptr [ %rt6i_gateway.i, %if.then.i231 ], [ %rt6i_dst.i, %if.then6.i ], [ %daddr51, %if.else.i.rt6_nexthop.exit_crit_edge ]
  %call53 = tail call fastcc ptr @__ipv6_neigh_lookup_noref(ptr noundef %63, ptr noundef %retval.0.i)
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %rt6_nexthop.exit.land.end.thread_crit_edge, label %land.end

rt6_nexthop.exit.land.end.thread_crit_edge:       ; preds = %rt6_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.thread

land.end:                                         ; preds = %rt6_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call53, i32 0, i32 12
  %66 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nud_state, align 8
  %68 = and i8 %67, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool56.not = icmp eq i8 %68, 0
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %rt6_nexthop.exit.land.end.thread_crit_edge
  %69 = phi i1 [ false, %rt6_nexthop.exit.land.end.thread_crit_edge ], [ %tobool56.not, %land.end ]
  %call.i232 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i232, label %land.end.thread.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i235

land.end.thread.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i235:                               ; preds = %land.end.thread
  %call1.i233 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i233)
  %tobool.not.i234 = icmp eq i32 %call1.i233, 0
  br i1 %tobool.not.i234, label %land.lhs.true.i235.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i237

land.lhs.true.i235.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i237:                              ; preds = %land.lhs.true.i235
  %.b4.i236 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i236, label %land.lhs.true2.i237.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i238

land.lhs.true2.i237.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i237
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

if.then.i238:                                     ; preds = %land.lhs.true2.i237
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i238, %land.lhs.true2.i237.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i235.rcu_read_unlock_bh.exit_crit_edge, %land.end.thread.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #11
  tail call fastcc void @local_bh_enable() #11
  br i1 %69, label %if.then59, label %rcu_read_unlock_bh.exit.if.end87_crit_edge

rcu_read_unlock_bh.exit.if.end87_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then59:                                        ; preds = %rcu_read_unlock_bh.exit
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl_gw6) #11
  %70 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dst, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call62 = tail call ptr @ipv6_get_ifaddr(ptr noundef %net, ptr noundef %saddr, ptr noundef %73, i32 noundef 1) #11
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then59.cleanup82.thread_crit_edge, label %if.then70

if.then59.cleanup82.thread_crit_edge:             ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82.thread

if.then70:                                        ; preds = %if.then59
  %flags65 = getelementptr inbounds %struct.inet6_ifaddr, ptr %call62, i32 0, i32 8
  %74 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags65, align 4
  %and66 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %refcnt.i = getelementptr inbounds %struct.inet6_ifaddr, ptr %call62, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !128
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i239 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i239, label %if.then.i240, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end71, label %if.then10.i.i.i.i, !prof !108

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br i1 %tobool67.not, label %if.then10.i.i.i.i.cleanup82.thread_crit_edge, label %if.then10.i.i.i.i.if.then73_crit_edge

if.then10.i.i.i.i.if.then73_crit_edge:            ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.then10.i.i.i.i.cleanup82.thread_crit_edge:     ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82.thread

if.then.i240:                                     ; preds = %if.then70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %call62) #11
  br i1 %tobool67.not, label %if.then.i240.cleanup82.thread_crit_edge, label %if.then.i240.if.then73_crit_edge

if.then.i240.if.then73_crit_edge:                 ; preds = %if.then.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.then.i240.cleanup82.thread_crit_edge:          ; preds = %if.then.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82.thread

if.end71:                                         ; preds = %if.end5.i.i.i.i
  br i1 %tobool67.not, label %if.end71.cleanup82.thread_crit_edge, label %if.end71.if.then73_crit_edge

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73

if.end71.cleanup82.thread_crit_edge:              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82.thread

if.then73:                                        ; preds = %if.end71.if.then73_crit_edge, %if.then.i240.if.then73_crit_edge, %if.then10.i.i.i.i.if.then73_crit_edge
  %77 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dst, align 4
  tail call void @dst_release(ptr noundef %78) #11
  %79 = call ptr @memcpy(ptr %fl_gw6, ptr %fl6, i32 88)
  %daddr74 = getelementptr inbounds %struct.flowi6, ptr %fl_gw6, i32 0, i32 1
  %80 = call ptr @memset(ptr %daddr74, i32 0, i32 16)
  %call.i241 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %fl_gw6, i32 noundef 0) #11
  %81 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i241, ptr %dst, align 4
  %error76 = getelementptr inbounds %struct.dst_entry, ptr %call.i241, i32 0, i32 15
  %82 = ptrtoint ptr %error76 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %error76, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool78.not = icmp eq i16 %83, 0
  br i1 %tobool78.not, label %if.then73.cleanup82.thread_crit_edge, label %cleanup82

if.then73.cleanup82.thread_crit_edge:             ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup82.thread

cleanup82.thread:                                 ; preds = %if.then73.cleanup82.thread_crit_edge, %if.end71.cleanup82.thread_crit_edge, %if.then.i240.cleanup82.thread_crit_edge, %if.then10.i.i.i.i.cleanup82.thread_crit_edge, %if.then59.cleanup82.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl_gw6) #11
  br label %if.end87

cleanup82:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %conv77 = sext i16 %83 to i32
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl_gw6) #11
  br label %out_err_release

if.end87:                                         ; preds = %cleanup82.thread, %rcu_read_unlock_bh.exit.if.end87_crit_edge
  %84 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %saddr, align 4
  %86 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx2.i, align 4
  %or.i243 = or i32 %87, %85
  %88 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %89, 65535
  %or5.i245 = or i32 %or.i243, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i245)
  %cmp.i246 = icmp eq i32 %or5.i245, 0
  br i1 %cmp.i246, label %land.lhs.true91, label %if.end87.cleanup148_crit_edge

if.end87.cleanup148_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

land.lhs.true91:                                  ; preds = %if.end87
  %90 = ptrtoint ptr %daddr51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %daddr51, align 4
  %arrayidx2.i247 = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx2.i247 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx2.i247, align 4
  %or.i248 = or i32 %93, %91
  %arrayidx4.i249 = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 2
  %94 = ptrtoint ptr %arrayidx4.i249 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx4.i249, align 4
  %xor.i250 = xor i32 %95, 65535
  %or5.i251 = or i32 %xor.i250, %or.i248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i251)
  %cmp.i252 = icmp eq i32 %or5.i251, 0
  br i1 %cmp.i252, label %land.lhs.true91.cleanup148_crit_edge, label %lor.lhs.false

land.lhs.true91.cleanup148_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

lor.lhs.false:                                    ; preds = %land.lhs.true91
  %or5.i256 = or i32 %or.i248, %95
  %arrayidx7.i257 = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 3
  %96 = ptrtoint ptr %arrayidx7.i257 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx7.i257, align 4
  %or8.i258 = or i32 %or5.i256, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i258)
  %cmp.i259 = icmp eq i32 %or8.i258, 0
  br i1 %cmp.i259, label %lor.lhs.false.cleanup148_crit_edge, label %lor.lhs.false.out_err_release_crit_edge

lor.lhs.false.out_err_release_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_err_release

lor.lhs.false.cleanup148_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

out_err_release:                                  ; preds = %lor.lhs.false.out_err_release_crit_edge, %cleanup82, %if.end44.out_err_release_crit_edge, %rcu_read_unlock.exit.out_err_release_crit_edge
  %err.2 = phi i32 [ %conv46, %if.end44.out_err_release_crit_edge ], [ %conv77, %cleanup82 ], [ -97, %lor.lhs.false.out_err_release_crit_edge ], [ %err.0.i, %rcu_read_unlock.exit.out_err_release_crit_edge ]
  %98 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dst, align 4
  call void @dst_release(ptr noundef %99) #11
  %100 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -101, i32 %err.2)
  %cmp = icmp eq i32 %err.2, -101
  br i1 %cmp, label %do.body124, label %out_err_release.cleanup148_crit_edge

out_err_release.cleanup148_crit_edge:             ; preds = %out_err_release
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup148

do.body124:                                       ; preds = %out_err_release
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %101 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ipv6_statistics, align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i260 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i260 to ptr
  %cpu135 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %cpu135 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu135, align 4
  %arrayidx136 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx136, align 4
  %add137 = add i32 %109, %103
  %110 = inttoptr i32 %add137 to ptr
  %syncp138 = getelementptr inbounds %struct.ipstats_mib, ptr %110, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp138)
  %arrayidx140 = getelementptr [37 x i64], ptr %110, i32 0, i32 15
  %111 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx140, align 8
  %add141 = add i64 %112, 1
  store i64 %add141, ptr %arrayidx140, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %110, i32 0, i32 1, i32 0, i32 1
  %113 = call ptr @llvm.returnaddress(i32 0) #11
  %114 = ptrtoint ptr %113 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %114) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %115 = ptrtoint ptr %syncp138 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %syncp138, align 4
  %inc.i.i.i = add i32 %116, 1
  store i32 %inc.i.i.i, ptr %syncp138, align 4
  call fastcc void @local_bh_enable()
  br label %cleanup148

cleanup148:                                       ; preds = %do.body124, %out_err_release.cleanup148_crit_edge, %lor.lhs.false.cleanup148_crit_edge, %land.lhs.true91.cleanup148_crit_edge, %if.end87.cleanup148_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup148_crit_edge ], [ 0, %land.lhs.true91.cleanup148_crit_edge ], [ 0, %if.end87.cleanup148_crit_edge ], [ -101, %do.body124 ], [ %err.2, %out_err_release.cleanup148_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip6_dst_lookup_flow(ptr noundef %net, ptr noundef %sk, ptr noundef %fl6, ptr noundef readonly %final_dst) #0 align 64 {
entry:
  %dst = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst) #11
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dst, align 4
  %call = call fastcc i32 @ip6_dst_lookup_tail(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %dst, ptr noundef %fl6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %final_dst, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %daddr, ptr %final_dst, i32 16)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %call6 = tail call ptr @xfrm_lookup_route(ptr noundef %net, ptr noundef %4, ptr noundef %fl6, ptr noundef %sk, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %call6, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip6_sk_dst_lookup_flow(ptr noundef %sk, ptr noundef %fl6, ptr noundef readonly %final_dst, i1 noundef zeroext %connected) #0 align 64 {
entry:
  %dst.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %dst_cookie = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 14
  %4 = ptrtoint ptr %dst_cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_cookie, align 4
  %call1 = tail call ptr @sk_dst_check(ptr noundef %sk, i32 noundef %5) #11
  %6 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i.i = zext i8 %7 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %inet6_sk.exit.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

inet6_sk.exit.inet6_sk.exit.i_crit_edge:          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %8 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %inet6_sk.exit.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %9, %cond.true.i.i ], [ null, %inet6_sk.exit.inet6_sk.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %inet6_sk.exit.i.if.end_crit_edge, label %if.end.i

inet6_sk.exit.i.if.end_crit_edge:                 ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %inet6_sk.exit.i
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cmp.not.i = icmp eq i16 %13, 10
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %if.end.i
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %daddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %daddr_cache.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %daddr_cache.i, align 4
  %plen.i.i = getelementptr inbounds %struct.rt6_info, ptr %call1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %plen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %17)
  %cmp.not.i.i = icmp eq i32 %17, 128
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end3.i.land.rhs.i.i_crit_edge

if.end3.i.land.rhs.i.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

lor.lhs.false.i.i:                                ; preds = %if.end3.i
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %call1, i32 0, i32 3
  %18 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %daddr.i, align 4
  %20 = ptrtoint ptr %rt6i_dst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rt6i_dst.i, align 4
  %xor.i.i.i = xor i32 %21, %19
  %arrayidx4.i.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr %struct.rt6_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %25, %23
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr %struct.rt6_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %29, %27
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr %struct.rt6_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %33, %31
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.lor.lhs.false.i_crit_edge, label %lor.lhs.false.i.i.land.rhs.i.i_crit_edge

lor.lhs.false.i.i.land.rhs.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

lor.lhs.false.i.i.lor.lhs.false.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i.land.rhs.i.i_crit_edge, %if.end3.i.land.rhs.i.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge, label %ip6_rt_check.exit.i

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

ip6_rt_check.exit.i:                              ; preds = %land.rhs.i.i
  %34 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %daddr.i, align 4
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %15, align 4
  %xor.i5.i.i = xor i32 %37, %35
  %arrayidx4.i6.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx4.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i6.i.i, align 4
  %arrayidx6.i7.i.i = getelementptr [4 x i32], ptr %15, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx6.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx6.i7.i.i, align 4
  %xor7.i8.i.i = xor i32 %41, %39
  %or.i9.i.i = or i32 %xor7.i8.i.i, %xor.i5.i.i
  %arrayidx9.i10.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx9.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i10.i.i, align 4
  %arrayidx11.i11.i.i = getelementptr [4 x i32], ptr %15, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx11.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.i11.i.i, align 4
  %xor12.i12.i.i = xor i32 %45, %43
  %or13.i13.i.i = or i32 %or.i9.i.i, %xor12.i12.i.i
  %arrayidx15.i14.i.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 1, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx15.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx15.i14.i.i, align 4
  %arrayidx17.i15.i.i = getelementptr [4 x i32], ptr %15, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx17.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx17.i15.i.i, align 4
  %xor18.i16.i.i = xor i32 %49, %47
  %or19.i17.i.i = or i32 %or13.i13.i.i, %xor18.i16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i17.i.i)
  %cmp.i18.i.not.i = icmp eq i32 %or19.i17.i.i, 0
  br i1 %cmp.i18.i.not.i, label %ip6_rt_check.exit.i.lor.lhs.false.i_crit_edge, label %ip6_rt_check.exit.i.cleanup.sink.split.i_crit_edge

ip6_rt_check.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %ip6_rt_check.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

ip6_rt_check.exit.i.lor.lhs.false.i_crit_edge:    ; preds = %ip6_rt_check.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %ip6_rt_check.exit.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.i.i.lor.lhs.false.i_crit_edge
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %saddr_cache.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %saddr_cache.i, align 4
  %plen.i33.i = getelementptr inbounds %struct.rt6_info, ptr %call1, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %plen.i33.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %plen.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %53)
  %cmp.not.i34.i = icmp eq i32 %53, 128
  br i1 %cmp.not.i34.i, label %lor.lhs.false.i49.i, label %lor.lhs.false.i.land.rhs.i51.i_crit_edge

lor.lhs.false.i.land.rhs.i51.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i51.i

lor.lhs.false.i49.i:                              ; preds = %lor.lhs.false.i
  %rt6i_src.i = getelementptr inbounds %struct.rt6_info, ptr %call1, i32 0, i32 4
  %54 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %saddr.i, align 4
  %56 = ptrtoint ptr %rt6i_src.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rt6i_src.i, align 4
  %xor.i.i35.i = xor i32 %57, %55
  %arrayidx4.i.i36.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx4.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i.i36.i, align 4
  %arrayidx6.i.i37.i = getelementptr %struct.rt6_info, ptr %call1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx6.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx6.i.i37.i, align 4
  %xor7.i.i38.i = xor i32 %61, %59
  %or.i.i39.i = or i32 %xor7.i.i38.i, %xor.i.i35.i
  %arrayidx9.i.i40.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx9.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx9.i.i40.i, align 4
  %arrayidx11.i.i41.i = getelementptr %struct.rt6_info, ptr %call1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %64 = ptrtoint ptr %arrayidx11.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx11.i.i41.i, align 4
  %xor12.i.i42.i = xor i32 %65, %63
  %or13.i.i43.i = or i32 %or.i.i39.i, %xor12.i.i42.i
  %arrayidx15.i.i44.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx15.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx15.i.i44.i, align 4
  %arrayidx17.i.i45.i = getelementptr %struct.rt6_info, ptr %call1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx17.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx17.i.i45.i, align 4
  %xor18.i.i46.i = xor i32 %69, %67
  %or19.i.i47.i = or i32 %or13.i.i43.i, %xor18.i.i46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i47.i)
  %cmp.i.i48.i = icmp eq i32 %or19.i.i47.i, 0
  br i1 %cmp.i.i48.i, label %lor.lhs.false.i49.i.lor.lhs.false8.i_crit_edge, label %lor.lhs.false.i49.i.land.rhs.i51.i_crit_edge

lor.lhs.false.i49.i.land.rhs.i51.i_crit_edge:     ; preds = %lor.lhs.false.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i51.i

lor.lhs.false.i49.i.lor.lhs.false8.i_crit_edge:   ; preds = %lor.lhs.false.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false8.i

land.rhs.i51.i:                                   ; preds = %lor.lhs.false.i49.i.land.rhs.i51.i_crit_edge, %lor.lhs.false.i.land.rhs.i51.i_crit_edge
  %tobool.not.i50.i = icmp eq ptr %51, null
  br i1 %tobool.not.i50.i, label %land.rhs.i51.i.cleanup.sink.split.i_crit_edge, label %ip6_rt_check.exit68.i

land.rhs.i51.i.cleanup.sink.split.i_crit_edge:    ; preds = %land.rhs.i51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

ip6_rt_check.exit68.i:                            ; preds = %land.rhs.i51.i
  %70 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %saddr.i, align 4
  %72 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %51, align 4
  %xor.i5.i52.i = xor i32 %73, %71
  %arrayidx4.i6.i53.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx4.i6.i53.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx4.i6.i53.i, align 4
  %arrayidx6.i7.i54.i = getelementptr [4 x i32], ptr %51, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx6.i7.i54.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx6.i7.i54.i, align 4
  %xor7.i8.i55.i = xor i32 %77, %75
  %or.i9.i56.i = or i32 %xor7.i8.i55.i, %xor.i5.i52.i
  %arrayidx9.i10.i57.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx9.i10.i57.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx9.i10.i57.i, align 4
  %arrayidx11.i11.i58.i = getelementptr [4 x i32], ptr %51, i32 0, i32 2
  %80 = ptrtoint ptr %arrayidx11.i11.i58.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx11.i11.i58.i, align 4
  %xor12.i12.i59.i = xor i32 %81, %79
  %or13.i13.i60.i = or i32 %or.i9.i56.i, %xor12.i12.i59.i
  %arrayidx15.i14.i61.i = getelementptr %struct.flowi6, ptr %fl6, i32 0, i32 2, i32 0, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx15.i14.i61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx15.i14.i61.i, align 4
  %arrayidx17.i15.i62.i = getelementptr [4 x i32], ptr %51, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx17.i15.i62.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx17.i15.i62.i, align 4
  %xor18.i16.i63.i = xor i32 %85, %83
  %or19.i17.i64.i = or i32 %or13.i13.i60.i, %xor18.i16.i63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i17.i64.i)
  %cmp.i18.i65.not.i = icmp eq i32 %or19.i17.i64.i, 0
  br i1 %cmp.i18.i65.not.i, label %ip6_rt_check.exit68.i.lor.lhs.false8.i_crit_edge, label %ip6_rt_check.exit68.i.cleanup.sink.split.i_crit_edge

ip6_rt_check.exit68.i.cleanup.sink.split.i_crit_edge: ; preds = %ip6_rt_check.exit68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

ip6_rt_check.exit68.i.lor.lhs.false8.i_crit_edge: ; preds = %ip6_rt_check.exit68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false8.i

lor.lhs.false8.i:                                 ; preds = %ip6_rt_check.exit68.i.lor.lhs.false8.i_crit_edge, %lor.lhs.false.i49.i.lor.lhs.false8.i_crit_edge
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 6
  %86 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flowic_flags.i, align 1
  %88 = and i8 %87, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool10.not.i = icmp eq i8 %88, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %lor.lhs.false8.i.cleanup_crit_edge

lor.lhs.false8.i.cleanup_crit_edge:               ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %lor.lhs.false8.i
  %89 = ptrtoint ptr %fl6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fl6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool12.not.i = icmp eq i32 %90, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true13.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %91 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call1, align 4
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 17
  %93 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %94)
  %cmp16.not.i = icmp eq i32 %90, %94
  br i1 %cmp16.not.i, label %land.lhs.true13.i.cleanup_crit_edge, label %land.lhs.true13.i.cleanup.sink.split.i_crit_edge

land.lhs.true13.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %land.lhs.true13.i.cleanup.sink.split.i_crit_edge, %ip6_rt_check.exit68.i.cleanup.sink.split.i_crit_edge, %land.rhs.i51.i.cleanup.sink.split.i_crit_edge, %ip6_rt_check.exit.i.cleanup.sink.split.i_crit_edge, %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge
  tail call void @dst_release(ptr noundef nonnull %call1) #11
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %inet6_sk.exit.i.if.end_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %95 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst.i) #11
  %97 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %dst.i, align 4
  %call.i = call fastcc i32 @ip6_dst_lookup_tail(ptr noundef %96, ptr noundef %sk, ptr noundef nonnull %dst.i, ptr noundef %fl6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i22 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i22, label %if.end.i23, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %98 = inttoptr i32 %call.i to ptr
  br label %ip6_dst_lookup_flow.exit

if.end.i23:                                       ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %final_dst, null
  br i1 %tobool2.not.i, label %if.end.i23.if.end4.i_crit_edge, label %if.then3.i

if.end.i23.if.end4.i_crit_edge:                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #13
  %daddr.i24 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %99 = call ptr @memcpy(ptr %daddr.i24, ptr %final_dst, i32 16)
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i23.if.end4.i_crit_edge
  %100 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dst.i, align 4
  %call6.i = tail call ptr @xfrm_lookup_route(ptr noundef %96, ptr noundef %101, ptr noundef %fl6, ptr noundef %sk, i32 noundef 0) #11
  br label %ip6_dst_lookup_flow.exit

ip6_dst_lookup_flow.exit:                         ; preds = %if.end4.i, %if.then.i
  %retval.0.i25 = phi ptr [ %98, %if.then.i ], [ %call6.i, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst.i) #11
  %connected.not = xor i1 %connected, true
  %cmp.i = icmp ugt ptr %retval.0.i25, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %connected.not, i1 true, i1 %cmp.i
  br i1 %or.cond, label %ip6_dst_lookup_flow.exit.cleanup_crit_edge, label %if.then7

ip6_dst_lookup_flow.exit.cleanup_crit_edge:       ; preds = %ip6_dst_lookup_flow.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %ip6_dst_lookup_flow.exit
  %tobool.not.i26 = icmp eq ptr %retval.0.i25, null
  br i1 %tobool.not.i26, label %if.then7.dst_clone.exit_crit_edge, label %if.then.i27

if.then7.dst_clone.exit_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_clone.exit

if.then.i27:                                      ; preds = %if.then7
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %retval.0.i25, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #11
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 231, i32 noundef 9, ptr noundef null) #11
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %if.then7.dst_clone.exit_crit_edge
  tail call void @ip6_sk_dst_store_flow(ptr noundef %sk, ptr noundef %retval.0.i25, ptr noundef %fl6) #11
  br label %cleanup

cleanup:                                          ; preds = %dst_clone.exit, %ip6_dst_lookup_flow.exit.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false8.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i25, %dst_clone.exit ], [ %retval.0.i25, %ip6_dst_lookup_flow.exit.cleanup_crit_edge ], [ %call1, %lor.lhs.false8.i.cleanup_crit_edge ], [ %call1, %land.lhs.true13.i.cleanup_crit_edge ], [ %call1, %land.lhs.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_dst_store_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip6_dst_lookup_tunnel(ptr nocapture noundef readonly %skb, ptr noundef %dev, ptr noundef %net, ptr nocapture noundef readonly %sock, ptr noundef %saddr, ptr noundef %info, i8 noundef zeroext %protocol, i1 noundef zeroext %use_cache) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #11
  %dst_cache1 = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 1
  br i1 %use_cache, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call ptr @dst_cache_get_ip6(ptr noundef %dst_cache1, ptr noundef %saddr) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %0 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %4 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flowic_mark, align 8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %5 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %protocol, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1
  %dst6 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 1, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %daddr, ptr %dst6, i32 16)
  %saddr7 = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %saddr7, ptr %u, i32 16)
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tos, align 2
  %10 = and i8 %9, 30
  %and = zext i8 %10 to i32
  %label = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %label, align 4
  %shl.i = shl nuw nsw i32 %and, 20
  %or.i = or i32 %shl.i, %12
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %13 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %flowlabel, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %14 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow = getelementptr inbounds %struct.ipv6_stub, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ipv6_dst_lookup_flow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipv6_dst_lookup_flow, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %17 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk, align 16
  %call13 = call ptr %16(ptr noundef %net, ptr noundef %18, ptr noundef nonnull %fl6, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body16, label %if.end28

do.body16:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6_dst_lookup_tunnel, %if.then22)) #11
          to label %cleanup [label %if.then22], !srcloc !115

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug694, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %daddr) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end4
  %19 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call13, align 4
  %cmp = icmp eq ptr %20, %dev
  br i1 %cmp, label %do.body33, label %if.end53

do.body33:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip6_dst_lookup_tunnel, %if.then45)) #11
          to label %do.end51 [label %if.then45], !srcloc !115

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug695, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %daddr) #11
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %do.body33
  call void @dst_release(ptr noundef %call13) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end28
  br i1 %use_cache, label %if.then55, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void @dst_cache_set_ip6(ptr noundef %dst_cache1, ptr noundef %call13, ptr noundef %saddr7) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge
  %21 = call ptr @memcpy(ptr %saddr, ptr %saddr7, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end51, %if.then22, %do.body16, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -40 to ptr), %do.end51 ], [ %call13, %if.end57 ], [ %call, %if.then.cleanup_crit_edge ], [ inttoptr (i32 -101 to ptr), %do.body16 ], [ inttoptr (i32 -101 to ptr), %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip6(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_append_data(ptr noundef %sk, ptr nocapture noundef readonly %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, ptr nocapture noundef readonly %ipc6, ptr noundef %fl6, ptr noundef %rt, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %inet6_sk.exit.cleanup_crit_edge

inet6_sk.exit.cleanup_crit_edge:                  ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %4 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %sk_write_queue
  br i1 %cmp.i.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %cork = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %cork5 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 21
  %call6 = tail call fastcc i32 @ip6_setup_cork(ptr noundef %sk, ptr noundef %cork, ptr noundef %cork5, ptr noundef %ipc6, ptr noundef %rt, ptr noundef %fl6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %opt = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opt, align 8
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.cond.end_crit_edge, label %cond.true

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opt_flen, align 4
  %conv = zext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.end9.cond.end_crit_edge ]
  %add = add i32 %cond, %length
  %add12 = add i32 %cond, %transhdrlen
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %cond.end
  %transhdrlen.addr.0 = phi i32 [ %add12, %cond.end ], [ 0, %if.else ]
  %fl6.addr.0 = phi ptr [ %fl6, %cond.end ], [ %fl, %if.else ]
  %length.addr.0 = phi i32 [ %add, %cond.end ], [ %length, %if.else ]
  %cork16 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %cork17 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 21
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %10 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sk_allocation.i, align 8
  %and.i = and i32 %11, 132224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %and.i)
  %cmp.i41 = icmp eq i32 %and.i, 1152
  br i1 %cmp.i41, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i42 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i42 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %task_frag.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 180
  br label %sk_page_frag.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %sk_frag.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37
  br label %sk_page_frag.exit

sk_page_frag.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %task_frag.i, %if.then.i ], [ %sk_frag.i, %if.end.i ]
  %call19 = tail call fastcc i32 @__ip6_append_data(ptr noundef %sk, ptr noundef %fl6.addr.0, ptr noundef %sk_write_queue, ptr noundef %cork16, ptr noundef %cork17, ptr noundef %retval.0.i, ptr noundef %getfrag, ptr noundef %from, i32 noundef %length.addr.0, i32 noundef %transhdrlen.addr.0, i32 noundef %flags, ptr noundef %ipc6)
  br label %cleanup

cleanup:                                          ; preds = %sk_page_frag.exit, %if.then4.cleanup_crit_edge, %inet6_sk.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %sk_page_frag.exit ], [ 0, %inet6_sk.exit.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip6_setup_cork(ptr noundef %sk, ptr noundef %cork, ptr nocapture noundef %v6_cork, ptr nocapture noundef readonly %ipc6, ptr noundef %rt, ptr nocapture noundef readonly %fl6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %opt1 = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %4 = ptrtoint ptr %opt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opt1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %inet6_sk.exit.if.end93_crit_edge, label %if.then

inet6_sk.exit.if.end93_crit_edge:                 ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then:                                          ; preds = %inet6_sk.exit
  %6 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v6_cork, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end26, label %do.end, !prof !108

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1363, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %8 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_allocation, align 8
  %and.i.i.i = and i32 %9, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end26.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !108

if.end26.kzalloc.exit_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end26
  %and2.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end26.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end26.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %9, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %10 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef %or.i, i32 noundef 36) #14
  %12 = ptrtoint ptr %v6_cork to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %v6_cork, align 4
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end40, !prof !107

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %kzalloc.exit
  %tot_len = getelementptr inbounds %struct.ipv6_txoptions, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %tot_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %tot_len, align 4
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opt_flen, align 4
  %opt_flen43 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %opt_flen43 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %opt_flen43, align 8
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %opt_nflen, align 2
  %opt_nflen45 = getelementptr inbounds %struct.ipv6_txoptions, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %opt_nflen45 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %opt_nflen45, align 2
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst0opt, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end40.ip6_opt_dup.exit_crit_edge, label %cond.true.i226

if.end40.ip6_opt_dup.exit_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_opt_dup.exit

cond.true.i226:                                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sk_allocation, align 8
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %25 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %mul.i = add nuw nsw i32 %add.i, 8
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull %21, i32 noundef %mul.i, i32 noundef %23) #11
  br label %ip6_opt_dup.exit

ip6_opt_dup.exit:                                 ; preds = %cond.true.i226, %if.end40.ip6_opt_dup.exit_crit_edge
  %cond.i227 = phi ptr [ %call.i, %cond.true.i226 ], [ null, %if.end40.ip6_opt_dup.exit_crit_edge ]
  %26 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v6_cork, align 4
  %dst0opt49 = getelementptr inbounds %struct.ipv6_txoptions, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dst0opt49 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond.i227, ptr %dst0opt49, align 4
  %29 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst0opt, align 4
  %tobool51.not = icmp eq ptr %30, null
  br i1 %tobool51.not, label %ip6_opt_dup.exit.if.end56_crit_edge, label %land.lhs.true

ip6_opt_dup.exit.if.end56_crit_edge:              ; preds = %ip6_opt_dup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true:                                    ; preds = %ip6_opt_dup.exit
  %31 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %v6_cork, align 4
  %dst0opt53 = getelementptr inbounds %struct.ipv6_txoptions, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %dst0opt53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dst0opt53, align 4
  %tobool54.not = icmp eq ptr %34, null
  br i1 %tobool54.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end56_crit_edge

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end56:                                         ; preds = %land.lhs.true.if.end56_crit_edge, %ip6_opt_dup.exit.if.end56_crit_edge
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 7
  %35 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst1opt, align 4
  %tobool.not.i228 = icmp eq ptr %36, null
  br i1 %tobool.not.i228, label %if.end56.ip6_opt_dup.exit236_crit_edge, label %cond.true.i234

if.end56.ip6_opt_dup.exit236_crit_edge:           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_opt_dup.exit236

cond.true.i234:                                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sk_allocation, align 8
  %hdrlen.i229 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %hdrlen.i229 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hdrlen.i229, align 1
  %conv.i230 = zext i8 %40 to i32
  %add.i231 = shl nuw nsw i32 %conv.i230, 3
  %mul.i232 = add nuw nsw i32 %add.i231, 8
  %call.i233 = tail call ptr @kmemdup(ptr noundef nonnull %36, i32 noundef %mul.i232, i32 noundef %38) #11
  br label %ip6_opt_dup.exit236

ip6_opt_dup.exit236:                              ; preds = %cond.true.i234, %if.end56.ip6_opt_dup.exit236_crit_edge
  %cond.i235 = phi ptr [ %call.i233, %cond.true.i234 ], [ null, %if.end56.ip6_opt_dup.exit236_crit_edge ]
  %41 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v6_cork, align 4
  %dst1opt60 = getelementptr inbounds %struct.ipv6_txoptions, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %dst1opt60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cond.i235, ptr %dst1opt60, align 4
  %44 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst1opt, align 4
  %tobool62.not = icmp eq ptr %45, null
  br i1 %tobool62.not, label %ip6_opt_dup.exit236.if.end68_crit_edge, label %land.lhs.true63

ip6_opt_dup.exit236.if.end68_crit_edge:           ; preds = %ip6_opt_dup.exit236
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true63:                                  ; preds = %ip6_opt_dup.exit236
  %46 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %v6_cork, align 4
  %dst1opt65 = getelementptr inbounds %struct.ipv6_txoptions, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %dst1opt65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst1opt65, align 4
  %tobool66.not = icmp eq ptr %49, null
  br i1 %tobool66.not, label %land.lhs.true63.cleanup_crit_edge, label %land.lhs.true63.if.end68_crit_edge

land.lhs.true63.if.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true63.if.end68_crit_edge, %ip6_opt_dup.exit236.if.end68_crit_edge
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 4
  %50 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hopopt, align 4
  %tobool.not.i237 = icmp eq ptr %51, null
  br i1 %tobool.not.i237, label %if.end68.ip6_opt_dup.exit245_crit_edge, label %cond.true.i243

if.end68.ip6_opt_dup.exit245_crit_edge:           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_opt_dup.exit245

cond.true.i243:                                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sk_allocation, align 8
  %hdrlen.i238 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %hdrlen.i238 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hdrlen.i238, align 1
  %conv.i239 = zext i8 %55 to i32
  %add.i240 = shl nuw nsw i32 %conv.i239, 3
  %mul.i241 = add nuw nsw i32 %add.i240, 8
  %call.i242 = tail call ptr @kmemdup(ptr noundef nonnull %51, i32 noundef %mul.i241, i32 noundef %53) #11
  br label %ip6_opt_dup.exit245

ip6_opt_dup.exit245:                              ; preds = %cond.true.i243, %if.end68.ip6_opt_dup.exit245_crit_edge
  %cond.i244 = phi ptr [ %call.i242, %cond.true.i243 ], [ null, %if.end68.ip6_opt_dup.exit245_crit_edge ]
  %56 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %v6_cork, align 4
  %hopopt72 = getelementptr inbounds %struct.ipv6_txoptions, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %hopopt72 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cond.i244, ptr %hopopt72, align 4
  %59 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hopopt, align 4
  %tobool74.not = icmp eq ptr %60, null
  br i1 %tobool74.not, label %ip6_opt_dup.exit245.if.end80_crit_edge, label %land.lhs.true75

ip6_opt_dup.exit245.if.end80_crit_edge:           ; preds = %ip6_opt_dup.exit245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

land.lhs.true75:                                  ; preds = %ip6_opt_dup.exit245
  %61 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %v6_cork, align 4
  %hopopt77 = getelementptr inbounds %struct.ipv6_txoptions, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %hopopt77 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hopopt77, align 4
  %tobool78.not = icmp eq ptr %64, null
  br i1 %tobool78.not, label %land.lhs.true75.cleanup_crit_edge, label %land.lhs.true75.if.end80_crit_edge

land.lhs.true75.if.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

land.lhs.true75.cleanup_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true75.if.end80_crit_edge, %ip6_opt_dup.exit245.if.end80_crit_edge
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 6
  %65 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %srcrt, align 4
  %tobool.not.i246 = icmp eq ptr %66, null
  br i1 %tobool.not.i246, label %if.end80.ip6_rthdr_dup.exit_crit_edge, label %cond.true.i252

if.end80.ip6_rthdr_dup.exit_crit_edge:            ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_rthdr_dup.exit

cond.true.i252:                                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sk_allocation, align 8
  %hdrlen.i247 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %hdrlen.i247 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hdrlen.i247, align 1
  %conv.i248 = zext i8 %70 to i32
  %add.i249 = shl nuw nsw i32 %conv.i248, 3
  %mul.i250 = add nuw nsw i32 %add.i249, 8
  %call.i251 = tail call ptr @kmemdup(ptr noundef nonnull %66, i32 noundef %mul.i250, i32 noundef %68) #11
  br label %ip6_rthdr_dup.exit

ip6_rthdr_dup.exit:                               ; preds = %cond.true.i252, %if.end80.ip6_rthdr_dup.exit_crit_edge
  %cond.i253 = phi ptr [ %call.i251, %cond.true.i252 ], [ null, %if.end80.ip6_rthdr_dup.exit_crit_edge ]
  %71 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %v6_cork, align 4
  %srcrt84 = getelementptr inbounds %struct.ipv6_txoptions, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %srcrt84 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %cond.i253, ptr %srcrt84, align 4
  %74 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %srcrt, align 4
  %tobool86.not = icmp eq ptr %75, null
  br i1 %tobool86.not, label %ip6_rthdr_dup.exit.if.end93_crit_edge, label %land.lhs.true87

ip6_rthdr_dup.exit.if.end93_crit_edge:            ; preds = %ip6_rthdr_dup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

land.lhs.true87:                                  ; preds = %ip6_rthdr_dup.exit
  %76 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %v6_cork, align 4
  %srcrt89 = getelementptr inbounds %struct.ipv6_txoptions, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %srcrt89 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %srcrt89, align 4
  %tobool90.not = icmp eq ptr %79, null
  br i1 %tobool90.not, label %land.lhs.true87.cleanup_crit_edge, label %land.lhs.true87.if.end93_crit_edge

land.lhs.true87.if.end93_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end93:                                         ; preds = %land.lhs.true87.if.end93_crit_edge, %ip6_rthdr_dup.exit.if.end93_crit_edge, %inet6_sk.exit.if.end93_crit_edge
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #11
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 231, i32 noundef 9, ptr noundef null) #11
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %dst95 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %81 = ptrtoint ptr %dst95 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %rt, ptr %dst95, align 4
  %fl = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1
  %82 = call ptr @memcpy(ptr %fl, ptr %fl6, i32 88)
  %hlimit = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 1
  %83 = ptrtoint ptr %hlimit to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %hlimit, align 8
  %conv = trunc i16 %84 to i8
  %hop_limit = getelementptr inbounds %struct.inet6_cork, ptr %v6_cork, i32 0, i32 1
  %85 = ptrtoint ptr %hop_limit to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv, ptr %hop_limit, align 4
  %tclass = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 2
  %86 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tclass, align 2
  %conv96 = trunc i16 %87 to i8
  %tclass97 = getelementptr inbounds %struct.inet6_cork, ptr %v6_cork, i32 0, i32 2
  %88 = ptrtoint ptr %tclass97 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv96, ptr %tclass97, align 1
  %flags = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 7
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %flags, align 4
  %91 = and i16 %90, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool100.not = icmp eq i16 %91, 0
  %pmtudisc112 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %92 = ptrtoint ptr %pmtudisc112 to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load113 = load i16, ptr %pmtudisc112, align 2
  %93 = and i16 %bf.load113, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %93)
  %cmp117 = icmp ugt i16 %93, 2048
  br i1 %tobool100.not, label %if.else, label %if.then101

if.then101:                                       ; preds = %dst_hold.exit
  br i1 %cmp117, label %do.end106, label %cond.false

do.end106:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rt, align 4
  %mtu109 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 20
  %96 = ptrtoint ptr %mtu109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %mtu109, align 4
  br label %if.end133

cond.false:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 1
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mtu.i, align 4
  %call.i254 = tail call i32 %101(ptr noundef %rt) #11
  br label %if.end133

if.else:                                          ; preds = %dst_hold.exit
  br i1 %cmp117, label %do.end122, label %cond.false127

do.end122:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rt, align 4
  %mtu126 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 20
  %104 = ptrtoint ptr %mtu126 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %mtu126, align 4
  br label %if.end133

cond.false127:                                    ; preds = %if.else
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 4
  %106 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %xfrm.i, align 4
  %tobool.not.i255 = icmp eq ptr %107, null
  %108 = and i16 %90, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool1.not.i = icmp eq i16 %108, 0
  %or.cond269 = select i1 %tobool.not.i255, i1 %tobool1.not.i, i1 false
  br i1 %or.cond269, label %cond.false127.xfrm_dst_path.exit_crit_edge, label %if.then.i

cond.false127.xfrm_dst_path.exit_crit_edge:       ; preds = %cond.false127
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_dst_path.exit

if.then.i:                                        ; preds = %cond.false127
  call void @__sanitizer_cov_trace_pc() #13
  %path.i = getelementptr inbounds %struct.xfrm_dst, ptr %rt, i32 0, i32 3
  %109 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %path.i, align 4
  br label %xfrm_dst_path.exit

xfrm_dst_path.exit:                               ; preds = %if.then.i, %cond.false127.xfrm_dst_path.exit_crit_edge
  %retval.0.i = phi ptr [ %110, %if.then.i ], [ %rt, %cond.false127.xfrm_dst_path.exit_crit_edge ]
  %ops.i256 = getelementptr inbounds %struct.dst_entry, ptr %retval.0.i, i32 0, i32 1
  %111 = ptrtoint ptr %ops.i256 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i256, align 4
  %mtu.i257 = getelementptr inbounds %struct.dst_ops, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %mtu.i257 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mtu.i257, align 4
  %call.i258 = tail call i32 %114(ptr noundef %retval.0.i) #11
  br label %if.end133

if.end133:                                        ; preds = %xfrm_dst_path.exit, %do.end122, %cond.false, %do.end106
  %mtu.0 = phi i32 [ %97, %do.end106 ], [ %call.i254, %cond.false ], [ %105, %do.end122 ], [ %call.i258, %xfrm_dst_path.exit ]
  %frag_size = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 5
  %115 = ptrtoint ptr %frag_size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %frag_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %mtu.0)
  %cmp134 = icmp uge i32 %116, %mtu.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool138.not = icmp eq i32 %116, 0
  %or.cond = or i1 %cmp134, %tobool138.not
  %mtu.1 = select i1 %or.cond, i32 %mtu.0, i32 %116
  %fragsize = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 3
  %117 = ptrtoint ptr %fragsize to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mtu.1, ptr %fragsize, align 4
  %gso_size = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 3
  %118 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %gso_size, align 4
  %gso_size145 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 10
  %120 = ptrtoint ptr %gso_size145 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %gso_size145, align 2
  %tx_flags = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 6
  %121 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %tx_flags, align 8
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 1
  %122 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mark, align 8
  %mark148 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 12
  %124 = ptrtoint ptr %mark148 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %mark148, align 8
  %tsflags = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc6, i32 0, i32 2
  %125 = ptrtoint ptr %tsflags to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %tsflags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool.not.i.i = icmp eq i16 %126, 0
  br i1 %tobool.not.i.i, label %if.end133.if.end10.i.i_crit_edge, label %if.then.i.i, !prof !108

if.end133.if.end10.i.i_crit_edge:                 ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__sock_tx_timestamp(i16 noundef zeroext %126, ptr noundef %tx_flags) #11
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then.i.i, %if.end133.if.end10.i.i_crit_edge
  %127 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %127, align 4
  %130 = and i32 %129, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.i.not.i.i = icmp eq i32 %130, 0
  br i1 %tobool.i.not.i.i, label %if.end10.i.i.sock_tx_timestamp.exit_crit_edge, label %if.then18.i.i, !prof !108

if.end10.i.i.sock_tx_timestamp.exit_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_tx_timestamp.exit

if.then18.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tx_flags, align 1
  %133 = or i8 %132, 16
  store i8 %133, ptr %tx_flags, align 1
  br label %sock_tx_timestamp.exit

sock_tx_timestamp.exit:                           ; preds = %if.then18.i.i, %if.end10.i.i.sock_tx_timestamp.exit_crit_edge
  %xfrm.i259 = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 4
  %134 = ptrtoint ptr %xfrm.i259 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %xfrm.i259, align 4
  %tobool.not.i260 = icmp eq ptr %135, null
  br i1 %tobool.not.i260, label %lor.lhs.false.i263, label %sock_tx_timestamp.exit.if.then.i265_crit_edge

sock_tx_timestamp.exit.if.then.i265_crit_edge:    ; preds = %sock_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i265

lor.lhs.false.i263:                               ; preds = %sock_tx_timestamp.exit
  %136 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %flags, align 4
  %138 = and i16 %137, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool1.not.i262 = icmp eq i16 %138, 0
  br i1 %tobool1.not.i262, label %lor.lhs.false.i263.xfrm_dst_path.exit267_crit_edge, label %lor.lhs.false.i263.if.then.i265_crit_edge

lor.lhs.false.i263.if.then.i265_crit_edge:        ; preds = %lor.lhs.false.i263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i265

lor.lhs.false.i263.xfrm_dst_path.exit267_crit_edge: ; preds = %lor.lhs.false.i263
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfrm_dst_path.exit267

if.then.i265:                                     ; preds = %lor.lhs.false.i263.if.then.i265_crit_edge, %sock_tx_timestamp.exit.if.then.i265_crit_edge
  %path.i264 = getelementptr inbounds %struct.xfrm_dst, ptr %rt, i32 0, i32 3
  %139 = ptrtoint ptr %path.i264 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %path.i264, align 4
  br label %xfrm_dst_path.exit267

xfrm_dst_path.exit267:                            ; preds = %if.then.i265, %lor.lhs.false.i263.xfrm_dst_path.exit267_crit_edge
  %retval.0.i266 = phi ptr [ %140, %if.then.i265 ], [ %rt, %lor.lhs.false.i263.xfrm_dst_path.exit267_crit_edge ]
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %retval.0.i266, i32 0, i32 2
  %141 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %142, -4
  %143 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %143, i32 11
  %144 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i268 = and i32 %145, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i268)
  %tobool155.not = icmp eq i32 %and.i.i268, 0
  br i1 %tobool155.not, label %xfrm_dst_path.exit267.if.end159_crit_edge, label %if.then156

xfrm_dst_path.exit267.if.end159_crit_edge:        ; preds = %xfrm_dst_path.exit267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.then156:                                       ; preds = %xfrm_dst_path.exit267
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cork, align 8
  %or = or i32 %147, 2
  store i32 %or, ptr %cork, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %xfrm_dst_path.exit267.if.end159_crit_edge
  %length = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 4
  %148 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %length, align 8
  %149 = ptrtoint ptr %ipc6 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %ipc6, align 8
  %transmit_time163 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 11
  %151 = ptrtoint ptr %transmit_time163 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %transmit_time163, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %land.lhs.true87.cleanup_crit_edge, %land.lhs.true75.cleanup_crit_edge, %land.lhs.true63.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end159 ], [ -105, %kzalloc.exit.cleanup_crit_edge ], [ -105, %land.lhs.true.cleanup_crit_edge ], [ -105, %land.lhs.true63.cleanup_crit_edge ], [ -105, %land.lhs.true75.cleanup_crit_edge ], [ -105, %land.lhs.true87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip6_append_data(ptr noundef %sk, ptr noundef %fl6, ptr noundef %queue, ptr nocapture noundef %cork, ptr nocapture noundef readonly %v6_cork, ptr noundef %pfrag, ptr nocapture noundef readonly %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, i32 noundef %flags, ptr nocapture noundef readonly %ipc6) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  %extra_uref = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #11
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !119
  %dst = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dst, align 4
  %3 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %v6_cork, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %extra_uref) #11
  %5 = ptrtoint ptr %extra_uref to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %extra_uref, align 1
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %queue, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %7, %queue
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %7
  %tobool.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opt_flen, align 4
  %conv = zext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %header_len = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 9
  %10 = ptrtoint ptr %header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %header_len, align 4
  %conv4 = zext i16 %11 to i32
  %rt6i_nfheader_len = getelementptr inbounds %struct.rt6_info, ptr %2, i32 0, i32 10
  %12 = ptrtoint ptr %rt6i_nfheader_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rt6i_nfheader_len, align 4
  %conv5 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv4, %conv5
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  %dst_exthdrlen.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %sub, %cond.end ]
  %exthdrlen.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %cond, %cond.end ]
  %gso_size = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 10
  %14 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6 = icmp ne i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool10.not = icmp eq i16 %15, 0
  br i1 %tobool10.not, label %cond.false12, label %if.end.cond.end13_crit_edge

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end13

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fragsize = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 3
  %16 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fragsize, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %if.end.cond.end13_crit_edge
  %cond14 = phi i32 [ %17, %cond.false12 ], [ 65575, %if.end.cond.end13_crit_edge ]
  %tx_flags = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 6
  %18 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_flags, align 8
  %20 = and i8 %19, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %cond.end13.if.end23_crit_edge, label %land.lhs.true

cond.end13.if.end23_crit_edge:                    ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %cond.end13
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %21 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sk_tsflags, align 8
  %23 = and i16 %22, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool19.not = icmp eq i16 %23, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end23_crit_edge, label %if.then20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sk_tskey = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 67
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_tskey, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %sk_tskey, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_tskey, ptr %sk_tskey, i32 1, ptr elementtype(i32) %sk_tskey) #11, !srcloc !137
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !138
  %sub22 = add i32 %asmresult.i.i.i.i, -1
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %cond.end13.if.end23_crit_edge
  %tskey.0 = phi i32 [ %sub22, %if.then20 ], [ 0, %land.lhs.true.if.end23_crit_edge ], [ 0, %cond.end13.if.end23_crit_edge ]
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hard_header_len, align 2
  %conv25 = zext i16 %28 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 21
  %29 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %needed_headroom, align 8
  %conv28 = zext i16 %30 to i32
  %add = add nuw nsw i32 %conv28, %conv25
  %and29 = and i32 %add, 131056
  %rt6i_nfheader_len31 = getelementptr inbounds %struct.rt6_info, ptr %2, i32 0, i32 10
  %31 = ptrtoint ptr %rt6i_nfheader_len31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rt6i_nfheader_len31, align 4
  %conv32 = zext i16 %32 to i32
  %add33 = add nuw nsw i32 %conv32, 40
  %tobool34.not = icmp eq ptr %4, null
  br i1 %tobool34.not, label %if.end23.cond.end49_crit_edge, label %cond.true42

if.end23.cond.end49_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end49

cond.true42:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 3
  %33 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %opt_nflen, align 2
  %conv36 = zext i16 %34 to i32
  %add40 = add nuw nsw i32 %add33, %conv36
  %opt_flen43 = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %35 = ptrtoint ptr %opt_flen43 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %opt_flen43, align 4
  %conv44 = zext i16 %36 to i32
  %add47 = add nuw nsw i32 %conv36, %conv44
  br label %cond.end49

cond.end49:                                       ; preds = %cond.true42, %if.end23.cond.end49_crit_edge
  %add40888 = phi i32 [ %add40, %cond.true42 ], [ %add33, %if.end23.cond.end49_crit_edge ]
  %cond50 = phi i32 [ %add47, %cond.true42 ], [ 0, %if.end23.cond.end49_crit_edge ]
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 2
  %37 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %38, -4
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %39, i32 11
  %40 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i = and i32 %41, 8
  %add56 = add nuw nsw i32 %add33, %cond50
  %add59 = add nuw nsw i32 %add56, %and.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond14, i32 %add40888)
  %cmp.not = icmp ugt i32 %cond14, %add40888
  br i1 %cmp.not, label %lor.lhs.false, label %cond.end49.emsgsize_crit_edge

cond.end49.emsgsize_crit_edge:                    ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %emsgsize

lor.lhs.false:                                    ; preds = %cond.end49
  %sub61 = sub i32 %cond14, %add40888
  %and62 = and i32 %sub61, -8
  %add63 = add i32 %and62, %add40888
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add63)
  %cmp64 = icmp ult i32 %add63, 9
  br i1 %cmp64, label %lor.lhs.false.emsgsize_crit_edge, label %if.end67

lor.lhs.false.emsgsize_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %emsgsize

if.end67:                                         ; preds = %lor.lhs.false
  %sub71 = add i32 %add63, -8
  %add72 = add i32 %add59, %transhdrlen
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %cond14)
  %cmp73 = icmp ugt i32 %add72, %cond14
  br i1 %cmp73, label %if.end67.emsgsize_crit_edge, label %if.end76

if.end67.emsgsize_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %emsgsize

if.end76:                                         ; preds = %if.end67
  %length77 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 4
  %42 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length77, align 8
  %add78 = add i32 %43, %length
  %sub79 = sub i32 %cond14, %add59
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %sub79)
  %cmp80 = icmp ugt i32 %add78, %sub79
  br i1 %cmp80, label %land.lhs.true82, label %if.end76.if.end97_crit_edge

if.end76.if.end97_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.lhs.true82:                                  ; preds = %if.end76
  %dontfrag = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 4
  %44 = ptrtoint ptr %dontfrag to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dontfrag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool84.not = icmp eq i8 %45, 0
  br i1 %tobool84.not, label %land.lhs.true82.if.end97_crit_edge, label %land.lhs.true85

land.lhs.true82.if.end97_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.lhs.true85:                                  ; preds = %land.lhs.true82
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %46 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sk_protocol, align 4
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %47, label %land.lhs.true85.if.end97_crit_edge [
    i16 17, label %land.lhs.true85.if.then94_crit_edge
    i16 255, label %land.lhs.true85.if.then94_crit_edge1097
  ]

land.lhs.true85.if.then94_crit_edge1097:          ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

land.lhs.true85.if.then94_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then94

land.lhs.true85.if.end97_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then94:                                        ; preds = %land.lhs.true85.if.then94_crit_edge, %land.lhs.true85.if.then94_crit_edge1097
  %add96 = add i32 %sub79, 40
  tail call void @ipv6_local_rxpmtu(ptr noundef %sk, ptr noundef %fl6, i32 noundef %add96) #11
  br label %emsgsize

if.end97:                                         ; preds = %land.lhs.true85.if.end97_crit_edge, %land.lhs.true82.if.end97_crit_edge, %if.end76.if.end97_crit_edge
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %49 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %50 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end97.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.end97.inet6_sk.exit.i_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %51 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.end97.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %52, %cond.true.i.i ], [ null, %if.end97.inet6_sk.exit.i_crit_edge ]
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %53 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i = load i16, ptr %pmtudisc.i, align 2
  %54 = and i16 %bf.load.i, 6144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp.i796 = icmp eq i16 %54, 0
  br i1 %cmp.i796, label %inet6_sk.exit.i.if.end100_crit_edge, label %lor.rhs.i

inet6_sk.exit.i.if.end100_crit_edge:              ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

lor.rhs.i:                                        ; preds = %inet6_sk.exit.i
  %55 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i12.i = zext i8 %56 to i32
  %shl.i.i13.i = shl nuw i32 1, %conv.i.i12.i
  %and.i.i14.i = and i32 %shl.i.i13.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14.i)
  %tobool.i.not.i15.i = icmp eq i32 %and.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge, label %cond.true.i17.i

lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge:        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_sk_ignore_df.exit

cond.true.i17.i:                                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i16.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %57 = ptrtoint ptr %pinet6.i16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pinet6.i16.i, align 8
  br label %ip6_sk_ignore_df.exit

ip6_sk_ignore_df.exit:                            ; preds = %cond.true.i17.i, %lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge
  %cond.i18.i = phi ptr [ %58, %cond.true.i17.i ], [ null, %lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge ]
  %pmtudisc3.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i18.i, i32 0, i32 10
  %59 = ptrtoint ptr %pmtudisc3.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load4.i = load i16, ptr %pmtudisc3.i, align 2
  %60 = and i16 %bf.load4.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %60)
  %cmp8.i = icmp eq i16 %60, 5120
  %spec.select935 = select i1 %cmp8.i, i32 65575, i32 %cond14
  br label %if.end100

if.end100:                                        ; preds = %ip6_sk_ignore_df.exit, %inet6_sk.exit.i.if.end100_crit_edge
  %maxnonfragsize.0 = phi i32 [ 65575, %inet6_sk.exit.i.if.end100_crit_edge ], [ %spec.select935, %ip6_sk_ignore_df.exit ]
  %sub103 = sub i32 %maxnonfragsize.0, %add59
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %sub103)
  %cmp104 = icmp ugt i32 %add78, %sub103
  br i1 %cmp104, label %if.end100.emsgsize_crit_edge, label %if.end115

if.end100.emsgsize_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %emsgsize

emsgsize:                                         ; preds = %if.end100.emsgsize_crit_edge, %if.then94, %if.end67.emsgsize_crit_edge, %lor.lhs.false.emsgsize_crit_edge, %cond.end49.emsgsize_crit_edge
  %sub107 = add i32 %cond14, 40
  %add108 = sub i32 %sub107, %add59
  %61 = tail call i32 @llvm.smax.i32(i32 %add108, i32 0)
  tail call void @ipv6_local_error(ptr noundef %sk, i32 noundef 90, ptr noundef %fl6, i32 noundef %61) #11
  br label %cleanup513

if.end115:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transhdrlen)
  %tobool116.not = icmp eq i32 %transhdrlen, 0
  br i1 %tobool116.not, label %if.end115.if.end142_crit_edge, label %land.lhs.true117

if.end115.if.end142_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

land.lhs.true117:                                 ; preds = %if.end115
  %sk_protocol118 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %62 = ptrtoint ptr %sk_protocol118 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sk_protocol118, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %63)
  %cmp120 = icmp ne i16 %63, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add59)
  %cmp123 = icmp ne i32 %add59, 40
  %or.cond = select i1 %cmp120, i1 true, i1 %cmp123
  %sub126 = add i32 %cond14, -40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub126, i32 %length)
  %cmp127.not = icmp ult i32 %sub126, %length
  %or.cond936 = select i1 %or.cond, i1 true, i1 %cmp127.not
  br i1 %or.cond936, label %land.lhs.true117.if.end142_crit_edge, label %land.lhs.true129

land.lhs.true117.if.end142_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

land.lhs.true129:                                 ; preds = %land.lhs.true117
  %and130 = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %land.lhs.true129.land.lhs.true136_crit_edge, label %lor.lhs.false132

land.lhs.true129.land.lhs.true136_crit_edge:      ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true136

lor.lhs.false132:                                 ; preds = %land.lhs.true129
  %64 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %gso_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool135.not = icmp eq i16 %65, 0
  br i1 %tobool135.not, label %lor.lhs.false132.if.end142_crit_edge, label %lor.lhs.false132.land.lhs.true136_crit_edge

lor.lhs.false132.land.lhs.true136_crit_edge:      ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true136

lor.lhs.false132.if.end142_crit_edge:             ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

land.lhs.true136:                                 ; preds = %lor.lhs.false132.land.lhs.true136_crit_edge, %land.lhs.true129.land.lhs.true136_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  %66 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %features, align 16
  %and139 = and i64 %67, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and139)
  %tobool140.not = icmp eq i64 %and139, 0
  %not.tobool140.not = xor i1 %tobool140.not, true
  %spec.select791 = select i1 %tobool140.not, i16 0, i16 1536
  br label %if.end142

if.end142:                                        ; preds = %land.lhs.true136, %lor.lhs.false132.if.end142_crit_edge, %land.lhs.true117.if.end142_crit_edge, %if.end115.if.end142_crit_edge
  %cmp166 = phi i1 [ false, %lor.lhs.false132.if.end142_crit_edge ], [ false, %land.lhs.true117.if.end142_crit_edge ], [ false, %if.end115.if.end142_crit_edge ], [ %not.tobool140.not, %land.lhs.true136 ]
  %csummode.0 = phi i16 [ 0, %lor.lhs.false132.if.end142_crit_edge ], [ 0, %land.lhs.true117.if.end142_crit_edge ], [ 0, %if.end115.if.end142_crit_edge ], [ %spec.select791, %land.lhs.true136 ]
  %and143 = and i32 %flags, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool146.not = icmp eq i32 %length, 0
  %or.cond792 = or i1 %tobool146.not, %tobool144.not
  br i1 %or.cond792, label %if.end142.if.end171_crit_edge, label %land.lhs.true147

if.end142.if.end171_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

land.lhs.true147:                                 ; preds = %if.end142
  %68 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %71 = and i32 %70, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i.not = icmp eq i32 %71, 0
  br i1 %tobool.i.not, label %land.lhs.true147.if.end171_crit_edge, label %if.then150

land.lhs.true147.if.end171_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.then150:                                       ; preds = %land.lhs.true147
  br i1 %tobool.not, label %skb_zcopy.exit.thread, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then150
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 17
  %72 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 8
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool1.not.i = icmp eq i8 %76, 0
  br i1 %tobool1.not.i, label %land.rhs.i.skb_zcopy.exit_crit_edge, label %cond.true.i

land.rhs.i.skb_zcopy.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy.exit

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %destructor_arg.i = getelementptr inbounds %struct.skb_shared_info, ptr %73, i32 0, i32 11
  %77 = ptrtoint ptr %destructor_arg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %destructor_arg.i, align 4
  br label %skb_zcopy.exit

skb_zcopy.exit:                                   ; preds = %cond.true.i, %land.rhs.i.skb_zcopy.exit_crit_edge
  %cond.i = phi ptr [ %78, %cond.true.i ], [ null, %land.rhs.i.skb_zcopy.exit_crit_edge ]
  %call152 = tail call ptr @msg_zerocopy_realloc(ptr noundef %sk, i32 noundef %length, ptr noundef %cond.i) #11
  %tobool153.not = icmp eq ptr %call152, null
  br i1 %tobool153.not, label %skb_zcopy.exit.cleanup513_crit_edge, label %land.rhs.i800.critedge

skb_zcopy.exit.cleanup513_crit_edge:              ; preds = %skb_zcopy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup513

skb_zcopy.exit.thread:                            ; preds = %if.then150
  %call152890 = tail call ptr @msg_zerocopy_realloc(ptr noundef %sk, i32 noundef %length, ptr noundef null) #11
  %tobool153.not891 = icmp eq ptr %call152890, null
  br i1 %tobool153.not891, label %skb_zcopy.exit.thread.cleanup513_crit_edge, label %skb_zcopy.exit.thread.skb_zcopy.exit804_crit_edge

skb_zcopy.exit.thread.skb_zcopy.exit804_crit_edge: ; preds = %skb_zcopy.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy.exit804

skb_zcopy.exit.thread.cleanup513_crit_edge:       ; preds = %skb_zcopy.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup513

land.rhs.i800.critedge:                           ; preds = %skb_zcopy.exit
  %79 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 8
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool1.not.i799 = icmp eq i8 %83, 0
  br i1 %tobool1.not.i799, label %land.rhs.i800.critedge.skb_zcopy.exit804_crit_edge, label %cond.true.i802

land.rhs.i800.critedge.skb_zcopy.exit804_crit_edge: ; preds = %land.rhs.i800.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy.exit804

cond.true.i802:                                   ; preds = %land.rhs.i800.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %destructor_arg.i801 = getelementptr inbounds %struct.skb_shared_info, ptr %80, i32 0, i32 11
  %84 = ptrtoint ptr %destructor_arg.i801 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %destructor_arg.i801, align 4
  br label %skb_zcopy.exit804

skb_zcopy.exit804:                                ; preds = %cond.true.i802, %land.rhs.i800.critedge.skb_zcopy.exit804_crit_edge, %skb_zcopy.exit.thread.skb_zcopy.exit804_crit_edge
  %call152892894 = phi ptr [ %call152, %cond.true.i802 ], [ %call152, %land.rhs.i800.critedge.skb_zcopy.exit804_crit_edge ], [ %call152890, %skb_zcopy.exit.thread.skb_zcopy.exit804_crit_edge ]
  %cond.i803 = phi ptr [ %85, %cond.true.i802 ], [ null, %land.rhs.i800.critedge.skb_zcopy.exit804_crit_edge ], [ null, %skb_zcopy.exit.thread.skb_zcopy.exit804_crit_edge ]
  %tobool157.not = icmp eq ptr %cond.i803, null
  %frombool159 = zext i1 %tobool157.not to i8
  %86 = ptrtoint ptr %extra_uref to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %frombool159, ptr %extra_uref, align 1
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %2, align 4
  %features162 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 23
  %89 = ptrtoint ptr %features162 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %features162, align 16
  %and163 = and i64 %90, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and163)
  %tobool164.not = icmp eq i64 %and163, 0
  %cmp166.not = xor i1 %cmp166, true
  %brmerge = select i1 %tobool164.not, i1 true, i1 %cmp166.not
  br i1 %brmerge, label %if.else169, label %skb_zcopy.exit804.if.end171_crit_edge

skb_zcopy.exit804.if.end171_crit_edge:            ; preds = %skb_zcopy.exit804
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

if.else169:                                       ; preds = %skb_zcopy.exit804
  call void @__sanitizer_cov_trace_pc() #13
  %zerocopy = getelementptr inbounds %struct.ubuf_info, ptr %call152892894, i32 0, i32 1, i32 0, i32 2
  %91 = ptrtoint ptr %zerocopy to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load = load i8, ptr %zerocopy, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %zerocopy, align 2
  call fastcc void @skb_zcopy_set(ptr noundef %spec.store.select.i, ptr noundef nonnull %call152892894, ptr noundef nonnull %extra_uref)
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %skb_zcopy.exit804.if.end171_crit_edge, %land.lhs.true147.if.end171_crit_edge, %if.end142.if.end171_crit_edge
  %paged.0.shrunk = phi i1 [ %tobool6, %if.else169 ], [ %tobool6, %land.lhs.true147.if.end171_crit_edge ], [ %tobool6, %if.end142.if.end171_crit_edge ], [ true, %skb_zcopy.exit804.if.end171_crit_edge ]
  %uarg.0 = phi ptr [ %call152892894, %if.else169 ], [ null, %land.lhs.true147.if.end171_crit_edge ], [ null, %if.end142.if.end171_crit_edge ], [ %call152892894, %skb_zcopy.exit804.if.end171_crit_edge ]
  %92 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length77, align 8
  %add173 = add i32 %93, %length
  store i32 %add173, ptr %length77, align 8
  br i1 %tobool.not, label %if.end171.alloc_new_skb_crit_edge, label %if.end171.while.cond.preheader_crit_edge

if.end171.while.cond.preheader_crit_edge:         ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

if.end171.alloc_new_skb_crit_edge:                ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_new_skb

while.cond.preheader:                             ; preds = %if.end359, %if.end171.while.cond.preheader_crit_edge
  %maxfraglen.0.ph = phi i32 [ %sub71, %if.end171.while.cond.preheader_crit_edge ], [ %maxfraglen.3, %if.end359 ]
  %mtu.0.ph = phi i32 [ %cond14, %if.end171.while.cond.preheader_crit_edge ], [ %mtu.3, %if.end359 ]
  %offset.0.ph = phi i32 [ 0, %if.end171.while.cond.preheader_crit_edge ], [ %add340, %if.end359 ]
  %tskey.1.ph = phi i32 [ %tskey.0, %if.end171.while.cond.preheader_crit_edge ], [ 0, %if.end359 ]
  %wmem_alloc_delta.0.ph = phi i32 [ 0, %if.end171.while.cond.preheader_crit_edge ], [ %wmem_alloc_delta.2, %if.end359 ]
  %dst_exthdrlen.1.ph = phi i32 [ %dst_exthdrlen.0, %if.end171.while.cond.preheader_crit_edge ], [ 0, %if.end359 ]
  %exthdrlen.1.ph = phi i32 [ %exthdrlen.0, %if.end171.while.cond.preheader_crit_edge ], [ 0, %if.end359 ]
  %skb_prev.0.ph = phi ptr [ null, %if.end171.while.cond.preheader_crit_edge ], [ %skb.1, %if.end359 ]
  %skb.0.ph = phi ptr [ %7, %if.end171.while.cond.preheader_crit_edge ], [ %skb.3916, %if.end359 ]
  %transhdrlen.addr.0.ph = phi i32 [ %transhdrlen, %if.end171.while.cond.preheader_crit_edge ], [ 0, %if.end359 ]
  %length.addr.0.ph = phi i32 [ %length, %if.end171.while.cond.preheader_crit_edge ], [ %sub342, %if.end359 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.ph)
  %cmp177968 = icmp sgt i32 %length.addr.0.ph, 0
  br i1 %cmp177968, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 7
  %end.i819 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 17
  %tail.i820 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 16
  %tobool383.not = icmp eq ptr %uarg.0, null
  %zerocopy385 = getelementptr inbounds %struct.ubuf_info, ptr %uarg.0, i32 0, i32 1, i32 0, i32 2
  %offset394 = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %tobool.not.i.i = icmp eq ptr %skb.0.ph, null
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 12
  %size = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 2
  %truesize441 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end454.while.body_crit_edge, %while.body.lr.ph
  %length.addr.0973 = phi i32 [ %length.addr.0.ph, %while.body.lr.ph ], [ %sub456, %if.end454.while.body_crit_edge ]
  %wmem_alloc_delta.0972 = phi i32 [ %wmem_alloc_delta.0.ph, %while.body.lr.ph ], [ %wmem_alloc_delta.4, %if.end454.while.body_crit_edge ]
  %offset.0969 = phi i32 [ %offset.0.ph, %while.body.lr.ph ], [ %add455, %if.end454.while.body_crit_edge ]
  %94 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %length77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %mtu.0.ph)
  %cmp180.not = icmp ugt i32 %95, %mtu.0.ph
  br i1 %cmp180.not, label %while.body.cond.false187_crit_edge, label %land.lhs.true182

while.body.cond.false187_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false187

land.lhs.true182:                                 ; preds = %while.body
  %96 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cork, align 8
  %and184 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %land.lhs.true182.cond.end188_crit_edge, label %land.lhs.true182.cond.false187_crit_edge

land.lhs.true182.cond.false187_crit_edge:         ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false187

land.lhs.true182.cond.end188_crit_edge:           ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end188

cond.false187:                                    ; preds = %land.lhs.true182.cond.false187_crit_edge, %while.body.cond.false187_crit_edge
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false187, %land.lhs.true182.cond.end188_crit_edge
  %cond189 = phi i32 [ %maxfraglen.0.ph, %cond.false187 ], [ %mtu.0.ph, %land.lhs.true182.cond.end188_crit_edge ]
  %98 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len, align 4
  %sub190 = sub i32 %cond189, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %sub190, i32 %length.addr.0973)
  %cmp191 = icmp slt i32 %sub190, %length.addr.0973
  %sub195 = sub i32 %maxfraglen.0.ph, %99
  %spec.select937 = select i1 %cmp191, i32 %sub195, i32 %sub190
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select937)
  %cmp197 = icmp slt i32 %spec.select937, 1
  br i1 %cmp197, label %cond.end188.alloc_new_skb_crit_edge, label %if.end360

cond.end188.alloc_new_skb_crit_edge:              ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %alloc_new_skb

alloc_new_skb:                                    ; preds = %cond.end188.alloc_new_skb_crit_edge, %if.end171.alloc_new_skb_crit_edge
  %maxfraglen.1 = phi i32 [ %sub71, %if.end171.alloc_new_skb_crit_edge ], [ %maxfraglen.0.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %mtu.1 = phi i32 [ %cond14, %if.end171.alloc_new_skb_crit_edge ], [ %mtu.0.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %offset.1 = phi i32 [ 0, %if.end171.alloc_new_skb_crit_edge ], [ %offset.0969, %cond.end188.alloc_new_skb_crit_edge ]
  %tskey.2 = phi i32 [ %tskey.0, %if.end171.alloc_new_skb_crit_edge ], [ %tskey.1.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %wmem_alloc_delta.1 = phi i32 [ 0, %if.end171.alloc_new_skb_crit_edge ], [ %wmem_alloc_delta.0972, %cond.end188.alloc_new_skb_crit_edge ]
  %dst_exthdrlen.2 = phi i32 [ %dst_exthdrlen.0, %if.end171.alloc_new_skb_crit_edge ], [ %dst_exthdrlen.1.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %exthdrlen.2 = phi i32 [ %exthdrlen.0, %if.end171.alloc_new_skb_crit_edge ], [ %exthdrlen.1.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %skb_prev.1 = phi ptr [ null, %if.end171.alloc_new_skb_crit_edge ], [ %skb_prev.0.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %skb.1 = phi ptr [ null, %if.end171.alloc_new_skb_crit_edge ], [ %skb.0.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %transhdrlen.addr.1 = phi i32 [ %transhdrlen, %if.end171.alloc_new_skb_crit_edge ], [ %transhdrlen.addr.0.ph, %cond.end188.alloc_new_skb_crit_edge ]
  %length.addr.1 = phi i32 [ %length, %if.end171.alloc_new_skb_crit_edge ], [ %length.addr.0973, %cond.end188.alloc_new_skb_crit_edge ]
  %tobool200.not = icmp eq ptr %skb.1, null
  br i1 %tobool200.not, label %if.then209, label %if.end205

if.end205:                                        ; preds = %alloc_new_skb
  %len202 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %100 = ptrtoint ptr %len202 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len202, align 4
  %sub203 = sub i32 %101, %maxfraglen.1
  %tobool208.not = icmp eq ptr %skb_prev.1, null
  br i1 %tobool208.not, label %if.then209.thread, label %if.end205.if.end210_crit_edge

if.end205.if.end210_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210

if.then209:                                       ; preds = %alloc_new_skb
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 7
  %102 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %flags.i, align 4
  %104 = and i16 %103, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.i805 = icmp eq i16 %104, 0
  br i1 %tobool.not.i805, label %if.then2.i, label %if.then209.if.end210_crit_edge

if.then209.if.end210_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210

if.then209.thread:                                ; preds = %if.end205
  %flags.i901 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 7
  %105 = ptrtoint ptr %flags.i901 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %flags.i901, align 4
  %107 = and i16 %106, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool.not.i805902 = icmp eq i16 %107, 0
  br i1 %tobool.not.i805902, label %if.then209.thread.if.end.i_crit_edge, label %if.then209.thread.if.end210_crit_edge

if.then209.thread.if.end210_crit_edge:            ; preds = %if.then209.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210

if.then209.thread.if.end.i_crit_edge:             ; preds = %if.then209.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #13
  %header_len.i = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 9
  %108 = ptrtoint ptr %header_len.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %header_len.i, align 4
  %conv4.i = zext i16 %109 to i32
  %sub.i = sub i32 %cond14, %conv4.i
  %.pre = sub i32 %sub.i, %add40888
  %.pre999 = and i32 %.pre, -8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then209.thread.if.end.i_crit_edge
  %and6.i.pre-phi = phi i32 [ %and62, %if.then209.thread.if.end.i_crit_edge ], [ %.pre999, %if.then2.i ]
  %fraggap.0899904906 = phi i32 [ %sub203, %if.then209.thread.if.end.i_crit_edge ], [ 0, %if.then2.i ]
  %storemerge.i = phi i32 [ %cond14, %if.then209.thread.if.end.i_crit_edge ], [ %sub.i, %if.then2.i ]
  %add.i = add nsw i32 %add40888, -8
  %sub7.i = add i32 %add.i, %and6.i.pre-phi
  br label %if.end210

if.end210:                                        ; preds = %if.end.i, %if.then209.thread.if.end210_crit_edge, %if.then209.if.end210_crit_edge, %if.end205.if.end210_crit_edge
  %fraggap.0898 = phi i32 [ %sub203, %if.end205.if.end210_crit_edge ], [ %fraggap.0899904906, %if.end.i ], [ 0, %if.then209.if.end210_crit_edge ], [ %sub203, %if.then209.thread.if.end210_crit_edge ]
  %maxfraglen.3 = phi i32 [ %maxfraglen.1, %if.end205.if.end210_crit_edge ], [ %sub7.i, %if.end.i ], [ %maxfraglen.1, %if.then209.if.end210_crit_edge ], [ %maxfraglen.1, %if.then209.thread.if.end210_crit_edge ]
  %mtu.3 = phi i32 [ %mtu.1, %if.end205.if.end210_crit_edge ], [ %storemerge.i, %if.end.i ], [ %mtu.1, %if.then209.if.end210_crit_edge ], [ %mtu.1, %if.then209.thread.if.end210_crit_edge ]
  %add211 = add i32 %fraggap.0898, %length.addr.1
  %110 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %length77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %mtu.3)
  %cmp213.not = icmp ugt i32 %111, %mtu.3
  br i1 %cmp213.not, label %if.end210.cond.false220_crit_edge, label %land.lhs.true215

if.end210.cond.false220_crit_edge:                ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false220

land.lhs.true215:                                 ; preds = %if.end210
  %112 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cork, align 8
  %and217 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %land.lhs.true215.cond.end221_crit_edge, label %land.lhs.true215.cond.false220_crit_edge

land.lhs.true215.cond.false220_crit_edge:         ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false220

land.lhs.true215.cond.end221_crit_edge:           ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end221

cond.false220:                                    ; preds = %land.lhs.true215.cond.false220_crit_edge, %if.end210.cond.false220_crit_edge
  br label %cond.end221

cond.end221:                                      ; preds = %cond.false220, %land.lhs.true215.cond.end221_crit_edge
  %cond222 = phi i32 [ %maxfraglen.3, %cond.false220 ], [ %mtu.3, %land.lhs.true215.cond.end221_crit_edge ]
  %sub223 = sub i32 %cond222, %add40888
  call void @__sanitizer_cov_trace_cmp4(i32 %add211, i32 %sub223)
  %cmp224 = icmp ugt i32 %add211, %sub223
  br i1 %cmp224, label %if.then226, label %cond.end221.if.end231_crit_edge

cond.end221.if.end231_crit_edge:                  ; preds = %cond.end221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then226:                                       ; preds = %cond.end221
  call void @__sanitizer_cov_trace_pc() #13
  %trailer_len = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 10
  %114 = ptrtoint ptr %trailer_len to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %trailer_len, align 2
  %conv229 = zext i16 %115 to i32
  %116 = add nsw i32 %add40888, %conv229
  %sub230 = sub i32 %maxfraglen.3, %116
  br label %if.end231

if.end231:                                        ; preds = %if.then226, %cond.end221.if.end231_crit_edge
  %datalen.0 = phi i32 [ %sub230, %if.then226 ], [ %add211, %cond.end221.if.end231_crit_edge ]
  %add232 = add i32 %datalen.0, %add40888
  %trailer_len235 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 10
  %117 = ptrtoint ptr %trailer_len235 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %trailer_len235, align 2
  %conv236 = zext i16 %118 to i32
  %add233 = add nsw i32 %dst_exthdrlen.2, %and29
  %add237 = add nsw i32 %add233, 24
  %add238 = add i32 %add237, %conv236
  %and239 = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %if.end231.if.else248_crit_edge, label %land.lhs.true241

if.end231.if.else248_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else248

land.lhs.true241:                                 ; preds = %if.end231
  %119 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %2, align 4
  %features244 = getelementptr inbounds %struct.net_device, ptr %120, i32 0, i32 23
  %121 = ptrtoint ptr %features244 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %features244, align 16
  %and245 = and i64 %122, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and245)
  %tobool246.not = icmp eq i64 %and245, 0
  br i1 %tobool246.not, label %land.lhs.true241.if.end271_crit_edge, label %land.lhs.true241.if.else248_crit_edge

land.lhs.true241.if.else248_crit_edge:            ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else248

land.lhs.true241.if.end271_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.else248:                                       ; preds = %land.lhs.true241.if.else248_crit_edge, %if.end231.if.else248_crit_edge
  br i1 %paged.0.shrunk, label %if.else248.if.else261_crit_edge, label %land.lhs.true250

if.else248.if.else261_crit_edge:                  ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else261

land.lhs.true250:                                 ; preds = %if.else248
  %add251 = add i32 %add238, %add232
  call void @__sanitizer_cov_trace_const_cmp4(i32 16128, i32 %add251)
  %cmp252 = icmp ult i32 %add251, 16128
  br i1 %cmp252, label %land.lhs.true250.if.end271_crit_edge, label %lor.lhs.false254

land.lhs.true250.if.end271_crit_edge:             ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

lor.lhs.false254:                                 ; preds = %land.lhs.true250
  %123 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %2, align 4
  %features257 = getelementptr inbounds %struct.net_device, ptr %124, i32 0, i32 23
  %125 = ptrtoint ptr %features257 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %features257, align 16
  %and258 = and i64 %126, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and258)
  %tobool259.not = icmp eq i64 %and258, 0
  br i1 %tobool259.not, label %lor.lhs.false254.if.end271_crit_edge, label %lor.lhs.false254.if.else261_crit_edge

lor.lhs.false254.if.else261_crit_edge:            ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else261

lor.lhs.false254.if.end271_crit_edge:             ; preds = %lor.lhs.false254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.else261:                                       ; preds = %lor.lhs.false254.if.else261_crit_edge, %if.else248.if.else261_crit_edge
  %127 = call i32 @llvm.smin.i32(i32 %add232, i32 176)
  %sub269 = sub i32 %add232, %127
  br label %if.end271

if.end271:                                        ; preds = %if.else261, %lor.lhs.false254.if.end271_crit_edge, %land.lhs.true250.if.end271_crit_edge, %land.lhs.true241.if.end271_crit_edge
  %alloclen.0 = phi i32 [ %127, %if.else261 ], [ %add232, %lor.lhs.false254.if.end271_crit_edge ], [ %add232, %land.lhs.true250.if.end271_crit_edge ], [ %mtu.3, %land.lhs.true241.if.end271_crit_edge ]
  %pagedlen.0 = phi i32 [ %sub269, %if.else261 ], [ 0, %lor.lhs.false254.if.end271_crit_edge ], [ 0, %land.lhs.true250.if.end271_crit_edge ], [ 0, %land.lhs.true241.if.end271_crit_edge ]
  %add272 = add i32 %alloclen.0, %add238
  call void @__sanitizer_cov_trace_cmp4(i32 %datalen.0, i32 %add211)
  %cmp274.not = icmp eq i32 %datalen.0, %add211
  %add280 = select i1 %cmp274.not, i32 0, i32 %conv236
  %spec.select938 = add i32 %add280, %datalen.0
  %add282 = add i32 %spec.select938, %add40888
  %128 = add i32 %fraggap.0898, %transhdrlen.addr.1
  %129 = add i32 %128, %pagedlen.0
  %sub285 = sub i32 %spec.select938, %129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub285)
  %cmp286 = icmp slt i32 %sub285, 0
  br i1 %cmp286, label %if.then288, label %if.end289

if.then288:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -22, ptr %err, align 4
  br label %error

if.end289:                                        ; preds = %if.end271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transhdrlen.addr.1)
  %tobool290.not = icmp eq i32 %transhdrlen.addr.1, 0
  br i1 %tobool290.not, label %if.else294, label %if.end309

if.else294:                                       ; preds = %if.end289
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #11
  %131 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %sk_wmem_alloc, align 4
  %add296 = add i32 %132, %wmem_alloc_delta.1
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %133 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sk_sndbuf, align 4
  %mul = shl i32 %134, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add296, i32 %mul)
  %cmp297.not = icmp ugt i32 %add296, %mul
  br i1 %cmp297.not, label %if.else294.if.end309.thread_crit_edge, label %if.end301

if.else294.if.end309.thread_crit_edge:            ; preds = %if.else294
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end309.thread

if.end301:                                        ; preds = %if.else294
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %135 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sk_allocation, align 8
  %call.i = call ptr @__alloc_skb(i32 noundef %add272, i32 noundef %136, i32 noundef 0, i32 noundef -1) #11
  %tobool302.not = icmp eq ptr %call.i, null
  br i1 %tobool302.not, label %if.end301.if.end309.thread_crit_edge, label %if.end301.if.end312_crit_edge, !prof !107

if.end301.if.end312_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end312

if.end301.if.end309.thread_crit_edge:             ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end309.thread

if.end309.thread:                                 ; preds = %if.end301.if.end309.thread_crit_edge, %if.else294.if.end309.thread_crit_edge
  %137 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -105, ptr %err, align 4
  br label %error

if.end309:                                        ; preds = %if.end289
  %and292 = and i32 %flags, 64
  %call293 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add272, i32 noundef %and292, ptr noundef nonnull %err) #11
  %tobool310.not = icmp eq ptr %call293, null
  br i1 %tobool310.not, label %if.end309.error_crit_edge, label %if.end309.if.end312_crit_edge

if.end309.if.end312_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end312

if.end309.error_crit_edge:                        ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end312:                                        ; preds = %if.end309.if.end312_crit_edge, %if.end301.if.end312_crit_edge
  %skb.3916 = phi ptr [ %call293, %if.end309.if.end312_crit_edge ], [ %call.i, %if.end301.if.end312_crit_edge ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 15, i32 0, i32 18
  %138 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -31011, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 15
  %139 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load314 = load i16, ptr %ip_summed, align 8
  %bf.clear315 = and i16 %bf.load314, -1537
  %bf.set316 = or i16 %bf.clear315, %csummode.0
  store i16 %bf.set316, ptr %ip_summed, align 8
  %140 = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 15, i32 0, i32 5
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %140, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 19
  %142 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %143, i32 %add237
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 16
  %144 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %145, i32 %add237
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub319 = sub i32 %add282, %pagedlen.0
  %call320 = call ptr @skb_put(ptr noundef nonnull %skb.3916, i32 noundef %sub319) #11
  %146 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 18
  %148 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %147 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %149 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i807 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 15, i32 0, i32 20
  %150 = trunc i32 %exthdrlen.2 to i16
  %conv1.i = add i16 %conv.i.i807, %150
  %151 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %add.ptr = getelementptr i8, ptr %call320, i32 %add40888
  %152 = trunc i32 %add40888 to i16
  %conv323 = add i16 %conv1.i, %152
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 15, i32 0, i32 19
  %153 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv323, ptr %transport_header, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fraggap.0898)
  %tobool324.not = icmp eq i32 %fraggap.0898, 0
  br i1 %tobool324.not, label %if.end312.if.end330_crit_edge, label %if.then325

if.end312.if.end330_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end330

if.then325:                                       ; preds = %if.end312
  %add.ptr326 = getelementptr i8, ptr %add.ptr, i32 %transhdrlen.addr.1
  %call327 = call i32 @skb_copy_and_csum_bits(ptr noundef %skb.1, i32 noundef %maxfraglen.3, ptr noundef %add.ptr326, i32 noundef %fraggap.0898) #11
  %154 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call327, ptr %140, align 8
  %155 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 5
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 8
  %neg.i = xor i32 %call327, -1
  %add.i.i = add i32 %157, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %158 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add1.i.i, ptr %155, align 8
  %add.ptr329 = getelementptr i8, ptr %add.ptr, i32 %fraggap.0898
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %159 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %maxfraglen.3)
  %cmp.i.i808 = icmp ugt i32 %160, %maxfraglen.3
  br i1 %cmp.i.i808, label %cond.true.i.i809, label %if.then325.if.end330_crit_edge

if.then325.if.end330_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end330

cond.true.i.i809:                                 ; preds = %if.then325
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %161 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i.i.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i809
  call void @__sanitizer_cov_trace_pc() #13
  %163 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %maxfraglen.3, ptr %len1.i.i, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %164 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %165, i32 %maxfraglen.3
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 16
  %166 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end330

pskb_trim.exit.i:                                 ; preds = %cond.true.i.i809
  %call.i.i.i810 = call i32 @___pskb_trim(ptr noundef %skb.1, i32 noundef %maxfraglen.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i810)
  %tobool.not.i811 = icmp eq i32 %call.i.i.i810, 0
  br i1 %tobool.not.i811, label %pskb_trim.exit.i.if.end330_crit_edge, label %do.body3.i, !prof !108

pskb_trim.exit.i.if.end330_crit_edge:             ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end330

do.body3.i:                                       ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2827, 0\0A.popsection", ""() #11, !srcloc !139
  unreachable

if.end330:                                        ; preds = %pskb_trim.exit.i.if.end330_crit_edge, %__skb_trim.exit.i.i.i, %if.then325.if.end330_crit_edge, %if.end312.if.end330_crit_edge
  %data.0 = phi ptr [ %add.ptr, %if.end312.if.end330_crit_edge ], [ %add.ptr329, %if.then325.if.end330_crit_edge ], [ %add.ptr329, %__skb_trim.exit.i.i.i ], [ %add.ptr329, %pskb_trim.exit.i.if.end330_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select938, i32 %129)
  %cmp331.not = icmp eq i32 %spec.select938, %129
  br i1 %cmp331.not, label %if.end330.if.end339_crit_edge, label %land.lhs.true333

if.end330.if.end339_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

land.lhs.true333:                                 ; preds = %if.end330
  %add.ptr334 = getelementptr i8, ptr %data.0, i32 %transhdrlen.addr.1
  %call335 = call i32 %getfrag(ptr noundef %from, ptr noundef %add.ptr334, i32 noundef %offset.1, i32 noundef %sub285, i32 noundef %fraggap.0898, ptr noundef nonnull %skb.3916) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %cmp336 = icmp slt i32 %call335, 0
  br i1 %cmp336, label %if.then338, label %land.lhs.true333.if.end339_crit_edge

land.lhs.true333.if.end339_crit_edge:             ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end339

if.then338:                                       ; preds = %land.lhs.true333
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %skb.3916, i32 noundef 0) #11
  br label %error

if.end339:                                        ; preds = %land.lhs.true333.if.end339_crit_edge, %if.end330.if.end339_crit_edge
  %add340 = add i32 %sub285, %offset.1
  %168 = add i32 %transhdrlen.addr.1, %sub285
  %sub342 = sub i32 %length.addr.1, %168
  %169 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tx_flags, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 17
  %171 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %end.i, align 4
  %tx_flags345 = getelementptr inbounds %struct.skb_shared_info, ptr %172, i32 0, i32 3
  %173 = ptrtoint ptr %tx_flags345 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %170, ptr %tx_flags345, align 1
  store i8 0, ptr %tx_flags, align 8
  %174 = load ptr, ptr %end.i, align 4
  %tskey348 = getelementptr inbounds %struct.skb_shared_info, ptr %174, i32 0, i32 9
  %175 = ptrtoint ptr %tskey348 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %tskey.2, ptr %tskey348, align 4
  %tobool1.not.i814 = icmp eq ptr %uarg.0, null
  br i1 %tobool1.not.i814, label %if.end339.skb_zcopy_set.exit_crit_edge, label %land.rhs.i.i

if.end339.skb_zcopy_set.exit_crit_edge:           ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy_set.exit

land.rhs.i.i:                                     ; preds = %if.end339
  %176 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %end.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 8
  %180 = and i8 %179, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool1.not.i.i = icmp eq i8 %180, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.if.then.i815_crit_edge, label %skb_zcopy.exit.i

land.rhs.i.i.if.then.i815_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i815

skb_zcopy.exit.i:                                 ; preds = %land.rhs.i.i
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %177, i32 0, i32 11
  %181 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %destructor_arg.i.i, align 4
  %tobool3.not.i = icmp eq ptr %182, null
  br i1 %tobool3.not.i, label %skb_zcopy.exit.i.if.then.i815_crit_edge, label %skb_zcopy.exit.i.skb_zcopy_set.exit_crit_edge

skb_zcopy.exit.i.skb_zcopy_set.exit_crit_edge:    ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy_set.exit

skb_zcopy.exit.i.if.then.i815_crit_edge:          ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i815

if.then.i815:                                     ; preds = %skb_zcopy.exit.i.if.then.i815_crit_edge, %land.rhs.i.i.if.then.i815_crit_edge
  %183 = ptrtoint ptr %extra_uref to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %extra_uref, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool5.not.i = icmp eq i8 %184, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then8.i, !prof !108

if.then8.i:                                       ; preds = %if.then.i815
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %extra_uref to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %extra_uref, align 1
  br label %if.end.i817

if.else.i:                                        ; preds = %if.then.i815
  %refcnt.i.i = getelementptr inbounds %struct.ubuf_info, ptr %uarg.0, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #11
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !107

if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %187 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %187)
  %.not.i.i.i.i.i = icmp sgt i32 %187, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i817_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end.i817_crit_edge:          ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i817

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %if.end.i817

if.end.i817:                                      ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end.i817_crit_edge, %if.then8.i
  %188 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i, align 4
  %destructor_arg.i17.i = getelementptr inbounds %struct.skb_shared_info, ptr %189, i32 0, i32 11
  %190 = ptrtoint ptr %destructor_arg.i17.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %uarg.0, ptr %destructor_arg.i17.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ubuf_info, ptr %uarg.0, i32 0, i32 3
  %191 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %flags.i.i, align 4
  %193 = load ptr, ptr %end.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %193, align 8
  %or7.i.i = or i8 %195, %192
  store i8 %or7.i.i, ptr %193, align 8
  br label %skb_zcopy_set.exit

skb_zcopy_set.exit:                               ; preds = %if.end.i817, %skb_zcopy.exit.i.skb_zcopy_set.exit_crit_edge, %if.end339.skb_zcopy_set.exit_crit_edge
  %and349 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  %tobool200.not.not = xor i1 %tobool200.not, true
  %brmerge794 = select i1 %tobool350.not, i1 true, i1 %tobool200.not.not
  br i1 %brmerge794, label %skb_zcopy_set.exit.if.end354_crit_edge, label %if.then353

skb_zcopy_set.exit.if.end354_crit_edge:           ; preds = %skb_zcopy_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end354

if.then353:                                       ; preds = %skb_zcopy_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dst_pending_confirm.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 15, i32 0, i32 3
  %196 = ptrtoint ptr %dst_pending_confirm.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %bf.load.i818 = load i32, ptr %dst_pending_confirm.i, align 2
  %bf.set.i = or i32 %bf.load.i818, 67108864
  store i32 %bf.set.i, ptr %dst_pending_confirm.i, align 2
  br label %if.end354

if.end354:                                        ; preds = %if.then353, %skb_zcopy_set.exit.if.end354_crit_edge
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 4, i32 0, i32 1
  %197 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %destructor, align 4
  %tobool355.not = icmp eq ptr %198, null
  br i1 %tobool355.not, label %if.then356, label %if.end354.if.end359_crit_edge

if.end354.if.end359_crit_edge:                    ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end359

if.then356:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #13
  %199 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @sock_wfree, ptr %destructor, align 4
  %200 = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 1
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %sk, ptr %200, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.3916, i32 0, i32 20
  %202 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %truesize, align 8
  %add358 = add i32 %203, %wmem_alloc_delta.1
  br label %if.end359

if.end359:                                        ; preds = %if.then356, %if.end354.if.end359_crit_edge
  %wmem_alloc_delta.2 = phi i32 [ %wmem_alloc_delta.1, %if.end354.if.end359_crit_edge ], [ %add358, %if.then356 ]
  %204 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %prev.i, align 4
  %206 = ptrtoint ptr %skb.3916 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %queue, ptr %skb.3916, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %skb.3916, i32 0, i32 1
  %207 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile ptr %205, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb.3916, ptr %prev.i, align 4
  %208 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %skb.3916, ptr %205, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %209 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %210, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %while.cond.preheader

if.end360:                                        ; preds = %cond.end188
  %211 = call i32 @llvm.umin.i32(i32 %spec.select937, i32 %length.addr.0973)
  %212 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %2, align 4
  %features367 = getelementptr inbounds %struct.net_device, ptr %213, i32 0, i32 23
  %214 = ptrtoint ptr %features367 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %features367, align 16
  %and368 = and i64 %215, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and368)
  %tobool369.not = icmp eq i64 %and368, 0
  br i1 %tobool369.not, label %land.lhs.true370, label %if.end360.if.else382_crit_edge

if.end360.if.else382_crit_edge:                   ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else382

land.lhs.true370:                                 ; preds = %if.end360
  %216 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.i.not.i = icmp eq i32 %217, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %land.lhs.true370.skb_tailroom.exit_crit_edge

land.lhs.true370.skb_tailroom.exit_crit_edge:     ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %end.i819, align 4
  %220 = ptrtoint ptr %tail.i820 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %tail.i820, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %219 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %221 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %land.lhs.true370.skb_tailroom.exit_crit_edge
  %cond.i821 = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %land.lhs.true370.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i821, i32 %211)
  %cmp372.not = icmp slt i32 %cond.i821, %211
  br i1 %cmp372.not, label %skb_tailroom.exit.if.else382_crit_edge, label %if.then374

skb_tailroom.exit.if.else382_crit_edge:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else382

if.then374:                                       ; preds = %skb_tailroom.exit
  %call376 = call ptr @skb_put(ptr noundef %skb.0.ph, i32 noundef %211) #11
  %call377 = call i32 %getfrag(ptr noundef %from, ptr noundef %call376, i32 noundef %offset.0969, i32 noundef %211, i32 noundef %99, ptr noundef %skb.0.ph) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %cmp378 = icmp slt i32 %call377, 0
  br i1 %cmp378, label %if.then380, label %if.then374.if.end454_crit_edge

if.then374.if.end454_crit_edge:                   ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end454

if.then380:                                       ; preds = %if.then374
  %222 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool.i.not.i.i823 = icmp eq i32 %223, 0
  br i1 %tobool.i.not.i.i823, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !108

do.end.i.i:                                       ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2789, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end21.critedge.i.i:                            ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #13
  %224 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %99, ptr %len, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 19
  %225 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %226, i32 %99
  %227 = ptrtoint ptr %tail.i820 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %add.ptr.i.i.i, ptr %tail.i820, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %228 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 -14, ptr %err, align 4
  br label %error

if.else382:                                       ; preds = %skb_tailroom.exit.if.else382_crit_edge, %if.end360.if.else382_crit_edge
  br i1 %tobool383.not, label %if.else382.if.then388_crit_edge, label %lor.lhs.false384

if.else382.if.then388_crit_edge:                  ; preds = %if.else382
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then388

lor.lhs.false384:                                 ; preds = %if.else382
  %229 = ptrtoint ptr %zerocopy385 to i32
  call void @__asan_load1_noabort(i32 %229)
  %bf.load386 = load i8, ptr %zerocopy385, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load386)
  %tobool387.not = icmp sgt i8 %bf.load386, -1
  br i1 %tobool387.not, label %lor.lhs.false384.if.then388_crit_edge, label %if.else447

lor.lhs.false384.if.then388_crit_edge:            ; preds = %lor.lhs.false384
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then388

if.then388:                                       ; preds = %lor.lhs.false384.if.then388_crit_edge, %if.else382.if.then388_crit_edge
  %230 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %end.i819, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %nr_frags, align 2
  %conv390 = zext i8 %233 to i32
  %234 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 -12, ptr %err, align 4
  %call391 = call zeroext i1 @sk_page_frag_refill(ptr noundef %sk, ptr noundef %pfrag) #11
  br i1 %call391, label %if.end393, label %if.then388.error_crit_edge

if.then388.error_crit_edge:                       ; preds = %if.then388
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end393:                                        ; preds = %if.then388
  %235 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pfrag, align 4
  %237 = ptrtoint ptr %offset394 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %offset394, align 4
  %conv395 = zext i16 %238 to i32
  br i1 %tobool.not.i.i, label %if.end393.skb_zcopy.exit.i833_crit_edge, label %land.rhs.i.i827

if.end393.skb_zcopy.exit.i833_crit_edge:          ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy.exit.i833

land.rhs.i.i827:                                  ; preds = %if.end393
  %239 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %end.i819, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %240, align 8
  %243 = and i8 %242, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool1.not.i.i826 = icmp eq i8 %243, 0
  br i1 %tobool1.not.i.i826, label %land.rhs.i.i827.skb_zcopy.exit.i833_crit_edge, label %cond.true.i.i829

land.rhs.i.i827.skb_zcopy.exit.i833_crit_edge:    ; preds = %land.rhs.i.i827
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_zcopy.exit.i833

cond.true.i.i829:                                 ; preds = %land.rhs.i.i827
  call void @__sanitizer_cov_trace_pc() #13
  %destructor_arg.i.i828 = getelementptr inbounds %struct.skb_shared_info, ptr %240, i32 0, i32 11
  %244 = ptrtoint ptr %destructor_arg.i.i828 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %destructor_arg.i.i828, align 4
  %phi.cmp.i = icmp ne ptr %245, null
  br label %skb_zcopy.exit.i833

skb_zcopy.exit.i833:                              ; preds = %cond.true.i.i829, %land.rhs.i.i827.skb_zcopy.exit.i833_crit_edge, %if.end393.skb_zcopy.exit.i833_crit_edge
  %cond.i.i830 = phi i1 [ %phi.cmp.i, %cond.true.i.i829 ], [ false, %land.rhs.i.i827.skb_zcopy.exit.i833_crit_edge ], [ false, %if.end393.skb_zcopy.exit.i833_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool1.not.i831 = icmp eq i8 %233, 0
  %or.cond.i832 = or i1 %tobool1.not.i831, %cond.i.i830
  br i1 %or.cond.i832, label %skb_zcopy.exit.i833.if.then397_crit_edge, label %if.then2.i837

skb_zcopy.exit.i833.if.then397_crit_edge:         ; preds = %skb_zcopy.exit.i833
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then397

if.then2.i837:                                    ; preds = %skb_zcopy.exit.i833
  %246 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %end.i819, align 4
  %sub.i835 = add nsw i32 %conv390, -1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %247, i32 0, i32 12, i32 %sub.i835
  %248 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i836 = icmp eq ptr %249, %236
  br i1 %cmp.i836, label %skb_can_coalesce.exit, label %if.then2.i837.if.then397_crit_edge

if.then2.i837.if.then397_crit_edge:               ; preds = %if.then2.i837
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then397

skb_can_coalesce.exit:                            ; preds = %if.then2.i837
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %247, i32 0, i32 12, i32 %sub.i835, i32 2
  %250 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %247, i32 0, i32 12, i32 %sub.i835, i32 1
  %252 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %bv_len.i.i, align 4
  %add.i838 = add i32 %253, %251
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i838, i32 %conv395)
  %cmp7.i = icmp eq i32 %add.i838, %conv395
  br i1 %cmp7.i, label %skb_can_coalesce.exit.if.end409_crit_edge, label %skb_can_coalesce.exit.if.then397_crit_edge

skb_can_coalesce.exit.if.then397_crit_edge:       ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then397

skb_can_coalesce.exit.if.end409_crit_edge:        ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end409

if.then397:                                       ; preds = %skb_can_coalesce.exit.if.then397_crit_edge, %if.then2.i837.if.then397_crit_edge, %skb_zcopy.exit.i833.if.then397_crit_edge
  %254 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 -90, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %233)
  %cmp398 = icmp eq i8 %233, 17
  br i1 %cmp398, label %if.then397.error_crit_edge, label %if.end401

if.then397.error_crit_edge:                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end401:                                        ; preds = %if.then397
  %255 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %end.i819, align 4
  %arrayidx.i841 = getelementptr %struct.skb_shared_info, ptr %256, i32 0, i32 12, i32 %conv390
  %257 = ptrtoint ptr %arrayidx.i841 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %236, ptr %arrayidx.i841, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %256, i32 0, i32 12, i32 %conv390, i32 2
  %258 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %conv395, ptr %bv_offset.i, align 4
  %bv_len.i.i842 = getelementptr %struct.skb_shared_info, ptr %256, i32 0, i32 12, i32 %conv390, i32 1
  %259 = ptrtoint ptr %bv_len.i.i842 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %bv_len.i.i842, align 4
  %260 = getelementptr inbounds %struct.page, ptr %236, i32 0, i32 1
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile i32, ptr %260, align 4
  %and.i.i843 = and i32 %262, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i843)
  %tobool.not.i.i844 = icmp eq i32 %and.i.i843, 0
  br i1 %tobool.not.i.i844, label %if.end.i.i, label %if.then.i.i, !prof !108

if.then.i.i:                                      ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %262, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %236 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %263, %if.end.i.i ]
  %264 = inttoptr i32 %retval.0.i.i to ptr
  %265 = getelementptr inbounds %struct.page, ptr %264, i32 0, i32 1
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %268 = ptrtoint ptr %267 to i32
  %and.i1.i = and i32 %268, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.i.not.i845 = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.i.not.i845, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i848

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_fill_page_desc.exit

if.then.i848:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %269 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %bf.load.i846 = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i847 = or i8 %bf.load.i846, 2
  store i8 %bf.set.i847, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i848, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %inc = add nuw nsw i32 %conv390, 1
  %conv405 = trunc i32 %inc to i8
  %270 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %end.i819, align 4
  %nr_frags407 = getelementptr inbounds %struct.skb_shared_info, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %nr_frags407 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %conv405, ptr %nr_frags407, align 2
  %273 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pfrag, align 4
  %275 = getelementptr inbounds %struct.page, ptr %274, i32 0, i32 1
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load volatile i32, ptr %275, align 4
  %and.i.i851 = and i32 %277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i851)
  %tobool.not.i.i852 = icmp eq i32 %and.i.i851, 0
  br i1 %tobool.not.i.i852, label %if.end.i.i855, label %if.then.i.i854, !prof !108

if.then.i.i854:                                   ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i853 = add i32 %277, -1
  br label %_compound_head.exit.i859

if.end.i.i855:                                    ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %278 = ptrtoint ptr %274 to i32
  br label %_compound_head.exit.i859

_compound_head.exit.i859:                         ; preds = %if.end.i.i855, %if.then.i.i854
  %retval.0.i.i856 = phi i32 [ %sub.i.i853, %if.then.i.i854 ], [ %278, %if.end.i.i855 ]
  %279 = inttoptr i32 %retval.0.i.i856 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %279, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %280 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i857 = add i32 %281, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i857)
  %cmp.i.i858 = icmp ult i32 %add.i.i857, 128
  br i1 %cmp.i.i858, label %if.then.i1.i, label %do.end5.i.i, !prof !107

if.then.i1.i:                                     ; preds = %_compound_head.exit.i859
  call void @__sanitizer_cov_trace_pc() #13
  %282 = inttoptr i32 %retval.0.i.i856 to ptr
  call void @dump_page(ptr noundef %282, ptr noundef nonnull @.str.27) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !140
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i859
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %283 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@__ip6_append_data, %if.then.i.i.i.i)) #11
          to label %if.end409 [label %if.then.i.i.i.i], !srcloc !115

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__page_ref_mod(ptr noundef %279, i32 noundef 1) #11
  br label %if.end409

if.end409:                                        ; preds = %if.then.i.i.i.i, %do.end5.i.i, %skb_can_coalesce.exit.if.end409_crit_edge
  %i.0 = phi i32 [ %conv390, %skb_can_coalesce.exit.if.end409_crit_edge ], [ %inc, %do.end5.i.i ], [ %inc, %if.then.i.i.i.i ]
  %284 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %size, align 2
  %conv410 = zext i16 %285 to i32
  %286 = ptrtoint ptr %offset394 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %offset394, align 4
  %conv412 = zext i16 %287 to i32
  %sub413 = sub nsw i32 %conv410, %conv412
  %288 = call i32 @llvm.smin.i32(i32 %211, i32 %sub413)
  %289 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pfrag, align 4
  %call422 = call ptr @page_address(ptr noundef %290) #11
  %291 = ptrtoint ptr %offset394 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %offset394, align 4
  %conv424 = zext i16 %292 to i32
  %add.ptr425 = getelementptr i8, ptr %call422, i32 %conv424
  %293 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %len, align 4
  %call427 = call i32 %getfrag(ptr noundef %from, ptr noundef %add.ptr425, i32 noundef %offset.0969, i32 noundef %288, i32 noundef %294, ptr noundef %skb.0.ph) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call427)
  %cmp428 = icmp slt i32 %call427, 0
  br i1 %cmp428, label %error_efault, label %cleanup444.thread922

cleanup444.thread922:                             ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #13
  %295 = ptrtoint ptr %offset394 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %offset394, align 4
  %297 = trunc i32 %288 to i16
  %conv435 = add i16 %296, %297
  store i16 %conv435, ptr %offset394, align 4
  %298 = ptrtoint ptr %end.i819 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %end.i819, align 4
  %sub437 = add nsw i32 %i.0, -1
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %299, i32 0, i32 12, i32 %sub437, i32 1
  %300 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %bv_len.i, align 4
  %add.i861 = add i32 %301, %288
  store i32 %add.i861, ptr %bv_len.i, align 4
  %302 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %len, align 4
  %add439 = add i32 %303, %288
  store i32 %add439, ptr %len, align 4
  %304 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %data_len.i.i, align 8
  %add440 = add i32 %305, %288
  store i32 %add440, ptr %data_len.i.i, align 8
  %306 = ptrtoint ptr %truesize441 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %truesize441, align 8
  %add442 = add i32 %307, %288
  store i32 %add442, ptr %truesize441, align 8
  %add443 = add i32 %288, %wmem_alloc_delta.0972
  br label %if.end454

if.else447:                                       ; preds = %lor.lhs.false384
  %call448 = call i32 @skb_zerocopy_iter_dgram(ptr noundef %skb.0.ph, ptr noundef %from, i32 noundef %211) #11
  %308 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %call448, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call448)
  %cmp449 = icmp slt i32 %call448, 0
  br i1 %cmp449, label %if.else447.if.then.i864_crit_edge, label %if.else447.if.end454_crit_edge

if.else447.if.end454_crit_edge:                   ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end454

if.else447.if.then.i864_crit_edge:                ; preds = %if.else447
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i864

if.end454:                                        ; preds = %if.else447.if.end454_crit_edge, %cleanup444.thread922, %if.then374.if.end454_crit_edge
  %wmem_alloc_delta.4 = phi i32 [ %wmem_alloc_delta.0972, %if.else447.if.end454_crit_edge ], [ %add443, %cleanup444.thread922 ], [ %wmem_alloc_delta.0972, %if.then374.if.end454_crit_edge ]
  %copy.3 = phi i32 [ %211, %if.else447.if.end454_crit_edge ], [ %288, %cleanup444.thread922 ], [ %211, %if.then374.if.end454_crit_edge ]
  %add455 = add i32 %copy.3, %offset.0969
  %sub456 = sub i32 %length.addr.0973, %copy.3
  %cmp177 = icmp sgt i32 %sub456, 0
  br i1 %cmp177, label %if.end454.while.body_crit_edge, label %if.end454.while.end_crit_edge

if.end454.while.end_crit_edge:                    ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end454.while.body_crit_edge:                   ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end454.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %wmem_alloc_delta.0.lcssa = phi i32 [ %wmem_alloc_delta.0.ph, %while.cond.preheader.while.end_crit_edge ], [ %wmem_alloc_delta.4, %if.end454.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wmem_alloc_delta.0.lcssa)
  %tobool457.not = icmp eq i32 %wmem_alloc_delta.0.lcssa, 0
  br i1 %tobool457.not, label %while.end.cleanup513_crit_edge, label %if.then458

while.end.cleanup513_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup513

if.then458:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %sk_wmem_alloc459 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  call fastcc void @refcount_add(i32 noundef %wmem_alloc_delta.0.lcssa, ptr noundef %sk_wmem_alloc459)
  br label %cleanup513

error_efault:                                     ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #13
  %309 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 -14, ptr %err, align 4
  br label %error

error:                                            ; preds = %error_efault, %if.then397.error_crit_edge, %if.then388.error_crit_edge, %cleanup, %if.then338, %if.end309.error_crit_edge, %if.end309.thread, %if.then288
  %wmem_alloc_delta.5 = phi i32 [ %wmem_alloc_delta.1, %if.then288 ], [ %wmem_alloc_delta.1, %if.then338 ], [ %wmem_alloc_delta.1, %if.end309.error_crit_edge ], [ %wmem_alloc_delta.0972, %error_efault ], [ %wmem_alloc_delta.0972, %cleanup ], [ %wmem_alloc_delta.1, %if.end309.thread ], [ %wmem_alloc_delta.0972, %if.then388.error_crit_edge ], [ %wmem_alloc_delta.0972, %if.then397.error_crit_edge ]
  %length.addr.2 = phi i32 [ %length.addr.1, %if.then288 ], [ %length.addr.1, %if.then338 ], [ %length.addr.1, %if.end309.error_crit_edge ], [ %length.addr.0973, %error_efault ], [ %length.addr.0973, %cleanup ], [ %length.addr.1, %if.end309.thread ], [ %length.addr.0973, %if.then388.error_crit_edge ], [ %length.addr.0973, %if.then397.error_crit_edge ]
  %tobool.not.i862 = icmp eq ptr %uarg.0, null
  br i1 %tobool.not.i862, label %error.net_zcopy_put_abort.exit_crit_edge, label %error.if.then.i864_crit_edge

error.if.then.i864_crit_edge:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i864

error.net_zcopy_put_abort.exit_crit_edge:         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_zcopy_put_abort.exit

if.then.i864:                                     ; preds = %error.if.then.i864_crit_edge, %if.else447.if.then.i864_crit_edge
  %length.addr.2932 = phi i32 [ %length.addr.2, %error.if.then.i864_crit_edge ], [ %length.addr.0973, %if.else447.if.then.i864_crit_edge ]
  %wmem_alloc_delta.5930 = phi i32 [ %wmem_alloc_delta.5, %error.if.then.i864_crit_edge ], [ %wmem_alloc_delta.0972, %if.else447.if.then.i864_crit_edge ]
  %310 = ptrtoint ptr %extra_uref to i32
  call void @__asan_load1_noabort(i32 %310)
  %tobool461934.in = load i8, ptr %extra_uref, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tobool461934.in)
  %tobool461934 = icmp ne i8 %tobool461934.in, 0
  %311 = ptrtoint ptr %uarg.0 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %uarg.0, align 4
  %cmp.i863 = icmp eq ptr %312, @msg_zerocopy_callback
  br i1 %cmp.i863, label %if.then1.i, label %if.else.i865

if.then1.i:                                       ; preds = %if.then.i864
  call void @__sanitizer_cov_trace_pc() #13
  call void @msg_zerocopy_put_abort(ptr noundef nonnull %uarg.0, i1 noundef zeroext %tobool461934) #11
  br label %net_zcopy_put_abort.exit

if.else.i865:                                     ; preds = %if.then.i864
  br i1 %tobool461934, label %net_zcopy_put.exit.i, label %if.else.i865.net_zcopy_put_abort.exit_crit_edge

if.else.i865.net_zcopy_put_abort.exit_crit_edge:  ; preds = %if.else.i865
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_zcopy_put_abort.exit

net_zcopy_put.exit.i:                             ; preds = %if.else.i865
  call void @__sanitizer_cov_trace_pc() #13
  call void %312(ptr noundef null, ptr noundef nonnull %uarg.0, i1 noundef zeroext true) #11
  br label %net_zcopy_put_abort.exit

net_zcopy_put_abort.exit:                         ; preds = %net_zcopy_put.exit.i, %if.else.i865.net_zcopy_put_abort.exit_crit_edge, %if.then1.i, %error.net_zcopy_put_abort.exit_crit_edge
  %length.addr.2933 = phi i32 [ %length.addr.2, %error.net_zcopy_put_abort.exit_crit_edge ], [ %length.addr.2932, %if.then1.i ], [ %length.addr.2932, %if.else.i865.net_zcopy_put_abort.exit_crit_edge ], [ %length.addr.2932, %net_zcopy_put.exit.i ]
  %wmem_alloc_delta.5931 = phi i32 [ %wmem_alloc_delta.5, %error.net_zcopy_put_abort.exit_crit_edge ], [ %wmem_alloc_delta.5930, %if.then1.i ], [ %wmem_alloc_delta.5930, %if.else.i865.net_zcopy_put_abort.exit_crit_edge ], [ %wmem_alloc_delta.5930, %net_zcopy_put.exit.i ]
  %313 = ptrtoint ptr %length77 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %length77, align 8
  %sub463 = sub i32 %314, %length.addr.2933
  store i32 %sub463, ptr %length77, align 8
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %2, i32 0, i32 6
  %315 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %rt6i_idev, align 4
  %cmp464.not = icmp eq ptr %316, null
  br i1 %cmp464.not, label %net_zcopy_put_abort.exit.do.body488_crit_edge, label %do.body, !prof !107

net_zcopy_put_abort.exit.do.body488_crit_edge:    ; preds = %net_zcopy_put_abort.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body488

do.body:                                          ; preds = %net_zcopy_put_abort.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %316, i32 0, i32 33, i32 1
  %317 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ipv6, align 4
  %319 = ptrtoint ptr %318 to i32
  %320 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i = and i32 %320, -16384
  %321 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %321, i32 0, i32 3
  %322 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %cpu, align 4
  %arrayidx478 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %323
  %324 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx478, align 4
  %add479 = add i32 %325, %319
  %326 = inttoptr i32 %add479 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %326, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx480 = getelementptr [37 x i64], ptr %326, i32 0, i32 14
  %327 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load8_noabort(i32 %327)
  %328 = load i64, ptr %arrayidx480, align 8
  %add481 = add i64 %328, 1
  store i64 %add481, ptr %arrayidx480, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %326, i32 0, i32 1, i32 0, i32 1
  %329 = call ptr @llvm.returnaddress(i32 0) #11
  %330 = ptrtoint ptr %329 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %330) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %331 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %332, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  br label %do.body488

do.body488:                                       ; preds = %do.body, %net_zcopy_put_abort.exit.do.body488_crit_edge
  call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %333 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %skc_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %334, i32 0, i32 30, i32 1
  %335 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ipv6_statistics, align 4
  %337 = ptrtoint ptr %336 to i32
  %338 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i866 = and i32 %338, -16384
  %339 = inttoptr i32 %and.i866 to ptr
  %cpu500 = getelementptr inbounds %struct.thread_info, ptr %339, i32 0, i32 3
  %340 = ptrtoint ptr %cpu500 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %cpu500, align 4
  %arrayidx501 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %341
  %342 = ptrtoint ptr %arrayidx501 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %arrayidx501, align 4
  %add502 = add i32 %343, %337
  %344 = inttoptr i32 %add502 to ptr
  %syncp503 = getelementptr inbounds %struct.ipstats_mib, ptr %344, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp503)
  %arrayidx505 = getelementptr [37 x i64], ptr %344, i32 0, i32 14
  %345 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %arrayidx505, align 8
  %add506 = add i64 %346, 1
  store i64 %add506, ptr %arrayidx505, align 8
  %dep_map.i.i867 = getelementptr inbounds %struct.ipstats_mib, ptr %344, i32 0, i32 1, i32 0, i32 1
  %347 = call ptr @llvm.returnaddress(i32 0) #11
  %348 = ptrtoint ptr %347 to i32
  call void @lock_release(ptr noundef %dep_map.i.i867, i32 noundef %348) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %349 = ptrtoint ptr %syncp503 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %syncp503, align 4
  %inc.i.i.i868 = add i32 %350, 1
  store i32 %inc.i.i.i868, ptr %syncp503, align 4
  call fastcc void @local_bh_enable()
  %sk_wmem_alloc512 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc512, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %sk_wmem_alloc512, i32 1, i32 3, i32 1) #11
  %351 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc512, ptr %sk_wmem_alloc512, i32 %wmem_alloc_delta.5931, ptr elementtype(i32) %sk_wmem_alloc512) #11, !srcloc !130
  %asmresult.i.i.i.i869 = extractvalue { i32, i32, i32 } %351, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i869)
  %tobool1.not.i.i870 = icmp eq i32 %asmresult.i.i.i.i869, 0
  br i1 %tobool1.not.i.i870, label %do.body488.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !107

do.body488.if.end15.sink.split.i.i_crit_edge:     ; preds = %do.body488
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %do.body488
  %add.i.i871 = add i32 %asmresult.i.i.i.i869, %wmem_alloc_delta.5931
  %352 = or i32 %add.i.i871, %asmresult.i.i.i.i869
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %352)
  %.not.i.i = icmp sgt i32 %352, -1
  br i1 %.not.i.i, label %if.else.i.i.refcount_add.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !108

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i

if.else.i.i.refcount_add.exit_crit_edge:          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %do.body488.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %do.body488.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc512, i32 noundef %.sink.i.i) #11
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i.refcount_add.exit_crit_edge
  %353 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %err, align 4
  br label %cleanup513

cleanup513:                                       ; preds = %refcount_add.exit, %if.then458, %while.end.cleanup513_crit_edge, %skb_zcopy.exit.thread.cleanup513_crit_edge, %skb_zcopy.exit.cleanup513_crit_edge, %emsgsize
  %retval.0 = phi i32 [ -90, %emsgsize ], [ %354, %refcount_add.exit ], [ -105, %skb_zcopy.exit.cleanup513_crit_edge ], [ 0, %if.then458 ], [ 0, %while.end.cleanup513_crit_edge ], [ -105, %skb_zcopy.exit.thread.cleanup513_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %extra_uref) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ip6_make_skb(ptr noundef %sk, ptr noundef %queue, ptr noundef %cork, ptr nocapture noundef %v6_cork) local_unnamed_addr #0 align 64 {
entry:
  %keys.i.i = alloca %struct.flow_keys, align 8
  %final_dst_buf = alloca %struct.in6_addr, align 4
  %final_dst = alloca ptr, align 4
  %proto = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final_dst_buf) #11
  %0 = call ptr @memset(ptr %final_dst_buf, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %final_dst) #11
  %1 = ptrtoint ptr %final_dst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %final_dst_buf, ptr %final_dst, align 4
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %3 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %4 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %8 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v6_cork, align 4
  %dst = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 4
  %fl = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto) #11
  %flowic_proto = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1, i32 0, i32 0, i32 0, i32 5
  %12 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flowic_proto, align 2
  %14 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %proto, align 1
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %16, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %16
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %inet6_sk.exit.out_crit_edge, label %if.end

inet6_sk.exit.out_crit_edge:                      ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %inet6_sk.exit
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %19 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %spec.store.select.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %22, ptr %prev17.i.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %20, ptr %22, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 18
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %32 to i32
  %add.ptr.i = getelementptr i8, ptr %30, i32 %conv.i
  %cmp = icmp ult ptr %28, %add.ptr.i
  br i1 %cmp, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %34, %sub.ptr.sub.i
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %36)
  %cmp.i = icmp ult i32 %sub.i, %36
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !107

do.body4.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

__skb_pull.exit:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i479 = getelementptr i8, ptr %28, i32 %sub.ptr.sub.i
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i479, ptr %data, align 4
  br label %if.end9

if.end9:                                          ; preds = %__skb_pull.exit, %if.end.if.end9_crit_edge
  %38 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue, align 4
  %cmp.i.i480568 = icmp eq ptr %39, %queue
  %tobool.not.i482567569 = icmp eq ptr %39, null
  %tobool.not.i482570 = or i1 %cmp.i.i480568, %tobool.not.i482567569
  br i1 %tobool.not.i482570, label %if.end9.while.end_crit_edge, label %while.body.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 19
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %truesize17 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %__skb_pull.exit499.while.body_crit_edge, %while.body.lr.ph
  %40 = phi ptr [ %39, %while.body.lr.ph ], [ %75, %__skb_pull.exit499.while.body_crit_edge ]
  %tail_skb.0571 = phi ptr [ %frag_list, %while.body.lr.ph ], [ %40, %__skb_pull.exit499.while.body_crit_edge ]
  %41 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i484 = add i32 %42, -1
  store volatile i32 %sub.i.i484, ptr %qlen.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %40, align 8
  %prev9.i.i485 = getelementptr inbounds %struct.anon.83, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev9.i.i485 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev9.i.i485, align 4
  store ptr null, ptr %prev9.i.i485, align 4
  store ptr null, ptr %40, align 8
  %prev17.i.i486 = getelementptr inbounds %struct.anon.83, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %prev17.i.i486 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %prev17.i.i486, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %44, ptr %46, align 8
  %49 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %transport_header.i, align 2
  %conv.i489 = zext i16 %50 to i32
  %51 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %52 to i32
  %sub.i491 = sub nsw i32 %conv.i489, %conv1.i
  %len1.i492 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %53 = ptrtoint ptr %len1.i492 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len1.i492, align 4
  %sub.i493 = sub i32 %54, %sub.i491
  store i32 %sub.i493, ptr %len1.i492, align 4
  %data_len.i494 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 7
  %55 = ptrtoint ptr %data_len.i494 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len.i494, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i493, i32 %56)
  %cmp.i495 = icmp ult i32 %sub.i493, %56
  br i1 %cmp.i495, label %do.body4.i496, label %__skb_pull.exit499, !prof !107

do.body4.i496:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

__skb_pull.exit499:                               ; preds = %while.body
  %data.i497 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 19
  %57 = ptrtoint ptr %data.i497 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i497, align 4
  %add.ptr.i498 = getelementptr i8, ptr %58, i32 %sub.i491
  store ptr %add.ptr.i498, ptr %data.i497, align 4
  %59 = ptrtoint ptr %tail_skb.0571 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %40, ptr %tail_skb.0571, align 4
  %60 = ptrtoint ptr %len1.i492 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len1.i492, align 4
  %62 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len14, align 4
  %add = add i32 %63, %61
  store i32 %add, ptr %len14, align 4
  %64 = load i32, ptr %len1.i492, align 4
  %65 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len, align 8
  %add16 = add i32 %66, %64
  store i32 %add16, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 20
  %67 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %truesize, align 8
  %69 = ptrtoint ptr %truesize17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %truesize17, align 8
  %add18 = add i32 %70, %68
  store i32 %add18, ptr %truesize17, align 8
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 4, i32 0, i32 1
  %71 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %destructor, align 4
  %72 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %72, align 4
  %74 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %queue, align 4
  %cmp.i.i480 = icmp eq ptr %75, %queue
  %tobool.not.i482567 = icmp eq ptr %75, null
  %tobool.not.i482 = or i1 %cmp.i.i480, %tobool.not.i482567
  br i1 %tobool.not.i482, label %__skb_pull.exit499.while.end_crit_edge, label %__skb_pull.exit499.while.body_crit_edge

__skb_pull.exit499.while.body_crit_edge:          ; preds = %__skb_pull.exit499
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

__skb_pull.exit499.while.end_crit_edge:           ; preds = %__skb_pull.exit499
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %__skb_pull.exit499.while.end_crit_edge, %if.end9.while.end_crit_edge
  %76 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i.i = zext i8 %77 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %while.end.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

while.end.inet6_sk.exit.i_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %78 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %while.end.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %79, %cond.true.i.i ], [ null, %while.end.inet6_sk.exit.i_crit_edge ]
  %pmtudisc.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 10
  %80 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i = load i16, ptr %pmtudisc.i, align 2
  %81 = and i16 %bf.load.i, 6144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp.i500 = icmp eq i16 %81, 0
  br i1 %cmp.i500, label %ip6_sk_ignore_df.exit.thread, label %lor.rhs.i

ip6_sk_ignore_df.exit.thread:                     ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %ignore_df559 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15
  %82 = ptrtoint ptr %ignore_df559 to i32
  call void @__asan_load2_noabort(i32 %82)
  %bf.load560 = load i16, ptr %ignore_df559, align 8
  br label %90

lor.rhs.i:                                        ; preds = %inet6_sk.exit.i
  %83 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i12.i = zext i8 %84 to i32
  %shl.i.i13.i = shl nuw i32 1, %conv.i.i12.i
  %and.i.i14.i = and i32 %shl.i.i13.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14.i)
  %tobool.i.not.i15.i = icmp eq i32 %and.i.i14.i, 0
  br i1 %tobool.i.not.i15.i, label %lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge, label %cond.true.i17.i

lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge:        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_sk_ignore_df.exit

cond.true.i17.i:                                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i16.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %85 = ptrtoint ptr %pinet6.i16.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pinet6.i16.i, align 8
  br label %ip6_sk_ignore_df.exit

ip6_sk_ignore_df.exit:                            ; preds = %cond.true.i17.i, %lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge
  %cond.i18.i = phi ptr [ %86, %cond.true.i17.i ], [ null, %lor.rhs.i.ip6_sk_ignore_df.exit_crit_edge ]
  %pmtudisc3.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i18.i, i32 0, i32 10
  %87 = ptrtoint ptr %pmtudisc3.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load4.i = load i16, ptr %pmtudisc3.i, align 2
  %88 = and i16 %bf.load4.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 5120, i16 %88)
  %cmp8.i = icmp eq i16 %88, 5120
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15
  %89 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load = load i16, ptr %ignore_df, align 8
  br i1 %cmp8.i, label %ip6_sk_ignore_df.exit._crit_edge, label %ip6_sk_ignore_df.exit._crit_edge572

ip6_sk_ignore_df.exit._crit_edge572:              ; preds = %ip6_sk_ignore_df.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %91

ip6_sk_ignore_df.exit._crit_edge:                 ; preds = %ip6_sk_ignore_df.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %90

90:                                               ; preds = %ip6_sk_ignore_df.exit._crit_edge, %ip6_sk_ignore_df.exit.thread
  %bf.load566 = phi i16 [ %bf.load560, %ip6_sk_ignore_df.exit.thread ], [ %bf.load, %ip6_sk_ignore_df.exit._crit_edge ]
  %ignore_df562 = phi ptr [ %ignore_df559, %ip6_sk_ignore_df.exit.thread ], [ %ignore_df, %ip6_sk_ignore_df.exit._crit_edge ]
  br label %91

91:                                               ; preds = %90, %ip6_sk_ignore_df.exit._crit_edge572
  %bf.load565 = phi i16 [ %bf.load566, %90 ], [ %bf.load, %ip6_sk_ignore_df.exit._crit_edge572 ]
  %ignore_df561 = phi ptr [ %ignore_df562, %90 ], [ %ignore_df, %ip6_sk_ignore_df.exit._crit_edge572 ]
  %92 = phi i16 [ 4096, %90 ], [ 0, %ip6_sk_ignore_df.exit._crit_edge572 ]
  %bf.clear = and i16 %bf.load565, -4097
  %bf.set = or i16 %92, %bf.clear
  %93 = ptrtoint ptr %ignore_df561 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %bf.set, ptr %ignore_df561, align 8
  %94 = ptrtoint ptr %final_dst to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %final_dst, align 4
  %daddr = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1, i32 0, i32 0, i32 1
  %96 = call ptr @memcpy(ptr %95, ptr %daddr, i32 16)
  %transport_header.i501 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 19
  %97 = ptrtoint ptr %transport_header.i501 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %transport_header.i501, align 2
  %conv.i502 = zext i16 %98 to i32
  %99 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %network_header.i, align 4
  %conv1.i504 = zext i16 %100 to i32
  %sub.i505 = sub nsw i32 %conv.i502, %conv1.i504
  %len1.i506 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %101 = ptrtoint ptr %len1.i506 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len1.i506, align 4
  %sub.i507 = sub i32 %102, %sub.i505
  store i32 %sub.i507, ptr %len1.i506, align 4
  %data_len.i508 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %103 = ptrtoint ptr %data_len.i508 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_len.i508, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i507, i32 %104)
  %cmp.i509 = icmp ult i32 %sub.i507, %104
  br i1 %cmp.i509, label %do.body4.i510, label %__skb_pull.exit513, !prof !107

do.body4.i510:                                    ; preds = %91
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !123
  unreachable

__skb_pull.exit513:                               ; preds = %91
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %add.ptr.i512 = getelementptr i8, ptr %106, i32 %sub.i505
  store ptr %add.ptr.i512, ptr %data, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %__skb_pull.exit513.if.end32_crit_edge, label %land.lhs.true

__skb_pull.exit513.if.end32_crit_edge:            ; preds = %__skb_pull.exit513
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %__skb_pull.exit513
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 2
  %107 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %opt_flen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool24.not = icmp eq i16 %108, 0
  br i1 %tobool24.not, label %land.lhs.true.land.lhs.true28_crit_edge, label %if.then25

land.lhs.true.land.lhs.true28_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true28

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @ipv6_push_frag_opts(ptr noundef %spec.store.select.i.i, ptr noundef nonnull %9, ptr noundef nonnull %proto) #11
  br label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.then25, %land.lhs.true.land.lhs.true28_crit_edge
  %opt_nflen = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 3
  %109 = ptrtoint ptr %opt_nflen to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %opt_nflen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool30.not = icmp eq i16 %110, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end32_crit_edge, label %if.then31

land.lhs.true28.if.end32_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  %saddr = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1, i32 0, i32 0, i32 2
  call void @ipv6_push_nfrag_opts(ptr noundef %spec.store.select.i.i, ptr noundef nonnull %9, ptr noundef nonnull %proto, ptr noundef nonnull %final_dst, ptr noundef %saddr) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true28.if.end32_crit_edge, %__skb_pull.exit513.if.end32_crit_edge
  %call33 = call ptr @skb_push(ptr noundef %spec.store.select.i.i, i32 noundef 40) #11
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data, align 4
  %113 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i516 = ptrtoint ptr %112 to i32
  %sub.ptr.rhs.cast.i517 = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i518 = sub i32 %sub.ptr.lhs.cast.i516, %sub.ptr.rhs.cast.i517
  %conv.i519 = trunc i32 %sub.ptr.sub.i518 to i16
  %115 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i519, ptr %network_header.i, align 4
  %conv.i.i523 = and i32 %sub.ptr.sub.i518, 65535
  %add.ptr.i.i524 = getelementptr i8, ptr %114, i32 %conv.i.i523
  %tclass = getelementptr inbounds %struct.inet6_cork, ptr %v6_cork, i32 0, i32 2
  %116 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tclass, align 1
  %conv35 = zext i8 %117 to i32
  %flowlabel = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1, i32 0, i32 0, i32 3
  %118 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flowlabel, align 8
  %autoflowlabel_set.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %120 = ptrtoint ptr %autoflowlabel_set.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load.i525 = load i16, ptr %autoflowlabel_set.i, align 2
  %121 = and i16 %bf.load.i525, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool.not.i526 = icmp eq i16 %121, 0
  br i1 %tobool.not.i526, label %if.then.i527, label %if.else.i

if.then.i527:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %auto_flowlabels.i.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 36, i32 1, i32 17
  %122 = ptrtoint ptr %auto_flowlabels.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %auto_flowlabels.i.i, align 1
  %124 = add i8 %123, -1
  %switch.and.i.i = and i8 %124, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br label %ip6_autoflowlabel.exit

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %125 = and i16 %bf.load.i525, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool5.i = icmp ne i16 %125, 0
  br label %ip6_autoflowlabel.exit

ip6_autoflowlabel.exit:                           ; preds = %if.else.i, %if.then.i527
  %retval.0.i = phi i1 [ %tobool5.i, %if.else.i ], [ %switch.selectcmp.i.i, %if.then.i527 ]
  %and.i = and i32 %119, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i528 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i528, label %lor.lhs.false.i, label %ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge

ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge: ; preds = %ip6_autoflowlabel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_make_flowlabel.exit

lor.lhs.false.i:                                  ; preds = %ip6_autoflowlabel.exit
  %auto_flowlabels.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 36, i32 1, i32 17
  %126 = ptrtoint ptr %auto_flowlabels.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %auto_flowlabels.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp.i529 = icmp ne i8 %127, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %127)
  %cmp8.not.i = icmp eq i8 %127, 3
  %or.cond24.i = select i1 %retval.0.i, i1 %cmp.i529, i1 %cmp8.not.i
  br i1 %or.cond24.i, label %if.end.i, label %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge

lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_make_flowlabel.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %128 = ptrtoint ptr %ignore_df561 to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load.i.i = load i16, ptr %ignore_df561, align 8
  %129 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %if.then.i.i, label %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge

if.end.i.skb_get_hash_flowi6.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get_hash_flowi6.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %keys.i.i) #11
  %131 = call ptr @memset(ptr %keys.i.i, i32 255, i32 72)
  %call.i.i530 = call i32 @__get_hash_from_flowi6(ptr noundef %fl, ptr noundef nonnull %keys.i.i) #11
  %ports.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 6
  %132 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i.i.i = icmp eq i32 %133, 0
  br i1 %tobool.not.i.i.i, label %flow_keys_have_l4.exit.i.i, label %flow_keys_have_l4.exit.thread.i.i

flow_keys_have_l4.exit.thread.i.i:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %134 = ptrtoint ptr %ignore_df561 to i32
  call void @__asan_load2_noabort(i32 %134)
  %bf.load.i.i11.i.i = load i16, ptr %ignore_df561, align 8
  %bf.clear.i.i12.i.i = and i16 %bf.load.i.i11.i.i, -193
  br label %138

flow_keys_have_l4.exit.i.i:                       ; preds = %if.then.i.i
  %tags.i.i.i = getelementptr inbounds %struct.flow_keys, ptr %keys.i.i, i32 0, i32 2
  %135 = ptrtoint ptr %tags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tags.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool1.i.not.i.i = icmp eq i32 %136, 0
  %137 = ptrtoint ptr %ignore_df561 to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i.i.i.i = load i16, ptr %ignore_df561, align 8
  %bf.clear.i.i.i.i = and i16 %bf.load.i.i.i.i, -193
  br i1 %tobool1.i.not.i.i, label %flow_keys_have_l4.exit.i.i._crit_edge, label %flow_keys_have_l4.exit.i.i._crit_edge573

flow_keys_have_l4.exit.i.i._crit_edge573:         ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %138

flow_keys_have_l4.exit.i.i._crit_edge:            ; preds = %flow_keys_have_l4.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %139

138:                                              ; preds = %flow_keys_have_l4.exit.i.i._crit_edge573, %flow_keys_have_l4.exit.thread.i.i
  %bf.clear.i.i14.i.i = phi i16 [ %bf.clear.i.i12.i.i, %flow_keys_have_l4.exit.thread.i.i ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge573 ]
  br label %139

139:                                              ; preds = %138, %flow_keys_have_l4.exit.i.i._crit_edge
  %bf.clear.i.i13.i.i = phi i16 [ %bf.clear.i.i14.i.i, %138 ], [ %bf.clear.i.i.i.i, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %140 = phi i16 [ 192, %138 ], [ 64, %flow_keys_have_l4.exit.i.i._crit_edge ]
  %bf.set8.i.i.i.i = or i16 %140, %bf.clear.i.i13.i.i
  %141 = ptrtoint ptr %ignore_df561 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %bf.set8.i.i.i.i, ptr %ignore_df561, align 8
  %hash10.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 8
  %142 = ptrtoint ptr %hash10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call.i.i530, ptr %hash10.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %keys.i.i) #11
  br label %skb_get_hash_flowi6.exit.i

skb_get_hash_flowi6.exit.i:                       ; preds = %139, %if.end.i.skb_get_hash_flowi6.exit.i_crit_edge
  %hash7.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 8
  %143 = ptrtoint ptr %hash7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hash7.i.i, align 4
  %or.i.i = call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 16) #11
  %and11.i = and i32 %or.i.i, 1048575
  %flowlabel_state_ranges.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 36, i32 1, i32 27
  %145 = ptrtoint ptr %flowlabel_state_ranges.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %flowlabel_state_ranges.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool14.not.i = icmp eq i8 %146, 0
  %or.i = or i32 %and11.i, 524288
  %spec.select.i = select i1 %tobool14.not.i, i32 %and11.i, i32 %or.i
  br label %ip6_make_flowlabel.exit

ip6_make_flowlabel.exit:                          ; preds = %skb_get_hash_flowi6.exit.i, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge, %ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge
  %retval.0.i531 = phi i32 [ %spec.select.i, %skb_get_hash_flowi6.exit.i ], [ 0, %lor.lhs.false.i.ip6_make_flowlabel.exit_crit_edge ], [ %and.i, %ip6_autoflowlabel.exit.ip6_make_flowlabel.exit_crit_edge ]
  %shl.i = shl nuw nsw i32 %conv35, 20
  %or.i532 = or i32 %shl.i, %retval.0.i531
  %or1.i = or i32 %or.i532, 1610612736
  %147 = ptrtoint ptr %add.ptr.i.i524 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or1.i, ptr %add.ptr.i.i524, align 4
  %hop_limit = getelementptr inbounds %struct.inet6_cork, ptr %v6_cork, i32 0, i32 1
  %148 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %hop_limit, align 4
  %hop_limit38 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i524, i32 0, i32 4
  %150 = ptrtoint ptr %hop_limit38 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %hop_limit38, align 1
  %151 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %proto, align 1
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i524, i32 0, i32 3
  %153 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %nexthdr, align 2
  %saddr39 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i524, i32 0, i32 5
  %saddr40 = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1, i32 0, i32 0, i32 2
  %154 = call ptr @memcpy(ptr %saddr39, ptr %saddr40, i32 16)
  %daddr41 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i524, i32 0, i32 6
  %155 = ptrtoint ptr %final_dst to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %final_dst, align 4
  %157 = call ptr @memcpy(ptr %daddr41, ptr %156, i32 16)
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %158 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 6
  %160 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %priority, align 4
  %mark = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 12
  %161 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mark, align 8
  %163 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 13
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %162, ptr %163, align 4
  %transmit_time = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 11
  %165 = ptrtoint ptr %transmit_time to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %transmit_time, align 8
  %167 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %166, ptr %167, align 8
  %tobool.not.i533 = icmp eq ptr %11, null
  br i1 %tobool.not.i533, label %ip6_make_flowlabel.exit.dst_clone.exit_crit_edge, label %if.then.i534

ip6_make_flowlabel.exit.dst_clone.exit_crit_edge: ; preds = %ip6_make_flowlabel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_clone.exit

if.then.i534:                                     ; preds = %ip6_make_flowlabel.exit
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #11
  %169 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #11, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i534
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i534
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 231, i32 noundef 9, ptr noundef null) #11
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %ip6_make_flowlabel.exit.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 3
  %170 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %bf.load.i537 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i537, 4096
  %bf.shl.i = select i1 %tobool.not.i533, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i537, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %171 = ptrtoint ptr %11 to i32
  %172 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %171, ptr %172, align 8
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %11, i32 0, i32 6
  %174 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rt6i_idev, align 4
  %cmp46.not = icmp eq ptr %175, null
  br i1 %cmp46.not, label %dst_clone.exit.do.body164_crit_edge, label %do.body, !prof !107

dst_clone.exit.do.body164_crit_edge:              ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body164

do.body:                                          ; preds = %dst_clone.exit
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %175, i32 0, i32 33, i32 1
  %176 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ipv6, align 4
  %178 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %arrayidx = getelementptr i64, ptr %177, i32 5
  %179 = ptrtoint ptr %arrayidx to i32
  %180 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i538 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i538 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %cpu, align 4
  %arrayidx68 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %183
  %184 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx68, align 4
  %add69 = add i32 %185, %179
  %186 = inttoptr i32 %add69 to ptr
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %186, align 8
  %add70 = add i64 %188, 1
  store i64 %add70, ptr %186, align 8
  %189 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i539 = and i32 %189, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i539)
  %tobool81.not = icmp eq i32 %and.i.i539, 0
  br i1 %tobool81.not, label %if.then90, label %do.body.do.end93_crit_edge, !prof !107

do.body.do.end93_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end93

if.then90:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end93

do.end93:                                         ; preds = %if.then90, %do.body.do.end93_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %178) #11, !srcloc !118
  %190 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %191 = ptrtoint ptr %len1.i506 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len1.i506, align 4
  %conv118 = zext i32 %192 to i64
  %arrayidx125 = getelementptr i64, ptr %177, i32 6
  %193 = ptrtoint ptr %arrayidx125 to i32
  %194 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cpu, align 4
  %arrayidx129 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %195
  %196 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx129, align 4
  %add130 = add i32 %197, %193
  %198 = inttoptr i32 %add130 to ptr
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %198, align 8
  %add131 = add i64 %200, %conv118
  store i64 %add131, ptr %198, align 8
  %201 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i540 = and i32 %201, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i540)
  %tobool142.not = icmp eq i32 %and.i.i540, 0
  br i1 %tobool142.not, label %if.then151, label %do.end93.do.end154_crit_edge, !prof !107

do.end93.do.end154_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end154

if.then151:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end154

do.end154:                                        ; preds = %if.then151, %do.end93.do.end154_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %190) #11, !srcloc !118
  br label %do.body164

do.body164:                                       ; preds = %do.end154, %dst_clone.exit.do.body164_crit_edge
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 1
  %202 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ipv6_statistics, align 4
  %204 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %arrayidx191 = getelementptr i64, ptr %203, i32 5
  %205 = ptrtoint ptr %arrayidx191 to i32
  %206 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i541 = and i32 %206, -16384
  %207 = inttoptr i32 %and.i541 to ptr
  %cpu194 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %cpu194 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %cpu194, align 4
  %arrayidx195 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %209
  %210 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx195, align 4
  %add196 = add i32 %211, %205
  %212 = inttoptr i32 %add196 to ptr
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %212, align 8
  %add197 = add i64 %214, 1
  store i64 %add197, ptr %212, align 8
  %215 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i542 = and i32 %215, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i542)
  %tobool208.not = icmp eq i32 %and.i.i542, 0
  br i1 %tobool208.not, label %if.then217, label %do.body164.do.end220_crit_edge, !prof !107

do.body164.do.end220_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end220

if.then217:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end220

do.end220:                                        ; preds = %if.then217, %do.body164.do.end220_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %204) #11, !srcloc !118
  %216 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %217 = ptrtoint ptr %len1.i506 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %len1.i506, align 4
  %conv245 = zext i32 %218 to i64
  %arrayidx252 = getelementptr i64, ptr %203, i32 6
  %219 = ptrtoint ptr %arrayidx252 to i32
  %220 = ptrtoint ptr %cpu194 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %cpu194, align 4
  %arrayidx256 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %221
  %222 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx256, align 4
  %add257 = add i32 %223, %219
  %224 = inttoptr i32 %add257 to ptr
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %224, align 8
  %add258 = add i64 %226, %conv245
  store i64 %add258, ptr %224, align 8
  %227 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i543 = and i32 %227, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i543)
  %tobool269.not = icmp eq i32 %and.i.i543, 0
  br i1 %tobool269.not, label %if.then278, label %do.end220.do.end281_crit_edge, !prof !107

do.end220.do.end281_crit_edge:                    ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end281

if.then278:                                       ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end281

do.end281:                                        ; preds = %if.then278, %do.end220.do.end281_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %216) #11, !srcloc !118
  %228 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %229)
  %cmp291 = icmp eq i8 %229, 58
  br i1 %cmp291, label %if.then293, label %do.end281.if.end395_crit_edge

do.end281.if.end395_crit_edge:                    ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end395

if.then293:                                       ; preds = %do.end281
  %230 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %172, align 8
  %and.i544 = and i32 %231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i544)
  %tobool.not.i545 = icmp eq i32 %and.i544, 0
  br i1 %tobool.not.i545, label %if.then293.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then293.skb_dst.exit_crit_edge:                ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then293
  %call.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then293.skb_dst.exit_crit_edge
  %232 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %172, align 8
  %and25.i = and i32 %233, -2
  %234 = inttoptr i32 %and25.i to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %234, i32 0, i32 6
  %235 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp297.not = icmp eq ptr %236, null
  br i1 %cmp297.not, label %do.body335.critedge, label %if.then305, !prof !107

if.then305:                                       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  %icmpv6msgdev = getelementptr inbounds %struct.inet6_dev, ptr %236, i32 0, i32 33, i32 3
  %237 = ptrtoint ptr %icmpv6msgdev to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %icmpv6msgdev, align 4
  %239 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %head.i, align 8
  %241 = ptrtoint ptr %transport_header.i501 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %transport_header.i501, align 2
  %conv.i.i548 = zext i16 %242 to i32
  %add.ptr.i.i549 = getelementptr i8, ptr %240, i32 %conv.i.i548
  %243 = ptrtoint ptr %add.ptr.i.i549 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %add.ptr.i.i549, align 4
  %conv309 = zext i8 %244 to i32
  %add310 = or i32 %conv309, 256
  %arrayidx311 = getelementptr [512 x %struct.atomic_t], ptr %238, i32 0, i32 %add310
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx311, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx311, i32 1, i32 3, i32 1) #11
  %245 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx311, ptr %arrayidx311, i32 1, ptr elementtype(i32) %arrayidx311) #11, !srcloc !141
  %icmpv6msg_statistics.c = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 14
  %246 = ptrtoint ptr %icmpv6msg_statistics.c to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %icmpv6msg_statistics.c, align 4
  %248 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %head.i, align 8
  %250 = ptrtoint ptr %transport_header.i501 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %transport_header.i501, align 2
  %conv.i.i552 = zext i16 %251 to i32
  %add.ptr.i.i553 = getelementptr i8, ptr %249, i32 %conv.i.i552
  %252 = ptrtoint ptr %add.ptr.i.i553 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %add.ptr.i.i553, align 4
  %conv317.c = zext i8 %253 to i32
  %add318.c = or i32 %conv317.c, 256
  %arrayidx319.c = getelementptr [512 x %struct.atomic_t], ptr %247, i32 0, i32 %add318.c
  %call.i.i474 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx319.c, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx319.c, i32 1, i32 3, i32 1) #11
  %254 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx319.c, ptr %arrayidx319.c, i32 1, ptr elementtype(i32) %arrayidx319.c) #11, !srcloc !141
  %icmpv6dev = getelementptr inbounds %struct.inet6_dev, ptr %236, i32 0, i32 33, i32 2
  %255 = ptrtoint ptr %icmpv6dev to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %icmpv6dev, align 4
  %arrayidx332 = getelementptr [6 x %struct.atomic_t], ptr %256, i32 0, i32 3
  %call.i.i475 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx332, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx332, i32 1, i32 3, i32 1) #11
  %257 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx332, ptr %arrayidx332, i32 1, ptr elementtype(i32) %arrayidx332) #11, !srcloc !141
  br label %do.body335

do.body335.critedge:                              ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  %icmpv6msg_statistics.c469 = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 14
  %258 = ptrtoint ptr %icmpv6msg_statistics.c469 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %icmpv6msg_statistics.c469, align 4
  %260 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %head.i, align 8
  %262 = ptrtoint ptr %transport_header.i501 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %transport_header.i501, align 2
  %conv.i.i556 = zext i16 %263 to i32
  %add.ptr.i.i557 = getelementptr i8, ptr %261, i32 %conv.i.i556
  %264 = ptrtoint ptr %add.ptr.i.i557 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %add.ptr.i.i557, align 4
  %conv317.c471 = zext i8 %265 to i32
  %add318.c472 = or i32 %conv317.c471, 256
  %arrayidx319.c473 = getelementptr [512 x %struct.atomic_t], ptr %259, i32 0, i32 %add318.c472
  %call.i.i476 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx319.c473, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %arrayidx319.c473, i32 1, i32 3, i32 1) #11
  %266 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx319.c473, ptr %arrayidx319.c473, i32 1, ptr elementtype(i32) %arrayidx319.c473) #11, !srcloc !141
  br label %do.body335

do.body335:                                       ; preds = %do.body335.critedge, %if.then305
  %267 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %icmpv6_statistics = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 30, i32 13
  %268 = ptrtoint ptr %icmpv6_statistics to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %icmpv6_statistics, align 4
  %arrayidx359 = getelementptr [6 x i32], ptr %269, i32 0, i32 3
  %270 = ptrtoint ptr %arrayidx359 to i32
  %271 = ptrtoint ptr %cpu194 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %cpu194, align 4
  %arrayidx363 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %272
  %273 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx363, align 4
  %add364 = add i32 %274, %270
  %275 = inttoptr i32 %add364 to ptr
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %275, align 4
  %add365 = add i32 %277, 1
  store i32 %add365, ptr %275, align 4
  %278 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i558 = and i32 %278, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i558)
  %tobool376.not = icmp eq i32 %and.i.i558, 0
  br i1 %tobool376.not, label %if.then385, label %do.body335.do.end388_crit_edge, !prof !107

do.body335.do.end388_crit_edge:                   ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end388

if.then385:                                       ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end388

do.end388:                                        ; preds = %if.then385, %do.body335.do.end388_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %267) #11, !srcloc !118
  br label %if.end395

if.end395:                                        ; preds = %do.end388, %do.end281.if.end395_crit_edge
  call fastcc void @ip6_cork_release(ptr noundef %cork, ptr noundef %v6_cork)
  br label %out

out:                                              ; preds = %if.end395, %inet6_sk.exit.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %final_dst) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final_dst_buf) #11
  ret ptr %spec.store.select.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip6_cork_release(ptr nocapture noundef %cork, ptr nocapture noundef %v6_cork) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v6_cork, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dst0opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dst0opt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst0opt, align 4
  tail call void @kfree(ptr noundef %3) #11
  %4 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v6_cork, align 4
  %dst1opt = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %dst1opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst1opt, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v6_cork, align 4
  %hopopt = getelementptr inbounds %struct.ipv6_txoptions, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %hopopt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hopopt, align 4
  tail call void @kfree(ptr noundef %11) #11
  %12 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v6_cork, align 4
  %srcrt = getelementptr inbounds %struct.ipv6_txoptions, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %srcrt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %srcrt, align 4
  tail call void @kfree(ptr noundef %15) #11
  %16 = ptrtoint ptr %v6_cork to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v6_cork, align 4
  tail call void @kfree(ptr noundef %17) #11
  %18 = ptrtoint ptr %v6_cork to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %v6_cork, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dst = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dst_release(ptr noundef nonnull %20) #11
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dst, align 4
  %22 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cork, align 8
  %and = and i32 %23, -3
  store i32 %and, ptr %cork, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %fl = getelementptr inbounds %struct.inet_cork_full, ptr %cork, i32 0, i32 1
  %24 = call ptr @memset(ptr %fl, i32 0, i32 88)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_send_skb(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %and25.i = and i32 %9, -2
  %10 = inttoptr i32 %and25.i to ptr
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %call2 = tail call i32 @ip6_local_out(ptr noundef %4, ptr noundef %12, ptr noundef %skb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %skb_dst.exit.if.end47_crit_edge, label %if.then

skb_dst.exit.if.end47_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp4.not = icmp eq i32 %call2, 2
  %cond = select i1 %cmp4.not, i32 0, i32 -105
  %err.0 = select i1 %cmp, i32 %cond, i32 %call2
  br i1 %cmp4.not, label %if.then.if.end47_crit_edge, label %if.then6

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then6:                                         ; preds = %if.then
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rt6i_idev, align 4
  %cmp7.not = icmp eq ptr %14, null
  br i1 %cmp7.not, label %if.then6.do.body23_crit_edge, label %do.body, !prof !107

if.then6.do.body23_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body23

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 1
  %15 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipv6, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i61 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i61 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add = add i32 %23, %17
  %24 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %24, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx15 = getelementptr [37 x i64], ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx15, align 8
  %add16 = add i64 %26, 1
  store i64 %add16, ptr %arrayidx15, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %24, i32 0, i32 1, i32 0, i32 1
  %27 = tail call ptr @llvm.returnaddress(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %29 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body23

do.body23:                                        ; preds = %do.body, %if.then6.do.body23_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 1
  %31 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipv6_statistics, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i62 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i62 to ptr
  %cpu34 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu34, align 4
  %arrayidx35 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx35, align 4
  %add36 = add i32 %39, %33
  %40 = inttoptr i32 %add36 to ptr
  %syncp37 = getelementptr inbounds %struct.ipstats_mib, ptr %40, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp37)
  %arrayidx39 = getelementptr [37 x i64], ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx39, align 8
  %add40 = add i64 %42, 1
  store i64 %add40, ptr %arrayidx39, align 8
  %dep_map.i.i63 = getelementptr inbounds %struct.ipstats_mib, ptr %40, i32 0, i32 1, i32 0, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #11
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i63, i32 noundef %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %45 = ptrtoint ptr %syncp37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp37, align 4
  %inc.i.i.i64 = add i32 %46, 1
  store i32 %inc.i.i.i64, ptr %syncp37, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end47

if.end47:                                         ; preds = %do.body23, %if.then.if.end47_crit_edge, %skb_dst.exit.if.end47_crit_edge
  %err.1 = phi i32 [ %err.0, %do.body23 ], [ 0, %if.then.if.end47_crit_edge ], [ 0, %skb_dst.exit.if.end47_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip6_push_pending_frames(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i = zext i8 %1 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %entry.ip6_finish_skb.exit_crit_edge, label %cond.true.i.i

entry.ip6_finish_skb.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip6_finish_skb.exit

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i.i, align 8
  br label %ip6_finish_skb.exit

ip6_finish_skb.exit:                              ; preds = %cond.true.i.i, %entry.ip6_finish_skb.exit_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.true.i.i ], [ null, %entry.ip6_finish_skb.exit_crit_edge ]
  %cork.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %cork2.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 21
  %call3.i = tail call ptr @__ip6_make_skb(ptr noundef %sk, ptr noundef %sk_write_queue.i, ptr noundef %cork.i, ptr noundef %cork2.i) #11
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %ip6_finish_skb.exit.cleanup_crit_edge, label %if.end

ip6_finish_skb.exit.cleanup_crit_edge:            ; preds = %ip6_finish_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ip6_finish_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @ip6_send_skb(ptr noundef nonnull %call3.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip6_finish_skb.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %ip6_finish_skb.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip6_flush_pending_frames(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  %cork = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %cork2 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 21
  tail call fastcc void @__ip6_flush_pending_frames(ptr noundef %sk, ptr noundef %sk_write_queue, ptr noundef %cork, ptr noundef %cork2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ip6_flush_pending_frames(ptr nocapture noundef readonly %sk, ptr noundef %queue, ptr nocapture noundef %cork, ptr nocapture noundef %v6_cork) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %prev.i.i = getelementptr inbounds %struct.anon.90, ptr %queue, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i68 = icmp eq ptr %1, %queue
  %tobool.not.i6769 = icmp eq ptr %1, null
  %tobool.not.i70 = or i1 %cmp.i.i68, %tobool.not.i6769
  br i1 %tobool.not.i70, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %56, %if.end43.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i51 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i51, label %while.body.skb_dst.exit_crit_edge, label %land.lhs.true.i

while.body.skb_dst.exit_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !107

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %11, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %while.body.skb_dst.exit_crit_edge
  %15 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %13, %while.body.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %tobool.not = icmp ult i32 %15, 2
  br i1 %tobool.not, label %skb_dst.exit.if.end43_crit_edge, label %if.then

skb_dst.exit.if.end43_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then:                                          ; preds = %skb_dst.exit
  %and.i52 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp eq i32 %and.i52, 0
  br i1 %tobool.not.i53, label %if.then.skb_dst.exit62_crit_edge, label %land.lhs.true.i56

if.then.skb_dst.exit62_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit62

land.lhs.true.i56:                                ; preds = %if.then
  %call.i54 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool1.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool1.not.i55, label %land.rhs.i59, label %land.lhs.true.i56.skb_dst.exit62_crit_edge

land.lhs.true.i56.skb_dst.exit62_crit_edge:       ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit62

land.rhs.i59:                                     ; preds = %land.lhs.true.i56
  %call2.i57 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i57)
  %tobool3.not.i58 = icmp eq i32 %call2.i57, 0
  br i1 %tobool3.not.i58, label %do.end.i60, label %land.rhs.i59.skb_dst.exit62_crit_edge, !prof !107

land.rhs.i59.skb_dst.exit62_crit_edge:            ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit62

do.end.i60:                                       ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit62

skb_dst.exit62:                                   ; preds = %do.end.i60, %land.rhs.i59.skb_dst.exit62_crit_edge, %land.lhs.true.i56.skb_dst.exit62_crit_edge, %if.then.skb_dst.exit62_crit_edge
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 8
  %and25.i61 = and i32 %17, -2
  %18 = inttoptr i32 %and25.i61 to ptr
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rt6i_idev.i, align 4
  %cmp4.not = icmp eq ptr %20, null
  br i1 %cmp4.not, label %skb_dst.exit62.do.body19_crit_edge, label %do.body, !prof !107

skb_dst.exit62.do.body19_crit_edge:               ; preds = %skb_dst.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body:                                          ; preds = %skb_dst.exit62
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %20, i32 0, i32 33, i32 1
  %21 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ipv6, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i63 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i63 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %add = add i32 %29, %23
  %30 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %30, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx12 = getelementptr [37 x i64], ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx12, align 8
  %add13 = add i64 %32, 1
  store i64 %add13, ptr %arrayidx12, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %30, i32 0, i32 1, i32 0, i32 1
  %33 = tail call ptr @llvm.returnaddress(i32 0) #11
  %34 = ptrtoint ptr %33 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %35 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %36, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body19

do.body19:                                        ; preds = %do.body, %skb_dst.exit62.do.body19_crit_edge
  tail call fastcc void @local_bh_disable()
  %37 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skc_net.i, align 4
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %38, i32 0, i32 30, i32 1
  %39 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ipv6_statistics, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i64 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i64 to ptr
  %cpu31 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu31, align 4
  %arrayidx32 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %47, %41
  %48 = inttoptr i32 %add33 to ptr
  %syncp34 = getelementptr inbounds %struct.ipstats_mib, ptr %48, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp34)
  %arrayidx36 = getelementptr [37 x i64], ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx36, align 8
  %add37 = add i64 %50, 1
  store i64 %add37, ptr %arrayidx36, align 8
  %dep_map.i.i65 = getelementptr inbounds %struct.ipstats_mib, ptr %48, i32 0, i32 1, i32 0, i32 1
  %51 = tail call ptr @llvm.returnaddress(i32 0) #11
  %52 = ptrtoint ptr %51 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i65, i32 noundef %52) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %53 = ptrtoint ptr %syncp34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp34, align 4
  %inc.i.i.i66 = add i32 %54, 1
  store i32 %inc.i.i.i66, ptr %syncp34, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end43

if.end43:                                         ; preds = %do.body19, %skb_dst.exit.if.end43_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #11
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %56, %queue
  %tobool.not.i67 = icmp eq ptr %56, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i67
  br i1 %tobool.not.i, label %if.end43.while.end_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @ip6_cork_release(ptr noundef %cork, ptr noundef %v6_cork)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip6_make_skb(ptr noundef %sk, ptr nocapture noundef readonly %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, ptr nocapture noundef %ipc6, ptr noundef %fl6, ptr noundef %rt, i32 noundef %flags, ptr noundef %cork) local_unnamed_addr #0 align 64 {
entry:
  %v6_cork = alloca %struct.inet6_cork, align 8
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v6_cork) #11
  %0 = ptrtoint ptr %v6_cork to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v6_cork, align 8, !annotation !119
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #11
  %1 = getelementptr inbounds i8, ptr %queue, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  %opt = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 5
  %3 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opt, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %opt_flen = getelementptr inbounds %struct.ipv6_txoptions, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %opt_flen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opt_flen, align 4
  %conv = zext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %queue, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i, align 4
  %10 = ptrtoint ptr %cork to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cork, align 8
  %addr = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %addr, align 4
  %opt6 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 2
  %12 = ptrtoint ptr %opt6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %opt6, align 8
  %dst = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dst, align 4
  %14 = ptrtoint ptr %v6_cork to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %v6_cork, align 8
  %call = call fastcc i32 @ip6_setup_cork(ptr noundef %sk, ptr noundef %cork, ptr noundef nonnull %v6_cork, ptr noundef %ipc6, ptr noundef %rt, ptr noundef %fl6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ip6_cork_release(ptr noundef %cork, ptr noundef nonnull %v6_cork)
  %15 = inttoptr i32 %call to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %dontfrag = getelementptr inbounds %struct.ipcm6_cookie, ptr %ipc6, i32 0, i32 4
  %16 = ptrtoint ptr %dontfrag to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dontfrag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp slt i8 %17, 0
  br i1 %cmp, label %if.then15, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then15.inet6_sk.exit_crit_edge, label %cond.true.i

if.then15.inet6_sk.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %20 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.then15.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %21, %cond.true.i ], [ null, %if.then15.inet6_sk.exit_crit_edge ]
  %dontfrag17 = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 10
  %22 = ptrtoint ptr %dontfrag17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %dontfrag17, align 2
  %23 = trunc i16 %bf.load to i8
  %24 = lshr i8 %23, 5
  %conv18 = and i8 %24, 1
  %25 = ptrtoint ptr %dontfrag to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv18, ptr %dontfrag, align 2
  br label %if.end20

if.end20:                                         ; preds = %inet6_sk.exit, %if.end12.if.end20_crit_edge
  %26 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_frag = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 180
  %add = add i32 %cond, %length
  %add23 = add i32 %cond, %transhdrlen
  %call24 = call fastcc i32 @__ip6_append_data(ptr noundef %sk, ptr noundef %fl6, ptr noundef nonnull %queue, ptr noundef %cork, ptr noundef nonnull %v6_cork, ptr noundef %task_frag, ptr noundef %getfrag, ptr noundef %from, i32 noundef %add, i32 noundef %add23, i32 noundef %flags, ptr noundef %ipc6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @__ip6_flush_pending_frames(ptr noundef %sk, ptr noundef nonnull %queue, ptr noundef %cork, ptr noundef nonnull %v6_cork)
  %30 = inttoptr i32 %call24 to ptr
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call ptr @__ip6_make_skb(ptr noundef %sk, ptr noundef nonnull %queue, ptr noundef %cork, ptr noundef nonnull %v6_cork)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then10, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then10 ], [ %30, %if.then26 ], [ %call29, %if.end28 ], [ null, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v6_cork) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %4 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %rcu_read_lock.exit
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b1 = load i1, ptr @nf_hook.__warned.9, align 1
  br i1 %.b1, label %land.lhs.true29.sw.epilog_crit_edge, label %if.then31

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nf_hook.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 232, ptr noundef nonnull @.str.8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #11
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #11
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !122
  %13 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_skb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip6_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
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
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %skb_dst.exit
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 8
  %10 = or i16 %9, 4
  store i16 %10, ptr %flags, align 8
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_output.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !107

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.then.dst_output.exit_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %12, -2
  %13 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %15(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %call3 = tail call fastcc i32 @ip6_skb_dst_mtu(ptr noundef %skb)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not = icmp eq i16 %19, 0
  br i1 %tobool.i.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %call6 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %call3) #11
  br i1 %call6, label %land.lhs.true.if.end9_crit_edge, label %if.then7

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %call.i54 = tail call i64 @netif_skb_features(ptr noundef %skb) #11
  %and.i55 = and i64 %call.i54, -34359672833
  %call.i.i56 = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and.i55, i1 noundef zeroext true) #11
  %tobool.not.i.i57 = icmp eq ptr %call.i.i56, null
  %cmp.i.i = icmp ugt ptr %call.i.i56, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i57, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %cond.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cond.end.i:                                       ; preds = %if.then7
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.i
  %nskb.03.sink.i = phi ptr [ %call.i.i56, %cond.end.i ], [ %21, %for.body.i.for.body.i_crit_edge ]
  %ret.04.i = phi i32 [ 0, %cond.end.i ], [ %ret.1.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %nskb.03.sink.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nskb.03.sink.i, align 8
  store ptr null, ptr %nskb.03.sink.i, align 8
  %call4.i = tail call i32 @ip6_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %nskb.03.sink.i, ptr noundef nonnull @ip6_finish_output2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp ne i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.04.i)
  %cmp.i = icmp eq i32 %ret.04.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 %cmp.i, i1 false
  %ret.1.i = select i1 %or.cond.i, i32 %call4.i, i32 %ret.04.i
  %tobool8.not.i = icmp eq ptr %21, null
  br i1 %tobool8.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call3)
  %cmp = icmp ugt i32 %23, %call3
  br i1 %cmp, label %land.lhs.true11, label %if.end9.lor.lhs.false_crit_edge

if.end9.lor.lhs.false_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true11:                                  ; preds = %if.end9
  %24 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i, align 4
  %gso_size.i59 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %gso_size.i59 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_size.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i60.not = icmp eq i16 %27, 0
  br i1 %tobool.i60.not, label %land.lhs.true11.if.then29_crit_edge, label %land.lhs.true11.lor.lhs.false_crit_edge

land.lhs.true11.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true11.if.then29_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

lor.lhs.false:                                    ; preds = %land.lhs.true11.lor.lhs.false_crit_edge, %if.end9.lor.lhs.false_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %0, align 8
  %and.i61 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %lor.lhs.false.skb_dst.exit71_crit_edge, label %land.lhs.true.i65

lor.lhs.false.skb_dst.exit71_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit71

land.lhs.true.i65:                                ; preds = %lor.lhs.false
  %call.i63 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool1.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool1.not.i64, label %land.rhs.i68, label %land.lhs.true.i65.skb_dst.exit71_crit_edge

land.lhs.true.i65.skb_dst.exit71_crit_edge:       ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit71

land.rhs.i68:                                     ; preds = %land.lhs.true.i65
  %call2.i66 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i66)
  %tobool3.not.i67 = icmp eq i32 %call2.i66, 0
  br i1 %tobool3.not.i67, label %do.end.i69, label %land.rhs.i68.skb_dst.exit71_crit_edge, !prof !107

land.rhs.i68.skb_dst.exit71_crit_edge:            ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit71

do.end.i69:                                       ; preds = %land.rhs.i68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit71

skb_dst.exit71:                                   ; preds = %do.end.i69, %land.rhs.i68.skb_dst.exit71_crit_edge, %land.lhs.true.i65.skb_dst.exit71_crit_edge, %lor.lhs.false.skb_dst.exit71_crit_edge
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 8
  %and25.i70 = and i32 %31, -2
  %32 = inttoptr i32 %and25.i70 to ptr
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %35, i32 11
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i72 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i72)
  %tobool15.not = icmp eq i32 %and.i.i72, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %skb_dst.exit71.if.then29_crit_edge

skb_dst.exit71.if.then29_crit_edge:               ; preds = %skb_dst.exit71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

lor.lhs.false16:                                  ; preds = %skb_dst.exit71
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %frag_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool20.not = icmp eq i16 %39, 0
  br i1 %tobool20.not, label %lor.lhs.false16.if.else_crit_edge, label %land.lhs.true21

lor.lhs.false16.if.else_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true21:                                  ; preds = %lor.lhs.false16
  %conv19 = zext i16 %39 to i32
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv19)
  %cmp27 = icmp ugt i32 %41, %conv19
  br i1 %cmp27, label %land.lhs.true21.if.then29_crit_edge, label %land.lhs.true21.if.else_crit_edge

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true21.if.then29_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true21.if.then29_crit_edge, %skb_dst.exit71.if.then29_crit_edge, %land.lhs.true11.if.then29_crit_edge
  %call30 = tail call i32 @ip6_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull @ip6_finish_output2)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true21.if.else_crit_edge, %lor.lhs.false16.if.else_crit_edge
  %call31 = tail call i32 @ip6_finish_output2(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then29, %for.body.i.cleanup_crit_edge, %if.then.i, %dst_output.exit
  %retval.0 = phi i32 [ %call1.i, %dst_output.exit ], [ %call30, %if.then29 ], [ %call31, %if.else ], [ -12, %if.then.i ], [ %ret.1.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_finish_output2(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
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
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt6i_idev.i, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %11 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %needed_headroom, align 8
  %conv3 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv3, %conv
  %and = and i32 %add, 131056
  %add4 = add nuw nsw i32 %and, 16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %sub.ptr.sub.i)
  %cmp = icmp ugt i32 %add4, %sub.ptr.sub.i
  br i1 %cmp, label %land.lhs.true, label %skb_dst.exit.if.end57_crit_edge, !prof !107

skb_dst.exit.if.end57_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.lhs.true:                                    ; preds = %skb_dst.exit
  %header_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 49
  %18 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %header_ops, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %land.lhs.true.if.end57_crit_edge, label %if.then

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then:                                          ; preds = %land.lhs.true
  %call9 = tail call ptr @skb_expand_head(ptr noundef %skb, i32 noundef %add4) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.then.if.end57_crit_edge

if.then.if.end57_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then11:                                        ; preds = %if.then
  %cmp12.not = icmp eq ptr %9, null
  br i1 %cmp12.not, label %if.then11.do.body33_crit_edge, label %do.body, !prof !107

if.then11.do.body33_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %20 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipv6, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i596 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i596 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add25 = add i32 %28, %22
  %29 = inttoptr i32 %add25 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx26 = getelementptr [37 x i64], ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx26, align 8
  %add27 = add i64 %31, 1
  store i64 %add27, ptr %arrayidx26, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %29, i32 0, i32 1, i32 0, i32 1
  %32 = tail call ptr @llvm.returnaddress(i32 0) #11
  %33 = ptrtoint ptr %32 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %33) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %34 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body33

do.body33:                                        ; preds = %do.body, %if.then11.do.body33_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %36 = ptrtoint ptr %ipv6_statistics to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipv6_statistics, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i597 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i597 to ptr
  %cpu44 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu44, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %44, %38
  %45 = inttoptr i32 %add46 to ptr
  %syncp47 = getelementptr inbounds %struct.ipstats_mib, ptr %45, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp47)
  %arrayidx49 = getelementptr [37 x i64], ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx49, align 8
  %add50 = add i64 %47, 1
  store i64 %add50, ptr %arrayidx49, align 8
  %dep_map.i.i598 = getelementptr inbounds %struct.ipstats_mib, ptr %45, i32 0, i32 1, i32 0, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #11
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i598, i32 noundef %49) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %50 = ptrtoint ptr %syncp47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %syncp47, align 4
  %inc.i.i.i599 = add i32 %51, 1
  store i32 %inc.i.i.i599, ptr %syncp47, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup518

if.end57:                                         ; preds = %if.then.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %skb_dst.exit.if.end57_crit_edge
  %skb.addr.0 = phi ptr [ %call9, %if.then.if.end57_crit_edge ], [ %skb, %land.lhs.true.if.end57_crit_edge ], [ %skb, %skb_dst.exit.if.end57_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %54 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %55 to i32
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %conv.i.i
  %daddr59 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %daddr59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %daddr59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %57)
  %cmp.i = icmp ugt i32 %57, -16777217
  br i1 %cmp.i, label %if.then61, label %if.end57.if.end424_crit_edge

if.end57.if.end424_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

if.then61:                                        ; preds = %if.end57
  %flags = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %and62 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %if.then61.if.end149_crit_edge

if.then61.if.end149_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

land.lhs.true64:                                  ; preds = %if.then61
  %call65 = tail call zeroext i1 @sk_mc_loop(ptr noundef %sk) #11
  br i1 %call65, label %land.lhs.true67, label %land.lhs.true64.if.end149_crit_edge

land.lhs.true64.if.end149_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %call68 = tail call zeroext i1 @mroute6_is_socket(ptr noundef %net, ptr noundef %skb.addr.0) #11
  br i1 %call68, label %land.lhs.true70, label %land.lhs.true67.lor.lhs.false_crit_edge

land.lhs.true67.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %flags71 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 16
  %60 = ptrtoint ptr %flags71 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags71, align 8
  %62 = and i16 %61, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool74.not = icmp eq i16 %62, 0
  br i1 %tobool74.not, label %land.lhs.true70.if.then77_crit_edge, label %land.lhs.true70.lor.lhs.false_crit_edge

land.lhs.true70.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true70.if.then77_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77

lor.lhs.false:                                    ; preds = %land.lhs.true70.lor.lhs.false_crit_edge, %land.lhs.true67.lor.lhs.false_crit_edge
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call75 = tail call zeroext i1 @ipv6_chk_mcast_addr(ptr noundef %7, ptr noundef %daddr59, ptr noundef %saddr) #11
  br i1 %call75, label %lor.lhs.false.if.then77_crit_edge, label %lor.lhs.false.if.end149_crit_edge

lor.lhs.false.if.end149_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %land.lhs.true70.if.then77_crit_edge
  %call78 = tail call ptr @skb_clone(ptr noundef %skb.addr.0, i32 noundef 2592) #11
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.then77.if.end82_crit_edge, label %if.then80

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then80:                                        ; preds = %if.then77
  %63 = getelementptr inbounds %struct.anon.83, ptr %call78, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %call.i600 = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %call78, ptr noundef null, ptr noundef %65, ptr noundef nonnull @dev_loopback_xmit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i600)
  %cmp.i601 = icmp eq i32 %call.i600, 1
  br i1 %cmp.i601, label %if.then.i, label %if.then80.if.end82_crit_edge

if.then80.if.end82_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then.i:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 @dev_loopback_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %call78) #11, !callees !120
  br label %if.end82

if.end82:                                         ; preds = %if.then.i, %if.then80.if.end82_crit_edge, %if.then77.if.end82_crit_edge
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hop_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp84 = icmp eq i8 %67, 0
  br i1 %cmp84, label %if.then86, label %if.end82.if.end149_crit_edge

if.end82.if.end149_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

if.then86:                                        ; preds = %if.end82
  %cmp88.not = icmp eq ptr %9, null
  br i1 %cmp88.not, label %if.then86.do.body123_crit_edge, label %do.body97, !prof !107

if.then86.do.body123_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body123

do.body97:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6107 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %68 = ptrtoint ptr %ipv6107 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ipv6107, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i602 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i602 to ptr
  %cpu110 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %cpu110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu110, align 4
  %arrayidx111 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx111, align 4
  %add112 = add i32 %76, %70
  %77 = inttoptr i32 %add112 to ptr
  %syncp113 = getelementptr inbounds %struct.ipstats_mib, ptr %77, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp113)
  %arrayidx115 = getelementptr [37 x i64], ptr %77, i32 0, i32 14
  %78 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx115, align 8
  %add116 = add i64 %79, 1
  store i64 %add116, ptr %arrayidx115, align 8
  %dep_map.i.i603 = getelementptr inbounds %struct.ipstats_mib, ptr %77, i32 0, i32 1, i32 0, i32 1
  %80 = tail call ptr @llvm.returnaddress(i32 0) #11
  %81 = ptrtoint ptr %80 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i603, i32 noundef %81) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %82 = ptrtoint ptr %syncp113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %syncp113, align 4
  %inc.i.i.i604 = add i32 %83, 1
  store i32 %inc.i.i.i604, ptr %syncp113, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body123

do.body123:                                       ; preds = %do.body97, %if.then86.do.body123_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics133 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %84 = ptrtoint ptr %ipv6_statistics133 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ipv6_statistics133, align 4
  %86 = ptrtoint ptr %85 to i32
  %87 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i605 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i605 to ptr
  %cpu136 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %cpu136 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cpu136, align 4
  %arrayidx137 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx137, align 4
  %add138 = add i32 %92, %86
  %93 = inttoptr i32 %add138 to ptr
  %syncp139 = getelementptr inbounds %struct.ipstats_mib, ptr %93, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp139)
  %arrayidx141 = getelementptr [37 x i64], ptr %93, i32 0, i32 14
  %94 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx141, align 8
  %add142 = add i64 %95, 1
  store i64 %add142, ptr %arrayidx141, align 8
  %dep_map.i.i606 = getelementptr inbounds %struct.ipstats_mib, ptr %93, i32 0, i32 1, i32 0, i32 1
  %96 = tail call ptr @llvm.returnaddress(i32 0) #11
  %97 = ptrtoint ptr %96 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i606, i32 noundef %97) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %98 = ptrtoint ptr %syncp139 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %syncp139, align 4
  %inc.i.i.i607 = add i32 %99, 1
  store i32 %inc.i.i.i607, ptr %syncp139, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #11
  br label %cleanup518

if.end149:                                        ; preds = %if.end82.if.end149_crit_edge, %lor.lhs.false.if.end149_crit_edge, %land.lhs.true64.if.end149_crit_edge, %if.then61.if.end149_crit_edge
  %cmp151.not = icmp eq ptr %9, null
  br i1 %cmp151.not, label %if.end149.do.body285_crit_edge, label %do.body160, !prof !107

if.end149.do.body285_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body285

do.body160:                                       ; preds = %if.end149
  %ipv6163 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %100 = ptrtoint ptr %ipv6163 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ipv6163, align 4
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %arrayidx186 = getelementptr i64, ptr %101, i32 24
  %103 = ptrtoint ptr %arrayidx186 to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i608 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i608 to ptr
  %cpu189 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %cpu189 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu189, align 4
  %arrayidx190 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx190, align 4
  %add191 = add i32 %109, %103
  %110 = inttoptr i32 %add191 to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %110, align 8
  %add192 = add i64 %112, 1
  store i64 %add192, ptr %110, align 8
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool203.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool203.not, label %if.then212, label %do.body160.do.end215_crit_edge, !prof !107

do.body160.do.end215_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end215

if.then212:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end215

do.end215:                                        ; preds = %if.then212, %do.body160.do.end215_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #11, !srcloc !118
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  %conv239 = zext i32 %116 to i64
  %arrayidx246 = getelementptr i64, ptr %101, i32 28
  %117 = ptrtoint ptr %arrayidx246 to i32
  %118 = ptrtoint ptr %cpu189 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu189, align 4
  %arrayidx250 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx250, align 4
  %add251 = add i32 %121, %117
  %122 = inttoptr i32 %add251 to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %122, align 8
  %add252 = add i64 %124, %conv239
  store i64 %add252, ptr %122, align 8
  %125 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i609 = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i609)
  %tobool263.not = icmp eq i32 %and.i.i609, 0
  br i1 %tobool263.not, label %if.then272, label %do.end215.do.end275_crit_edge, !prof !107

do.end215.do.end275_crit_edge:                    ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end275

if.then272:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end275

do.end275:                                        ; preds = %if.then272, %do.end215.do.end275_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %114) #11, !srcloc !118
  br label %do.body285

do.body285:                                       ; preds = %do.end275, %if.end149.do.body285_crit_edge
  %ipv6_statistics288 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %126 = ptrtoint ptr %ipv6_statistics288 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ipv6_statistics288, align 4
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %arrayidx314 = getelementptr i64, ptr %127, i32 24
  %129 = ptrtoint ptr %arrayidx314 to i32
  %130 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i610 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i610 to ptr
  %cpu317 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %cpu317 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu317, align 4
  %arrayidx318 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx318, align 4
  %add319 = add i32 %135, %129
  %136 = inttoptr i32 %add319 to ptr
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %136, align 8
  %add320 = add i64 %138, 1
  store i64 %add320, ptr %136, align 8
  %139 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i611 = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i611)
  %tobool331.not = icmp eq i32 %and.i.i611, 0
  br i1 %tobool331.not, label %if.then340, label %do.body285.do.end343_crit_edge, !prof !107

do.body285.do.end343_crit_edge:                   ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end343

if.then340:                                       ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end343

do.end343:                                        ; preds = %if.then340, %do.body285.do.end343_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %128) #11, !srcloc !118
  %140 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %len367 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %141 = ptrtoint ptr %len367 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len367, align 4
  %conv368 = zext i32 %142 to i64
  %arrayidx375 = getelementptr i64, ptr %127, i32 28
  %143 = ptrtoint ptr %arrayidx375 to i32
  %144 = ptrtoint ptr %cpu317 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cpu317, align 4
  %arrayidx379 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %145
  %146 = ptrtoint ptr %arrayidx379 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx379, align 4
  %add380 = add i32 %147, %143
  %148 = inttoptr i32 %add380 to ptr
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %148, align 8
  %add381 = add i64 %150, %conv368
  store i64 %add381, ptr %148, align 8
  %151 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i612 = and i32 %151, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i612)
  %tobool392.not = icmp eq i32 %and.i.i612, 0
  br i1 %tobool392.not, label %if.then401, label %do.end343.do.end404_crit_edge, !prof !107

do.end343.do.end404_crit_edge:                    ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end404

if.then401:                                       ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end404

do.end404:                                        ; preds = %if.then401, %do.end343.do.end404_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %140) #11, !srcloc !118
  %arrayidx413 = getelementptr [16 x i8], ptr %daddr59, i32 0, i32 1
  %152 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx413, align 1
  %154 = and i8 %153, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %cmp416 = icmp eq i8 %154, 0
  br i1 %cmp416, label %land.lhs.true418, label %do.end404.if.end424_crit_edge

do.end404.if.end424_crit_edge:                    ; preds = %do.end404
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

land.lhs.true418:                                 ; preds = %do.end404
  %155 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags, align 8
  %and420 = and i32 %156, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420)
  %tobool421.not = icmp eq i32 %and420, 0
  br i1 %tobool421.not, label %if.then422, label %land.lhs.true418.if.end424_crit_edge

land.lhs.true418.if.end424_crit_edge:             ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end424

if.then422:                                       ; preds = %land.lhs.true418
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #11
  br label %cleanup518

if.end424:                                        ; preds = %land.lhs.true418.if.end424_crit_edge, %do.end404.if.end424_crit_edge, %if.end57.if.end424_crit_edge
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %157 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %lwtstate, align 4
  %tobool.not.i613 = icmp eq ptr %158, null
  br i1 %tobool.not.i613, label %if.end424.if.end438_crit_edge, label %land.lhs.true.i615

if.end424.if.end438_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end438

land.lhs.true.i615:                               ; preds = %if.end424
  %flags.i = getelementptr inbounds %struct.lwtunnel_state, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %flags.i, align 2
  %161 = and i16 %160, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool1.not.i614 = icmp eq i16 %161, 0
  br i1 %tobool1.not.i614, label %land.lhs.true.i615.if.end438_crit_edge, label %if.then426

land.lhs.true.i615.if.end438_crit_edge:           ; preds = %land.lhs.true.i615
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end438

if.then426:                                       ; preds = %land.lhs.true.i615
  %call427 = tail call i32 @lwtunnel_xmit(ptr noundef %skb.addr.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call427)
  %162 = icmp slt i32 %call427, 1
  br i1 %162, label %if.then426.cleanup518_crit_edge, label %if.then426.if.end438_crit_edge

if.then426.if.end438_crit_edge:                   ; preds = %if.then426
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end438

if.then426.cleanup518_crit_edge:                  ; preds = %if.then426
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup518

if.end438:                                        ; preds = %if.then426.if.end438_crit_edge, %land.lhs.true.i615.if.end438_crit_edge, %if.end424.if.end438_crit_edge
  tail call fastcc void @local_bh_disable() #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #11
  %call.i616 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i616, label %if.end438.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i619

if.end438.rcu_read_lock_bh.exit_crit_edge:        ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

land.lhs.true.i619:                               ; preds = %if.end438
  %call1.i617 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i617)
  %tobool.not.i618 = icmp eq i32 %call1.i617, 0
  br i1 %tobool.not.i618, label %land.lhs.true.i619.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i619.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true.i619
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i619
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i620

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

if.then.i620:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i620, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i619.rcu_read_lock_bh.exit_crit_edge, %if.end438.rcu_read_lock_bh.exit_crit_edge
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 7
  %163 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %rt6i_flags.i, align 4
  %and.i622 = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i622)
  %tobool.not.i623 = icmp eq i32 %and.i622, 0
  br i1 %tobool.not.i623, label %if.else.i, label %if.then.i624

if.then.i624:                                     ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %rcu_read_lock_bh.exit
  %and2.i = and i32 %164, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i625 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i625, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !108

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i624
  %retval.0.i626 = phi ptr [ %rt6i_gateway.i, %if.then.i624 ], [ %rt6i_dst.i, %if.then6.i ], [ %daddr59, %if.else.i.rt6_nexthop.exit_crit_edge ]
  %call440 = tail call fastcc ptr @__ipv6_neigh_lookup_noref(ptr noundef %7, ptr noundef %retval.0.i626)
  %tobool441.not = icmp eq ptr %call440, null
  br i1 %tobool441.not, label %if.then450, label %rt6_nexthop.exit.if.end452_crit_edge, !prof !107

rt6_nexthop.exit.if.end452_crit_edge:             ; preds = %rt6_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end452

if.then450:                                       ; preds = %rt6_nexthop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call451 = tail call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %retval.0.i626, ptr noundef %7, i1 noundef zeroext false) #11
  br label %if.end452

if.end452:                                        ; preds = %if.then450, %rt6_nexthop.exit.if.end452_crit_edge
  %neigh.0 = phi ptr [ %call451, %if.then450 ], [ %call440, %rt6_nexthop.exit.if.end452_crit_edge ]
  %cmp.i627 = icmp ugt ptr %neigh.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i627, label %if.end456, label %if.then454

if.then454:                                       ; preds = %if.end452
  %dst_pending_confirm.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 3
  %165 = ptrtoint ptr %dst_pending_confirm.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %bf.load.i.i = load i32, ptr %dst_pending_confirm.i.i, align 2
  %166 = and i32 %bf.load.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i.not.i = icmp eq i32 %166, 0
  br i1 %cmp.i.not.i, label %if.then454.sock_confirm_neigh.exit_crit_edge, label %if.then.i629

if.then454.sock_confirm_neigh.exit_crit_edge:     ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_confirm_neigh.exit

if.then.i629:                                     ; preds = %if.then454
  %167 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 1
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %tobool.not.i628 = icmp eq ptr %169, null
  br i1 %tobool.not.i628, label %if.then.i629.if.end.i632_crit_edge, label %do.end.i631

if.then.i629.if.end.i632_crit_edge:               ; preds = %if.then.i629
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i632

do.end.i631:                                      ; preds = %if.then.i629
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %169, i32 0, i32 29
  %170 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %sk_dst_pending_confirm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool1.not.i630 = icmp eq i32 %171, 0
  br i1 %tobool1.not.i630, label %do.end.i631.if.end.i632_crit_edge, label %do.body7.i

do.end.i631.if.end.i632_crit_edge:                ; preds = %do.end.i631
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i632

do.body7.i:                                       ; preds = %do.end.i631
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 0, ptr %sk_dst_pending_confirm.i, align 8
  br label %if.end.i632

if.end.i632:                                      ; preds = %do.body7.i, %do.end.i631.if.end.i632_crit_edge, %if.then.i629.if.end.i632_crit_edge
  %tobool.not.i.i = icmp eq ptr %neigh.0, null
  br i1 %tobool.not.i.i, label %if.end.i632.sock_confirm_neigh.exit_crit_edge, label %if.then.i.i

if.end.i632.sock_confirm_neigh.exit_crit_edge:    ; preds = %if.end.i632
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_confirm_neigh.exit

if.then.i.i:                                      ; preds = %if.end.i632
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %173 = load volatile i32, ptr @jiffies, align 128
  %confirmed.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 3
  %174 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %confirmed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %173)
  %cmp.not.i.i = icmp eq i32 %175, %173
  br i1 %cmp.not.i.i, label %if.then.i.i.sock_confirm_neigh.exit_crit_edge, label %do.body6.i.i

if.then.i.i.sock_confirm_neigh.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_confirm_neigh.exit

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 %173, ptr %confirmed.i.i, align 4
  br label %sock_confirm_neigh.exit

sock_confirm_neigh.exit:                          ; preds = %do.body6.i.i, %if.then.i.i.sock_confirm_neigh.exit_crit_edge, %if.end.i632.sock_confirm_neigh.exit_crit_edge, %if.then454.sock_confirm_neigh.exit_crit_edge
  %hh1.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 19
  %nud_state.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 12
  %177 = ptrtoint ptr %nud_state.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load volatile i8, ptr %nud_state.i, align 8
  %179 = and i8 %178, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool2.not.i = icmp eq i8 %179, 0
  br i1 %tobool2.not.i, label %sock_confirm_neigh.exit.if.end.i637_crit_edge, label %do.end6.i

sock_confirm_neigh.exit.if.end.i637_crit_edge:    ; preds = %sock_confirm_neigh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i637

do.end6.i:                                        ; preds = %sock_confirm_neigh.exit
  %180 = ptrtoint ptr %hh1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %hh1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool8.not.i = icmp eq i32 %181, 0
  br i1 %tobool8.not.i, label %do.end6.i.if.end.i637_crit_edge, label %if.then.i633

do.end6.i.if.end.i637_crit_edge:                  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i637

if.then.i633:                                     ; preds = %do.end6.i
  %hh_lock.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 19, i32 1
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  %data.i110.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %hh_data24.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 19, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond28.i.i.do.body.i.i_crit_edge, %if.then.i633
  %182 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !116
  %and.i.i.i.i.i = and i32 %182, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %183 = tail call ptr @llvm.returnaddress(i32 0) #11
  %184 = ptrtoint ptr %183 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %184) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %184) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %185 = tail call ptr @llvm.returnaddress(i32 0) #11
  %186 = ptrtoint ptr %185 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %186) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %186) #11
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i.i.i
  %187 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !117
  %and.i.i.i.i.i.i = and i32 %187, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !107

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %182) #11, !srcloc !118
  %188 = ptrtoint ptr %hh_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %hh_lock.i.i, align 4
  %and18.i.i.i = and i32 %189, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool.not19.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool.not19.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_seqbegin.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !142
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !143
  %190 = ptrtoint ptr %hh_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %hh_lock.i.i, align 4
  %and.i.i.i = and i32 %191, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge:    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %read_seqbegin.exit.i.i

read_seqbegin.exit.i.i:                           ; preds = %do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %189, %seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge ], [ %191, %do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !144
  %192 = ptrtoint ptr %hh1.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %hh1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %193)
  %cmp.i.i = icmp ult i32 %193, 17
  br i1 %cmp.i.i, label %if.then.i.i634, label %if.else.i.i, !prof !108

if.then.i.i634:                                   ; preds = %read_seqbegin.exit.i.i
  %194 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data.i110.i.i, align 4
  %196 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %195 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %197 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub.i.i.i)
  %cmp5.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 15
  br i1 %cmp5.i.i, label %if.then12.i.i, label %if.then.i.i634.do.cond28.i.i_crit_edge, !prof !108

if.then.i.i634.do.cond28.i.i_crit_edge:           ; preds = %if.then.i.i634
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond28.i.i

if.then12.i.i:                                    ; preds = %if.then.i.i634
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i635 = getelementptr i8, ptr %195, i32 -16
  %198 = call ptr @memcpy(ptr %add.ptr.i.i635, ptr %hh_data24.i.i, i32 16)
  br label %do.cond28.i.i

if.else.i.i:                                      ; preds = %read_seqbegin.exit.i.i
  %add.i.i = add i32 %193, 15
  %and.i.i636 = and i32 %add.i.i, -16
  %199 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %data.i110.i.i, align 4
  %201 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i112.i.i = ptrtoint ptr %200 to i32
  %sub.ptr.rhs.cast.i113.i.i = ptrtoint ptr %202 to i32
  %sub.ptr.sub.i114.i.i = sub i32 %sub.ptr.lhs.cast.i112.i.i, %sub.ptr.rhs.cast.i113.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i114.i.i, i32 %and.i.i636)
  %cmp14.not.i.i = icmp ult i32 %sub.ptr.sub.i114.i.i, %and.i.i636
  br i1 %cmp14.not.i.i, label %if.else.i.i.do.cond28.i.i_crit_edge, label %if.then21.i.i, !prof !107

if.else.i.i.do.cond28.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond28.i.i

if.then21.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %idx.neg.i.i = sub i32 0, %and.i.i636
  %add.ptr23.i.i = getelementptr i8, ptr %200, i32 %idx.neg.i.i
  %203 = call ptr @memcpy(ptr %add.ptr23.i.i, ptr %hh_data24.i.i, i32 %and.i.i636)
  br label %do.cond28.i.i

do.cond28.i.i:                                    ; preds = %if.then21.i.i, %if.else.i.i.do.cond28.i.i_crit_edge, %if.then12.i.i, %if.then.i.i634.do.cond28.i.i_crit_edge
  %hh_alen.0.i.i = phi i32 [ 16, %if.then12.i.i ], [ 16, %if.then.i.i634.do.cond28.i.i_crit_edge ], [ %and.i.i636, %if.then21.i.i ], [ %and.i.i636, %if.else.i.i.do.cond28.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  %204 = ptrtoint ptr %hh_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %hh_lock.i.i, align 4
  %cmp.i.i.i.not.i.i = icmp eq i32 %205, %.lcssa.i.i.i
  br i1 %cmp.i.i.i.not.i.i, label %do.end32.i.i, label %do.cond28.i.i.do.body.i.i_crit_edge

do.cond28.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

do.end32.i.i:                                     ; preds = %do.cond28.i.i
  %206 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data.i110.i.i, align 4
  %208 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i117.i.i = ptrtoint ptr %207 to i32
  %sub.ptr.rhs.cast.i118.i.i = ptrtoint ptr %209 to i32
  %sub.ptr.sub.i119.i.i = sub i32 %sub.ptr.lhs.cast.i117.i.i, %sub.ptr.rhs.cast.i118.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i119.i.i, i32 %hh_alen.0.i.i)
  %cmp34.i.i = icmp ult i32 %sub.ptr.sub.i119.i.i, %hh_alen.0.i.i
  br i1 %cmp34.i.i, label %land.rhs.i.i, label %if.end85.i.i

land.rhs.i.i:                                     ; preds = %do.end32.i.i
  %.b108.i.i = load i1, ptr @neigh_hh_output.__already_done, align 1
  br i1 %.b108.i.i, label %land.rhs.i.i.if.then84.i.i_crit_edge, label %if.then49.i.i, !prof !108

land.rhs.i.i.if.then84.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84.i.i

if.then49.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @neigh_hh_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 527, i32 noundef 9, ptr noundef null) #11
  br label %if.then84.i.i

if.then84.i.i:                                    ; preds = %if.then49.i.i, %land.rhs.i.i.if.then84.i.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #11
  br label %neigh_output.exit

if.end85.i.i:                                     ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %idx.neg.i.i.i = sub i32 0, %193
  %add.ptr.i.i.i = getelementptr i8, ptr %207, i32 %idx.neg.i.i.i
  %210 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %add.ptr.i.i.i, ptr %data.i110.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %211 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %len1.i.i.i, align 4
  %add.i.i.i = add i32 %212, %193
  store i32 %add.i.i.i, ptr %len1.i.i.i, align 4
  %call87.i.i = tail call i32 @dev_queue_xmit(ptr noundef %skb.addr.0) #11
  br label %neigh_output.exit

if.end.i637:                                      ; preds = %do.end6.i.if.end.i637_crit_edge, %sock_confirm_neigh.exit.if.end.i637_crit_edge
  %output.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0, i32 0, i32 20
  %213 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %output.i, align 4
  %call9.i = tail call i32 %214(ptr noundef %neigh.0, ptr noundef %skb.addr.0) #11
  br label %neigh_output.exit

neigh_output.exit:                                ; preds = %if.end.i637, %if.end85.i.i, %if.then84.i.i
  %retval.0.i638 = phi i32 [ %call9.i, %if.end.i637 ], [ 1, %if.then84.i.i ], [ %call87.i.i, %if.end85.i.i ]
  %call.i639 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i639, label %neigh_output.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i642

neigh_output.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %neigh_output.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i642:                               ; preds = %neigh_output.exit
  %call1.i640 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i640)
  %tobool.not.i641 = icmp eq i32 %call1.i640, 0
  br i1 %tobool.not.i641, label %land.lhs.true.i642.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i644

land.lhs.true.i642.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i642
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i644:                              ; preds = %land.lhs.true.i642
  %.b4.i643 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i643, label %land.lhs.true2.i644.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i645

land.lhs.true2.i644.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i644
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

if.then.i645:                                     ; preds = %land.lhs.true2.i644
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i645, %land.lhs.true2.i644.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i642.rcu_read_unlock_bh.exit_crit_edge, %neigh_output.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #11
  tail call fastcc void @local_bh_enable() #11
  br label %cleanup518

if.end456:                                        ; preds = %if.end452
  %call.i647 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i647, label %if.end456.rcu_read_unlock_bh.exit655_crit_edge, label %land.lhs.true.i650

if.end456.rcu_read_unlock_bh.exit655_crit_edge:   ; preds = %if.end456
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit655

land.lhs.true.i650:                               ; preds = %if.end456
  %call1.i648 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i648)
  %tobool.not.i649 = icmp eq i32 %call1.i648, 0
  br i1 %tobool.not.i649, label %land.lhs.true.i650.rcu_read_unlock_bh.exit655_crit_edge, label %land.lhs.true2.i652

land.lhs.true.i650.rcu_read_unlock_bh.exit655_crit_edge: ; preds = %land.lhs.true.i650
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit655

land.lhs.true2.i652:                              ; preds = %land.lhs.true.i650
  %.b4.i651 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i651, label %land.lhs.true2.i652.rcu_read_unlock_bh.exit655_crit_edge, label %if.then.i653

land.lhs.true2.i652.rcu_read_unlock_bh.exit655_crit_edge: ; preds = %land.lhs.true2.i652
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit655

if.then.i653:                                     ; preds = %land.lhs.true2.i652
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_unlock_bh.exit655

rcu_read_unlock_bh.exit655:                       ; preds = %if.then.i653, %land.lhs.true2.i652.rcu_read_unlock_bh.exit655_crit_edge, %land.lhs.true.i650.rcu_read_unlock_bh.exit655_crit_edge, %if.end456.rcu_read_unlock_bh.exit655_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #11
  tail call fastcc void @local_bh_enable() #11
  %cmp458.not = icmp eq ptr %9, null
  br i1 %cmp458.not, label %rcu_read_unlock_bh.exit655.do.body493_crit_edge, label %do.body467, !prof !107

rcu_read_unlock_bh.exit655.do.body493_crit_edge:  ; preds = %rcu_read_unlock_bh.exit655
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body493

do.body467:                                       ; preds = %rcu_read_unlock_bh.exit655
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %ipv6477 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 33, i32 1
  %215 = ptrtoint ptr %ipv6477 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ipv6477, align 4
  %217 = ptrtoint ptr %216 to i32
  %218 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i656 = and i32 %218, -16384
  %219 = inttoptr i32 %and.i656 to ptr
  %cpu480 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %cpu480 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %cpu480, align 4
  %arrayidx481 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %221
  %222 = ptrtoint ptr %arrayidx481 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx481, align 4
  %add482 = add i32 %223, %217
  %224 = inttoptr i32 %add482 to ptr
  %syncp483 = getelementptr inbounds %struct.ipstats_mib, ptr %224, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp483)
  %arrayidx485 = getelementptr [37 x i64], ptr %224, i32 0, i32 15
  %225 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %arrayidx485, align 8
  %add486 = add i64 %226, 1
  store i64 %add486, ptr %arrayidx485, align 8
  %dep_map.i.i657 = getelementptr inbounds %struct.ipstats_mib, ptr %224, i32 0, i32 1, i32 0, i32 1
  %227 = tail call ptr @llvm.returnaddress(i32 0) #11
  %228 = ptrtoint ptr %227 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i657, i32 noundef %228) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %229 = ptrtoint ptr %syncp483 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %syncp483, align 4
  %inc.i.i.i658 = add i32 %230, 1
  store i32 %inc.i.i.i658, ptr %syncp483, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body493

do.body493:                                       ; preds = %do.body467, %rcu_read_unlock_bh.exit655.do.body493_crit_edge
  tail call fastcc void @local_bh_disable()
  %ipv6_statistics503 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 1
  %231 = ptrtoint ptr %ipv6_statistics503 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ipv6_statistics503, align 4
  %233 = ptrtoint ptr %232 to i32
  %234 = tail call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i659 = and i32 %234, -16384
  %235 = inttoptr i32 %and.i659 to ptr
  %cpu506 = getelementptr inbounds %struct.thread_info, ptr %235, i32 0, i32 3
  %236 = ptrtoint ptr %cpu506 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %cpu506, align 4
  %arrayidx507 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %237
  %238 = ptrtoint ptr %arrayidx507 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx507, align 4
  %add508 = add i32 %239, %233
  %240 = inttoptr i32 %add508 to ptr
  %syncp509 = getelementptr inbounds %struct.ipstats_mib, ptr %240, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp509)
  %arrayidx511 = getelementptr [37 x i64], ptr %240, i32 0, i32 15
  %241 = ptrtoint ptr %arrayidx511 to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %arrayidx511, align 8
  %add512 = add i64 %242, 1
  store i64 %add512, ptr %arrayidx511, align 8
  %dep_map.i.i660 = getelementptr inbounds %struct.ipstats_mib, ptr %240, i32 0, i32 1, i32 0, i32 1
  %243 = tail call ptr @llvm.returnaddress(i32 0) #11
  %244 = ptrtoint ptr %243 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i660, i32 noundef %244) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %245 = ptrtoint ptr %syncp509 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %syncp509, align 4
  %inc.i.i.i661 = add i32 %246, 1
  store i32 %inc.i.i.i661, ptr %syncp509, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #11
  br label %cleanup518

cleanup518:                                       ; preds = %do.body493, %rcu_read_unlock_bh.exit, %if.then426.cleanup518_crit_edge, %if.then422, %do.body123, %do.body33
  %retval.4 = phi i32 [ -22, %do.body493 ], [ %retval.0.i638, %rcu_read_unlock_bh.exit ], [ %call427, %if.then426.cleanup518_crit_edge ], [ 0, %if.then422 ], [ -12, %do.body33 ], [ 0, %do.body123 ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_mc_loop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mroute6_is_socket(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_mcast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_loopback_xmit(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ipv6_neigh_lookup_noref(ptr noundef %dev, ptr nocapture noundef readonly %pkey) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31) to i32))
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31), align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end8.i_crit_edge

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %entry
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b3.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b3.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 305, ptr noundef nonnull @.str.8) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %entry.do.end8.i_crit_edge
  %hash_rnd.i = getelementptr inbounds %struct.neigh_hash_table, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pkey, align 4
  %3 = ptrtoint ptr %dev to i32
  %xor.i.i = xor i32 %2, %3
  %4 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash_rnd.i, align 4
  %mul.i.i = mul i32 %xor.i.i, %5
  %arrayidx2.i.i = getelementptr i32, ptr %pkey, i32 1
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.neigh_hash_table, ptr %0, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i.i, align 4
  %mul4.i.i = mul i32 %9, %7
  %add.i.i = add i32 %mul4.i.i, %mul.i.i
  %arrayidx5.i.i = getelementptr i32, ptr %pkey, i32 2
  %10 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.neigh_hash_table, ptr %0, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i.i, align 4
  %mul7.i.i = mul i32 %13, %11
  %add8.i.i = add i32 %add.i.i, %mul7.i.i
  %arrayidx9.i.i = getelementptr i32, ptr %pkey, i32 3
  %14 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.neigh_hash_table, ptr %0, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10.i.i, align 4
  %mul11.i.i = mul i32 %17, %15
  %add12.i.i = add i32 %add8.i.i, %mul11.i.i
  %hash_shift.i = getelementptr inbounds %struct.neigh_hash_table, ptr %0, i32 0, i32 1
  %18 = ptrtoint ptr %hash_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash_shift.i, align 4
  %sub.i = sub i32 32, %19
  %shr.i = lshr i32 %add12.i.i, %sub.i
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %shr.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i, align 4
  %call16.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %do.end8.i.do.end26.i_crit_edge

do.end8.i.do.end26.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i

land.lhs.true18.i:                                ; preds = %do.end8.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true18.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true18.i
  %.b612.i = load i1, ptr @___neigh_lookup_noref.__warned.19, align 1
  br i1 %.b612.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @___neigh_lookup_noref.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 310, ptr noundef nonnull @.str.8) #11
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true18.i.do.end26.i_crit_edge, %do.end8.i.do.end26.i_crit_edge
  %cmp.not11.i = icmp eq ptr %23, null
  br i1 %cmp.not11.i, label %do.end26.i.___neigh_lookup_noref.exit_crit_edge, label %do.end26.i.for.body.i_crit_edge

do.end26.i.for.body.i_crit_edge:                  ; preds = %do.end26.i
  br label %for.body.i

do.end26.i.___neigh_lookup_noref.exit_crit_edge:  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %___neigh_lookup_noref.exit

for.body.i:                                       ; preds = %do.end49.i.for.body.i_crit_edge, %do.end26.i.for.body.i_crit_edge
  %n.012.i = phi ptr [ %43, %do.end49.i.for.body.i_crit_edge ], [ %23, %do.end26.i.for.body.i_crit_edge ]
  %dev28.i = getelementptr inbounds %struct.neighbour, ptr %n.012.i, i32 0, i32 25
  %24 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28.i, align 4
  %cmp29.i = icmp eq ptr %25, %dev
  br i1 %cmp29.i, label %land.lhs.true30.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true30.i:                                ; preds = %for.body.i
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %n.012.i, i32 0, i32 27
  %26 = ptrtoint ptr %primary_key.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %primary_key.i.i, align 4
  %28 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkey, align 4
  %xor.i4.i = xor i32 %29, %27
  %arrayidx2.i5.i = getelementptr %struct.neighbour, ptr %n.012.i, i32 1
  %30 = ptrtoint ptr %arrayidx2.i5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i5.i, align 4
  %32 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.i.i, align 4
  %xor4.i.i = xor i32 %33, %31
  %or.i.i = or i32 %xor4.i.i, %xor.i4.i
  %arrayidx5.i7.i = getelementptr %struct.neighbour, ptr %n.012.i, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx5.i7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.i7.i, align 4
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i.i, align 4
  %xor7.i.i = xor i32 %37, %35
  %or8.i.i = or i32 %or.i.i, %xor7.i.i
  %arrayidx9.i9.i = getelementptr %struct.neighbour, ptr %n.012.i, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx9.i9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx9.i9.i, align 4
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i.i, align 4
  %xor11.i.i = xor i32 %41, %39
  %or12.i.i = or i32 %or8.i.i, %xor11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i.i)
  %cmp.i.i = icmp eq i32 %or12.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge, label %land.lhs.true30.i.for.inc.i_crit_edge

land.lhs.true30.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %___neigh_lookup_noref.exit

for.inc.i:                                        ; preds = %land.lhs.true30.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %n.012.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %n.012.i, align 8
  %call39.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true41.i, label %for.inc.i.do.end49.i_crit_edge

for.inc.i.do.end49.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i

land.lhs.true41.i:                                ; preds = %for.inc.i
  %call42.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true41.i.do.end49.i_crit_edge, label %land.lhs.true44.i

land.lhs.true41.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i

land.lhs.true44.i:                                ; preds = %land.lhs.true41.i
  %.b621.i = load i1, ptr @___neigh_lookup_noref.__warned.20, align 1
  br i1 %.b621.i, label %land.lhs.true44.i.do.end49.i_crit_edge, label %if.then46.i

land.lhs.true44.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49.i

if.then46.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @___neigh_lookup_noref.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 312, ptr noundef nonnull @.str.8) #11
  br label %do.end49.i

do.end49.i:                                       ; preds = %if.then46.i, %land.lhs.true44.i.do.end49.i_crit_edge, %land.lhs.true41.i.do.end49.i_crit_edge, %for.inc.i.do.end49.i_crit_edge
  %cmp.not.i = icmp eq ptr %43, null
  br i1 %cmp.not.i, label %do.end49.i.___neigh_lookup_noref.exit_crit_edge, label %do.end49.i.for.body.i_crit_edge

do.end49.i.for.body.i_crit_edge:                  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end49.i.___neigh_lookup_noref.exit_crit_edge:  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %___neigh_lookup_noref.exit

___neigh_lookup_noref.exit:                       ; preds = %do.end49.i.___neigh_lookup_noref.exit_crit_edge, %land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge, %do.end26.i.___neigh_lookup_noref.exit_crit_edge
  %n.0.lcssa.i = phi ptr [ null, %do.end26.i.___neigh_lookup_noref.exit_crit_edge ], [ %n.012.i, %land.lhs.true30.i.___neigh_lookup_noref.exit_crit_edge ], [ null, %do.end49.i.___neigh_lookup_noref.exit_crit_edge ]
  ret ptr %n.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_hash_from_flowi6(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawv6_rcv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_route_forward(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_get_ifaddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_ifa_finish_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_local_rxpmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msg_zerocopy_realloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_zcopy_set(ptr noundef readonly %skb, ptr noundef %uarg, ptr noundef %have_ref) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %tobool.not = icmp eq ptr %skb, null
  %tobool1.not = icmp eq ptr %uarg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end9_crit_edge, label %land.rhs.i

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.rhs.i:                                       ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %land.rhs.i.if.then_crit_edge, label %skb_zcopy.exit

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

skb_zcopy.exit:                                   ; preds = %land.rhs.i
  %destructor_arg.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %destructor_arg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destructor_arg.i, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %skb_zcopy.exit.if.then_crit_edge, label %skb_zcopy.exit.if.end9_crit_edge

skb_zcopy.exit.if.end9_crit_edge:                 ; preds = %skb_zcopy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

skb_zcopy.exit.if.then_crit_edge:                 ; preds = %skb_zcopy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %skb_zcopy.exit.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  %tobool4.not = icmp eq ptr %have_ref, null
  br i1 %tobool4.not, label %if.then.if.else_crit_edge, label %land.rhs

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.rhs:                                         ; preds = %if.then
  %7 = ptrtoint ptr %have_ref to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %have_ref, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.rhs.if.else_crit_edge, label %if.then8, !prof !108

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %have_ref to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %have_ref, align 1
  br label %if.end

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %if.then.if.else_crit_edge
  %refcnt.i = getelementptr inbounds %struct.ubuf_info, ptr %uarg, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !130
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !107

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !108

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %if.then8
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %destructor_arg.i17 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %destructor_arg.i17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %uarg, ptr %destructor_arg.i17, align 4
  %flags.i = getelementptr inbounds %struct.ubuf_info, ptr %uarg, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags.i, align 4
  %17 = load ptr, ptr %end.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 8
  %or7.i = or i8 %19, %16
  store i8 %or7.i, ptr %17, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %skb_zcopy.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_iter_dgram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_add(i32 noundef %i, ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %i, ptr elementtype(i32) %r) #11, !srcloc !130
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool1.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool1.not.i, label %entry.if.end15.sink.split.i_crit_edge, label %if.else.i, !prof !107

entry.if.end15.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %entry
  %add.i = add i32 %asmresult.i.i.i, %i
  %1 = or i32 %add.i, %asmresult.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %if.else.i.__refcount_add.exit_crit_edge, label %if.else.i.if.end15.sink.split.i_crit_edge, !prof !108

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i

if.else.i.__refcount_add.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__refcount_add.exit

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %entry.if.end15.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 2, %entry.if.end15.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end15.sink.split.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i) #11
  br label %__refcount_add.exit

__refcount_add.exit:                              ; preds = %if.end15.sink.split.i, %if.else.i.__refcount_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_callback(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_put_abort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90, !92, !93, !95}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__ksymtab_ip6_output, !1, !"__ksymtab_ip6_output", i1 false, i1 false}
!1 = !{!"../net/ipv6/ip6_output.c", i32 229, i32 1}
!2 = !{ptr @__ksymtab_ip6_xmit, !3, !"__ksymtab_ip6_xmit", i1 false, i1 false}
!3 = !{!"../net/ipv6/ip6_output.c", i32 339, i32 1}
!4 = !{ptr @__ksymtab_ip6_fraglist_init, !5, !"__ksymtab_ip6_fraglist_init", i1 false, i1 false}
!5 = !{!"../net/ipv6/ip6_output.c", i32 685, i32 1}
!6 = !{ptr @__ksymtab_ip6_fraglist_prepare, !7, !"__ksymtab_ip6_fraglist_prepare", i1 false, i1 false}
!7 = !{!"../net/ipv6/ip6_output.c", i32 710, i32 1}
!8 = !{ptr @__ksymtab_ip6_frag_init, !9, !"__ksymtab_ip6_frag_init", i1 false, i1 false}
!9 = !{!"../net/ipv6/ip6_output.c", i32 731, i32 1}
!10 = !{ptr @__ksymtab_ip6_frag_next, !11, !"__ksymtab_ip6_frag_next", i1 false, i1 false}
!11 = !{!"../net/ipv6/ip6_output.c", i32 807, i32 1}
!12 = !{ptr @__ksymtab_ip6_dst_lookup, !13, !"__ksymtab_ip6_dst_lookup", i1 false, i1 false}
!13 = !{!"../net/ipv6/ip6_output.c", i32 1180, i32 1}
!14 = !{ptr @__ksymtab_ip6_dst_lookup_flow, !15, !"__ksymtab_ip6_dst_lookup_flow", i1 false, i1 false}
!15 = !{!"../net/ipv6/ip6_output.c", i32 1208, i32 1}
!16 = !{ptr @__ksymtab_ip6_sk_dst_lookup_flow, !17, !"__ksymtab_ip6_sk_dst_lookup_flow", i1 false, i1 false}
!17 = !{!"../net/ipv6/ip6_output.c", i32 1244, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ipv6/ip6_output.c", i32 1298, i32 3}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug694, !19, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/ip6_output.c", i32 1302, i32 3}
!26 = !{ptr @ip6_dst_lookup_tunnel.__UNIQUE_ID_ddebug695, !25, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!27 = !{ptr @__ksymtab_ip6_dst_lookup_tunnel, !28, !"__ksymtab_ip6_dst_lookup_tunnel", i1 false, i1 false}
!28 = !{!"../net/ipv6/ip6_output.c", i32 1313, i32 1}
!29 = !{ptr @__ksymtab_ip6_append_data, !30, !"__ksymtab_ip6_append_data", i1 false, i1 false}
!30 = !{!"../net/ipv6/ip6_output.c", i32 1811, i32 1}
!31 = !{ptr @__ksymtab_ip6_push_pending_frames, !32, !"__ksymtab_ip6_push_pending_frames", i1 false, i1 false}
!32 = !{!"../net/ipv6/ip6_output.c", i32 1937, i32 1}
!33 = !{ptr @__ksymtab_ip6_flush_pending_frames, !34, !"__ksymtab_ip6_flush_pending_frames", i1 false, i1 false}
!34 = !{!"../net/ipv6/ip6_output.c", i32 1961, i32 1}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!42 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/net/neighbour.h", i32 305, i32 33}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/net/neighbour.h", i32 310, i32 11}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/net/neighbour.h", i32 312, i32 11}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/net/neighbour.h", i32 527, i32 6}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/net/addrconf.h", i32 341, i32 10}
!80 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/net/dst.h", i32 161, i32 2}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/ipv6/ip6_output.c", i32 434, i32 2}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/ipv6/ip6_output.c", i32 1074, i32 15}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/net/nexthop.h", i32 487, i32 12}
!92 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/net/nexthop.h", i32 493, i32 8}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2150013464}
!110 = !{i64 2149905146}
!111 = !{i64 2149910078}
!112 = !{i64 2149931790}
!113 = !{i64 2149936682}
!114 = !{i64 2150013139}
!115 = !{i64 2148743357, i64 2148743362, i64 2148743375, i64 2148743419, i64 2148743453, i64 2148743474}
!116 = !{i64 654023, i64 654084}
!117 = !{i64 656755}
!118 = !{i64 657040}
!119 = !{!"auto-init"}
!120 = !{ptr @dev_loopback_xmit, ptr @dst_output, ptr @ip6_forward_finish}
!121 = !{i64 2149373496}
!122 = !{i64 2149373762}
!123 = !{i64 2154990333, i64 2154990821, i64 2154990370, i64 2154990426, i64 2154990460, i64 2154990484, i64 2154990525, i64 2154990546, i64 2154990574, i64 2154990608}
!124 = !{i64 2148260961}
!125 = !{i64 745784, i64 745809, i64 745831, i64 745847, i64 745859, i64 745879, i64 745903, i64 745919, i64 745931}
!126 = !{i64 2148261149}
!127 = !{i64 2148351073}
!128 = !{i64 2148265537, i64 2148265569, i64 2148265598, i64 2148265632, i64 2148265663, i64 2148265686}
!129 = !{i64 2149323006}
!130 = !{i64 2148263072, i64 2148263104, i64 2148263133, i64 2148263167, i64 2148263198, i64 2148263221}
!131 = !{i64 2159428376, i64 2159428862, i64 2159428413, i64 2159428469, i64 2159428503, i64 2159428527, i64 2159428568, i64 2159428589, i64 2159428617, i64 2159428651}
!132 = !{i64 2155717124}
!133 = !{i64 2155735492}
!134 = !{i64 2159432140, i64 2159432626, i64 2159432177, i64 2159432233, i64 2159432267, i64 2159432291, i64 2159432332, i64 2159432353, i64 2159432381, i64 2159432415}
!135 = !{i8 0, i8 2}
!136 = !{i64 2148346953}
!137 = !{i64 2148262262, i64 2148262294, i64 2148262323, i64 2148262357, i64 2148262388, i64 2148262411}
!138 = !{i64 2148347182}
!139 = !{i64 2155003273, i64 2155003761, i64 2155003310, i64 2155003366, i64 2155003400, i64 2155003424, i64 2155003465, i64 2155003486, i64 2155003514, i64 2155003548}
!140 = !{i64 2153270973, i64 2153271457, i64 2153271010, i64 2153271066, i64 2153271100, i64 2153271124, i64 2153271165, i64 2153271186, i64 2153271214, i64 2153271248}
!141 = !{i64 2148261542, i64 2148261568, i64 2148261597, i64 2148261631, i64 2148261662, i64 2148261685}
!142 = !{i64 2150027567}
!143 = !{i64 2150027409}
!144 = !{i64 2150027737}
!145 = !{i64 2150012814}
