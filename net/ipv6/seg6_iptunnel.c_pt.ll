; ModuleID = '/llk/IR_all_yes/net/ipv6/seg6_iptunnel.c_pt.bc'
source_filename = "../net/ipv6/seg6_iptunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+seg6_do_srh_encap\22, \22a\22\09"
module asm "\09.weak\09__crc_seg6_do_srh_encap\09\09\09\09"
module asm "\09.long\09__crc_seg6_do_srh_encap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seg6_do_srh_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22seg6_do_srh_encap\22\09\09\09\09\09"
module asm "__kstrtabns_seg6_do_srh_encap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+seg6_do_srh_inline\22, \22a\22\09"
module asm "\09.weak\09__crc_seg6_do_srh_inline\09\09\09\09"
module asm "\09.long\09__crc_seg6_do_srh_inline\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_seg6_do_srh_inline:\09\09\09\09\09"
module asm "\09.asciz \09\22seg6_do_srh_inline\22\09\09\09\09\09"
module asm "__kstrtabns_seg6_do_srh_inline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.135, %union.anon.136, [48 x i8], %union.anon.137, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.139, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.135 = type { ptr }
%union.anon.136 = type { i64 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.141, i32, i32, i32, i16, i16, %union.anon.143, i32, %union.anon.144, %union.anon.145, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.141 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.134 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seg6_pernet_data = type { %struct.mutex, ptr, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_seg6_do_srh_encap = external dso_local constant [0 x i8], align 1
@__kstrtabns_seg6_do_srh_encap = external dso_local constant [0 x i8], align 1
@__ksymtab_seg6_do_srh_encap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seg6_do_srh_encap to i32), ptr @__kstrtab_seg6_do_srh_encap, ptr @__kstrtabns_seg6_do_srh_encap }, section "___ksymtab_gpl+seg6_do_srh_encap", align 4
@__kstrtab_seg6_do_srh_inline = external dso_local constant [0 x i8], align 1
@__kstrtabns_seg6_do_srh_inline = external dso_local constant [0 x i8], align 1
@__ksymtab_seg6_do_srh_inline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @seg6_do_srh_inline to i32), ptr @__kstrtab_seg6_do_srh_inline, ptr @__kstrtabns_seg6_do_srh_inline }, section "___ksymtab_gpl+seg6_do_srh_inline", align 4
@seg6_iptun_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @seg6_build_state, ptr @seg6_destroy_state, ptr @seg6_output, ptr @seg6_input, ptr @seg6_fill_encap_info, ptr @seg6_encap_nlsize, ptr @seg6_encap_cmp, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@set_tun_src.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/ipv6/seg6_iptunnel.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@seg6_iptunnel_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.28 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nf_hooks_lwtunnel_enabled = external dso_local global %struct.static_key_false, align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_hook.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 7, i64 10]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"seg6_iptun_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 587, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1011, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 95, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 723, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"seg6_iptunnel_policy\00", align 1
@___asan_gen_.42 = private constant [28 x i8] c"../net/ipv6/seg6_iptunnel.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 64, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 229, i32 15 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_seg6_do_srh_encap, ptr @__ksymtab_seg6_do_srh_inline, ptr @seg6_iptun_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @seg6_iptunnel_policy, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_iptun_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_iptunnel_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seg6_do_srh_encap(ptr noundef %skb, ptr nocapture noundef readonly %osrh, i32 noundef %proto) #0 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
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
  %hdrlen2 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %osrh, i32 0, i32 1
  %10 = ptrtoint ptr %hdrlen2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdrlen2, align 1
  %conv = zext i8 %11 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %add3 = add nuw nsw i32 %add, 48
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %12 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_len, align 4
  %conv4 = zext i16 %13 to i32
  %add5 = add nuw nsw i32 %add3, %conv4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %14 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_dst.exit.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

skb_dst.exit.skb_header_cloned.exit.i_crit_edge:  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %18, 65535
  %shr.i.i = ashr i32 %18, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %skb_dst.exit.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %skb_dst.exit.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add5)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add5
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %add5, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %23, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %skb_cow_head.exit.cleanup_crit_edge, !prof !47

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %27 to i32
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %conv.i.i
  %seg6_flowlabel.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 36, i32 1, i32 35
  %28 = ptrtoint ptr %seg6_flowlabel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seg6_flowlabel.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp sgt i32 %29, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i96 = load i16, ptr %l4_hash.i.i, align 8
  %31 = and i16 %bf.load.i.i96, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %if.then.i.i, label %if.then.i.skb_get_hash.exit.i_crit_edge

if.then.i.skb_get_hash.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get_hash.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__skb_get_hash(ptr noundef %skb) #11
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i, %if.then.i.skb_get_hash.exit.i_crit_edge
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %33 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash.i.i, align 4
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 16) #11
  %and.i97 = and i32 %or.i.i, 1048575
  br label %seg6_make_flowlabel.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i98 = icmp eq i32 %29, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99, label %if.else.i.seg6_make_flowlabel.exit_crit_edge

if.else.i.seg6_make_flowlabel.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_make_flowlabel.exit

land.lhs.true.i99:                                ; preds = %if.else.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %36)
  %cmp2.i = icmp eq i16 %36, -31011
  br i1 %cmp2.i, label %if.then4.i, label %land.lhs.true.i99.seg6_make_flowlabel.exit_crit_edge

land.lhs.true.i99.seg6_make_flowlabel.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_make_flowlabel.exit

if.then4.i:                                       ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i100 = and i32 %38, 1048575
  br label %seg6_make_flowlabel.exit

seg6_make_flowlabel.exit:                         ; preds = %if.then4.i, %land.lhs.true.i99.seg6_make_flowlabel.exit_crit_edge, %if.else.i.seg6_make_flowlabel.exit_crit_edge, %skb_get_hash.exit.i
  %flowlabel.0.i = phi i32 [ %and.i97, %skb_get_hash.exit.i ], [ 0, %if.else.i.seg6_make_flowlabel.exit_crit_edge ], [ %and.i.i100, %if.then4.i ], [ 0, %land.lhs.true.i99.seg6_make_flowlabel.exit_crit_edge ]
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add3) #11
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %41 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %43 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %44 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %cmp.i.not.i101 = icmp eq i16 %45, -1
  br i1 %cmp.i.not.i101, label %seg6_make_flowlabel.exit.skb_mac_header_rebuild.exit_crit_edge, label %if.then.i110

seg6_make_flowlabel.exit.skb_mac_header_rebuild.exit_crit_edge: ; preds = %seg6_make_flowlabel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_mac_header_rebuild.exit

if.then.i110:                                     ; preds = %seg6_make_flowlabel.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i103 = zext i16 %45 to i32
  %add.ptr.i.i104 = getelementptr i8, ptr %42, i32 %conv.i.i103
  %46 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mac_len, align 4
  %conv.i105 = zext i16 %47 to i32
  %conv1.i11.i = sub i16 %conv.i, %47
  %48 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv1.i11.i, ptr %mac_header.i.i, align 2
  %conv.i14.i = zext i16 %conv1.i11.i to i32
  %add.ptr.i15.i = getelementptr i8, ptr %42, i32 %conv.i14.i
  %49 = call ptr @memmove(ptr %add.ptr.i15.i, ptr %add.ptr.i.i104, i32 %conv.i105)
  br label %skb_mac_header_rebuild.exit

skb_mac_header_rebuild.exit:                      ; preds = %if.then.i110, %seg6_make_flowlabel.exit.skb_mac_header_rebuild.exit_crit_edge
  %50 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i.i, align 8
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i113 = zext i16 %53 to i32
  %add.ptr.i.i114 = getelementptr i8, ptr %51, i32 %conv.i.i113
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %55)
  %cmp = icmp eq i16 %55, -31011
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %skb_mac_header_rebuild.exit
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i, align 4
  %conv18 = and i32 %57, 267386880
  %or.i = or i32 %flowlabel.0.i, %conv18
  %or1.i = or i32 %or.i, 1610612736
  %58 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or1.i, ptr %add.ptr.i.i114, align 4
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hop_limit, align 1
  %hop_limit19 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i114, i32 0, i32 4
  %61 = ptrtoint ptr %hop_limit19 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %hop_limit19, align 1
  br label %if.end26

if.else:                                          ; preds = %skb_mac_header_rebuild.exit
  %or1.i118 = or i32 %flowlabel.0.i, 1610612736
  %62 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or1.i118, ptr %add.ptr.i.i114, align 4
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %0, align 8
  %and.i119 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %if.else.skb_dst.exit129_crit_edge, label %land.lhs.true.i123

if.else.skb_dst.exit129_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit129

land.lhs.true.i123:                               ; preds = %if.else
  %call.i121 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool1.not.i122 = icmp eq i32 %call.i121, 0
  br i1 %tobool1.not.i122, label %land.rhs.i126, label %land.lhs.true.i123.skb_dst.exit129_crit_edge

land.lhs.true.i123.skb_dst.exit129_crit_edge:     ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit129

land.rhs.i126:                                    ; preds = %land.lhs.true.i123
  %call2.i124 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i124)
  %tobool3.not.i125 = icmp eq i32 %call2.i124, 0
  br i1 %tobool3.not.i125, label %do.end.i127, label %land.rhs.i126.skb_dst.exit129_crit_edge, !prof !46

land.rhs.i126.skb_dst.exit129_crit_edge:          ; preds = %land.rhs.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit129

do.end.i127:                                      ; preds = %land.rhs.i126
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit129

skb_dst.exit129:                                  ; preds = %do.end.i127, %land.rhs.i126.skb_dst.exit129_crit_edge, %land.lhs.true.i123.skb_dst.exit129_crit_edge, %if.else.skb_dst.exit129_crit_edge
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %0, align 8
  %and25.i128 = and i32 %66, -2
  %67 = inttoptr i32 %and25.i128 to ptr
  %call21 = tail call i32 @ip6_dst_hoplimit(ptr noundef %67) #11
  %conv22 = trunc i32 %call21 to i8
  %hop_limit23 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i114, i32 0, i32 4
  %68 = ptrtoint ptr %hop_limit23 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv22, ptr %hop_limit23, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %69 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %70 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %skb_iif, align 8
  %72 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %cb, align 8
  br label %if.end26

if.end26:                                         ; preds = %skb_dst.exit129, %if.then15
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i114, i32 0, i32 3
  %73 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 43, ptr %nexthdr, align 2
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i114, i32 40
  %74 = call ptr @memcpy(ptr %add.ptr, ptr %osrh, i32 %shl)
  %conv27 = trunc i32 %proto to i8
  %75 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv27, ptr %add.ptr, align 4
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i114, i32 0, i32 6
  %segments = getelementptr i8, ptr %add.ptr.i.i114, i32 48
  %first_segment = getelementptr i8, ptr %add.ptr.i.i114, i32 44
  %76 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %first_segment, align 4
  %idxprom = zext i8 %77 to i32
  %arrayidx = getelementptr [0 x %struct.in6_addr], ptr %segments, i32 0, i32 %idxprom
  %78 = call ptr @memcpy(ptr %daddr, ptr %arrayidx, i32 16)
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i114, i32 0, i32 5
  %seg6_data.i.i = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 36, i32 34
  %81 = ptrtoint ptr %seg6_data.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %seg6_data.i.i, align 32
  %83 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %86, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end26.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end26.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end26
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i130 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i130, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i131

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i131:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i131, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end26.rcu_read_lock.exit.i_crit_edge
  %tun_src1.i = getelementptr inbounds %struct.seg6_pernet_data, ptr %82, i32 0, i32 1
  %87 = ptrtoint ptr %tun_src1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %tun_src1.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i132 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133, label %rcu_read_lock.exit.i.do.end9.i_crit_edge

rcu_read_lock.exit.i.do.end9.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true.i133:                               ; preds = %rcu_read_lock.exit.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i133.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i133.do.end9.i_crit_edge:           ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i133
  %.b18.i = load i1, ptr @set_tun_src.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i134

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

if.then.i134:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @set_tun_src.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull @.str.2) #11
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i134, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i133.do.end9.i_crit_edge, %rcu_read_lock.exit.i.do.end9.i_crit_edge
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %88, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i135 = or i32 %92, %90
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %88, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i135, %94
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %88, i32 0, i32 3
  %95 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %if.else.i136, label %if.then12.i

if.then12.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = call ptr @memcpy(ptr %saddr, ptr %88, i32 16)
  br label %if.end14.i

if.else.i136:                                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = tail call i32 @ipv6_dev_get_saddr(ptr noundef %9, ptr noundef %80, ptr noundef %daddr, i32 noundef 2, ptr noundef %saddr) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i136, %if.then12.i
  %call.i19.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i19.i, label %if.end14.i.set_tun_src.exit_crit_edge, label %land.lhs.true.i22.i

if.end14.i.set_tun_src.exit_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tun_src.exit

land.lhs.true.i22.i:                              ; preds = %if.end14.i
  %call1.i20.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.set_tun_src.exit_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.set_tun_src.exit_crit_edge:   ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tun_src.exit

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.set_tun_src.exit_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.set_tun_src.exit_crit_edge:  ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_tun_src.exit

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %set_tun_src.exit

set_tun_src.exit:                                 ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.set_tun_src.exit_crit_edge, %land.lhs.true.i22.i.set_tun_src.exit_crit_edge, %if.end14.i.set_tun_src.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !49
  %98 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i.i.i26.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i.i = add i32 %101, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i27.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %flags = getelementptr i8, ptr %add.ptr.i.i114, i32 45
  %102 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %flags, align 1
  %104 = and i8 %103, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool32.not = icmp eq i8 %104, 0
  br i1 %tobool32.not, label %set_tun_src.exit.if.end45_crit_edge, label %if.then33

set_tun_src.exit.if.end45_crit_edge:              ; preds = %set_tun_src.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then33:                                        ; preds = %set_tun_src.exit
  %call35 = tail call i32 @seg6_push_hmac(ptr noundef %9, ptr noundef %saddr, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end45_crit_edge, label %if.then33.cleanup_crit_edge, !prof !47

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then33.if.end45_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end45:                                         ; preds = %if.then33.if.end45_crit_edge, %set_tun_src.exit.if.end45_crit_edge
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %105 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i.i137 = load i16, ptr %ip_summed.i.i, align 8
  %106 = and i16 %bf.load.i.i137, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %106)
  %cmp.i.i138 = icmp eq i16 %106, 1024
  br i1 %cmp.i.i138, label %if.then.i.i141, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i141:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %107 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  %call.i.i139 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i114, i32 noundef %add3, i32 noundef 0) #11
  %add.i.i.i.i140 = add i32 %call.i.i139, %109
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i140, i32 %call.i.i139)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i140, %call.i.i139
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i140, %conv.i.i.i.i
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add1.i.i.i.i, ptr %107, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i141, %if.end45.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %skb_cow_head.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i.i, %skb_cow_head.exit.cleanup_crit_edge ], [ %call35, %if.then33.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.then.i.i141 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_push_hmac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seg6_do_srh_inline(ptr noundef %skb, ptr nocapture noundef readonly %osrh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdrlen1 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %osrh, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen1, align 1
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len, align 4
  %conv2 = zext i16 %3 to i32
  %add3 = add nuw nsw i32 %shl, %conv2
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %8, 65535
  %shr.i.i = ashr i32 %8, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add3)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add3
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %add3, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %13, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %skb_cow_head.exit.cleanup34_crit_edge, !prof !47

skb_cow_head.exit.cleanup34_crit_edge:            ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %call7 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 40) #11
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %21 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %if.end.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

if.end.skb_postpull_rcsum.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %sub.i.i70 = sub i32 0, %26
  %call2.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i, i32 noundef 40, i32 noundef %sub.i.i70) #11
  %sub.i1.i = sub i32 0, %call2.i
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i1.i, ptr %24, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %if.end
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 8
  %conv.i.i71 = zext i16 %30 to i32
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i74 = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i75 = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.neg.i.i = add i32 %conv.i.i71, %sub.ptr.rhs.cast.i.i.i75
  %sub.i2.i = sub i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.lhs.cast.i.i.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i)
  %cmp13.i = icmp slt i32 %sub.i2.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %33 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %if.end.skb_postpull_rcsum.exit_crit_edge
  %add9 = add nuw nsw i32 %add, 48
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add9) #11
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i, align 4
  %36 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i77 = trunc i32 %sub.ptr.sub.i to i16
  %38 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i77, ptr %network_header.i.i, align 4
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %39 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp.i.not.i79 = icmp eq i16 %40, -1
  br i1 %cmp.i.not.i79, label %skb_postpull_rcsum.exit.skb_mac_header_rebuild.exit_crit_edge, label %if.then.i88

skb_postpull_rcsum.exit.skb_mac_header_rebuild.exit_crit_edge: ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_mac_header_rebuild.exit

if.then.i88:                                      ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i81 = zext i16 %40 to i32
  %add.ptr.i.i82 = getelementptr i8, ptr %37, i32 %conv.i.i81
  %41 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %mac_len, align 4
  %conv.i83 = zext i16 %42 to i32
  %conv1.i11.i = sub i16 %conv.i77, %42
  %43 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv1.i11.i, ptr %mac_header.i.i, align 2
  %conv.i14.i = zext i16 %conv1.i11.i to i32
  %add.ptr.i15.i = getelementptr i8, ptr %37, i32 %conv.i14.i
  %44 = call ptr @memmove(ptr %add.ptr.i15.i, ptr %add.ptr.i.i82, i32 %conv.i83)
  br label %skb_mac_header_rebuild.exit

skb_mac_header_rebuild.exit:                      ; preds = %if.then.i88, %skb_postpull_rcsum.exit.skb_mac_header_rebuild.exit_crit_edge
  %45 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i.i, align 8
  %47 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i91 = zext i16 %48 to i32
  %add.ptr.i.i92 = getelementptr i8, ptr %46, i32 %conv.i.i91
  %49 = call ptr @memmove(ptr %add.ptr.i.i92, ptr %add.ptr.i.i, i32 40)
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i92, i32 40
  %50 = call ptr @memcpy(ptr %add.ptr, ptr %osrh, i32 %shl)
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 3
  %51 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nexthdr, align 2
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %add.ptr, align 4
  store i8 43, ptr %nexthdr, align 2
  %segments = getelementptr i8, ptr %add.ptr.i.i92, i32 48
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 6
  %54 = call ptr @memcpy(ptr %segments, ptr %daddr, i32 16)
  %first_segment = getelementptr i8, ptr %add.ptr.i.i92, i32 44
  %55 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %first_segment, align 4
  %idxprom = zext i8 %56 to i32
  %arrayidx16 = getelementptr [0 x %struct.in6_addr], ptr %segments, i32 0, i32 %idxprom
  %57 = call ptr @memcpy(ptr %daddr, ptr %arrayidx16, i32 16)
  %flags = getelementptr i8, ptr %add.ptr.i.i92, i32 45
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags, align 1
  %60 = and i8 %59, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool18.not = icmp eq i8 %60, 0
  br i1 %tobool18.not, label %skb_mac_header_rebuild.exit.if.end32_crit_edge, label %if.then19

skb_mac_header_rebuild.exit.if.end32_crit_edge:   ; preds = %skb_mac_header_rebuild.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then19:                                        ; preds = %skb_mac_header_rebuild.exit
  %61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 8
  %and.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then19.skb_dst.exit_crit_edge, label %land.lhs.true.i93

if.then19.skb_dst.exit_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i93:                                ; preds = %if.then19
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i93.skb_dst.exit_crit_edge

land.lhs.true.i93.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i93
  %call2.i94 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i94)
  %tobool3.not.i = icmp eq i32 %call2.i94, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i93.skb_dst.exit_crit_edge, %if.then19.skb_dst.exit_crit_edge
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 8
  %and25.i = and i32 %65, -2
  %66 = inttoptr i32 %and25.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 127
  %69 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nd_net.i, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i92, i32 0, i32 5
  %call22 = tail call i32 @seg6_push_hmac(ptr noundef %70, ptr noundef %saddr, ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %skb_dst.exit.if.end32_crit_edge, label %skb_dst.exit.cleanup34_crit_edge

skb_dst.exit.cleanup34_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

skb_dst.exit.if.end32_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end32:                                         ; preds = %skb_dst.exit.if.end32_crit_edge, %skb_mac_header_rebuild.exit.if.end32_crit_edge
  %71 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i.i95 = load i16, ptr %ip_summed.i, align 8
  %72 = and i16 %bf.load.i.i95, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %72)
  %cmp.i.i = icmp eq i16 %72, 1024
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end32.cleanup34_crit_edge

if.end32.cleanup34_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.then.i.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i92, i32 noundef %add9, i32 noundef 0) #11
  %add.i.i.i.i = add i32 %call.i.i, %75
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add1.i.i.i.i, ptr %73, align 8
  br label %cleanup34

cleanup34:                                        ; preds = %if.then.i.i, %if.end32.cleanup34_crit_edge, %skb_dst.exit.cleanup34_crit_edge, %skb_cow_head.exit.cleanup34_crit_edge
  %retval.1 = phi i32 [ %call22, %skb_dst.exit.cleanup34_crit_edge ], [ %call4.i.i, %skb_cow_head.exit.cleanup34_crit_edge ], [ 0, %if.end32.cleanup34_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seg6_iptunnel_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @seg6_iptun_ops, i32 noundef 5) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @seg6_iptunnel_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_del_ops(ptr noundef nonnull @seg6_iptun_ops, i32 noundef 5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_del_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_build_state(ptr nocapture noundef readnone %net, ptr noundef %nla, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb) #11
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !50
  %1 = getelementptr inbounds [2 x ptr], ptr %tb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !50
  %3 = zext i32 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %family, label %entry.cleanup_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 10, label %entry.if.end_crit_edge70
  ]

entry.if.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge70
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %4 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @seg6_iptunnel_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i = zext i16 %9 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %9)
  %cmp11 = icmp ult i16 %9, 32
  br i1 %cmp11, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %11, label %if.end13.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end13.sw.epilog_crit_edge
    i32 2, label %if.end13.sw.epilog_crit_edge71
  ]

if.end13.sw.epilog_crit_edge71:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %family)
  %cmp14.not = icmp eq i32 %family, 10
  br i1 %cmp14.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge71
  %srh = getelementptr i8, ptr %7, i32 8
  %sub = add nsw i32 %conv.i, -8
  %call18 = call zeroext i1 @seg6_validate_srh(ptr noundef %srh, i32 noundef %sub, i1 noundef zeroext false) #11
  br i1 %call18, label %if.end20, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %sw.epilog
  %add = add nuw nsw i32 %conv.i, 4
  %call21 = call ptr @lwtunnel_state_alloc(i32 noundef %add) #11
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call21, i32 0, i32 7
  %call26 = call i32 @dst_cache_init(ptr noundef %data.i, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call21) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %tuninfo30 = getelementptr inbounds %struct.lwtunnel_state, ptr %call21, i32 1, i32 3
  %13 = call ptr @memcpy(ptr %tuninfo30, ptr %add.ptr.i, i32 %sub.i)
  %14 = ptrtoint ptr %call21 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 5, ptr %call21, align 4
  %flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call21, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = or i16 %16, 2
  store i16 %17, ptr %flags, align 2
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp33.not = icmp eq i32 %19, 2
  br i1 %cmp33.not, label %if.end29.seg6_lwt_headroom.exit_crit_edge, label %if.end40

if.end29.seg6_lwt_headroom.exit_crit_edge:        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_lwt_headroom.exit

if.end40:                                         ; preds = %if.end29
  %20 = or i16 %16, 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %flags, align 2
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %add.ptr.i, align 4
  %23 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %.pr, label %if.end40.sw.epilog.i_crit_edge [
    i32 2, label %if.end40.seg6_lwt_headroom.exit_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end40.seg6_lwt_headroom.exit_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_lwt_headroom.exit

if.end40.sw.epilog.i_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end40.sw.epilog.i_crit_edge
  %head.0.i = phi i16 [ 8, %if.end40.sw.epilog.i_crit_edge ], [ 48, %sw.bb.i ]
  %hdrlen.i = getelementptr i8, ptr %7, i32 9
  %24 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdrlen.i, align 1
  %conv.i69 = zext i8 %25 to i16
  %add.i = shl nuw nsw i16 %conv.i69, 3
  %add2.i = add nuw nsw i16 %add.i, %head.0.i
  br label %seg6_lwt_headroom.exit

seg6_lwt_headroom.exit:                           ; preds = %sw.epilog.i, %if.end40.seg6_lwt_headroom.exit_crit_edge, %if.end29.seg6_lwt_headroom.exit_crit_edge
  %retval.0.i = phi i16 [ %add2.i, %sw.epilog.i ], [ 0, %if.end40.seg6_lwt_headroom.exit_crit_edge ], [ 0, %if.end29.seg6_lwt_headroom.exit_crit_edge ]
  %headroom = getelementptr inbounds %struct.lwtunnel_state, ptr %call21, i32 0, i32 2
  %26 = ptrtoint ptr %headroom to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %retval.0.i, ptr %headroom, align 4
  %27 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call21, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %seg6_lwt_headroom.exit, %if.then28, %if.end20.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then28 ], [ 0, %seg6_lwt_headroom.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seg6_destroy_state(ptr noundef %lwt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwt, i32 0, i32 7
  tail call void @dst_cache_destroy(ptr noundef %data.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@seg6_output, %if.then)) #11
          to label %if.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.skb_dst.exit.i_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !46

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %9, label %skb_dst.exit.i.return_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb3.i
  ]

skb_dst.exit.i.return_crit_edge:                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb.i:                                          ; preds = %skb_dst.exit.i
  %call.i11.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %7, ptr noundef nonnull @seg6_output_core) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i11.i)
  %cmp.i.i = icmp eq i32 %call.i11.i, 1
  br i1 %cmp.i.i, label %sw.bb.i.cleanup.sink.split.i_crit_edge, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb.i.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %skb_dst.exit.i
  %call.i12.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %7, ptr noundef nonnull @seg6_output_core) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i12.i)
  %cmp.i13.i = icmp eq i32 %call.i12.i, 1
  br i1 %cmp.i13.i, label %sw.bb3.i.cleanup.sink.split.i_crit_edge, label %sw.bb3.i.return_crit_edge

sw.bb3.i.return_crit_edge:                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3.i.cleanup.sink.split.i_crit_edge:          ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb3.i.cleanup.sink.split.i_crit_edge, %sw.bb.i.cleanup.sink.split.i_crit_edge
  %call1.i14.i = tail call i32 @seg6_output_core(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @seg6_output_core(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end, %cleanup.sink.split.i, %sw.bb3.i.return_crit_edge, %sw.bb.i.return_crit_edge, %skb_dst.exit.i.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %skb_dst.exit.i.return_crit_edge ], [ %call.i11.i, %sw.bb.i.return_crit_edge ], [ %call.i12.i, %sw.bb3.i.return_crit_edge ], [ %call1.i14.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_input(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@seg6_input, %if.then)) #11
          to label %if.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.skb_dst.exit.i_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !46

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i.i, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol.i, align 8
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %14, label %skb_dst.exit.i.return_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb4.i
  ]

skb_dst.exit.i.return_crit_edge:                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb.i:                                          ; preds = %skb_dst.exit.i
  %call.i13.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 4, ptr noundef %12, ptr noundef null, ptr noundef %skb, ptr noundef %7, ptr noundef nonnull @seg6_input_core) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i13.i)
  %cmp.i.i = icmp eq i32 %call.i13.i, 1
  br i1 %cmp.i.i, label %sw.bb.i.cleanup.sink.split.i_crit_edge, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb.i.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %skb_dst.exit.i
  %call.i14.i = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 4, ptr noundef %12, ptr noundef null, ptr noundef %skb, ptr noundef %7, ptr noundef nonnull @seg6_input_core) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14.i)
  %cmp.i15.i = icmp eq i32 %call.i14.i, 1
  br i1 %cmp.i15.i, label %sw.bb4.i.cleanup.sink.split.i_crit_edge, label %sw.bb4.i.return_crit_edge

sw.bb4.i.return_crit_edge:                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4.i.cleanup.sink.split.i_crit_edge:          ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb4.i.cleanup.sink.split.i_crit_edge, %sw.bb.i.cleanup.sink.split.i_crit_edge
  %call1.i16.i = tail call i32 @seg6_input_core(ptr noundef %12, ptr noundef null, ptr noundef %skb) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %call5 = tail call i32 @seg6_input_core(ptr noundef %20, ptr noundef null, ptr noundef %skb)
  br label %return

return:                                           ; preds = %if.end, %cleanup.sink.split.i, %sw.bb4.i.return_crit_edge, %sw.bb.i.return_crit_edge, %skb_dst.exit.i.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %skb_dst.exit.i.return_crit_edge ], [ %call.i13.i, %sw.bb.i.return_crit_edge ], [ %call.i14.i, %sw.bb4.i.return_crit_edge ], [ %call1.i16.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_fill_encap_info(ptr noundef %skb, ptr nocapture noundef readonly %lwtstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srh.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 4
  %hdrlen.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh.i, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen.i, align 1
  %conv.i = zext i8 %1 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %add1.i = add nuw nsw i32 %add.i, 12
  %call.i = tail call ptr @nla_reserve(ptr noundef %skb, i32 noundef 1, i32 noundef %add1.i) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.nla_put_srh.exit_crit_edge, label %2

entry.nla_put_srh.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_srh.exit

2:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 4
  %3 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %tuninfo.i, i32 %add1.i)
  br label %nla_put_srh.exit

nla_put_srh.exit:                                 ; preds = %2, %entry.nla_put_srh.exit_crit_edge
  %4 = phi i32 [ 0, %2 ], [ -90, %entry.nla_put_srh.exit_crit_edge ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @seg6_encap_nlsize(ptr nocapture noundef readonly %lwtstate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srh = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 4
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %sub.i = add nuw nsw i32 %add, 19
  %and.i = and i32 %sub.i, 4088
  ret i32 %and.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @seg6_encap_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srh = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 4
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 1
  %0 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %1 to i32
  %add = shl nuw nsw i32 %conv, 3
  %srh3 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 4
  %hdrlen5 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh3, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen5, align 1
  %conv6 = zext i8 %3 to i32
  %add7 = shl nuw nsw i32 %conv6, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add7)
  %cmp.not = icmp eq i32 %add, %add7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tuninfo.i17 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 1, i32 3
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 1, i32 3
  %add2 = add nuw nsw i32 %add, 12
  %call11 = tail call i32 @memcmp(ptr noundef %tuninfo.i, ptr noundef %tuninfo.i17, i32 noundef %add2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @seg6_validate_srh(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_output_core(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %call1 = tail call fastcc i32 @seg6_do_srh(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %skb_dst.exit.drop_crit_edge, !prof !47

skb_dst.exit.drop_crit_edge:                      ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end:                                           ; preds = %skb_dst.exit
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 0, i32 7
  %8 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !52
  %call5 = tail call ptr @dst_cache_get(ptr noundef %data.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !53
  %12 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i98 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i98 to ptr
  %preempt_count.i.i99 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i99 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i99, align 4
  %sub.i = add i32 %15, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i99, align 4
  %tobool9.not = icmp eq ptr %call5, null
  br i1 %tobool9.not, label %if.then18, label %if.end.if.end38_crit_edge, !prof !46

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then18:                                        ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #11
  %20 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %daddr20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %21 = call ptr @memcpy(ptr %daddr, ptr %daddr20, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr21 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %saddr, ptr %saddr21, i32 16)
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %and.i106 = and i32 %24, 268435455
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %25 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i106, ptr %flowlabel, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %29 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flowic_mark, align 8
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nexthdr, align 2
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %32 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %flowic_proto, align 2
  %call.i107 = call ptr @ip6_route_output_flags(ptr noundef %net, ptr noundef null, ptr noundef nonnull %fl6, i32 noundef 0) #11
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i107, i32 0, i32 15
  %33 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool25.not = icmp eq i16 %34, 0
  br i1 %tobool25.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %35 = call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i100 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i100 to ptr
  %preempt_count.i.i101 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i101, align 4
  %add.i102 = add i32 %38, 1
  store volatile i32 %add.i102, ptr %preempt_count.i.i101, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !54
  call void @dst_cache_set_ip6(ptr noundef %data.i, ptr noundef %call.i107, ptr noundef %saddr) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !55
  %39 = call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i103 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i103 to ptr
  %preempt_count.i.i104 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i104, align 4
  %sub.i105 = add i32 %42, -1
  store volatile i32 %sub.i105, ptr %preempt_count.i.i104, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  br label %if.end38

cleanup:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %conv = sext i16 %34 to i32
  call void @dst_release(ptr noundef %call.i107) #11
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #11
  br label %drop

if.end38:                                         ; preds = %cleanup.thread, %if.end.if.end38_crit_edge
  %dst.0 = phi ptr [ %call5, %if.end.if.end38_crit_edge ], [ %call.i107, %cleanup.thread ]
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i108 = icmp ne i32 %44, 0
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond = and i1 %tobool.not.i108, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i.i, label %if.end38.skb_dst_drop.exit_crit_edge

if.end38.skb_dst_drop.exit_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %44, -2
  %45 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %45) #11
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.end38.skb_dst_drop.exit_crit_edge
  %tobool.not.i109 = icmp eq ptr %dst.0, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %46 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i109, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %47 = ptrtoint ptr %dst.0 to i32
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %0, align 8
  %49 = ptrtoint ptr %dst.0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dst.0, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hard_header_len, align 2
  %conv39 = zext i16 %52 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 21
  %53 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %needed_headroom, align 8
  %conv41 = zext i16 %54 to i32
  %add = add nuw nsw i32 %conv41, %conv39
  %and = and i32 %add, 131056
  %add42 = add nuw nsw i32 %and, 16
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %55 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i110 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i110, label %skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge: ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %56 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %57, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %58 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i111 = and i32 %59, 65535
  %shr.i.i = ashr i32 %59, 16
  %sub.i.i = sub nsw i32 %and.i.i111, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %skb_dst_drop.exit.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add42)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add42
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end52_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end52_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %64 = call i32 @llvm.usub.sat.i32(i32 %add42, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %64, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool44.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool44.not, label %skb_cow_head.exit.if.end52_crit_edge, label %skb_cow_head.exit.drop_crit_edge, !prof !47

skb_cow_head.exit.drop_crit_edge:                 ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

skb_cow_head.exit.if.end52_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end52:                                         ; preds = %skb_cow_head.exit.if.end52_crit_edge, %skb_header_cloned.exit.i.if.end52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@seg6_output_core, %if.then61)) #11
          to label %if.end65 [label %if.then61], !srcloc !51

if.then61:                                        ; preds = %if.end52
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %0, align 8
  %and.i112 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i113 = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i113, label %if.then61.skb_dst.exit122_crit_edge, label %land.lhs.true.i116

if.then61.skb_dst.exit122_crit_edge:              ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit122

land.lhs.true.i116:                               ; preds = %if.then61
  %call.i114 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool1.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool1.not.i115, label %land.rhs.i119, label %land.lhs.true.i116.skb_dst.exit122_crit_edge

land.lhs.true.i116.skb_dst.exit122_crit_edge:     ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit122

land.rhs.i119:                                    ; preds = %land.lhs.true.i116
  %call2.i117 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i117)
  %tobool3.not.i118 = icmp eq i32 %call2.i117, 0
  br i1 %tobool3.not.i118, label %do.end.i120, label %land.rhs.i119.skb_dst.exit122_crit_edge, !prof !46

land.rhs.i119.skb_dst.exit122_crit_edge:          ; preds = %land.rhs.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit122

do.end.i120:                                      ; preds = %land.rhs.i119
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit122

skb_dst.exit122:                                  ; preds = %do.end.i120, %land.rhs.i119.skb_dst.exit122_crit_edge, %land.lhs.true.i116.skb_dst.exit122_crit_edge, %if.then61.skb_dst.exit122_crit_edge
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %0, align 8
  %and25.i121 = and i32 %68, -2
  %69 = inttoptr i32 %and25.i121 to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %call.i123 = call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 3, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %71, ptr noundef nonnull @dst_output) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i123)
  %cmp.i = icmp eq i32 %call.i123, 1
  br i1 %cmp.i, label %if.then.i124, label %skb_dst.exit122.cleanup67_crit_edge

skb_dst.exit122.cleanup67_crit_edge:              ; preds = %skb_dst.exit122
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.then.i124:                                     ; preds = %skb_dst.exit122
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %0, align 8
  %and.i.i128 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i128)
  %tobool.not.i.i129 = icmp eq i32 %and.i.i128, 0
  br i1 %tobool.not.i.i129, label %if.then.i124.dst_output.exit140_crit_edge, label %land.lhs.true.i.i132

if.then.i124.dst_output.exit140_crit_edge:        ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit140

land.lhs.true.i.i132:                             ; preds = %if.then.i124
  %call.i.i130 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool1.not.i.i131 = icmp eq i32 %call.i.i130, 0
  br i1 %tobool1.not.i.i131, label %land.rhs.i.i135, label %land.lhs.true.i.i132.dst_output.exit140_crit_edge

land.lhs.true.i.i132.dst_output.exit140_crit_edge: ; preds = %land.lhs.true.i.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit140

land.rhs.i.i135:                                  ; preds = %land.lhs.true.i.i132
  %call2.i.i133 = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i133)
  %tobool3.not.i.i134 = icmp eq i32 %call2.i.i133, 0
  br i1 %tobool3.not.i.i134, label %do.end.i.i136, label %land.rhs.i.i135.dst_output.exit140_crit_edge, !prof !46

land.rhs.i.i135.dst_output.exit140_crit_edge:     ; preds = %land.rhs.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit140

do.end.i.i136:                                    ; preds = %land.rhs.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit140

dst_output.exit140:                               ; preds = %do.end.i.i136, %land.rhs.i.i135.dst_output.exit140_crit_edge, %land.lhs.true.i.i132.dst_output.exit140_crit_edge, %if.then.i124.dst_output.exit140_crit_edge
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %0, align 8
  %and25.i.i137 = and i32 %75, -2
  %76 = inttoptr i32 %and25.i.i137 to ptr
  %output.i138 = getelementptr inbounds %struct.dst_entry, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %output.i138 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %output.i138, align 4
  %call1.i139 = call i32 %78(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup67

if.end65:                                         ; preds = %if.end52
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %0, align 8
  %and.i.i125 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end65.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.end65.dst_output.exit_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.end65
  %call.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !46

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.end65.dst_output.exit_crit_edge
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %82, -2
  %83 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %output.i, align 4
  %call1.i127 = call i32 %85(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #11
  br label %cleanup67

drop:                                             ; preds = %skb_cow_head.exit.drop_crit_edge, %cleanup, %skb_dst.exit.drop_crit_edge
  %err.1 = phi i32 [ %call1, %skb_dst.exit.drop_crit_edge ], [ %conv, %cleanup ], [ %call4.i.i, %skb_cow_head.exit.drop_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup67

cleanup67:                                        ; preds = %drop, %dst_output.exit, %dst_output.exit140, %skb_dst.exit122.cleanup67_crit_edge
  %retval.0 = phi i32 [ %err.1, %drop ], [ %call1.i127, %dst_output.exit ], [ %call1.i139, %dst_output.exit140 ], [ %call.i123, %skb_dst.exit122.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i8 noundef zeroext %pf, i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #4 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !48
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %pf, label %land.end149 [
    i8 2, label %sw.bb
    i8 10, label %sw.bb16
    i8 3, label %land.end
    i8 7, label %sw.bb102
  ]

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b4 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b4, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb16:                                          ; preds = %rcu_read_lock.exit
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb16
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b2173 = load i1, ptr @nf_hook.__warned.7, align 1
  br i1 %.b2173, label %land.lhs.true29.sw.epilog_crit_edge, label %land.lhs.true29.sw.epilog.sink.split_crit_edge

land.lhs.true29.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.end:                                         ; preds = %rcu_read_lock.exit
  %.b2182 = load i1, ptr @nf_hook.__already_done, align 1
  br i1 %.b2182, label %land.end.if.end194_crit_edge, label %if.then46, !prof !47

land.end.if.end194_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then46:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nf_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 236, i32 noundef 9, ptr noundef null) #11
  br label %if.end194

sw.bb102:                                         ; preds = %rcu_read_lock.exit
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %9 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %sw.bb102.sw.epilog_crit_edge

sw.bb102.sw.epilog_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %sw.bb102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b2191 = load i1, ptr @nf_hook.__warned.9, align 1
  br i1 %.b2191, label %land.lhs.true115.sw.epilog_crit_edge, label %land.lhs.true115.sw.epilog.sink.split_crit_edge

land.lhs.true115.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.end149:                                      ; preds = %rcu_read_lock.exit
  %.b2205 = load i1, ptr @nf_hook.__already_done.11, align 1
  br i1 %.b2205, label %land.end149.if.end194_crit_edge, label %if.then156, !prof !47

land.end149.if.end194_crit_edge:                  ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then156:                                       ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nf_hook.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 252, i32 noundef 9, ptr noundef null) #11
  br label %if.end194

sw.epilog.sink.split:                             ; preds = %land.lhs.true115.sw.epilog.sink.split_crit_edge, %land.lhs.true29.sw.epilog.sink.split_crit_edge, %land.lhs.true9.sw.epilog.sink.split_crit_edge
  %nf_hook.__warned.9.sink = phi ptr [ @nf_hook.__warned, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.7, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.9, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 229, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ 232, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ 243, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %hook_head.0.ph = phi ptr [ %6, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ %8, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %11 = ptrtoint ptr %nf_hook.__warned.9.sink to i32
  call void @__asan_store1_noabort(i32 %11)
  store i1 true, ptr %nf_hook.__warned.9.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef %.sink, ptr noundef nonnull @.str.2) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %sw.bb102.sw.epilog_crit_edge, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hook_head.0 = phi ptr [ %6, %land.lhs.true9.sw.epilog_crit_edge ], [ %6, %land.lhs.true6.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %8, %land.lhs.true29.sw.epilog_crit_edge ], [ %8, %land.lhs.true26.sw.epilog_crit_edge ], [ %8, %sw.bb16.sw.epilog_crit_edge ], [ %10, %land.lhs.true115.sw.epilog_crit_edge ], [ %10, %land.lhs.true112.sw.epilog_crit_edge ], [ %10, %sw.bb102.sw.epilog_crit_edge ], [ %hook_head.0.ph, %sw.epilog.sink.split ]
  %tobool191.not = icmp eq ptr %hook_head.0, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #11
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %13 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %pf, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %18 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %hook_head.0, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #11
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge, %if.then156, %land.end149.if.end194_crit_edge, %if.then46, %land.end.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ], [ 1, %if.then46 ], [ 1, %land.end.if.end194_crit_edge ], [ 1, %if.then156 ], [ 1, %land.end149.if.end194_crit_edge ]
  %call.i6 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i6, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end194
  %call1.i7 = call i32 @debug_lockdep_rcu_enabled() #11
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !49
  %19 = call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i.i.i13 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seg6_do_srh(ptr noundef %skb) unnamed_addr #0 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %tuninfo.i = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 3
  %8 = ptrtoint ptr %tuninfo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tuninfo.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %9, label %skb_dst.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb33
  ]

skb_dst.exit.sw.epilog_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %skb_dst.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %12)
  %cmp.not = icmp eq i16 %12, -31011
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %srh = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 4
  %call3 = tail call i32 @seg6_do_srh_inline(ptr noundef %skb, ptr noundef %srh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.sw.epilog_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %skb_dst.exit
  %call7 = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 512) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %protocol11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol11, align 8
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %14, label %if.end10.cleanup_crit_edge [
    i16 -31011, label %if.end10.if.end23_crit_edge
    i16 2048, label %if.then20
  ]

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end10.if.end23_crit_edge
  %proto.0 = phi i32 [ 4, %if.then20 ], [ 41, %if.end10.if.end23_crit_edge ]
  %srh24 = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 4
  %call26 = tail call i32 @seg6_do_srh_encap(ptr noundef %skb, ptr noundef %srh24, i32 noundef %proto.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i93 = trunc i32 %sub.ptr.sub.i.i to i16
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %22 = trunc i32 %sub.ptr.sub.i to i16
  %conv1.i = add i16 %22, %conv.i.i93
  %23 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv1.i, ptr %inner_transport_header.i.i, align 2
  %24 = ptrtoint ptr %protocol11 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol11, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %25, ptr %26, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %28 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  br label %sw.epilog.sink.split

sw.bb33:                                          ; preds = %skb_dst.exit
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp.i.not = icmp eq i16 %30, -1
  br i1 %cmp.i.not, label %sw.bb33.cleanup_crit_edge, label %if.end37

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %sw.bb33
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %31 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mac_len, align 4
  %conv38 = zext i16 %32 to i32
  %call39 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %conv38, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end37.cleanup_crit_edge, label %if.end43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %33 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %34)
  %cmp.i.not.i = icmp eq i16 %34, -1
  br i1 %cmp.i.not.i, label %if.end43.skb_mac_header_rebuild.exit_crit_edge, label %if.then.i

if.end43.skb_mac_header_rebuild.exit_crit_edge:   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_mac_header_rebuild.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %head.i.i95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i95, align 8
  %conv.i.i96 = zext i16 %34 to i32
  %add.ptr.i.i97 = getelementptr i8, ptr %36, i32 %conv.i.i96
  %37 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mac_len, align 4
  %conv.i = zext i16 %38 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv1.i11.i = sub i16 %conv.i.i.i, %38
  %41 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv1.i11.i, ptr %mac_header.i, align 2
  %conv.i14.i = zext i16 %conv1.i11.i to i32
  %add.ptr.i15.i = getelementptr i8, ptr %36, i32 %conv.i14.i
  %42 = call ptr @memmove(ptr %add.ptr.i15.i, ptr %add.ptr.i.i97, i32 %conv.i)
  br label %skb_mac_header_rebuild.exit

skb_mac_header_rebuild.exit:                      ; preds = %if.then.i, %if.end43.skb_mac_header_rebuild.exit_crit_edge
  %43 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %mac_len, align 4
  %conv45 = zext i16 %44 to i32
  %call46 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv45) #11
  %srh47 = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 1, i32 4
  %call49 = tail call i32 @seg6_do_srh_encap(ptr noundef %skb, ptr noundef %srh47, i32 noundef 143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %skb_mac_header_rebuild.exit.cleanup_crit_edge

skb_mac_header_rebuild.exit.cleanup_crit_edge:    ; preds = %skb_mac_header_rebuild.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %skb_mac_header_rebuild.exit
  call void @__sanitizer_cov_trace_pc() #13
  %protocol53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end52, %if.end29
  %protocol53.sink = phi ptr [ %protocol53, %if.end52 ], [ %protocol11, %if.end29 ]
  %45 = ptrtoint ptr %protocol53.sink to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -31011, ptr %protocol53.sink, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge, %skb_dst.exit.sw.epilog_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %48 = trunc i32 %47 to i16
  %conv54 = add i16 %48, -40
  %head.i.i98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %49 = ptrtoint ptr %head.i.i98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i98, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %51 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i99 = zext i16 %52 to i32
  %add.ptr.i.i100 = getelementptr i8, ptr %50, i32 %conv.i.i99
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i100, i32 0, i32 2
  %53 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv54, ptr %payload_len, align 4
  %data.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i101, align 4
  %56 = load ptr, ptr %head.i.i98, align 8
  %sub.ptr.lhs.cast.i.i103 = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i104 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i105 = sub i32 %sub.ptr.lhs.cast.i.i103, %sub.ptr.rhs.cast.i.i104
  %conv.i.i106 = trunc i32 %sub.ptr.sub.i.i105 to i16
  %transport_header.i.i107 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %add.i = add i16 %conv.i.i106, 40
  %57 = ptrtoint ptr %transport_header.i.i107 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %add.i, ptr %transport_header.i.i107, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %58 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %59, -8
  %60 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

sw.epilog.nf_reset_ct.exit_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %60, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr nonnull %60, i32 1, i32 3, i32 1) #11
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %60, ptr nonnull %60, i32 1, ptr nonnull elementtype(i32) %60) #11, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !47

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %60, i32 noundef 3) #11
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !58
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %60) #11
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %sw.epilog.nf_reset_ct.exit_crit_edge
  %62 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %_nfct.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %nf_reset_ct.exit, %skb_mac_header_rebuild.exit.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nf_reset_ct.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %sw.bb6.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -12, %if.end37.cleanup_crit_edge ], [ %call49, %skb_mac_header_rebuild.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #4 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
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
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_input_core(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !46

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %call1 = tail call fastcc i32 @seg6_do_srh(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !47

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lwtstate, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %7, i32 0, i32 7
  %8 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %11, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !59
  %call5 = tail call ptr @dst_cache_get(ptr noundef %data.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !60
  %12 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i78 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i78 to ptr
  %preempt_count.i.i79 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i79 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i79, align 4
  %sub.i = add i32 %15, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i79, align 4
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i86 = icmp eq i32 %17, 0
  br i1 %tobool.not.i86, label %if.end.skb_dst_drop.exit_crit_edge, label %if.then.i

if.end.skb_dst_drop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %if.end
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %17, -2
  %18 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %18) #11
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %0, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %if.end.skb_dst_drop.exit_crit_edge
  %tobool9.not = icmp eq ptr %call5, null
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %skb_dst_drop.exit
  tail call void @ip6_route_input(ptr noundef %skb) #11
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 8
  %and.i87 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %if.then10.skb_dst.exit97_crit_edge, label %land.lhs.true.i91

if.then10.skb_dst.exit97_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit97

land.lhs.true.i91:                                ; preds = %if.then10
  %call.i89 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool1.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool1.not.i90, label %land.rhs.i94, label %land.lhs.true.i91.skb_dst.exit97_crit_edge

land.lhs.true.i91.skb_dst.exit97_crit_edge:       ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit97

land.rhs.i94:                                     ; preds = %land.lhs.true.i91
  %call2.i92 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i92)
  %tobool3.not.i93 = icmp eq i32 %call2.i92, 0
  br i1 %tobool3.not.i93, label %do.end.i95, label %land.rhs.i94.skb_dst.exit97_crit_edge, !prof !46

land.rhs.i94.skb_dst.exit97_crit_edge:            ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit97

do.end.i95:                                       ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit97

skb_dst.exit97:                                   ; preds = %do.end.i95, %land.rhs.i94.skb_dst.exit97_crit_edge, %land.lhs.true.i91.skb_dst.exit97_crit_edge, %if.then10.skb_dst.exit97_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 8
  %and25.i96 = and i32 %23, -2
  %24 = inttoptr i32 %and25.i96 to ptr
  %error = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 15
  %25 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool12.not = icmp eq i16 %26, 0
  br i1 %tobool12.not, label %do.body14, label %skb_dst.exit97.if.end23_crit_edge

skb_dst.exit97.if.end23_crit_edge:                ; preds = %skb_dst.exit97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.body14:                                        ; preds = %skb_dst.exit97
  call void @__sanitizer_cov_trace_pc() #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i80 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i80 to ptr
  %preempt_count.i.i81 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i81, align 4
  %add.i82 = add i32 %30, 1
  store volatile i32 %add.i82, ptr %preempt_count.i.i81, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !61
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %33 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %34 to i32
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  tail call void @dst_cache_set_ip6(ptr noundef %data.i, ptr noundef %24, ptr noundef %saddr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %35 = tail call i32 @llvm.read_register.i32(metadata !36) #11
  %and.i.i.i83 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i83 to ptr
  %preempt_count.i.i84 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i84, align 4
  %sub.i85 = add i32 %38, -1
  store volatile i32 %sub.i85, ptr %preempt_count.i.i84, align 4
  br label %if.end23

if.else:                                          ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %40 = ptrtoint ptr %call5 to i32
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %0, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %do.body14, %skb_dst.exit97.if.end23_crit_edge
  %dst.0 = phi ptr [ %call5, %if.else ], [ %24, %skb_dst.exit97.if.end23_crit_edge ], [ %24, %do.body14 ]
  %42 = ptrtoint ptr %dst.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dst.0, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 19
  %44 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %45 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 21
  %46 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %needed_headroom, align 8
  %conv25 = zext i16 %47 to i32
  %add = add nuw nsw i32 %conv25, %conv
  %and = and i32 %add, 131056
  %add26 = add nuw nsw i32 %and, 16
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %48 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i99 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i99, label %if.end23.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end23.skb_header_cloned.exit.i_crit_edge:      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %49 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %51 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i100 = and i32 %52, 65535
  %shr.i.i = ashr i32 %52, 16
  %sub.i.i = sub nsw i32 %and.i.i100, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end23.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end23.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %55 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add26)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %add26
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end36_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end36_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %57 = tail call i32 @llvm.usub.sat.i32(i32 %add26, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %57, 127
  %and.i4.i = and i32 %add.i.i, 524160
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool28.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool28.not, label %skb_cow_head.exit.if.end36_crit_edge, label %skb_cow_head.exit.cleanup_crit_edge, !prof !47

skb_cow_head.exit.cleanup_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_cow_head.exit.if.end36_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end36:                                         ; preds = %skb_cow_head.exit.if.end36_crit_edge, %skb_header_cloned.exit.i.if.end36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nf_hooks_lwtunnel_enabled, ptr blockaddress(@seg6_input_core, %if.then45)) #11
          to label %if.end50 [label %if.then45], !srcloc !51

if.then45:                                        ; preds = %if.end36
  %58 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 127
  %61 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nd_net.i, align 4
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %0, align 8
  %and.i101 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i102 = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i102, label %if.then45.skb_dst.exit111_crit_edge, label %land.lhs.true.i105

if.then45.skb_dst.exit111_crit_edge:              ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit111

land.lhs.true.i105:                               ; preds = %if.then45
  %call.i103 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool1.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool1.not.i104, label %land.rhs.i108, label %land.lhs.true.i105.skb_dst.exit111_crit_edge

land.lhs.true.i105.skb_dst.exit111_crit_edge:     ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit111

land.rhs.i108:                                    ; preds = %land.lhs.true.i105
  %call2.i106 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i106)
  %tobool3.not.i107 = icmp eq i32 %call2.i106, 0
  br i1 %tobool3.not.i107, label %do.end.i109, label %land.rhs.i108.skb_dst.exit111_crit_edge, !prof !46

land.rhs.i108.skb_dst.exit111_crit_edge:          ; preds = %land.rhs.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit111

do.end.i109:                                      ; preds = %land.rhs.i108
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit111

skb_dst.exit111:                                  ; preds = %do.end.i109, %land.rhs.i108.skb_dst.exit111_crit_edge, %land.lhs.true.i105.skb_dst.exit111_crit_edge, %if.then45.skb_dst.exit111_crit_edge
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %0, align 8
  %and25.i110 = and i32 %66, -2
  %67 = inttoptr i32 %and25.i110 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i112 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 10, i32 noundef 3, ptr noundef %62, ptr noundef null, ptr noundef %skb, ptr noundef %69, ptr noundef nonnull @seg6_input_finish) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i112)
  %cmp.i = icmp eq i32 %call.i112, 1
  br i1 %cmp.i, label %if.then.i113, label %skb_dst.exit111.cleanup_crit_edge

skb_dst.exit111.cleanup_crit_edge:                ; preds = %skb_dst.exit111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i113:                                     ; preds = %skb_dst.exit111
  %70 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %0, align 8
  %and.i.i.i116 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i116)
  %tobool.not.i.i.i117 = icmp eq i32 %and.i.i.i116, 0
  br i1 %tobool.not.i.i.i117, label %if.then.i113.seg6_input_finish.exit128_crit_edge, label %land.lhs.true.i.i.i120

if.then.i113.seg6_input_finish.exit128_crit_edge: ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_input_finish.exit128

land.lhs.true.i.i.i120:                           ; preds = %if.then.i113
  %call.i.i.i118 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i118)
  %tobool1.not.i.i.i119 = icmp eq i32 %call.i.i.i118, 0
  br i1 %tobool1.not.i.i.i119, label %land.rhs.i.i.i123, label %land.lhs.true.i.i.i120.seg6_input_finish.exit128_crit_edge

land.lhs.true.i.i.i120.seg6_input_finish.exit128_crit_edge: ; preds = %land.lhs.true.i.i.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_input_finish.exit128

land.rhs.i.i.i123:                                ; preds = %land.lhs.true.i.i.i120
  %call2.i.i.i121 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i121)
  %tobool3.not.i.i.i122 = icmp eq i32 %call2.i.i.i121, 0
  br i1 %tobool3.not.i.i.i122, label %do.end.i.i.i124, label %land.rhs.i.i.i123.seg6_input_finish.exit128_crit_edge, !prof !46

land.rhs.i.i.i123.seg6_input_finish.exit128_crit_edge: ; preds = %land.rhs.i.i.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_input_finish.exit128

do.end.i.i.i124:                                  ; preds = %land.rhs.i.i.i123
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %seg6_input_finish.exit128

seg6_input_finish.exit128:                        ; preds = %do.end.i.i.i124, %land.rhs.i.i.i123.seg6_input_finish.exit128_crit_edge, %land.lhs.true.i.i.i120.seg6_input_finish.exit128_crit_edge, %if.then.i113.seg6_input_finish.exit128_crit_edge
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %0, align 8
  %and25.i.i.i125 = and i32 %73, -2
  %74 = inttoptr i32 %and25.i.i.i125 to ptr
  %input.i.i126 = getelementptr inbounds %struct.dst_entry, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %input.i.i126 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input.i.i126, align 4
  %call1.i.i127 = tail call i32 %76(ptr noundef %skb) #11
  br label %cleanup

if.end50:                                         ; preds = %if.end36
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %0, align 8
  %and.i.i.i115 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i115)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i115, 0
  br i1 %tobool.not.i.i.i, label %if.end50.seg6_input_finish.exit_crit_edge, label %land.lhs.true.i.i.i

if.end50.seg6_input_finish.exit_crit_edge:        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_input_finish.exit

land.lhs.true.i.i.i:                              ; preds = %if.end50
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.seg6_input_finish.exit_crit_edge

land.lhs.true.i.i.i.seg6_input_finish.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_input_finish.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.seg6_input_finish.exit_crit_edge, !prof !46

land.rhs.i.i.i.seg6_input_finish.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seg6_input_finish.exit

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %seg6_input_finish.exit

seg6_input_finish.exit:                           ; preds = %do.end.i.i.i, %land.rhs.i.i.i.seg6_input_finish.exit_crit_edge, %land.lhs.true.i.i.i.seg6_input_finish.exit_crit_edge, %if.end50.seg6_input_finish.exit_crit_edge
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %80, -2
  %81 = inttoptr i32 %and25.i.i.i to ptr
  %input.i.i = getelementptr inbounds %struct.dst_entry, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %input.i.i, align 4
  %call1.i.i = tail call i32 %83(ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %seg6_input_finish.exit, %seg6_input_finish.exit128, %skb_dst.exit111.cleanup_crit_edge, %skb_cow_head.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call1.i.i, %seg6_input_finish.exit ], [ %call4.i.i, %skb_cow_head.exit.cleanup_crit_edge ], [ %call1.i.i127, %seg6_input_finish.exit128 ], [ %call.i112, %skb_dst.exit111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_input_finish(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.dst_input.exit_crit_edge, label %land.lhs.true.i.i

entry.dst_input.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_input.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_input.exit_crit_edge

land.lhs.true.i.i.dst_input.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_input.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_input.exit_crit_edge, !prof !46

land.rhs.i.i.dst_input.exit_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_input.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %dst_input.exit

dst_input.exit:                                   ; preds = %do.end.i.i, %land.rhs.i.i.dst_input.exit_crit_edge, %land.lhs.true.i.i.dst_input.exit_crit_edge, %entry.dst_input.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %input.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %skb) #11
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_seg6_do_srh_encap, !1, !"__ksymtab_seg6_do_srh_encap", i1 false, i1 false}
!1 = !{!"../net/ipv6/seg6_iptunnel.c", i32 196, i32 1}
!2 = !{ptr @__ksymtab_seg6_do_srh_inline, !3, !"__ksymtab_seg6_do_srh_inline", i1 false, i1 false}
!3 = !{!"../net/ipv6/seg6_iptunnel.c", i32 248, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/ipv6/seg6_iptunnel.c", i32 95, i32 12}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @seg6_iptun_ops, !18, !"seg6_iptun_ops", i1 false, i1 false}
!18 = !{!"../net/ipv6/seg6_iptunnel.c", i32 587, i32 40}
!19 = !{ptr @seg6_iptunnel_policy, !20, !"seg6_iptunnel_policy", i1 false, i1 false}
!20 = !{!"../net/ipv6/seg6_iptunnel.c", i32 64, i32 32}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2149657618}
!49 = !{i64 2149657884}
!50 = !{!"auto-init"}
!51 = !{i64 2148842796, i64 2148842801, i64 2148842814, i64 2148842858, i64 2148842892, i64 2148842913}
!52 = !{i64 2157967695}
!53 = !{i64 2157967792}
!54 = !{i64 2157968078}
!55 = !{i64 2157968175}
!56 = !{i64 2148450512}
!57 = !{i64 2148364976, i64 2148365008, i64 2148365037, i64 2148365071, i64 2148365102, i64 2148365125}
!58 = !{i64 2150532165}
!59 = !{i64 2157965545}
!60 = !{i64 2157965642}
!61 = !{i64 2157965835}
!62 = !{i64 2157965932}
