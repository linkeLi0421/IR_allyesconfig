; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_tunnel_core.c_pt.bc'
source_filename = "../net/ipv4/ip_tunnel_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iptun_encaps\22, \22a\22\09"
module asm "\09.weak\09__crc_iptun_encaps\09\09\09\09"
module asm "\09.long\09__crc_iptun_encaps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22iptun_encaps\22\09\09\09\09\09"
module asm "__kstrtabns_iptun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip6tun_encaps\22, \22a\22\09"
module asm "\09.weak\09__crc_ip6tun_encaps\09\09\09\09"
module asm "\09.long\09__crc_ip6tun_encaps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6tun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6tun_encaps\22\09\09\09\09\09"
module asm "__kstrtabns_ip6tun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iptunnel_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_iptunnel_xmit\09\09\09\09"
module asm "\09.long\09__crc_iptunnel_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22iptunnel_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_iptunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__iptunnel_pull_header\22, \22a\22\09"
module asm "\09.weak\09__crc___iptunnel_pull_header\09\09\09\09"
module asm "\09.long\09__crc___iptunnel_pull_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iptunnel_pull_header:\09\09\09\09\09"
module asm "\09.asciz \09\22__iptunnel_pull_header\22\09\09\09\09\09"
module asm "__kstrtabns___iptunnel_pull_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iptunnel_metadata_reply\22, \22a\22\09"
module asm "\09.weak\09__crc_iptunnel_metadata_reply\09\09\09\09"
module asm "\09.long\09__crc_iptunnel_metadata_reply\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptunnel_metadata_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22iptunnel_metadata_reply\22\09\09\09\09\09"
module asm "__kstrtabns_iptunnel_metadata_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iptunnel_handle_offloads\22, \22a\22\09"
module asm "\09.weak\09__crc_iptunnel_handle_offloads\09\09\09\09"
module asm "\09.long\09__crc_iptunnel_handle_offloads\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptunnel_handle_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22iptunnel_handle_offloads\22\09\09\09\09\09"
module asm "__kstrtabns_iptunnel_handle_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+skb_tunnel_check_pmtu\22, \22a\22\09"
module asm "\09.weak\09__crc_skb_tunnel_check_pmtu\09\09\09\09"
module asm "\09.long\09__crc_skb_tunnel_check_pmtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_tunnel_check_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_tunnel_check_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_skb_tunnel_check_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_tunnel_metadata_cnt\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_tunnel_metadata_cnt\09\09\09\09"
module asm "\09.long\09__crc_ip_tunnel_metadata_cnt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_metadata_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_metadata_cnt\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_metadata_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_tunnel_need_metadata\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_tunnel_need_metadata\09\09\09\09"
module asm "\09.long\09__crc_ip_tunnel_need_metadata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_need_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_need_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_need_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_tunnel_unneed_metadata\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_tunnel_unneed_metadata\09\09\09\09"
module asm "\09.long\09__crc_ip_tunnel_unneed_metadata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_unneed_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_unneed_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_unneed_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_tunnel_parse_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_tunnel_parse_protocol\09\09\09\09"
module asm "\09.long\09__crc_ip_tunnel_parse_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_parse_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_tunnel_header_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_tunnel_header_ops\09\09\09\09"
module asm "\09.long\09__crc_ip_tunnel_header_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_header_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lwtunnel_encap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.137, %union.anon.138, [48 x i8], %union.anon.139, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.141, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.137 = type { ptr }
%union.anon.138 = type { i64 }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type { i32, ptr }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.143, i32, i32, i32, i16, i16, %union.anon.145, i32, %union.anon.146, %union.anon.147, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.143 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.147 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.136, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.136 = type { ptr }
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
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.101, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.101 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.158 }
%union.anon.158 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.159, i16, i8, i8, i32, i16, i16 }
%union.anon.159 = type { %struct.anon.161 }
%struct.anon.161 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.erspan_metadata = type { i32, %union.anon.166 }
%union.anon.166 = type { %struct.erspan_md2 }
%struct.erspan_md2 = type { i32, i16, i16 }

@iptun_encaps = dso_local global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_iptun_encaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptun_encaps = external dso_local constant [0 x i8], align 1
@__ksymtab_iptun_encaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptun_encaps to i32), ptr @__kstrtab_iptun_encaps, ptr @__kstrtabns_iptun_encaps }, section "___ksymtab+iptun_encaps", align 4
@ip6tun_encaps = dso_local global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_ip6tun_encaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6tun_encaps = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6tun_encaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6tun_encaps to i32), ptr @__kstrtab_ip6tun_encaps, ptr @__kstrtabns_ip6tun_encaps }, section "___ksymtab+ip6tun_encaps", align 4
@__kstrtab_iptunnel_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptunnel_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_iptunnel_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptunnel_xmit to i32), ptr @__kstrtab_iptunnel_xmit, ptr @__kstrtabns_iptunnel_xmit }, section "___ksymtab_gpl+iptunnel_xmit", align 4
@__kstrtab___iptunnel_pull_header = external dso_local constant [0 x i8], align 1
@__kstrtabns___iptunnel_pull_header = external dso_local constant [0 x i8], align 1
@__ksymtab___iptunnel_pull_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iptunnel_pull_header to i32), ptr @__kstrtab___iptunnel_pull_header, ptr @__kstrtabns___iptunnel_pull_header }, section "___ksymtab_gpl+__iptunnel_pull_header", align 4
@__kstrtab_iptunnel_metadata_reply = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptunnel_metadata_reply = external dso_local constant [0 x i8], align 1
@__ksymtab_iptunnel_metadata_reply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptunnel_metadata_reply to i32), ptr @__kstrtab_iptunnel_metadata_reply, ptr @__kstrtabns_iptunnel_metadata_reply }, section "___ksymtab_gpl+iptunnel_metadata_reply", align 4
@__kstrtab_iptunnel_handle_offloads = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptunnel_handle_offloads = external dso_local constant [0 x i8], align 1
@__ksymtab_iptunnel_handle_offloads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptunnel_handle_offloads to i32), ptr @__kstrtab_iptunnel_handle_offloads, ptr @__kstrtabns_iptunnel_handle_offloads }, section "___ksymtab_gpl+iptunnel_handle_offloads", align 4
@__kstrtab_skb_tunnel_check_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_tunnel_check_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_tunnel_check_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_tunnel_check_pmtu to i32), ptr @__kstrtab_skb_tunnel_check_pmtu, ptr @__kstrtabns_skb_tunnel_check_pmtu }, section "___ksymtab+skb_tunnel_check_pmtu", align 4
@ip_tun_lwt_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @ip_tun_build_state, ptr @ip_tun_destroy_state, ptr null, ptr null, ptr @ip_tun_fill_encap_info, ptr @ip_tun_encap_nlsize, ptr @ip_tun_cmp_encap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ip6_tun_lwt_ops = internal constant { %struct.lwtunnel_encap_ops, [60 x i8] } { %struct.lwtunnel_encap_ops { ptr @ip6_tun_build_state, ptr null, ptr null, ptr null, ptr @ip6_tun_fill_encap_info, ptr @ip6_tun_encap_nlsize, ptr @ip_tun_cmp_encap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ip_tunnel_metadata_cnt = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_ip_tunnel_metadata_cnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_metadata_cnt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_metadata_cnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_metadata_cnt to i32), ptr @__kstrtab_ip_tunnel_metadata_cnt, ptr @__kstrtabns_ip_tunnel_metadata_cnt }, section "___ksymtab+ip_tunnel_metadata_cnt", align 4
@__kstrtab_ip_tunnel_need_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_need_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_need_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_need_metadata to i32), ptr @__kstrtab_ip_tunnel_need_metadata, ptr @__kstrtabns_ip_tunnel_need_metadata }, section "___ksymtab_gpl+ip_tunnel_need_metadata", align 4
@__kstrtab_ip_tunnel_unneed_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_unneed_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_unneed_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_unneed_metadata to i32), ptr @__kstrtab_ip_tunnel_unneed_metadata, ptr @__kstrtabns_ip_tunnel_unneed_metadata }, section "___ksymtab_gpl+ip_tunnel_unneed_metadata", align 4
@__kstrtab_ip_tunnel_parse_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_parse_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_parse_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_parse_protocol to i32), ptr @__kstrtab_ip_tunnel_parse_protocol, ptr @__kstrtabns_ip_tunnel_parse_protocol }, section "___ksymtab+ip_tunnel_parse_protocol", align 4
@ip_tunnel_header_ops = dso_local constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_parse_protocol }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_ip_tunnel_header_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_header_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_header_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_header_ops to i32), ptr @__kstrtab_ip_tunnel_header_ops, ptr @__kstrtabns_ip_tunnel_header_ops }, section "___ksymtab+ip_tunnel_header_ops", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@ip_tun_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [56 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 8, [2 x i8] undef } }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer } }>, [56 x i8] zeroinitializer }, align 32
@ip_opts_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@geneve_opt_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 128, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@vxlan_opt_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@erspan_opt_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ip6_tun_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [56 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 8, [2 x i8] undef } }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer } }>, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 16]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2048]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"ip_tun_lwt_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 919, i32 40 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"ip6_tun_lwt_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1030, i32 40 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"ip_tunnel_metadata_cnt\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1050, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"ip_tunnel_header_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1080, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 271, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 1719, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"ip_tun_policy\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 432, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ip_opts_policy\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 443, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"geneve_opt_policy\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 450, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1208, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"vxlan_opt_policy\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 457, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"erspan_opt_policy\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 462, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 991, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"ip6_tun_policy\00", align 1
@___asan_gen_.51 = private constant [29 x i8] c"../net/ipv4/ip_tunnel_core.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 928, i32 32 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab___iptunnel_pull_header, ptr @__ksymtab_ip6tun_encaps, ptr @__ksymtab_ip_tunnel_header_ops, ptr @__ksymtab_ip_tunnel_metadata_cnt, ptr @__ksymtab_ip_tunnel_need_metadata, ptr @__ksymtab_ip_tunnel_parse_protocol, ptr @__ksymtab_ip_tunnel_unneed_metadata, ptr @__ksymtab_iptun_encaps, ptr @__ksymtab_iptunnel_handle_offloads, ptr @__ksymtab_iptunnel_metadata_reply, ptr @__ksymtab_iptunnel_xmit, ptr @__ksymtab_skb_tunnel_check_pmtu, ptr @ip_tun_lwt_ops, ptr @ip6_tun_lwt_ops, ptr @ip_tunnel_metadata_cnt, ptr @ip_tunnel_header_ops, ptr @.str.1, ptr @.str.2, ptr @ip_tun_policy, ptr @ip_opts_policy, ptr @geneve_opt_policy, ptr @nla_parse_nested.__msg, ptr @vxlan_opt_policy, ptr @erspan_opt_policy, ptr @.str.4, ptr @ip6_tun_policy], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_tun_lwt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_tun_lwt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_tunnel_metadata_cnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_tunnel_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_tun_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_opts_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_opt_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxlan_opt_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erspan_opt_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_tun_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iptunnel_xmit(ptr noundef %sk, ptr noundef %rt, ptr noundef %skb, i32 noundef %src, i32 noundef %dst, i8 noundef zeroext %proto, i8 noundef zeroext %tos, i8 noundef zeroext %ttl, i16 noundef zeroext %df, i1 noundef zeroext %xnet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %4 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub = add i32 %sub.ptr.sub.i.neg, %1
  %8 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %xnet) #11
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %16 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.skb_clear_hash_if_not_l4.exit_crit_edge

entry.skb_clear_hash_if_not_l4.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_clear_hash_if_not_l4.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %17 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %hash.i.i, align 4
  %bf.clear2.i.i = and i16 %bf.load.i, -193
  %18 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %bf.clear2.i.i, ptr %l4_hash.i, align 8
  br label %skb_clear_hash_if_not_l4.exit

skb_clear_hash_if_not_l4.exit:                    ; preds = %if.then.i, %entry.skb_clear_hash_if_not_l4.exit_crit_edge
  %tobool.not.i60 = icmp eq ptr %rt, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %19 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load.i61 = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i61, 4096
  %bf.shl.i = select i1 %tobool.not.i60, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i61, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %20 = ptrtoint ptr %rt to i32
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %23 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %call5 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #11
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i63 = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i64 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i65 = sub i32 %sub.ptr.lhs.cast.i63, %sub.ptr.rhs.cast.i64
  %conv.i = trunc i32 %sub.ptr.sub.i65 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %28 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i67 = and i32 %sub.ptr.sub.i65, 65535
  %add.ptr.i.i68 = getelementptr i8, ptr %27, i32 %conv.i.i67
  %29 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 69, ptr %add.ptr.i.i68, align 4
  %rt_mtu_locked.i = getelementptr inbounds %struct.rtable, ptr %rt, i32 0, i32 9
  %30 = ptrtoint ptr %rt_mtu_locked.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i69 = load i32, ptr %rt_mtu_locked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i69)
  %tobool.not.i70 = icmp sgt i32 %bf.load.i69, -1
  br i1 %tobool.not.i70, label %ip_mtu_locked.exit, label %skb_clear_hash_if_not_l4.exit.ip_mtu_locked.exit.thread_crit_edge

skb_clear_hash_if_not_l4.exit.ip_mtu_locked.exit.thread_crit_edge: ; preds = %skb_clear_hash_if_not_l4.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_mtu_locked.exit.thread

ip_mtu_locked.exit:                               ; preds = %skb_clear_hash_if_not_l4.exit
  call void @__sanitizer_cov_trace_pc() #13
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt, i32 0, i32 2
  %31 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %32, -4
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.not = icmp eq i32 %36, 0
  %spec.select = select i1 %tobool12.not, i16 %df, i16 0
  br label %ip_mtu_locked.exit.thread

ip_mtu_locked.exit.thread:                        ; preds = %ip_mtu_locked.exit, %skb_clear_hash_if_not_l4.exit.ip_mtu_locked.exit.thread_crit_edge
  %37 = phi i16 [ 0, %skb_clear_hash_if_not_l4.exit.ip_mtu_locked.exit.thread_crit_edge ], [ %spec.select, %ip_mtu_locked.exit ]
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i68, i32 0, i32 4
  %38 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %frag_off, align 2
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i68, i32 0, i32 6
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %proto, ptr %protocol, align 1
  %tos14 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i68, i32 0, i32 1
  %40 = ptrtoint ptr %tos14 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %tos, ptr %tos14, align 1
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i68, i32 0, i32 9
  %41 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dst, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i68, i32 0, i32 8
  %42 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %src, ptr %saddr, align 4
  %ttl15 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i68, i32 0, i32 5
  %43 = ptrtoint ptr %ttl15 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %ttl, ptr %ttl15, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool18.not = icmp eq i16 %47, 0
  %narrow = select i1 %tobool18.not, i16 1, i16 %47
  %conv17. = zext i16 %narrow to i32
  tail call void @__ip_select_ident(ptr noundef %11, ptr noundef %add.ptr.i.i68, i32 noundef %conv17.) #11
  %call23 = tail call i32 @ip_local_out(ptr noundef %11, ptr noundef %sk, ptr noundef %skb) #11
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %ip_mtu_locked.exit.thread.if.end34_crit_edge, label %if.then

ip_mtu_locked.exit.thread.if.end34_crit_edge:     ; preds = %ip_mtu_locked.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %ip_mtu_locked.exit.thread
  %48 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call23, label %if.then.if.else19.i_crit_edge [
    i32 2, label %if.then.if.end_crit_edge
    i32 0, label %if.then.if.end_crit_edge80
  ]

if.then.if.end_crit_edge80:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.if.else19.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19.i

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i = icmp sgt i32 %sub, 0
  br i1 %cmp.i, label %if.then.i73, label %if.else.i

if.then.i73:                                      ; preds = %if.end
  %49 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i.i71 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i71 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %52, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %53 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 130
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 64
  %56 = ptrtoint ptr %55 to i32
  %57 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i72 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i72 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %62, %56
  %63 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %63, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %64 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i.i, label %if.then.i73.u64_stats_update_begin.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i73.u64_stats_update_begin.exit.i_crit_edge: ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i73
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %66, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %67 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i33.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i33.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %72, ptrtoint (ptr @lockdep_recursion to i32)
  %73 = inttoptr i32 %add.i.i.i to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %76 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i7.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool20.not.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.u64_stats_update_begin.exit.i_crit_edge

land.lhs.true.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %80 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i.i.i = icmp eq i32 %83, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.u64_stats_update_begin.exit.i_crit_edge

land.rhs.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %84 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i9.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %87, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  %88 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %91, ptrtoint (ptr @hardirqs_enabled to i32)
  %92 = inttoptr i32 %add47.i.i.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %95 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i12.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %98, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool54.not.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.u64_stats_update_begin.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.u64_stats_update_begin.exit.i_crit_edge, label %if.then.i.i.i, !prof !75

land.rhs58.i.i.i.u64_stats_update_begin.exit.i_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %u64_stats_update_begin.exit.i

u64_stats_update_begin.exit.i:                    ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %land.rhs22.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %land.rhs.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %land.lhs.true.i.i.i.u64_stats_update_begin.exit.i_crit_edge, %if.then.i73.u64_stats_update_begin.exit.i_crit_edge
  %99 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %100, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !76
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %63, i32 0, i32 4, i32 0, i32 1
  %101 = tail call ptr @llvm.returnaddress(i32 0) #11
  %102 = ptrtoint ptr %101 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %102) #11
  %conv34.i = zext i32 %sub to i64
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %63, i32 0, i32 3
  %103 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %tx_bytes.i, align 8
  %add6.i = add i64 %104, %conv34.i
  store i64 %add6.i, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %63, i32 0, i32 2
  %105 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %tx_packets.i, align 16
  %inc.i = add i64 %106, 1
  store i64 %inc.i, ptr %tx_packets.i, align 16
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %102) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  %107 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %108, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  %109 = tail call i32 @llvm.read_register.i32(metadata !60) #11
  %and.i.i.i31.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i31.i to ptr
  %preempt_count.i.i32.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i32.i, align 4
  %sub.i.i = add i32 %112, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i32.i, align 4
  br label %if.end34

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14.i = icmp slt i32 %sub, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i.if.else19.i_crit_edge

if.else.i.if.else19.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else19.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 5
  %113 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_errors.i, align 4
  %inc17.i = add i32 %114, 1
  store i32 %inc17.i, ptr %tx_errors.i, align 4
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 16
  %115 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_aborted_errors.i, align 4
  %inc18.i = add i32 %116, 1
  store i32 %inc18.i, ptr %tx_aborted_errors.i, align 4
  br label %if.end34

if.else19.i:                                      ; preds = %if.else.i.if.else19.i_crit_edge, %if.then.if.else19.i_crit_edge
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 7
  %117 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_dropped.i, align 4
  %inc20.i = add i32 %118, 1
  store i32 %inc20.i, ptr %tx_dropped.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else19.i, %if.then16.i, %u64_stats_update_begin.exit.i, %ip_mtu_locked.exit.thread.if.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %hdr_len, i16 noundef zeroext %inner_proto, i1 noundef zeroext %raw_proto, i1 noundef zeroext %xnet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %hdr_len)
  %cmp.not.i = icmp ult i32 %sub.i.i, %hdr_len
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !79

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hdr_len)
  %cmp3.i = icmp ult i32 %1, %hdr_len
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %pskb_may_pull.exit, !prof !79

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %hdr_len, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.return_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !79

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pskb_may_pull.exit.return_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %hdr_len) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %inner_proto)
  %cmp = icmp ne i16 %inner_proto, 25944
  %4 = or i1 %cmp, %raw_proto
  br i1 %4, label %if.else30, label %if.then7

if.then7:                                         ; preds = %if.end
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i51 = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i51)
  %cmp.not.i52 = icmp ult i32 %sub.i.i51, 14
  br i1 %cmp.not.i52, label %if.end.i54, label %if.then7.if.end18_crit_edge, !prof !79

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i54:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp3.i53 = icmp ult i32 %6, 14
  br i1 %cmp3.i53, label %if.end.i54.return_crit_edge, label %pskb_may_pull.exit60, !prof !79

if.end.i54.return_crit_edge:                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

pskb_may_pull.exit60:                             ; preds = %if.end.i54
  %sub.i55 = sub nuw nsw i32 14, %sub.i.i51
  %call13.i56 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i55) #11
  %cmp14.i57.not = icmp eq ptr %call13.i56, null
  br i1 %cmp14.i57.not, label %pskb_may_pull.exit60.return_crit_edge, label %pskb_may_pull.exit60.if.end18_crit_edge, !prof !79

pskb_may_pull.exit60.if.end18_crit_edge:          ; preds = %pskb_may_pull.exit60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

pskb_may_pull.exit60.return_crit_edge:            ; preds = %pskb_may_pull.exit60
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end18:                                         ; preds = %pskb_may_pull.exit60.if.end18_crit_edge, %if.then7.if.end18_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %12)
  %cmp.i = icmp ugt i16 %12, 1535
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  br i1 %cmp.i, label %if.then26, label %if.else, !prof !75

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %protocol, align 8
  br label %if.end32

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4, ptr %protocol, align 8
  br label %if.end32

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %protocol31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol31 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %inner_proto, ptr %protocol31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.else, %if.then26
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %16 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %17 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end32.skb_clear_hash_if_not_l4.exit_crit_edge

if.end32.skb_clear_hash_if_not_l4.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_clear_hash_if_not_l4.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %18 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hash.i.i, align 4
  %bf.clear2.i.i = and i16 %bf.load.i, -193
  %19 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %bf.clear2.i.i, ptr %l4_hash.i, align 8
  br label %skb_clear_hash_if_not_l4.exit

skb_clear_hash_if_not_l4.exit:                    ; preds = %if.then.i, %if.end32.skb_clear_hash_if_not_l4.exit_crit_edge
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %20 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load.i62 = load i32, ptr %vlan_present.i, align 2
  %bf.clear.i = and i32 %bf.load.i62, 2147483647
  store i32 %bf.clear.i, ptr %vlan_present.i, align 2
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %21 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %queue_mapping1.i, align 8
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %xnet) #11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %22 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.i.not.i = icmp eq i16 %25, 0
  br i1 %tobool.i.not.i, label %skb_clear_hash_if_not_l4.exit.if.end7.i_crit_edge, label %if.then.i63

skb_clear_hash_if_not_l4.exit.if.end7.i_crit_edge: ; preds = %skb_clear_hash_if_not_l4.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then.i63:                                      ; preds = %skb_clear_hash_if_not_l4.exit
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %26 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i63.cleanup.thread.i_crit_edge, label %skb_cloned.exit.i.i

if.then.i63.cleanup.thread.i_crit_edge:           ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

skb_cloned.exit.i.i:                              ; preds = %if.then.i63
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #11
  %27 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %28, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.cleanup.thread.i_crit_edge, label %skb_unclone.exit.i

skb_cloned.exit.i.i.cleanup.thread.i_crit_edge:   ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

skb_unclone.exit.i:                               ; preds = %skb_cloned.exit.i.i
  %call7.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i64 = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i64, label %skb_unclone.exit.i.cleanup.thread.i_crit_edge, label %skb_unclone.exit.i.return_crit_edge, !prof !75

skb_unclone.exit.i.return_crit_edge:              ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

skb_unclone.exit.i.cleanup.thread.i_crit_edge:    ; preds = %skb_unclone.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_unclone.exit.i.cleanup.thread.i_crit_edge, %skb_cloned.exit.i.i.cleanup.thread.i_crit_edge, %if.then.i63.cleanup.thread.i_crit_edge
  %29 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gso_type.i, align 8
  %33 = and i32 %32, -4033
  store i32 %33, ptr %gso_type.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %cleanup.thread.i, %skb_clear_hash_if_not_l4.exit.if.end7.i_crit_edge
  %34 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i65 = load i16, ptr %l4_hash.i, align 8
  %bf.clear.i66 = and i16 %bf.load.i65, -5
  store i16 %bf.clear.i66, ptr %l4_hash.i, align 8
  br label %return

return:                                           ; preds = %if.end7.i, %skb_unclone.exit.i.return_crit_edge, %pskb_may_pull.exit60.return_crit_edge, %if.end.i54.return_crit_edge, %pskb_may_pull.exit.return_crit_edge, %if.end.i.return_crit_edge
  %retval.1 = phi i32 [ -12, %pskb_may_pull.exit.return_crit_edge ], [ 0, %if.end7.i ], [ %call7.i.i, %skb_unclone.exit.i.return_crit_edge ], [ -12, %if.end.i.return_crit_edge ], [ -12, %if.end.i54.return_crit_edge ], [ -12, %pskb_may_pull.exit60.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iptunnel_metadata_reply(ptr noundef readonly %md, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %md, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false1, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %u = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 2
  %mode = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false1.cleanup_crit_edge

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %options_len = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %options_len, align 8
  %call = tail call ptr @metadata_dst_alloc(i8 noundef zeroext %6, i32 noundef 0, i32 noundef %flags) #11
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %u7 = getelementptr inbounds %struct.metadata_dst, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %u, align 8
  %9 = ptrtoint ptr %u7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %u7, align 8
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dst17 = getelementptr inbounds %struct.metadata_dst, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %u19 = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %dst17, ptr %u19, i32 16)
  br label %if.end27

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %u22 = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 2, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %u22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u22, align 8
  %dst26 = getelementptr inbounds %struct.metadata_dst, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %dst26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dst26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then14
  %tun_flags = getelementptr inbounds %struct.metadata_dst, ptr %md, i32 0, i32 2, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tun_flags, align 8
  %tun_flags30 = getelementptr inbounds %struct.metadata_dst, ptr %call, i32 0, i32 2, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %tun_flags30 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %tun_flags30, align 8
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mode, align 1
  %22 = or i8 %21, 1
  %mode34 = getelementptr inbounds %struct.metadata_dst, ptr %call, i32 0, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %mode34 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %mode34, align 1
  %24 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %options_len, align 8
  %options_len.i = getelementptr inbounds %struct.metadata_dst, ptr %call, i32 0, i32 2, i32 0, i32 2
  %26 = ptrtoint ptr %options_len.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %options_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i.not = icmp eq i8 %25, 0
  br i1 %cmp.i.not, label %if.end27.cleanup_crit_edge, label %if.then.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %conv37 = zext i8 %25 to i32
  %add.ptr.i = getelementptr %struct.metadata_dst, ptr %md, i32 1
  %add.ptr.i.i = getelementptr %struct.metadata_dst, ptr %call, i32 1
  %27 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr.i, i32 %conv37)
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false1.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call, %if.end27.cleanup_crit_edge ], [ %call, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %gso_type_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %inner_mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %4 = ptrtoint ptr %inner_mac_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %inner_mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i, align 4
  %inner_network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %7 = ptrtoint ptr %inner_network_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %inner_network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %10 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %inner_transport_header.i, align 2
  %bf.set = or i16 %bf.load, 4
  %11 = ptrtoint ptr %encapsulation to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %bf.set, ptr %encapsulation, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %if.end19, label %if.then7

if.then7:                                         ; preds = %if.end
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %16 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then7.if.end17_crit_edge, label %skb_header_cloned.exit.i

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

skb_header_cloned.exit.i:                         ; preds = %if.then7
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %18, 65535
  %shr.i.i = ashr i32 %18, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end17_crit_edge, label %skb_header_unclone.exit

skb_header_cloned.exit.i.if.end17_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

skb_header_unclone.exit:                          ; preds = %skb_header_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool9.not = icmp eq i32 %call7.i, 0
  br i1 %tobool9.not, label %skb_header_unclone.exit.if.end17_crit_edge, label %skb_header_unclone.exit.cleanup_crit_edge, !prof !75

skb_header_unclone.exit.cleanup_crit_edge:        ; preds = %skb_header_unclone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_header_unclone.exit.if.end17_crit_edge:       ; preds = %skb_header_unclone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %skb_header_unclone.exit.if.end17_crit_edge, %skb_header_cloned.exit.i.if.end17_crit_edge, %if.then7.if.end17_crit_edge
  %19 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gso_type, align 8
  %or = or i32 %22, %gso_type_mask
  store i32 %or, ptr %gso_type, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %23 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load20 = load i16, ptr %encapsulation, align 8
  %24 = and i16 %bf.load20, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %24)
  %cmp.not = icmp eq i16 %24, 1536
  br i1 %cmp.not, label %if.end19.cleanup_crit_edge, label %if.then25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear32 = and i16 %bf.load20, -1541
  %25 = ptrtoint ptr %encapsulation to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %bf.clear32, ptr %encapsulation, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end19.cleanup_crit_edge, %if.end17, %skb_header_unclone.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call7.i, %skb_header_unclone.exit.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @skb_tunnel_check_pmtu(ptr noundef %skb, ptr noundef %encap_dst, i32 noundef %headroom, i1 noundef zeroext %reply) #0 align 64 {
entry:
  %eh.i.i = alloca %struct.ethhdr, align 1
  %.compoundliteral15.sroa.7.i.i = alloca [4 x i32], align 4
  %.compoundliteral15.sroa.8.i.i = alloca [4 x i32], align 4
  %proto.i = alloca i8, align 1
  %frag_off.i45 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %encap_dst, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %3(ptr noundef %encap_dst) #11
  %sub = sub i32 %call.i, %headroom
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %sub) #11
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %gso_size.i40 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size.i40 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i41.not = icmp eq i16 %11, 0
  br i1 %tobool.i41.not, label %land.lhs.true4, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %15 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mac_header.i, align 2
  %conv1.i = zext i16 %17 to i32
  %sub.i.neg = sub i32 %13, %conv.i
  %sub6 = add i32 %sub.i.neg, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %sub)
  %cmp.not = icmp ugt i32 %sub6, %sub
  br i1 %cmp.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.skb_dst.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
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
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !79

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.end.skb_dst.exit.i_crit_edge
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 8
  %and25.i.i = and i32 %22, -2
  %23 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_update_pmtu_no_confirm.exit

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %ops.i42 = getelementptr inbounds %struct.dst_entry, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i42, align 4
  %update_pmtu.i = getelementptr inbounds %struct.dst_ops, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %update_pmtu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %update_pmtu.i, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge, label %if.then.i

land.lhs.true.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_update_pmtu_no_confirm.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %27(ptr noundef nonnull %23, ptr noundef null, ptr noundef %skb, i32 noundef %sub, i1 noundef zeroext false) #11
  br label %skb_dst_update_pmtu_no_confirm.exit

skb_dst_update_pmtu_no_confirm.exit:              ; preds = %if.then.i, %land.lhs.true.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge, %skb_dst.exit.i.skb_dst_update_pmtu_no_confirm.exit_crit_edge
  br i1 %reply, label %lor.lhs.false7, label %skb_dst_update_pmtu_no_confirm.exit.cleanup_crit_edge

skb_dst_update_pmtu_no_confirm.exit.cleanup_crit_edge: ; preds = %skb_dst_update_pmtu_no_confirm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false7:                                   ; preds = %skb_dst_update_pmtu_no_confirm.exit
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %28 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp8 = icmp ult i16 %bf.load, 8192
  br i1 %cmp8, label %lor.lhs.false7.cleanup_crit_edge, label %if.end11

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %protocol, align 8
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %30, label %if.end11.cleanup_crit_edge [
    i16 2048, label %if.then15
    i16 -31011, label %if.then22
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %34 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i48.i = zext i16 %37 to i32
  %add.ptr.i.i49.i = getelementptr i8, ptr %33, i32 %conv.i.i48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %sub)
  %cmp.i = icmp slt i32 %sub, 576
  br i1 %cmp.i, label %if.then15.cleanup_crit_edge, label %lor.lhs.false.i

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then15
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i49.i, i32 0, i32 4
  %38 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %39)
  %cmp2.not.i = icmp eq i16 %39, 16384
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i49.i, i32 0, i32 9
  %40 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %daddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.i = icmp eq i32 %41, -1
  %and.i.i43 = and i32 %41, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i43)
  %cmp.i50.i = icmp eq i32 %and.i.i43, -536870912
  %or.cond.i = or i1 %cmp.i.i, %cmp.i50.i
  br i1 %or.cond.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false10.i:                                ; preds = %if.end.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i49.i, i32 0, i32 8
  %42 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr.i, align 4
  %and.i52.i = and i32 %43, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and.i52.i)
  %cmp.i53.i = icmp eq i32 %and.i52.i, 2130706432
  %44 = add i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %45 = icmp ult i32 %44, 2
  %46 = or i1 %45, %cmp.i53.i
  %and.i55.i = and i32 %43, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i55.i)
  %cmp.i56.i = icmp eq i32 %and.i55.i, -536870912
  %or.cond60.i = or i1 %cmp.i56.i, %46
  br i1 %or.cond60.i, label %lor.lhs.false10.i.cleanup_crit_edge, label %if.end26.i

lor.lhs.false10.i.cleanup_crit_edge:              ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.i:                                       ; preds = %lor.lhs.false10.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i49.i, i32 0, i32 6
  %47 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp28.i = icmp eq i8 %48, 1
  br i1 %cmp28.i, label %land.lhs.true.i44, label %if.end26.i.if.end34.i_crit_edge

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

land.lhs.true.i44:                                ; preds = %if.end26.i
  %49 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr.i.i.i, align 4
  %switch.tableidx = add i8 %50, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %switch.tableidx)
  %51 = icmp ult i8 %switch.tableidx, 10
  br i1 %51, label %switch.hole_check, label %land.lhs.true.i44.if.end34.i_crit_edge

land.lhs.true.i44.if.end34.i_crit_edge:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.end34.i:                                       ; preds = %switch.hole_check.if.end34.i_crit_edge, %land.lhs.true.i44.if.end34.i_crit_edge, %if.end26.i.if.end34.i_crit_edge
  %call35.i = tail call fastcc i32 @iptunnel_pmtud_build_icmp(ptr noundef %skb, i32 noundef %sub) #11
  br label %cleanup

if.then22:                                        ; preds = %if.end11
  %head.i.i.i46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i46, align 8
  %network_header.i.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %54 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i.i47, align 4
  %conv.i.i.i48 = zext i16 %55 to i32
  %add.ptr.i.i.i49 = getelementptr i8, ptr %53, i32 %conv.i.i.i48
  %saddr.i50 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i49, i32 0, i32 5
  %call.i.i51 = tail call i32 @__ipv6_addr_type(ptr noundef %saddr.i50) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %proto.i) #11
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i49, i32 0, i32 3
  %56 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nexthdr.i, align 2
  %58 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %proto.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i45) #11
  %59 = ptrtoint ptr %frag_off.i45 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %frag_off.i45, align 2, !annotation !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %sub)
  %cmp.i52 = icmp slt i32 %sub, 1280
  br i1 %cmp.i52, label %if.then22.iptunnel_pmtud_check_icmpv6.exit_crit_edge, label %if.end.i53

if.then22.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end.i53:                                       ; preds = %if.then22
  %trunc.i = trunc i32 %call.i.i51 to i16
  %60 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %trunc.i, label %if.end7.i [
    i16 0, label %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge
    i16 2, label %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge60
    i16 16, label %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge61
  ]

if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge61: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge60: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end7.i:                                        ; preds = %if.end.i53
  %call8.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %proto.i, ptr noundef nonnull %frag_off.i45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, label %lor.lhs.false10.i55

if.end7.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

lor.lhs.false10.i55:                              ; preds = %if.end7.i
  %61 = ptrtoint ptr %frag_off.i45 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %frag_off.i45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %62)
  %tobool.not.i54 = icmp ult i16 %62, 8
  br i1 %tobool.not.i54, label %if.end12.i, label %lor.lhs.false10.i55.iptunnel_pmtud_check_icmpv6.exit_crit_edge

lor.lhs.false10.i55.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %lor.lhs.false10.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end12.i:                                       ; preds = %lor.lhs.false10.i55
  %63 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %64)
  %cmp14.i = icmp eq i8 %64, 58
  br i1 %cmp14.i, label %if.then16.i, label %if.end12.i.if.end34.i57_crit_edge

if.end12.i.if.end34.i57_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i57

if.then16.i:                                      ; preds = %if.end12.i
  %65 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i46, align 8
  %67 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i.i47, align 4
  %conv.i.i = zext i16 %68 to i32
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %call8.i
  %add.ptr18.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr18.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %73 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %72, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %sub.ptr.sub.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then16.i.if.end21.i_crit_edge, !prof !79

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end.i.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %sub.ptr.sub.i)
  %cmp3.i.i = icmp ult i32 %72, %sub.ptr.sub.i
  br i1 %cmp3.i.i, label %if.end.i.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !79

if.end.i.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %sub.ptr.sub.i, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #11
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, label %pskb_may_pull.exit.i.if.end21.i_crit_edge

pskb_may_pull.exit.i.if.end21.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

pskb_may_pull.exit.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end21.i:                                       ; preds = %pskb_may_pull.exit.i.if.end21.i_crit_edge, %if.then16.i.if.end21.i_crit_edge
  %75 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i.i46, align 8
  %77 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i.i.i47, align 4
  %conv.i56.i = zext i16 %78 to i32
  %add.ptr.i57.i = getelementptr i8, ptr %76, i32 %conv.i56.i
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i57.i, i32 %call8.i
  %79 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %add.ptr23.i, align 4
  %conv24.i = zext i8 %80 to i32
  %type.off.i.i = add nsw i32 %conv24.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off.i.i)
  %switch.i.i = icmp ult i32 %type.off.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %80)
  %cmp30.i = icmp eq i8 %80, -119
  %or.cond.i56 = select i1 %switch.i.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i56, label %if.end21.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, label %if.end21.i.if.end34.i57_crit_edge

if.end21.i.if.end34.i57_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i57

if.end21.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_check_icmpv6.exit

if.end34.i57:                                     ; preds = %if.end21.i.if.end34.i57_crit_edge, %if.end12.i.if.end34.i57_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral15.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral15.sroa.8.i.i)
  %81 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i.i46, align 8
  %83 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %network_header.i.i.i47, align 4
  %conv.i.i.i.i = zext i16 %84 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %82, i32 %conv.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %eh.i.i) #11
  %85 = getelementptr inbounds %struct.ethhdr, ptr %eh.i.i, i32 0, i32 1
  %86 = getelementptr inbounds %struct.ethhdr, ptr %eh.i.i, i32 0, i32 2
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %87 = call ptr @memset(ptr %eh.i.i, i32 255, i32 14)
  %88 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %90 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %89, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.i.i.i.i, 54
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end34.i57.if.end.i59.i_crit_edge, !prof !79

if.end34.i57.if.end.i59.i_crit_edge:              ; preds = %if.end34.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i59.i

if.end.i.i.i:                                     ; preds = %if.end34.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %89)
  %cmp3.i.i.i = icmp ult i32 %89, 54
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge, label %pskb_may_pull.exit.i.i, !prof !79

if.end.i.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_build_icmpv6.exit.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i58.i = sub nuw nsw i32 54, %sub.i.i.i.i
  %call13.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i58.i) #11
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i59.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i59.i_crit_edge:    ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i59.i

pskb_may_pull.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_build_icmpv6.exit.i

if.end.i59.i:                                     ; preds = %pskb_may_pull.exit.i.i.if.end.i59.i_crit_edge, %if.end34.i57.if.end.i59.i_crit_edge
  %92 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i.i46, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %94 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i70.i.i = zext i16 %95 to i32
  %add.ptr.i.i71.i.i = getelementptr i8, ptr %93, i32 %conv.i.i70.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %96 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i71.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %call3.i.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i, ptr noundef nonnull %eh.i.i, i32 noundef 14) #11
  %98 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %99)
  %cmp.i.i.i = icmp ult i32 %99, 14
  br i1 %cmp.i.i.i, label %if.end.i59.i.pskb_pull.exit.i.i_crit_edge, label %cond.false.i.i.i, !prof !79

if.end.i59.i.pskb_pull.exit.i.i_crit_edge:        ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pskb_pull.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end.i59.i
  %100 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i.i = sub i32 %99, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %sub.i.i.i.i.i, 14
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %cond.false.i.i.i.if.end.i.i.i.i_crit_edge

cond.false.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %cond.false.i.i.i
  %sub.i.i72.i.i = sub nuw nsw i32 14, %sub.i.i.i.i.i
  %call2.i.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i72.i.i) #11
  %tobool.not.i.i.i.i = icmp eq ptr %call2.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.pskb_pull.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i.pskb_pull.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pskb_pull.exit.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %cond.false.i.i.i.if.end.i.i.i.i_crit_edge
  %102 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len.i.i.i.i, align 4
  %sub4.i.i.i.i = add i32 %103, -14
  store i32 %sub4.i.i.i.i, ptr %len.i.i.i.i, align 4
  %104 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i73.i.i = getelementptr i8, ptr %105, i32 14
  store ptr %add.ptr.i.i73.i.i, ptr %data.i.i.i, align 4
  br label %pskb_pull.exit.i.i

pskb_pull.exit.i.i:                               ; preds = %if.end.i.i.i.i, %land.lhs.true.i.i.i.i.pskb_pull.exit.i.i_crit_edge, %if.end.i59.i.pskb_pull.exit.i.i_crit_edge
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %108 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i.i46, align 8
  %sub.ptr.lhs.cast.i75.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast.i76.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i77.i.i = sub i32 %sub.ptr.lhs.cast.i75.i.i, %sub.ptr.rhs.cast.i76.i.i
  %conv.i.i60.i = trunc i32 %sub.ptr.sub.i77.i.i to i16
  %110 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i.i60.i, ptr %network_header.i.i.i47, align 4
  %111 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1232, i32 %112)
  %cmp.i79.i.i = icmp ugt i32 %112, 1232
  br i1 %cmp.i79.i.i, label %cond.true.i.i.i, label %pskb_pull.exit.i.i.if.end7.i.i_crit_edge

pskb_pull.exit.i.i.if.end7.i.i_crit_edge:         ; preds = %pskb_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

cond.true.i.i.i:                                  ; preds = %pskb_pull.exit.i.i
  %113 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i81.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i81.i.i, label %__skb_trim.exit.i.i.i.i, label %pskb_trim.exit.i.i

__skb_trim.exit.i.i.i.i:                          ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1232, ptr %len.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %107, i32 1232
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %116 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr.i.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  br label %if.end7.i.i

pskb_trim.exit.i.i:                               ; preds = %cond.true.i.i.i
  %call.i.i.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef 1232) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i58 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i58, label %pskb_trim.exit.i.i.if.end7.i.i_crit_edge, label %pskb_trim.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge

pskb_trim.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge: ; preds = %pskb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_build_icmpv6.exit.i

pskb_trim.exit.i.i.if.end7.i.i_crit_edge:         ; preds = %pskb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %pskb_trim.exit.i.i.if.end7.i.i_crit_edge, %__skb_trim.exit.i.i.i.i, %pskb_pull.exit.i.i.if.end7.i.i_crit_edge
  %117 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len.i.i.i.i, align 4
  %add.i.i = add i32 %118, 8
  %cloned.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %119 = ptrtoint ptr %cloned.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i82.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i82.i.i, label %if.end7.i.i.skb_cloned.exit.i.i.i_crit_edge, label %land.rhs.i.i.i.i

if.end7.i.i.skb_cloned.exit.i.i.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_cloned.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i.i, align 4
  %dataref.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %121, i32 0, i32 10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i.i, i32 noundef 4) #11
  %122 = ptrtoint ptr %dataref.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %dataref.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %123, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 1
  br label %skb_cloned.exit.i.i.i

skb_cloned.exit.i.i.i:                            ; preds = %land.rhs.i.i.i.i, %if.end7.i.i.skb_cloned.exit.i.i.i_crit_edge
  %124 = phi i1 [ true, %if.end7.i.i.skb_cloned.exit.i.i.i_crit_edge ], [ %cmp.i.not.i.i.i, %land.rhs.i.i.i.i ]
  %125 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i.i, align 4
  %127 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %head.i.i.i46, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %128 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %sub.ptr.sub.i.i.i.i.i)
  %tobool.not.i3.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i.i.i, 61
  %or.cond.i.i.i.i = and i1 %124, %tobool.not.i3.i.i.i
  br i1 %or.cond.i.i.i.i, label %skb_cloned.exit.i.i.i.if.end12.i.i_crit_edge, label %skb_cow.exit.i.i

skb_cloned.exit.i.i.i.if.end12.i.i_crit_edge:     ; preds = %skb_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

skb_cow.exit.i.i:                                 ; preds = %skb_cloned.exit.i.i.i
  %129 = call i32 @llvm.usub.sat.i32(i32 62, i32 %sub.ptr.sub.i.i.i.i.i) #11
  %add.i.i.i.i = add nuw nsw i32 %129, 127
  %and.i4.i.i.i = and i32 %add.i.i.i.i, 128
  %call4.i.i.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call4.i.i.i.i, 0
  br i1 %tobool10.not.i.i, label %skb_cow.exit.i.i.if.end12.i.i_crit_edge, label %skb_cow.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge

skb_cow.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge: ; preds = %skb_cow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iptunnel_pmtud_build_icmpv6.exit.i

skb_cow.exit.i.i.if.end12.i.i_crit_edge:          ; preds = %skb_cow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %skb_cow.exit.i.i.if.end12.i.i_crit_edge, %skb_cloned.exit.i.i.i.if.end12.i.i_crit_edge
  %call13.i61.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #11
  %130 = ptrtoint ptr %call13.i61.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 2, ptr %call13.i61.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call13.i61.i, i32 1
  %131 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call13.i61.i, i32 2
  %132 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 2
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %call13.i61.i, i32 4
  %133 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %134 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i.i.i, align 4
  %136 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i.i.i46, align 8
  %sub.ptr.lhs.cast.i85.i.i = ptrtoint ptr %135 to i32
  %sub.ptr.rhs.cast.i86.i.i = ptrtoint ptr %137 to i32
  %sub.ptr.sub.i87.i.i = sub i32 %sub.ptr.lhs.cast.i85.i.i, %sub.ptr.rhs.cast.i86.i.i
  %conv.i88.i.i = trunc i32 %sub.ptr.sub.i87.i.i to i16
  %transport_header.i.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %138 = ptrtoint ptr %transport_header.i.i.i59 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i88.i.i, ptr %transport_header.i.i.i59, align 2
  %call14.i.i = call ptr @skb_push(ptr noundef %skb, i32 noundef 40) #11
  %conv.i62.i = trunc i32 %add.i.i to i16
  %hop_limit21.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %139 = ptrtoint ptr %hop_limit21.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %hop_limit21.i.i, align 1
  %daddr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %141 = call ptr @memcpy(ptr %.compoundliteral15.sroa.7.i.i, ptr %daddr.i.i, i32 16)
  %saddr23.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %142 = call ptr @memcpy(ptr %.compoundliteral15.sroa.8.i.i, ptr %saddr23.i.i, i32 16)
  %143 = ptrtoint ptr %call14.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 96, ptr %call14.i.i, align 4
  %.compoundliteral15.sroa.2.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 1
  %144 = ptrtoint ptr %.compoundliteral15.sroa.2.0.call14.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %.compoundliteral15.sroa.2.0.call14.sroa_idx.i.i, align 1
  %.compoundliteral15.sroa.3.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 2
  %145 = ptrtoint ptr %.compoundliteral15.sroa.3.0.call14.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %.compoundliteral15.sroa.3.0.call14.sroa_idx.i.i, align 2
  %.compoundliteral15.sroa.4.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 4
  %146 = ptrtoint ptr %.compoundliteral15.sroa.4.0.call14.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i62.i, ptr %.compoundliteral15.sroa.4.0.call14.sroa_idx.i.i, align 4
  %.compoundliteral15.sroa.5.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 6
  %147 = ptrtoint ptr %.compoundliteral15.sroa.5.0.call14.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 58, ptr %.compoundliteral15.sroa.5.0.call14.sroa_idx.i.i, align 2
  %.compoundliteral15.sroa.6.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 7
  %148 = ptrtoint ptr %.compoundliteral15.sroa.6.0.call14.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %140, ptr %.compoundliteral15.sroa.6.0.call14.sroa_idx.i.i, align 1
  %.compoundliteral15.sroa.7.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 8
  %149 = call ptr @memcpy(ptr %.compoundliteral15.sroa.7.0.call14.sroa_idx.i.i, ptr %.compoundliteral15.sroa.7.i.i, i32 16)
  %.compoundliteral15.sroa.8.0.call14.sroa_idx.i.i = getelementptr inbounds i8, ptr %call14.i.i, i32 24
  %150 = call ptr @memcpy(ptr %.compoundliteral15.sroa.8.0.call14.sroa_idx.i.i, ptr %.compoundliteral15.sroa.8.i.i, i32 16)
  %151 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i.i.i, align 4
  %153 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %head.i.i.i46, align 8
  %sub.ptr.lhs.cast.i91.i.i = ptrtoint ptr %152 to i32
  %sub.ptr.rhs.cast.i92.i.i = ptrtoint ptr %154 to i32
  %sub.ptr.sub.i93.i.i = sub i32 %sub.ptr.lhs.cast.i91.i.i, %sub.ptr.rhs.cast.i92.i.i
  %conv.i94.i.i = trunc i32 %sub.ptr.sub.i93.i.i to i16
  %155 = ptrtoint ptr %network_header.i.i.i47 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.i94.i.i, ptr %network_header.i.i.i47, align 4
  %call24.i.i = call i32 @csum_partial(ptr noundef %call13.i61.i, i32 noundef %add.i.i, i32 noundef 0) #11
  %call.i.i.i = call i32 @__csum_ipv6_magic(ptr noundef %.compoundliteral15.sroa.7.0.call14.sroa_idx.i.i, ptr noundef %.compoundliteral15.sroa.8.0.call14.sroa_idx.i.i, i32 noundef %add.i.i, i32 noundef 58, i32 noundef %call24.i.i) #11
  %156 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i) #14, !srcloc !81
  %neg.i.i.i.i = xor i32 %156, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i96.i.i = trunc i32 %shr.i.i.i.i to i16
  %157 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv.i.i96.i.i, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 2
  %158 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %158)
  %bf.load29.i.i = load i16, ptr %pkt_type, align 8
  %bf.clear30.i.i = and i16 %bf.load29.i.i, -1537
  store i16 %bf.clear30.i.i, ptr %pkt_type, align 8
  %159 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 8
  %162 = ptrtoint ptr %86 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 2)
  %163 = load i16, ptr %86, align 1
  %call33.i.i = call i32 @eth_header(ptr noundef %skb, ptr noundef %161, i16 noundef zeroext %163, ptr noundef %85, ptr noundef nonnull %eh.i.i, i32 noundef 0) #11
  %164 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %data.i.i.i, align 4
  %166 = ptrtoint ptr %head.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %head.i.i.i46, align 8
  %sub.ptr.lhs.cast.i99.i.i = ptrtoint ptr %165 to i32
  %sub.ptr.rhs.cast.i100.i.i = ptrtoint ptr %167 to i32
  %sub.ptr.sub.i101.i.i = sub i32 %sub.ptr.lhs.cast.i99.i.i, %sub.ptr.rhs.cast.i100.i.i
  %conv.i102.i.i = trunc i32 %sub.ptr.sub.i101.i.i to i16
  %168 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i102.i.i, ptr %mac_header.i.i.i.i, align 2
  %169 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %len.i.i.i.i, align 4
  br label %iptunnel_pmtud_build_icmpv6.exit.i

iptunnel_pmtud_build_icmpv6.exit.i:               ; preds = %if.end12.i.i, %skb_cow.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge, %pskb_trim.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge, %pskb_may_pull.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge, %if.end.i.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge
  %retval.0.i63.i = phi i32 [ %170, %if.end12.i.i ], [ -22, %pskb_may_pull.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge ], [ %call.i.i.i.i, %pskb_trim.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge ], [ %call4.i.i.i.i, %skb_cow.exit.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge ], [ -22, %if.end.i.i.i.iptunnel_pmtud_build_icmpv6.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eh.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral15.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral15.sroa.8.i.i)
  br label %iptunnel_pmtud_check_icmpv6.exit

iptunnel_pmtud_check_icmpv6.exit:                 ; preds = %iptunnel_pmtud_build_icmpv6.exit.i, %if.end21.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, %pskb_may_pull.exit.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, %if.end.i.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, %lor.lhs.false10.i55.iptunnel_pmtud_check_icmpv6.exit_crit_edge, %if.end7.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge, %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge, %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge60, %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge61, %if.then22.iptunnel_pmtud_check_icmpv6.exit_crit_edge
  %retval.1.i = phi i32 [ %retval.0.i63.i, %iptunnel_pmtud_build_icmpv6.exit.i ], [ 0, %if.then22.iptunnel_pmtud_check_icmpv6.exit_crit_edge ], [ 0, %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge ], [ 0, %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge60 ], [ 0, %if.end.i53.iptunnel_pmtud_check_icmpv6.exit_crit_edge61 ], [ 0, %lor.lhs.false10.i55.iptunnel_pmtud_check_icmpv6.exit_crit_edge ], [ 0, %if.end7.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge ], [ 0, %if.end21.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge ], [ 0, %pskb_may_pull.exit.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge ], [ 0, %if.end.i.i.iptunnel_pmtud_check_icmpv6.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i45) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %proto.i) #11
  br label %cleanup

switch.hole_check:                                ; preds = %land.lhs.true.i44
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 775, %switch.maskindex
  %171 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %switch.lobit.not = icmp eq i16 %171, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end34.i_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.hole_check.if.end34.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %iptunnel_pmtud_check_icmpv6.exit, %if.end34.i, %lor.lhs.false10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %skb_dst_update_pmtu_no_confirm.exit.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %iptunnel_pmtud_check_icmpv6.exit ], [ 0, %land.lhs.true4.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ 0, %skb_dst_update_pmtu_no_confirm.exit.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ %call35.i, %if.end34.i ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %lor.lhs.false10.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_tunnel_core_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @ip_tun_lwt_ops, i32 noundef 2) #11
  %call1 = tail call i32 @lwtunnel_encap_add_ops(ptr noundef nonnull @ip6_tun_lwt_ops, i32 noundef 4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_encap_add_ops(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_tunnel_need_metadata() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @static_key_slow_inc(ptr noundef nonnull @ip_tunnel_metadata_cnt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_tunnel_unneed_metadata() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @static_key_slow_dec(ptr noundef nonnull @ip_tunnel_metadata_cnt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @ip_tunnel_parse_protocol(ptr nocapture noundef readonly %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %cmp.not = icmp ult ptr %add.ptr.i, %1
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %land.lhs.true

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %cmp3.not = icmp ugt ptr %add.ptr, %5
  br i1 %cmp3.not, label %land.lhs.true.land.lhs.true12_crit_edge, label %land.lhs.true4

land.lhs.true.land.lhs.true12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true12

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %add.ptr.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp6 = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp6, label %land.lhs.true4.return_crit_edge, label %land.lhs.true4.land.lhs.true12_crit_edge

land.lhs.true4.land.lhs.true12_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true12

land.lhs.true4.return_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true12:                                  ; preds = %land.lhs.true4.land.lhs.true12_crit_edge, %land.lhs.true.land.lhs.true12_crit_edge
  %add.ptr14 = getelementptr i8, ptr %add.ptr.i, i32 40
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %cmp16.not = icmp ugt ptr %add.ptr14, %8
  br i1 %cmp16.not, label %land.lhs.true12.if.end26_crit_edge, label %land.lhs.true18

land.lhs.true12.if.end26_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true18:                                  ; preds = %land.lhs.true12
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load20 = load i8, ptr %add.ptr.i, align 4
  %bf.lshr21.mask = and i8 %bf.load20, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr21.mask)
  %cmp23 = icmp eq i8 %bf.lshr21.mask, 96
  br i1 %cmp23, label %land.lhs.true18.return_crit_edge, label %land.lhs.true18.if.end26_crit_edge

land.lhs.true18.if.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true18.return_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end26:                                         ; preds = %land.lhs.true18.if.end26_crit_edge, %land.lhs.true12.if.end26_crit_edge, %entry.if.end26_crit_edge
  br label %return

return:                                           ; preds = %if.end26, %land.lhs.true18.return_crit_edge, %land.lhs.true4.return_crit_edge
  %retval.0 = phi i16 [ 0, %if.end26 ], [ 2048, %land.lhs.true4.return_crit_edge ], [ -31011, %land.lhs.true18.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iptunnel_pmtud_build_icmp(ptr noundef %skb, i32 noundef %mtu) unnamed_addr #0 align 64 {
entry:
  %eh = alloca %struct.ethhdr, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %eh) #11
  %4 = getelementptr inbounds %struct.ethhdr, ptr %eh, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ethhdr, ptr %eh, i32 0, i32 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = call ptr @memset(ptr %eh, i32 255, i32 14)
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 34
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !79

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %8)
  %cmp3.i = icmp ult i32 %8, 34
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !79

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 34, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i65 = zext i16 %14 to i32
  %add.ptr.i.i66 = getelementptr i8, ptr %12, i32 %conv.i.i65
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i66 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call3 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %eh, i32 noundef 14) #11
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %18)
  %cmp.i = icmp ult i32 %18, 14
  br i1 %cmp.i, label %if.end.pskb_pull.exit_crit_edge, label %cond.false.i, !prof !79

if.end.pskb_pull.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pskb_pull.exit

cond.false.i:                                     ; preds = %if.end
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.i.i.i, 14
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.if.end.i.i_crit_edge

cond.false.i.if.end.i.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i67 = sub nuw nsw i32 14, %sub.i.i.i
  %call2.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i67) #11
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pskb_pull.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.false.i.if.end.i.i_crit_edge
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %sub4.i.i = add i32 %22, -14
  store i32 %sub4.i.i, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %24, i32 14
  store ptr %add.ptr.i.i68, ptr %data.i, align 4
  br label %pskb_pull.exit

pskb_pull.exit:                                   ; preds = %if.end.i.i, %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %if.end.pskb_pull.exit_crit_edge
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i70 = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i71 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i72 = sub i32 %sub.ptr.lhs.cast.i70, %sub.ptr.rhs.cast.i71
  %conv.i = trunc i32 %sub.ptr.sub.i72 to i16
  %29 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %30 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 548, i32 %31)
  %cmp.i74 = icmp ugt i32 %31, 548
  br i1 %cmp.i74, label %cond.true.i, label %pskb_pull.exit.if.end7_crit_edge

pskb_pull.exit.if.end7_crit_edge:                 ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

cond.true.i:                                      ; preds = %pskb_pull.exit
  %32 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i76 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i76, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 548, ptr %len.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %26, i32 548
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end7

pskb_trim.exit:                                   ; preds = %cond.true.i
  %call.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef 548) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %pskb_trim.exit.if.end7_crit_edge, label %pskb_trim.exit.cleanup_crit_edge

pskb_trim.exit.cleanup_crit_edge:                 ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pskb_trim.exit.if.end7_crit_edge:                 ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %pskb_trim.exit.if.end7_crit_edge, %__skb_trim.exit.i.i, %pskb_pull.exit.if.end7_crit_edge
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %38 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i77 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i77, label %if.end7.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end7.skb_cloned.exit.i_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #11
  %41 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %42, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end7.skb_cloned.exit.i_crit_edge
  %43 = phi i1 [ true, %if.end7.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 41
  %or.cond.i.i = and i1 %43, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end12_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end12_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %48 = call i32 @llvm.usub.sat.i32(i32 42, i32 %sub.ptr.sub.i.i.i) #11
  %add.i.i = add nuw nsw i32 %48, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool10.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool10.not, label %skb_cow.exit.if.end12_crit_edge, label %skb_cow.exit.cleanup_crit_edge

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_cow.exit.if.end12_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end12:                                         ; preds = %skb_cow.exit.if.end12_crit_edge, %skb_cloned.exit.i.if.end12_crit_edge
  %add = add i32 %37, 8
  %call13 = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #11
  %conv = trunc i32 %mtu to i16
  %49 = ptrtoint ptr %call13 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %call13, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call13, i32 1
  %50 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 1
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call13, i32 2
  %51 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call13, i32 4
  %52 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call13, i32 6
  %53 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 2
  %call.i = call i32 @csum_partial(ptr noundef %call13, i32 noundef %add, i32 noundef 0) #11
  %54 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #14, !srcloc !81
  %neg.i.i = xor i32 %54, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i78 = trunc i32 %shr.i.i to i16
  %55 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i78, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 2
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i81 = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i82 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i83 = sub i32 %sub.ptr.lhs.cast.i81, %sub.ptr.rhs.cast.i82
  %conv.i84 = trunc i32 %sub.ptr.sub.i83 to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %60 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i84, ptr %transport_header.i, align 2
  %call17 = call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #11
  %61 = trunc i32 %37 to i16
  %conv23 = add i16 %61, 28
  %ttl24 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %ttl24 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ttl24, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %64 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %daddr, align 4
  %saddr26 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %saddr26 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saddr26, align 4
  %68 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 69, ptr %call17, align 4
  %.compoundliteral18.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 1
  %69 = ptrtoint ptr %.compoundliteral18.sroa.5.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %.compoundliteral18.sroa.5.0..sroa_idx, align 1
  %.compoundliteral18.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 2
  %70 = ptrtoint ptr %.compoundliteral18.sroa.6.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv23, ptr %.compoundliteral18.sroa.6.0..sroa_idx, align 2
  %.compoundliteral18.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 4
  %71 = ptrtoint ptr %.compoundliteral18.sroa.7.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %.compoundliteral18.sroa.7.0..sroa_idx, align 4
  %.compoundliteral18.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 6
  %72 = ptrtoint ptr %.compoundliteral18.sroa.8.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 16384, ptr %.compoundliteral18.sroa.8.0..sroa_idx, align 2
  %.compoundliteral18.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 8
  %73 = ptrtoint ptr %.compoundliteral18.sroa.9.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %63, ptr %.compoundliteral18.sroa.9.0..sroa_idx, align 4
  %.compoundliteral18.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 9
  %74 = ptrtoint ptr %.compoundliteral18.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %.compoundliteral18.sroa.10.0..sroa_idx, align 1
  %.compoundliteral18.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 10
  %75 = ptrtoint ptr %.compoundliteral18.sroa.11.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %.compoundliteral18.sroa.11.0..sroa_idx, align 2
  %.compoundliteral18.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 12
  %76 = ptrtoint ptr %.compoundliteral18.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %65, ptr %.compoundliteral18.sroa.12.0..sroa_idx, align 4
  %.compoundliteral18.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %call17, i32 16
  %77 = ptrtoint ptr %.compoundliteral18.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %67, ptr %.compoundliteral18.sroa.13.0..sroa_idx, align 4
  call void @ip_send_check(ptr noundef %call17) #11
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %80 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i87 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i88 = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i89 = sub i32 %sub.ptr.lhs.cast.i87, %sub.ptr.rhs.cast.i88
  %conv.i90 = trunc i32 %sub.ptr.sub.i89 to i16
  %82 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i90, ptr %network_header.i.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %83 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load27 = load i16, ptr %ip_summed, align 8
  %bf.clear28 = and i16 %bf.load27, -1537
  store i16 %bf.clear28, ptr %ip_summed, align 8
  %84 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %5, align 1
  %call31 = call i32 @eth_header(ptr noundef %skb, ptr noundef %86, i16 noundef zeroext %88, ptr noundef %4, ptr noundef nonnull %eh, i32 noundef 0) #11
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %91 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i94 = ptrtoint ptr %90 to i32
  %sub.ptr.rhs.cast.i95 = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i96 = sub i32 %sub.ptr.lhs.cast.i94, %sub.ptr.rhs.cast.i95
  %conv.i97 = trunc i32 %sub.ptr.sub.i96 to i16
  %93 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i97, ptr %mac_header.i.i, align 2
  %94 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %skb_cow.exit.cleanup_crit_edge, %pskb_trim.exit.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %95, %if.end12 ], [ -22, %pskb_may_pull.exit.cleanup_crit_edge ], [ %call.i.i, %pskb_trim.exit.cleanup_crit_edge ], [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %eh) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_tun_build_state(ptr nocapture noundef readnone %net, ptr noundef %attr, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %tb = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #11
  %0 = call ptr @memset(ptr %tb, i32 255, i32 36)
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ip_tun_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call.i = call fastcc i32 @ip_tun_parse_opts(ptr noundef %4, ptr noundef null, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add = add nuw i32 %call.i, 72
  %call5 = call ptr @lwtunnel_state_alloc(i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %call5, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i97 = call fastcc i32 @ip_tun_parse_opts(ptr noundef %7, ptr noundef %data.i, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp11 = icmp slt i32 %call.i97, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @lwtstate_free(ptr noundef nonnull %call5) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %dst_cache = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 3
  %call14 = call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @lwtstate_free(ptr noundef nonnull %call5) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %arrayidx18 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %tmp.i, align 8, !annotation !80
  %call.i98 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %9, i32 noundef 8) #11
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %data.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %arrayidx24 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.end23.if.end30_crit_edge, label %if.then26

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i99 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i99, align 4
  %dst = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 1, i32 4
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dst, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end23.if.end30_crit_edge
  %arrayidx31 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i100 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i100, align 4
  %u37 = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 1, i32 3
  %23 = ptrtoint ptr %u37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %u37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  %arrayidx39 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i101 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i101 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i101, align 1
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 4
  %28 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ttl, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  %arrayidx46 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %30, null
  br i1 %tobool47.not, label %if.end45.if.end52_crit_edge, label %if.then48

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i102 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i102 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i.i102, align 1
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 3
  %33 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %tos, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end45.if.end52_crit_edge
  %arrayidx53 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %35, null
  br i1 %tobool54.not, label %if.end52.if.end61_crit_edge, label %if.then55

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i103 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i103 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i103, align 2
  %38 = and i16 %37, -22529
  %tun_flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 2, i32 4
  %39 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tun_flags, align 8
  %or96 = or i16 %40, %38
  store i16 %or96, ptr %tun_flags, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end52.if.end61_crit_edge
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i, i32 0, i32 3
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %mode, align 1
  %conv62 = trunc i32 %call.i to i8
  %options_len = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 3, i32 3
  %42 = ptrtoint ptr %options_len to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv62, ptr %options_len, align 8
  %43 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then16, %if.then12, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i97, %if.then12 ], [ %call14, %if.then16 ], [ 0, %if.end61 ], [ %call2.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_tun_destroy_state(ptr noundef %lwtstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_cache = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 3
  tail call void @dst_cache_destroy(ptr noundef %dst_cache) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_tun_fill_encap_info(ptr noundef %skb, ptr noundef %lwtstate) #0 align 64 {
entry:
  %tmp.i43 = alloca i16, align 2
  %tmp.i41 = alloca i8, align 1
  %tmp.i39 = alloca i8, align 1
  %tmp.i.i37 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 4
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %u = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i37) #11
  %8 = ptrtoint ptr %tmp.i.i37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i37, align 4
  %call.i.i38 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i37) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool9.not = icmp eq i32 %call.i.i38, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 3
  %9 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tos, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39) #11
  %11 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i39, align 1
  %call.i40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i39) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool13.not = icmp eq i32 %call.i40, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 4
  %12 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ttl, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41) #11
  %14 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i41, align 1
  %call.i42 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i41) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool17.not = icmp eq i32 %call.i42, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %tun_flags = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 2, i32 4
  %15 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tun_flags, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i43) #11
  %17 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %tmp.i43, align 2
  %call.i44 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i43) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool21.not = icmp eq i32 %call.i44, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call fastcc i32 @ip_tun_fill_encap_opts(ptr noundef %skb, ptr noundef %data.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %spec.select = select i1 %tobool24.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false22, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %lor.lhs.false18.cleanup_crit_edge ], [ -12, %lor.lhs.false14.cleanup_crit_edge ], [ -12, %lor.lhs.false10.cleanup_crit_edge ], [ -12, %lor.lhs.false5.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_tun_encap_nlsize(ptr nocapture noundef readonly %lwtstate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_flags.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 2, i32 4
  %0 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tun_flags.i, align 8
  %2 = and i16 %1, 22528
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %entry.ip_tun_opts_nlsize.exit_crit_edge, label %if.end.i

entry.ip_tun_opts_nlsize.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

if.end.i:                                         ; preds = %entry
  %conv3.i = zext i16 %1 to i32
  %and4.i = and i32 %conv3.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %options_len.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 3, i32 3
  %3 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %options_len.i, align 8
  %conv8.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp72.not.i = icmp eq i8 %4, 0
  br i1 %cmp72.not.i, label %while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %add.ptr.i.i = getelementptr %struct.lwtunnel_state, ptr %lwtstate, i32 3, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %offset.074.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add24.i, %while.body.i.while.body.i_crit_edge ]
  %opt_len.073.i = phi i32 [ 8, %while.body.lr.ph.i ], [ %add17.i, %while.body.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.074.i
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i, i32 0, i32 2
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %6 = and i8 %bf.clear.i, 124
  %narrow71.i = add nuw i8 %6, 7
  %7 = and i8 %narrow71.i, -4
  %and.i.i = zext i8 %7 to i32
  %add16.i = add i32 %opt_len.073.i, 16
  %add17.i = add i32 %add16.i, %and.i.i
  %narrow.i = add nuw i8 %6, 4
  %add23.i = zext i8 %narrow.i to i32
  %add24.i = add i32 %offset.074.i, %add23.i
  %cmp.i = icmp slt i32 %add24.i, %conv8.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.ip_tun_opts_nlsize.exit_crit_edge

while.body.i.ip_tun_opts_nlsize.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.else.i:                                        ; preds = %if.end.i
  %and28.i = and i32 %conv3.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else35.i, label %if.else.i.ip_tun_opts_nlsize.exit_crit_edge

if.else.i.ip_tun_opts_nlsize.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

if.else35.i:                                      ; preds = %if.else.i
  %and39.i = and i32 %conv3.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else35.i.ip_tun_opts_nlsize.exit_crit_edge, label %if.then41.i

if.else35.i.ip_tun_opts_nlsize.exit_crit_edge:    ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

if.then41.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i70.i = getelementptr %struct.lwtunnel_state, ptr %lwtstate, i32 3, i32 5
  %8 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp46.i = icmp eq i32 %9, 1
  %add53.i = select i1 %cmp46.i, i32 24, i32 32
  br label %ip_tun_opts_nlsize.exit

ip_tun_opts_nlsize.exit:                          ; preds = %if.then41.i, %if.else35.i.ip_tun_opts_nlsize.exit_crit_edge, %if.else.i.ip_tun_opts_nlsize.exit_crit_edge, %while.body.i.ip_tun_opts_nlsize.exit_crit_edge, %while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge, %entry.ip_tun_opts_nlsize.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ip_tun_opts_nlsize.exit_crit_edge ], [ %add53.i, %if.then41.i ], [ 4, %if.else35.i.ip_tun_opts_nlsize.exit_crit_edge ], [ 16, %if.else.i.ip_tun_opts_nlsize.exit_crit_edge ], [ 8, %while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge ], [ %add17.i, %while.body.i.ip_tun_opts_nlsize.exit_crit_edge ]
  %add12 = add i32 %retval.0.i, 52
  ret i32 %add12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip_tun_cmp_encap(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 0, i32 7
  %data.i26 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 0, i32 7
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(56) %data.i, ptr noundef dereferenceable(56) %data.i26, i32 56) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  %mode3 = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i26, i32 0, i32 3
  %2 = ptrtoint ptr %mode3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not = icmp eq i8 %1, %3
  br i1 %cmp.not, label %lor.lhs.false6, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %options_len = getelementptr inbounds %struct.lwtunnel_state, ptr %a, i32 3, i32 3
  %4 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %options_len, align 8
  %options_len8 = getelementptr inbounds %struct.lwtunnel_state, ptr %b, i32 3, i32 3
  %6 = ptrtoint ptr %options_len8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %options_len8, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp10.not = icmp eq i8 %5, %7
  br i1 %cmp10.not, label %lor.rhs, label %lor.lhs.false6.lor.end_crit_edge

lor.lhs.false6.lor.end_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr %struct.lwtunnel_state, ptr %a, i32 3, i32 5
  %add.ptr.i27 = getelementptr %struct.lwtunnel_state, ptr %b, i32 3, i32 5
  %conv15 = zext i8 %5 to i32
  %bcmp25 = tail call i32 @bcmp(ptr %add.ptr.i, ptr %add.ptr.i27, i32 %conv15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp25)
  %tobool17 = icmp ne i32 %bcmp25, 0
  %phi.cast = zext i1 %tobool17 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %lor.lhs.false6.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lwtunnel_state_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lwtstate_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_tun_parse_opts(ptr noundef %attr, ptr noundef %info, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tb.i111 = alloca [5 x ptr], align 4
  %tb.i90 = alloca [2 x ptr], align 4
  %tb.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %attr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %attr, i32 4
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %call.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 3, ptr noundef nonnull @ip_opts_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %attr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %3)
  %cmp.i171 = icmp ugt i16 %3, 7
  br i1 %cmp.i171, label %land.lhs.true.i.lr.ph, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i.lr.ph:                            ; preds = %if.end5
  %conv.i85 = zext i16 %3 to i32
  %sub.i86 = add nsw i32 %conv.i85, -4
  %4 = getelementptr inbounds [5 x ptr], ptr %tb.i111, i32 0, i32 1
  %5 = getelementptr inbounds [5 x ptr], ptr %tb.i111, i32 0, i32 2
  %6 = getelementptr inbounds [5 x ptr], ptr %tb.i111, i32 0, i32 3
  %7 = getelementptr inbounds [5 x ptr], ptr %tb.i111, i32 0, i32 4
  %tobool25.not66.i = icmp eq ptr %info, null
  %add.ptr.i67.i = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %tun_flags.i136 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %8 = getelementptr inbounds [2 x ptr], ptr %tb.i90, i32 0, i32 1
  %9 = getelementptr inbounds [4 x ptr], ptr %tb.i, i32 0, i32 1
  %10 = getelementptr inbounds [4 x ptr], ptr %tb.i, i32 0, i32 2
  %11 = getelementptr inbounds [4 x ptr], ptr %tb.i, i32 0, i32 3
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %type.0183 = phi i16 [ 0, %land.lhs.true.i.lr.ph ], [ %type.1, %for.inc.land.lhs.true.i_crit_edge ]
  %nla.0181 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i141, %for.inc.land.lhs.true.i_crit_edge ]
  %opts_len.0173 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %opts_len.1, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0172 = phi i32 [ %sub.i86, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %12 = ptrtoint ptr %nla.0181 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla.0181, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp1.i = icmp ult i16 %13, 4
  %conv.i87 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0172, i32 %conv.i87)
  %cmp5.i.not = icmp ult i32 %rem.0172, %conv.i87
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup_crit_edge, label %for.body

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla.0181, i32 0, i32 1
  %14 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nla_type.i, align 2
  %16 = and i16 %15, 16383
  %and.i = zext i16 %16 to i32
  %17 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and.i, label %for.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb35
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %18 = zext i16 %type.0183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %type.0183, label %sw.bb.cleanup_crit_edge [
    i16 0, label %sw.bb.if.end15_crit_edge
    i16 2048, label %sw.bb.if.end15_crit_edge223
  ]

sw.bb.if.end15_crit_edge223:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %sw.bb.if.end15_crit_edge, %sw.bb.if.end15_crit_edge223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i) #11
  %19 = call ptr @memset(ptr %tb.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i.i = icmp sgt i16 %15, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.end15
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, label %if.then2.i.i

do.body.i.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_geneve.exit.thread

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %21 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %nla.0181, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %22 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %policy3.i.i, align 4
  br label %ip_tun_parse_opts_geneve.exit.thread

nla_parse_nested.exit.i:                          ; preds = %if.end15
  %add.ptr.i.i.i = getelementptr i8, ptr %nla.0181, i32 4
  %23 = ptrtoint ptr %nla.0181 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nla.0181, align 2
  %conv.i.i.i = zext i16 %24 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @geneve_opt_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ip_tun_parse_opts_geneve.exit

if.end.i:                                         ; preds = %nla_parse_nested.exit.i
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %9, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %if.end.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_geneve.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %10, align 4
  %tobool3.not.i = icmp eq ptr %28, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_geneve.exit.thread

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 4
  %tobool6.not.i = icmp eq ptr %30, null
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, label %if.end8.i

lor.lhs.false4.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_geneve.exit.thread

if.end8.i:                                        ; preds = %lor.lhs.false4.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv.i.i = zext i16 %32 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %33 = and i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool11.not.i = icmp eq i32 %33, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge

if.end8.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_geneve.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  br i1 %tobool25.not66.i, label %if.end13.i.ip_tun_parse_opts_geneve.exit.thread147_crit_edge, label %if.then15.i

if.end13.i.ip_tun_parse_opts_geneve.exit.thread147_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_geneve.exit.thread147

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i88 = getelementptr i8, ptr %add.ptr.i67.i, i32 %opts_len.0173
  %opt_data.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i88, i32 0, i32 3
  %add.ptr.i41.i = getelementptr i8, ptr %30, i32 4
  %34 = call ptr @memcpy(ptr %opt_data.i, ptr %add.ptr.i41.i, i32 %sub.i.i)
  %div.i = sdiv i32 %sub.i.i, 4
  %conv.i89 = trunc i32 %div.i to i8
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i88, i32 0, i32 2
  %35 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.value.i = and i8 %conv.i89, 31
  %bf.clear.i = and i8 %bf.load.i, -32
  %bf.set.i = or i8 %bf.clear.i, %bf.value.i
  store i8 %bf.set.i, ptr %length.i, align 1
  %add.ptr.i.i42.i = getelementptr i8, ptr %26, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i42.i, align 2
  %38 = ptrtoint ptr %add.ptr.i88 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr.i88, align 2
  %add.ptr.i.i43.i = getelementptr i8, ptr %28, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.i43.i, align 1
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i88, i32 0, i32 1
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %type.i, align 2
  %42 = ptrtoint ptr %tun_flags.i136 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tun_flags.i136, align 8
  %44 = or i16 %43, 2048
  store i16 %44, ptr %tun_flags.i136, align 8
  br label %ip_tun_parse_opts_geneve.exit.thread147

ip_tun_parse_opts_geneve.exit.thread:             ; preds = %if.end8.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, %lor.lhs.false4.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, %lor.lhs.false.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, %if.end.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge, %if.then2.i.i, %do.body.i.i.ip_tun_parse_opts_geneve.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i) #11
  br label %cleanup

ip_tun_parse_opts_geneve.exit.thread147:          ; preds = %if.then15.i, %if.end13.i.ip_tun_parse_opts_geneve.exit.thread147_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i) #11
  br label %if.end20

ip_tun_parse_opts_geneve.exit:                    ; preds = %nla_parse_nested.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp17 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp17, label %ip_tun_parse_opts_geneve.exit.cleanup_crit_edge, label %ip_tun_parse_opts_geneve.exit.if.end20_crit_edge

ip_tun_parse_opts_geneve.exit.if.end20_crit_edge: ; preds = %ip_tun_parse_opts_geneve.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

ip_tun_parse_opts_geneve.exit.cleanup_crit_edge:  ; preds = %ip_tun_parse_opts_geneve.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %ip_tun_parse_opts_geneve.exit.if.end20_crit_edge, %ip_tun_parse_opts_geneve.exit.thread147
  %retval.0.i150 = phi i32 [ %conv.i.i, %ip_tun_parse_opts_geneve.exit.thread147 ], [ %call6.i.i, %ip_tun_parse_opts_geneve.exit.if.end20_crit_edge ]
  %add = add i32 %retval.0.i150, %opts_len.0173
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp21 = icmp ugt i32 %add, 255
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb25:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %type.0183)
  %tobool26.not = icmp eq i16 %type.0183, 0
  br i1 %tobool26.not, label %if.end28, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %sw.bb25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i90) #11
  %45 = ptrtoint ptr %tb.i90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i90, align 4, !annotation !80
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i.i92 = icmp sgt i16 %15, -1
  br i1 %tobool.not.i.i92, label %do.body.i.i94, label %nla_parse_nested.exit.i103

do.body.i.i94:                                    ; preds = %if.end28
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i.i93 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i93, label %do.body.i.i94.ip_tun_parse_opts_vxlan.exit.thread_crit_edge, label %if.then2.i.i97

do.body.i.i94.ip_tun_parse_opts_vxlan.exit.thread_crit_edge: ; preds = %do.body.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_vxlan.exit.thread

if.then2.i.i97:                                   ; preds = %do.body.i.i94
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i95 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %48 = ptrtoint ptr %bad_attr.i.i95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %nla.0181, ptr %bad_attr.i.i95, align 4
  %policy3.i.i96 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %49 = ptrtoint ptr %policy3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %policy3.i.i96, align 4
  br label %ip_tun_parse_opts_vxlan.exit.thread

nla_parse_nested.exit.i103:                       ; preds = %if.end28
  %add.ptr.i.i.i98 = getelementptr i8, ptr %nla.0181, i32 4
  %50 = ptrtoint ptr %nla.0181 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nla.0181, align 2
  %conv.i.i.i99 = zext i16 %51 to i32
  %sub.i.i.i100 = add nsw i32 %conv.i.i.i99, -4
  %call6.i.i101 = call i32 @__nla_parse(ptr noundef nonnull %tb.i90, i32 noundef 1, ptr noundef %add.ptr.i.i.i98, i32 noundef %sub.i.i.i100, ptr noundef nonnull @vxlan_opt_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i101)
  %tobool.not.i102 = icmp eq i32 %call6.i.i101, 0
  br i1 %tobool.not.i102, label %if.end.i105, label %ip_tun_parse_opts_vxlan.exit

if.end.i105:                                      ; preds = %nla_parse_nested.exit.i103
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %8, align 4
  %tobool1.not.i104 = icmp eq ptr %53, null
  br i1 %tobool1.not.i104, label %if.end.i105.ip_tun_parse_opts_vxlan.exit.thread_crit_edge, label %if.end3.i

if.end.i105.ip_tun_parse_opts_vxlan.exit.thread_crit_edge: ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_vxlan.exit.thread

if.end3.i:                                        ; preds = %if.end.i105
  br i1 %tobool25.not66.i, label %if.end3.i.ip_tun_parse_opts_vxlan.exit.thread154_crit_edge, label %if.then5.i

if.end3.i.ip_tun_parse_opts_vxlan.exit.thread154_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_vxlan.exit.thread154

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i107 = getelementptr i8, ptr %add.ptr.i67.i, i32 %opts_len.0173
  %add.ptr.i.i18.i = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i18.i, align 4
  %and.i108 = and i32 %55, 4784127
  %56 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i108, ptr %add.ptr.i107, align 4
  %57 = ptrtoint ptr %tun_flags.i136 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %tun_flags.i136, align 8
  %59 = or i16 %58, 4096
  store i16 %59, ptr %tun_flags.i136, align 8
  br label %ip_tun_parse_opts_vxlan.exit.thread154

ip_tun_parse_opts_vxlan.exit.thread:              ; preds = %if.end.i105.ip_tun_parse_opts_vxlan.exit.thread_crit_edge, %if.then2.i.i97, %do.body.i.i94.ip_tun_parse_opts_vxlan.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i90) #11
  br label %cleanup

ip_tun_parse_opts_vxlan.exit.thread154:           ; preds = %if.then5.i, %if.end3.i.ip_tun_parse_opts_vxlan.exit.thread154_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i90) #11
  br label %if.end33

ip_tun_parse_opts_vxlan.exit:                     ; preds = %nla_parse_nested.exit.i103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i101)
  %cmp30 = icmp slt i32 %call6.i.i101, 0
  br i1 %cmp30, label %ip_tun_parse_opts_vxlan.exit.cleanup_crit_edge, label %ip_tun_parse_opts_vxlan.exit.if.end33_crit_edge

ip_tun_parse_opts_vxlan.exit.if.end33_crit_edge:  ; preds = %ip_tun_parse_opts_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

ip_tun_parse_opts_vxlan.exit.cleanup_crit_edge:   ; preds = %ip_tun_parse_opts_vxlan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %ip_tun_parse_opts_vxlan.exit.if.end33_crit_edge, %ip_tun_parse_opts_vxlan.exit.thread154
  %retval.0.i110157 = phi i32 [ 4, %ip_tun_parse_opts_vxlan.exit.thread154 ], [ %call6.i.i101, %ip_tun_parse_opts_vxlan.exit.if.end33_crit_edge ]
  %add34 = add i32 %retval.0.i110157, %opts_len.0173
  br label %for.inc

sw.bb35:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %type.0183)
  %tobool36.not = icmp eq i16 %type.0183, 0
  br i1 %tobool36.not, label %if.end38, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %sw.bb35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i111) #11
  %60 = call ptr @memset(ptr %tb.i111, i32 255, i32 20)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i.i113 = icmp sgt i16 %15, -1
  br i1 %tobool.not.i.i113, label %do.body.i.i115, label %nla_parse_nested.exit.i124

do.body.i.i115:                                   ; preds = %if.end38
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i.i114 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i114, label %do.body.i.i115.ip_tun_parse_opts_erspan.exit.thread_crit_edge, label %if.then2.i.i118

do.body.i.i115.ip_tun_parse_opts_erspan.exit.thread_crit_edge: ; preds = %do.body.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread

if.then2.i.i118:                                  ; preds = %do.body.i.i115
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i116 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %62 = ptrtoint ptr %bad_attr.i.i116 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %nla.0181, ptr %bad_attr.i.i116, align 4
  %policy3.i.i117 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %63 = ptrtoint ptr %policy3.i.i117 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %policy3.i.i117, align 4
  br label %ip_tun_parse_opts_erspan.exit.thread

nla_parse_nested.exit.i124:                       ; preds = %if.end38
  %add.ptr.i.i.i119 = getelementptr i8, ptr %nla.0181, i32 4
  %64 = ptrtoint ptr %nla.0181 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %nla.0181, align 2
  %conv.i.i.i120 = zext i16 %65 to i32
  %sub.i.i.i121 = add nsw i32 %conv.i.i.i120, -4
  %call6.i.i122 = call i32 @__nla_parse(ptr noundef nonnull %tb.i111, i32 noundef 4, ptr noundef %add.ptr.i.i.i119, i32 noundef %sub.i.i.i121, ptr noundef nonnull @erspan_opt_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i122)
  %tobool.not.i123 = icmp eq i32 %call6.i.i122, 0
  br i1 %tobool.not.i123, label %if.end.i126, label %ip_tun_parse_opts_erspan.exit

if.end.i126:                                      ; preds = %nla_parse_nested.exit.i124
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %4, align 4
  %tobool1.not.i125 = icmp eq ptr %67, null
  br i1 %tobool1.not.i125, label %if.end.i126.ip_tun_parse_opts_erspan.exit.thread_crit_edge, label %if.end3.i128

if.end.i126.ip_tun_parse_opts_erspan.exit.thread_crit_edge: ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread

if.end3.i128:                                     ; preds = %if.end.i126
  %add.ptr.i.i60.i = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i60.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr.i.i60.i, align 1
  %conv.i127 = zext i8 %69 to i32
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %69, label %if.end3.i128.ip_tun_parse_opts_erspan.exit.thread_crit_edge [
    i8 1, label %if.then7.i
    i8 2, label %if.then15.i129
  ]

if.end3.i128.ip_tun_parse_opts_erspan.exit.thread_crit_edge: ; preds = %if.end3.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread

if.then7.i:                                       ; preds = %if.end3.i128
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %5, align 4
  %tobool9.not.i = icmp eq ptr %72, null
  br i1 %tobool9.not.i, label %if.then7.i.ip_tun_parse_opts_erspan.exit.thread_crit_edge, label %if.end24.i

if.then7.i.ip_tun_parse_opts_erspan.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread

if.then15.i129:                                   ; preds = %if.end3.i128
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %6, align 4
  %tobool17.not.i = icmp eq ptr %74, null
  br i1 %tobool17.not.i, label %if.then15.i129.ip_tun_parse_opts_erspan.exit.thread_crit_edge, label %lor.lhs.false.i130

if.then15.i129.ip_tun_parse_opts_erspan.exit.thread_crit_edge: ; preds = %if.then15.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread

lor.lhs.false.i130:                               ; preds = %if.then15.i129
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %7, align 4
  %tobool19.not.i = icmp eq ptr %76, null
  br i1 %tobool19.not.i, label %lor.lhs.false.i130.ip_tun_parse_opts_erspan.exit.thread_crit_edge, label %if.end24.thread.i

lor.lhs.false.i130.ip_tun_parse_opts_erspan.exit.thread_crit_edge: ; preds = %lor.lhs.false.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread

if.end24.i:                                       ; preds = %if.then7.i
  br i1 %tobool25.not66.i, label %if.end24.i.ip_tun_parse_opts_erspan.exit.thread161_crit_edge, label %if.then32.i

if.end24.i.ip_tun_parse_opts_erspan.exit.thread161_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread161

if.end24.thread.i:                                ; preds = %lor.lhs.false.i130
  br i1 %tobool25.not66.i, label %if.end24.thread.i.ip_tun_parse_opts_erspan.exit.thread161_crit_edge, label %if.else35.i

if.end24.thread.i.ip_tun_parse_opts_erspan.exit.thread161_crit_edge: ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_parse_opts_erspan.exit.thread161

if.then32.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i132 = getelementptr i8, ptr %add.ptr.i67.i, i32 %opts_len.0173
  %77 = ptrtoint ptr %add.ptr.i132 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv.i127, ptr %add.ptr.i132, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %72, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i61.i, align 4
  %u.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i132, i32 0, i32 1
  %80 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %u.i, align 4
  br label %if.end42.i

if.else35.i:                                      ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr68.i = getelementptr i8, ptr %add.ptr.i67.i, i32 %opts_len.0173
  %81 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv.i127, ptr %add.ptr68.i, align 4
  %add.ptr.i.i62.i = getelementptr i8, ptr %74, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i62.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i.i62.i, align 1
  %u38.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr68.i, i32 0, i32 1
  %dir.i = getelementptr inbounds %struct.erspan_md2, ptr %u38.i, i32 0, i32 2
  %84 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load.i133 = load i16, ptr %dir.i, align 2
  %85 = shl i8 %83, 3
  %86 = and i8 %85, 8
  %bf.shl.i = zext i8 %86 to i16
  %bf.clear.i134 = and i16 %bf.load.i133, -9
  %bf.set.i135 = or i16 %bf.clear.i134, %bf.shl.i
  store i16 %bf.set.i135, ptr %dir.i, align 2
  %add.ptr.i.i63.i = getelementptr i8, ptr %76, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i63.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr.i.i63.i, align 1
  %89 = shl i8 %88, 4
  %bf.shl.i.i = zext i8 %89 to i16
  %bf.clear.i.i = and i16 %bf.set.i135, -1009
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  %90 = lshr i8 %88, 4
  %91 = and i8 %90, 3
  %bf.value7.i.i = zext i8 %91 to i16
  %bf.shl8.i.i = shl nuw nsw i16 %bf.value7.i.i, 8
  %bf.set10.i.i = or i16 %bf.shl8.i.i, %bf.set.i.i
  store i16 %bf.set10.i.i, ptr %dir.i, align 2
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else35.i, %if.then32.i
  %92 = ptrtoint ptr %tun_flags.i136 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tun_flags.i136, align 8
  %94 = or i16 %93, 16384
  store i16 %94, ptr %tun_flags.i136, align 8
  br label %ip_tun_parse_opts_erspan.exit.thread161

ip_tun_parse_opts_erspan.exit.thread:             ; preds = %lor.lhs.false.i130.ip_tun_parse_opts_erspan.exit.thread_crit_edge, %if.then15.i129.ip_tun_parse_opts_erspan.exit.thread_crit_edge, %if.then7.i.ip_tun_parse_opts_erspan.exit.thread_crit_edge, %if.end3.i128.ip_tun_parse_opts_erspan.exit.thread_crit_edge, %if.end.i126.ip_tun_parse_opts_erspan.exit.thread_crit_edge, %if.then2.i.i118, %do.body.i.i115.ip_tun_parse_opts_erspan.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i111) #11
  br label %cleanup

ip_tun_parse_opts_erspan.exit.thread161:          ; preds = %if.end42.i, %if.end24.thread.i.ip_tun_parse_opts_erspan.exit.thread161_crit_edge, %if.end24.i.ip_tun_parse_opts_erspan.exit.thread161_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i111) #11
  br label %if.end43

ip_tun_parse_opts_erspan.exit:                    ; preds = %nla_parse_nested.exit.i124
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i122)
  %cmp40 = icmp slt i32 %call6.i.i122, 0
  br i1 %cmp40, label %ip_tun_parse_opts_erspan.exit.cleanup_crit_edge, label %ip_tun_parse_opts_erspan.exit.if.end43_crit_edge

ip_tun_parse_opts_erspan.exit.if.end43_crit_edge: ; preds = %ip_tun_parse_opts_erspan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

ip_tun_parse_opts_erspan.exit.cleanup_crit_edge:  ; preds = %ip_tun_parse_opts_erspan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %ip_tun_parse_opts_erspan.exit.if.end43_crit_edge, %ip_tun_parse_opts_erspan.exit.thread161
  %retval.0.i137164 = phi i32 [ 12, %ip_tun_parse_opts_erspan.exit.thread161 ], [ %call6.i.i122, %ip_tun_parse_opts_erspan.exit.if.end43_crit_edge ]
  %add44 = add i32 %retval.0.i137164, %opts_len.0173
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %if.end33, %if.end20.for.inc_crit_edge
  %opts_len.1 = phi i32 [ %add44, %if.end43 ], [ %add34, %if.end33 ], [ %add, %if.end20.for.inc_crit_edge ]
  %type.1 = phi i16 [ 16384, %if.end43 ], [ 4096, %if.end33 ], [ 2048, %if.end20.for.inc_crit_edge ]
  %95 = ptrtoint ptr %nla.0181 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %nla.0181, align 2
  %conv.i138 = zext i16 %96 to i32
  %sub.i139 = add nuw nsw i32 %conv.i138, 3
  %and.i140 = and i32 %sub.i139, 131068
  %sub1.i = sub nsw i32 %rem.0172, %and.i140
  %add.ptr.i141 = getelementptr i8, ptr %nla.0181, i32 %and.i140
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ip_tun_parse_opts_erspan.exit.cleanup_crit_edge, %ip_tun_parse_opts_erspan.exit.thread, %sw.bb35.cleanup_crit_edge, %ip_tun_parse_opts_vxlan.exit.cleanup_crit_edge, %ip_tun_parse_opts_vxlan.exit.thread, %sw.bb25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %ip_tun_parse_opts_geneve.exit.cleanup_crit_edge, %ip_tun_parse_opts_geneve.exit.thread, %sw.bb.cleanup_crit_edge, %for.body.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %ip_tun_parse_opts_geneve.exit.thread ], [ -22, %ip_tun_parse_opts_vxlan.exit.thread ], [ -22, %ip_tun_parse_opts_erspan.exit.thread ], [ 0, %if.end5.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call6.i.i, %ip_tun_parse_opts_geneve.exit.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ %call6.i.i101, %ip_tun_parse_opts_vxlan.exit.cleanup_crit_edge ], [ -22, %sw.bb35.cleanup_crit_edge ], [ %call6.i.i122, %ip_tun_parse_opts_erspan.exit.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ %opts_len.0173, %land.lhs.true.i.cleanup_crit_edge ], [ %opts_len.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_tun_fill_encap_opts(ptr noundef %skb, ptr noundef %tun_info) unnamed_addr #0 align 64 {
entry:
  %tmp.i44.i = alloca i8, align 1
  %tmp.i42.i = alloca i8, align 1
  %tmp.i40.i = alloca i32, align 4
  %tmp.i.i22 = alloca i8, align 1
  %tmp.i.i2 = alloca i32, align 4
  %tmp.i36.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %tun_info, i32 0, i32 2
  %0 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tun_flags, align 8
  %2 = and i16 %1, 22528
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not58 = icmp eq ptr %4, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not58
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %5 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tun_flags, align 8
  %conv6 = zext i16 %6 to i32
  %and7 = and i32 %conv6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not42.i = icmp eq ptr %8, null
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not42.i
  br i1 %tobool.not.i, label %if.then9.if.then.i.i_crit_edge, label %while.cond.preheader.i

if.then9.if.then.i.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

while.cond.preheader.i:                           ; preds = %if.then9
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %tun_info, i32 0, i32 2
  %9 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %options_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp40.not.i = icmp eq i8 %10, 0
  br i1 %cmp40.not.i, label %while.cond.preheader.i.if.end31.sink.split_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.if.end31.sink.split_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %add.ptr.i.i = getelementptr %struct.ip_tunnel_info, ptr %tun_info, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %offset.041.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add18.i, %if.end12.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.041.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #11
  %13 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %while.body.i.if.then.i.i.i_crit_edge

while.body.i.if.then.i.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i36.i) #11
  %16 = ptrtoint ptr %tmp.i36.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i36.i, align 1
  %call.i37.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i36.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i36.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool6.not.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i, i32 0, i32 2
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %18 = and i8 %bf.clear.i, 124
  %mul.i = zext i8 %18 to i32
  %opt_data.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i, i32 0, i32 3
  %call9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %mul.i, ptr noundef %opt_data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false7.i.if.then.i.i.i_crit_edge

lor.lhs.false7.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false7.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %while.body.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %20, %8
  br i1 %cmp.i.i.i, label %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i.if.then.i.i.sink.split_crit_edge, !prof !79

if.then.i.i.i.if.then.i.i.sink.split_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.sink.split

if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.sink.split.sink.split

if.end12.i:                                       ; preds = %lor.lhs.false7.i
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load14.i = load i8, ptr %length.i, align 1
  %bf.clear15.i = shl i8 %bf.load14.i, 2
  %22 = and i8 %bf.clear15.i, 124
  %narrow.i = add nuw i8 %22, 4
  %add.i = zext i8 %narrow.i to i32
  %add18.i = add i32 %offset.041.i, %add.i
  %23 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %options_len.i, align 8
  %conv.i = zext i8 %24 to i32
  %cmp.i1 = icmp slt i32 %add18.i, %conv.i
  br i1 %cmp.i1, label %if.end12.i.while.body.i_crit_edge, label %if.end12.i.if.end31.sink.split_crit_edge

if.end12.i.if.end31.sink.split_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.else:                                          ; preds = %if.end3
  %and14 = and i32 %conv6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i4 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i4)
  %cmp.i.i5 = icmp slt i32 %call1.i.i4, 0
  %tobool.not14.i = icmp eq ptr %26, null
  %tobool.not.i6 = select i1 %cmp.i.i5, i1 true, i1 %tobool.not14.i
  br i1 %tobool.not.i6, label %if.then16.if.then.i.i_crit_edge, label %if.end.i

if.then16.if.then.i.i_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i:                                         ; preds = %if.then16
  %add.ptr.i.i7 = getelementptr %struct.ip_tunnel_info, ptr %tun_info, i32 1
  %27 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i2) #11
  %29 = ptrtoint ptr %tmp.i.i2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i.i2, align 4
  %call.i.i8 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool3.not.i = icmp eq i32 %call.i.i8, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end31.sink.split_crit_edge, label %if.then.i.i.i11

if.end.i.if.end31.sink.split_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

if.then.i.i.i11:                                  ; preds = %if.end.i
  %data.i.i.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i9, align 4
  %cmp.i.i.i10 = icmp ugt ptr %31, %26
  br i1 %cmp.i.i.i10, label %if.then.i.i.i11.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i11.if.then.i.i.sink.split_crit_edge, !prof !79

if.then.i.i.i11.if.then.i.i.sink.split_crit_edge: ; preds = %if.then.i.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.sink.split

if.then.i.i.i11.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.sink.split.sink.split

if.else18:                                        ; preds = %if.else
  %and22 = and i32 %conv6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else18.if.end31_crit_edge, label %if.then24

if.else18.if.end31_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then24:                                        ; preds = %if.else18
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i24 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i24)
  %cmp.i.i25 = icmp slt i32 %call1.i.i24, 0
  %tobool.not47.i = icmp eq ptr %33, null
  %tobool.not.i26 = select i1 %cmp.i.i25, i1 true, i1 %tobool.not47.i
  br i1 %tobool.not.i26, label %if.then24.if.then.i.i_crit_edge, label %if.end.i31

if.then24.if.then.i.i_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i31:                                       ; preds = %if.then24
  %add.ptr.i.i27 = getelementptr %struct.ip_tunnel_info, ptr %tun_info, i32 1
  %34 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i27, align 4
  %conv.i28 = trunc i32 %35 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i22) #11
  %36 = ptrtoint ptr %tmp.i.i22 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i28, ptr %tmp.i.i22, align 1
  %call.i.i29 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i22) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool3.not.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool3.not.i30, label %if.end5.i33, label %if.end.i31.if.then.i.i.i42_crit_edge

if.end.i31.if.then.i.i.i42_crit_edge:             ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i42

if.end5.i33:                                      ; preds = %if.end.i31
  %37 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i32 = icmp eq i32 %38, 1
  br i1 %cmp.i32, label %land.lhs.true.i, label %if.end5.i33.if.end11.i_crit_edge

if.end5.i33.if.end11.i_crit_edge:                 ; preds = %if.end5.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end5.i33
  %u.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i.i27, i32 0, i32 1
  %39 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %u.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i40.i) #11
  %41 = ptrtoint ptr %tmp.i40.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i40.i, align 4
  %call.i41.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i40.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i40.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool9.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool9.not.i, label %if.end11thread-pre-split.i, label %land.lhs.true.i.if.then.i.i.i42_crit_edge

land.lhs.true.i.if.then.i.i.i42_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i42

if.end11thread-pre-split.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %add.ptr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load i32, ptr %add.ptr.i.i27, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11thread-pre-split.i, %if.end5.i33.if.end11.i_crit_edge
  %43 = phi i32 [ %.pr.i, %if.end11thread-pre-split.i ], [ %38, %if.end5.i33.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp13.i = icmp eq i32 %43, 2
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.end11.i.if.end31.sink.split_crit_edge

if.end11.i.if.end31.sink.split_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

land.lhs.true15.i:                                ; preds = %if.end11.i
  %dir.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i.i27, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i34 = load i16, ptr %dir.i, align 2
  %45 = trunc i16 %bf.load.i34 to i8
  %46 = lshr i8 %45, 3
  %bf.cast.i = and i8 %46, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i42.i) #11
  %47 = ptrtoint ptr %tmp.i42.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %bf.cast.i, ptr %tmp.i42.i, align 1
  %call.i43.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i42.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i42.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool18.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i35, label %land.lhs.true15.i.if.then.i.i.i42_crit_edge

land.lhs.true15.i.if.then.i.i.i42_crit_edge:      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i42

lor.lhs.false.i35:                                ; preds = %land.lhs.true15.i
  %u16.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i.i27, i32 0, i32 1
  %hwid_upper.i.i = getelementptr inbounds %struct.erspan_md2, ptr %u16.i, i32 0, i32 2
  %48 = ptrtoint ptr %hwid_upper.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i = load i16, ptr %hwid_upper.i.i, align 2
  %49 = lshr i16 %bf.load.i.i, 4
  %50 = trunc i16 %49 to i8
  %conv6.i.i = and i8 %50, 63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i44.i) #11
  %51 = ptrtoint ptr %tmp.i44.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv6.i.i, ptr %tmp.i44.i, align 1
  %call.i45.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i44.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i44.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool22.not.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool22.not.i, label %lor.lhs.false.i35.if.end31.sink.split_crit_edge, label %lor.lhs.false.i35.if.then.i.i.i42_crit_edge

lor.lhs.false.i35.if.then.i.i.i42_crit_edge:      ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i42

lor.lhs.false.i35.if.end31.sink.split_crit_edge:  ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.sink.split

if.then.i.i.i42:                                  ; preds = %lor.lhs.false.i35.if.then.i.i.i42_crit_edge, %land.lhs.true15.i.if.then.i.i.i42_crit_edge, %land.lhs.true.i.if.then.i.i.i42_crit_edge, %if.end.i31.if.then.i.i.i42_crit_edge
  %data.i.i.i40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i40, align 4
  %cmp.i.i.i41 = icmp ugt ptr %53, %33
  br i1 %cmp.i.i.i41, label %if.then.i.i.i42.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i42.if.then.i.i.sink.split_crit_edge, !prof !79

if.then.i.i.i42.if.then.i.i.sink.split_crit_edge: ; preds = %if.then.i.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.sink.split

if.then.i.i.i42.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.sink.split.sink.split

if.then.i.i.sink.split.sink.split:                ; preds = %if.then.i.i.i42.if.then.i.i.sink.split.sink.split_crit_edge, %if.then.i.i.i11.if.then.i.i.sink.split.sink.split_crit_edge, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge
  %data.i.i.i40.sink.ph = phi ptr [ %data.i.i.i, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge ], [ %data.i.i.i9, %if.then.i.i.i11.if.then.i.i.sink.split.sink.split_crit_edge ], [ %data.i.i.i40, %if.then.i.i.i42.if.then.i.i.sink.split.sink.split_crit_edge ]
  %.sink59.ph = phi ptr [ %8, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge ], [ %26, %if.then.i.i.i11.if.then.i.i.sink.split.sink.split_crit_edge ], [ %33, %if.then.i.i.i42.if.then.i.i.sink.split.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.then.i.i.sink.split

if.then.i.i.sink.split:                           ; preds = %if.then.i.i.sink.split.sink.split, %if.then.i.i.i42.if.then.i.i.sink.split_crit_edge, %if.then.i.i.i11.if.then.i.i.sink.split_crit_edge, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge
  %data.i.i.i40.sink = phi ptr [ %data.i.i.i, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i9, %if.then.i.i.i11.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i40, %if.then.i.i.i42.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i40.sink.ph, %if.then.i.i.sink.split.sink.split ]
  %.sink59 = phi ptr [ %8, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge ], [ %26, %if.then.i.i.i11.if.then.i.i.sink.split_crit_edge ], [ %33, %if.then.i.i.i42.if.then.i.i.sink.split_crit_edge ], [ %.sink59.ph, %if.then.i.i.sink.split.sink.split ]
  %54 = ptrtoint ptr %data.i.i.i40.sink to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i40.sink, align 4
  %sub.ptr.lhs.cast.i.i.i44 = ptrtoint ptr %.sink59 to i32
  %sub.ptr.rhs.cast.i.i.i45 = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i.i46 = sub i32 %sub.ptr.lhs.cast.i.i.i44, %sub.ptr.rhs.cast.i.i.i45
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i46) #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.i.sink.split, %if.then24.if.then.i.i_crit_edge, %if.then16.if.then.i.i_crit_edge, %if.then9.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i49 = icmp ugt ptr %57, %4
  br i1 %cmp.i.i49, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !79

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i50 = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i51 = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i52 = sub i32 %sub.ptr.lhs.cast.i.i50, %sub.ptr.rhs.cast.i.i51
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i52) #11
  br label %cleanup

if.end31.sink.split:                              ; preds = %lor.lhs.false.i35.if.end31.sink.split_crit_edge, %if.end11.i.if.end31.sink.split_crit_edge, %if.end.i.if.end31.sink.split_crit_edge, %if.end12.i.if.end31.sink.split_crit_edge, %while.cond.preheader.i.if.end31.sink.split_crit_edge
  %.sink60 = phi ptr [ %8, %while.cond.preheader.i.if.end31.sink.split_crit_edge ], [ %26, %if.end.i.if.end31.sink.split_crit_edge ], [ %33, %lor.lhs.false.i35.if.end31.sink.split_crit_edge ], [ %33, %if.end11.i.if.end31.sink.split_crit_edge ], [ %8, %if.end12.i.if.end31.sink.split_crit_edge ]
  %60 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %.sink60 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %62 = ptrtoint ptr %.sink60 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i, ptr %.sink60, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.else18.if.end31_crit_edge
  %63 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i54 = trunc i32 %sub.ptr.sub.i to i16
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i54, ptr %4, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %nla_nest_cancel.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nla_nest_cancel.exit ], [ 0, %if.end31 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_tun_build_state(ptr nocapture noundef readnone %net, ptr noundef %attr, i32 noundef %family, ptr nocapture noundef readnone %cfg, ptr nocapture noundef writeonly %ts, ptr noundef %extack) #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %tb = alloca [9 x ptr], align 4
  %tmp = alloca %struct.in6_addr, align 4
  %tmp31 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #11
  %0 = call ptr @memset(ptr %tb, i32 255, i32 36)
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @ip6_tun_policy, i32 noundef 0, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call.i = call fastcc i32 @ip_tun_parse_opts(ptr noundef %4, ptr noundef null, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add = add nuw i32 %call.i, 72
  %call5 = call ptr @lwtunnel_state_alloc(i32 noundef %add) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %5 = ptrtoint ptr %call5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %call5, align 4
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i86 = call fastcc i32 @ip_tun_parse_opts(ptr noundef %7, ptr noundef %data.i, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp11 = icmp slt i32 %call.i86, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @lwtstate_free(ptr noundef nonnull %call5) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %arrayidx14 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %tmp.i, align 8, !annotation !80
  %call.i87 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %9, i32 noundef 8) #11
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %data.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %arrayidx20 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %dst = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 1, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %16 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i88 = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %15, i32 noundef 16) #11
  %17 = call ptr @memcpy(ptr %dst, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %arrayidx26 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.end25.if.end33_crit_edge, label %if.then28

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %u30 = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp31) #11
  %20 = call ptr @memset(ptr %tmp31, i32 255, i32 16)
  %call.i89 = call i32 @nla_memcpy(ptr noundef nonnull %tmp31, ptr noundef nonnull %19, i32 noundef 16) #11
  %21 = call ptr @memcpy(ptr %u30, ptr %tmp31, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp31) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.end25.if.end33_crit_edge
  %arrayidx34 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %if.end33.if.end40_crit_edge, label %if.then36

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i90 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i90, align 1
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 4
  %26 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ttl, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end33.if.end40_crit_edge
  %arrayidx41 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %28, null
  br i1 %tobool42.not, label %if.end40.if.end47_crit_edge, label %if.then43

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i91 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i91, align 1
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 3
  %31 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %tos, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end40.if.end47_crit_edge
  %arrayidx48 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx48, align 4
  %tobool49.not = icmp eq ptr %33, null
  br i1 %tobool49.not, label %if.end47.if.end56_crit_edge, label %if.then50

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i92 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i92 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i92, align 2
  %36 = and i16 %35, -22529
  %tun_flags = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 2, i32 4
  %37 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tun_flags, align 8
  %or85 = or i16 %38, %36
  store i16 %or85, ptr %tun_flags, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.end47.if.end56_crit_edge
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i, i32 0, i32 3
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %mode, align 1
  %conv57 = trunc i32 %call.i to i8
  %options_len = getelementptr inbounds %struct.lwtunnel_state, ptr %call5, i32 3, i32 3
  %40 = ptrtoint ptr %options_len to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv57, ptr %options_len, align 8
  %41 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5, ptr %ts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then12, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i86, %if.then12 ], [ 0, %if.end56 ], [ %call2.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_tun_fill_encap_info(ptr noundef %skb, ptr noundef %lwtstate) #0 align 64 {
entry:
  %tmp.i43 = alloca i16, align 2
  %tmp.i41 = alloca i8, align 1
  %tmp.i39 = alloca i8, align 1
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 0, i32 7
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 6, i32 1
  %call.i37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %dst) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool4.not = icmp eq i32 %call.i37, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %u = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 1, i32 3
  %call.i38 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 16, ptr noundef %u) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool9.not = icmp eq i32 %call.i38, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 3
  %3 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tos, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39) #11
  %5 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i39, align 1
  %call.i40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i39) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool13.not = icmp eq i32 %call.i40, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %ttl = getelementptr inbounds %struct.ip_tunnel_key, ptr %data.i, i32 0, i32 4
  %6 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ttl, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41) #11
  %8 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tmp.i41, align 1
  %call.i42 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i41) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool17.not = icmp eq i32 %call.i42, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %tun_flags = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 2, i32 4
  %9 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tun_flags, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i43) #11
  %11 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i43, align 2
  %call.i44 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i43) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool21.not = icmp eq i32 %call.i44, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = call fastcc i32 @ip_tun_fill_encap_opts(ptr noundef %skb, ptr noundef %data.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %spec.select = select i1 %tobool24.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false22, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %lor.lhs.false18.cleanup_crit_edge ], [ -12, %lor.lhs.false14.cleanup_crit_edge ], [ -12, %lor.lhs.false10.cleanup_crit_edge ], [ -12, %lor.lhs.false5.cleanup_crit_edge ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6_tun_encap_nlsize(ptr nocapture noundef readonly %lwtstate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_flags.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 2, i32 4
  %0 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tun_flags.i, align 8
  %2 = and i16 %1, 22528
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  br i1 %tobool.not.i, label %entry.ip_tun_opts_nlsize.exit_crit_edge, label %if.end.i

entry.ip_tun_opts_nlsize.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

if.end.i:                                         ; preds = %entry
  %conv3.i = zext i16 %1 to i32
  %and4.i = and i32 %conv3.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %options_len.i = getelementptr inbounds %struct.lwtunnel_state, ptr %lwtstate, i32 3, i32 3
  %3 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %options_len.i, align 8
  %conv8.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp72.not.i = icmp eq i8 %4, 0
  br i1 %cmp72.not.i, label %while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %add.ptr.i.i = getelementptr %struct.lwtunnel_state, ptr %lwtstate, i32 3, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %offset.074.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add24.i, %while.body.i.while.body.i_crit_edge ]
  %opt_len.073.i = phi i32 [ 8, %while.body.lr.ph.i ], [ %add17.i, %while.body.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %offset.074.i
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %add.ptr.i, i32 0, i32 2
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %6 = and i8 %bf.clear.i, 124
  %narrow71.i = add nuw i8 %6, 7
  %7 = and i8 %narrow71.i, -4
  %and.i.i = zext i8 %7 to i32
  %add16.i = add i32 %opt_len.073.i, 16
  %add17.i = add i32 %add16.i, %and.i.i
  %narrow.i = add nuw i8 %6, 4
  %add23.i = zext i8 %narrow.i to i32
  %add24.i = add i32 %offset.074.i, %add23.i
  %cmp.i = icmp slt i32 %add24.i, %conv8.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.ip_tun_opts_nlsize.exit_crit_edge

while.body.i.ip_tun_opts_nlsize.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.else.i:                                        ; preds = %if.end.i
  %and28.i = and i32 %conv3.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else35.i, label %if.else.i.ip_tun_opts_nlsize.exit_crit_edge

if.else.i.ip_tun_opts_nlsize.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

if.else35.i:                                      ; preds = %if.else.i
  %and39.i = and i32 %conv3.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.else35.i.ip_tun_opts_nlsize.exit_crit_edge, label %if.then41.i

if.else35.i.ip_tun_opts_nlsize.exit_crit_edge:    ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_tun_opts_nlsize.exit

if.then41.i:                                      ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i70.i = getelementptr %struct.lwtunnel_state, ptr %lwtstate, i32 3, i32 5
  %8 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp46.i = icmp eq i32 %9, 1
  %add53.i = select i1 %cmp46.i, i32 24, i32 32
  br label %ip_tun_opts_nlsize.exit

ip_tun_opts_nlsize.exit:                          ; preds = %if.then41.i, %if.else35.i.ip_tun_opts_nlsize.exit_crit_edge, %if.else.i.ip_tun_opts_nlsize.exit_crit_edge, %while.body.i.ip_tun_opts_nlsize.exit_crit_edge, %while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge, %entry.ip_tun_opts_nlsize.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.ip_tun_opts_nlsize.exit_crit_edge ], [ %add53.i, %if.then41.i ], [ 4, %if.else35.i.ip_tun_opts_nlsize.exit_crit_edge ], [ 16, %if.else.i.ip_tun_opts_nlsize.exit_crit_edge ], [ 8, %while.cond.preheader.i.ip_tun_opts_nlsize.exit_crit_edge ], [ %add17.i, %while.body.i.ip_tun_opts_nlsize.exit_crit_edge ]
  %add12 = add i32 %retval.0.i, 76
  ret i32 %add12
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__ksymtab_iptun_encaps, !1, !"__ksymtab_iptun_encaps", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_tunnel_core.c", i32 44, i32 1}
!2 = !{ptr @__ksymtab_ip6tun_encaps, !3, !"__ksymtab_ip6tun_encaps", i1 false, i1 false}
!3 = !{!"../net/ipv4/ip_tunnel_core.c", i32 48, i32 1}
!4 = !{ptr @__ksymtab_iptunnel_xmit, !5, !"__ksymtab_iptunnel_xmit", i1 false, i1 false}
!5 = !{!"../net/ipv4/ip_tunnel_core.c", i32 90, i32 1}
!6 = !{ptr @__ksymtab___iptunnel_pull_header, !7, !"__ksymtab___iptunnel_pull_header", i1 false, i1 false}
!7 = !{!"../net/ipv4/ip_tunnel_core.c", i32 123, i32 1}
!8 = !{ptr @__ksymtab_iptunnel_metadata_reply, !9, !"__ksymtab_iptunnel_metadata_reply", i1 false, i1 false}
!9 = !{!"../net/ipv4/ip_tunnel_core.c", i32 154, i32 1}
!10 = !{ptr @__ksymtab_iptunnel_handle_offloads, !11, !"__ksymtab_iptunnel_handle_offloads", i1 false, i1 false}
!11 = !{!"../net/ipv4/ip_tunnel_core.c", i32 186, i32 1}
!12 = !{ptr @__ksymtab_skb_tunnel_check_pmtu, !13, !"__ksymtab_skb_tunnel_check_pmtu", i1 false, i1 false}
!13 = !{!"../net/ipv4/ip_tunnel_core.c", i32 430, i32 1}
!14 = !{ptr @ip_tunnel_metadata_cnt, !15, !"ip_tunnel_metadata_cnt", i1 false, i1 false}
!15 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1050, i32 1}
!16 = !{ptr @__ksymtab_ip_tunnel_metadata_cnt, !17, !"__ksymtab_ip_tunnel_metadata_cnt", i1 false, i1 false}
!17 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1051, i32 1}
!18 = !{ptr @__ksymtab_ip_tunnel_need_metadata, !19, !"__ksymtab_ip_tunnel_need_metadata", i1 false, i1 false}
!19 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1057, i32 1}
!20 = !{ptr @__ksymtab_ip_tunnel_unneed_metadata, !21, !"__ksymtab_ip_tunnel_unneed_metadata", i1 false, i1 false}
!21 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1063, i32 1}
!22 = !{ptr @__ksymtab_ip_tunnel_parse_protocol, !23, !"__ksymtab_ip_tunnel_parse_protocol", i1 false, i1 false}
!23 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1078, i32 1}
!24 = !{ptr @ip_tunnel_header_ops, !25, !"ip_tunnel_header_ops", i1 false, i1 false}
!25 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1080, i32 25}
!26 = !{ptr @__ksymtab_ip_tunnel_header_ops, !27, !"__ksymtab_ip_tunnel_header_ops", i1 false, i1 false}
!27 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1081, i32 1}
!28 = !{ptr @iptun_encaps, !29, !"iptun_encaps", i1 false, i1 false}
!29 = !{!"../net/ipv4/ip_tunnel_core.c", i32 43, i32 3}
!30 = !{ptr @ip6tun_encaps, !31, !"ip6tun_encaps", i1 false, i1 false}
!31 = !{!"../net/ipv4/ip_tunnel_core.c", i32 47, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/net/dst.h", i32 161, i32 2}
!34 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!40 = !{ptr @ip_tun_lwt_ops, !41, !"ip_tun_lwt_ops", i1 false, i1 false}
!41 = !{!"../net/ipv4/ip_tunnel_core.c", i32 919, i32 40}
!42 = !{ptr @ip_tun_policy, !43, !"ip_tun_policy", i1 false, i1 false}
!43 = !{!"../net/ipv4/ip_tunnel_core.c", i32 432, i32 32}
!44 = !{ptr @ip_opts_policy, !45, !"ip_opts_policy", i1 false, i1 false}
!45 = !{!"../net/ipv4/ip_tunnel_core.c", i32 443, i32 32}
!46 = !{ptr @nla_parse_nested.__msg, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!48 = !{ptr @geneve_opt_policy, !49, !"geneve_opt_policy", i1 false, i1 false}
!49 = !{!"../net/ipv4/ip_tunnel_core.c", i32 450, i32 1}
!50 = !{ptr @vxlan_opt_policy, !51, !"vxlan_opt_policy", i1 false, i1 false}
!51 = !{!"../net/ipv4/ip_tunnel_core.c", i32 457, i32 1}
!52 = !{ptr @erspan_opt_policy, !53, !"erspan_opt_policy", i1 false, i1 false}
!53 = !{!"../net/ipv4/ip_tunnel_core.c", i32 462, i32 1}
!54 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/net/netlink.h", i32 991, i32 3}
!56 = !{ptr @ip6_tun_lwt_ops, !57, !"ip6_tun_lwt_ops", i1 false, i1 false}
!57 = !{!"../net/ipv4/ip_tunnel_core.c", i32 1030, i32 40}
!58 = !{ptr @ip6_tun_policy, !59, !"ip6_tun_policy", i1 false, i1 false}
!59 = !{!"../net/ipv4/ip_tunnel_core.c", i32 928, i32 32}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2158003023}
!71 = !{i64 2150181745}
!72 = !{i64 2150186679}
!73 = !{i64 2150208397}
!74 = !{i64 2150213291}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2150289818}
!77 = !{i64 2150290143}
!78 = !{i64 2158004079}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{!"auto-init"}
!81 = !{i64 6477736}
