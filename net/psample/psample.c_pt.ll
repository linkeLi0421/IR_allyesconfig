; ModuleID = '/llk/IR_all_yes/net/psample/psample.c_pt.bc'
source_filename = "../net/psample/psample.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+psample_group_get\22, \22a\22\09"
module asm "\09.weak\09__crc_psample_group_get\09\09\09\09"
module asm "\09.long\09__crc_psample_group_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_psample_group_get:\09\09\09\09\09"
module asm "\09.asciz \09\22psample_group_get\22\09\09\09\09\09"
module asm "__kstrtabns_psample_group_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+psample_group_take\22, \22a\22\09"
module asm "\09.weak\09__crc_psample_group_take\09\09\09\09"
module asm "\09.long\09__crc_psample_group_take\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_psample_group_take:\09\09\09\09\09"
module asm "\09.asciz \09\22psample_group_take\22\09\09\09\09\09"
module asm "__kstrtabns_psample_group_take:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+psample_group_put\22, \22a\22\09"
module asm "\09.weak\09__crc_psample_group_put\09\09\09\09"
module asm "\09.long\09__crc_psample_group_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_psample_group_put:\09\09\09\09\09"
module asm "\09.asciz \09\22psample_group_put\22\09\09\09\09\09"
module asm "__kstrtabns_psample_group_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+psample_sample_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_psample_sample_packet\09\09\09\09"
module asm "\09.long\09__crc_psample_sample_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_psample_sample_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22psample_sample_packet\22\09\09\09\09\09"
module asm "__kstrtabns_psample_sample_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.psample_group = type { %struct.list_head, ptr, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.psample_metadata = type { i32, i32, i32, i16, i64, i64, i8 }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.158 }
%union.anon.158 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.155, i16, i8, i8, i32, i16, i16 }
%union.anon.155 = type { %struct.anon.157 }
%struct.anon.157 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.nlattr = type { i16, i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.147, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@psample_groups_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_psample_group_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_psample_group_get = external dso_local constant [0 x i8], align 1
@__ksymtab_psample_group_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @psample_group_get to i32), ptr @__kstrtab_psample_group_get, ptr @__kstrtabns_psample_group_get }, section "___ksymtab_gpl+psample_group_get", align 4
@__kstrtab_psample_group_take = external dso_local constant [0 x i8], align 1
@__kstrtabns_psample_group_take = external dso_local constant [0 x i8], align 1
@__ksymtab_psample_group_take = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @psample_group_take to i32), ptr @__kstrtab_psample_group_take, ptr @__kstrtabns_psample_group_take }, section "___ksymtab_gpl+psample_group_take", align 4
@__kstrtab_psample_group_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_psample_group_put = external dso_local constant [0 x i8], align 1
@__ksymtab_psample_group_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @psample_group_put to i32), ptr @__kstrtab_psample_group_put, ptr @__kstrtabns_psample_group_put }, section "___ksymtab_gpl+psample_group_put", align 4
@psample_nl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"psample\00\00\00\00\00\00\00\00\00", i32 1, i32 14, i32 0, i8 -128, i8 0, i8 1, i8 2, ptr null, ptr null, ptr null, ptr null, ptr @psample_nl_ops, ptr @psample_nl_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@psample_sample_packet._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.psample_sample_packet = private unnamed_addr constant [22 x i8] c"psample_sample_packet\00", align 1
@psample_sample_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.psample_sample_packet, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Could not create psample log message\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/psample/psample.c\00", [42 x i8] zeroinitializer }, align 32
@psample_sample_packet._entry_ptr = internal global ptr @psample_sample_packet._entry, section ".printk_index", align 4
@__kstrtab_psample_sample_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_psample_sample_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_psample_sample_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @psample_sample_packet to i32), ptr @__kstrtab_psample_sample_packet, ptr @__kstrtabns_psample_sample_packet }, section "___ksymtab_gpl+psample_sample_packet", align 4
@__initcall__kmod_psample__562_506_psample_module_init6 = internal global ptr @psample_module_init, section ".initcall6.init", align 4
@__exitcall_psample_module_exit = internal global ptr @psample_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author563 = internal constant [47 x i8] c"psample.author=Yotam Gigi <yotam.gi@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description564 = internal constant [56 x i8] c"psample.description=netlink channel for packet sampling\00", section ".modinfo", align 1
@__UNIQUE_ID_file565 = internal constant [33 x i8] c"psample.file=net/psample/psample\00", section ".modinfo", align 1
@__UNIQUE_ID_license566 = internal constant [23 x i8] c"psample.license=GPL v2\00", section ".modinfo", align 1
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"psample_groups_lock\00", [44 x i8] zeroinitializer }, align 32
@psample_groups_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @psample_groups_list, ptr @psample_groups_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@psample_nl_ops = internal constant { [1 x %struct.genl_small_ops], [20 x i8] } { [1 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr null, ptr @psample_nl_cmd_get_group_dumpit, i8 1, i8 0, i8 0, i8 3 }], [20 x i8] zeroinitializer }, align 32
@psample_nl_mcgrps = internal constant { [2 x %struct.genl_multicast_group], [62 x i8] } { [2 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"config\00\00\00\00\00\00\00\00\00\00", i8 0 }, %struct.genl_multicast_group { [16 x i8] c"packets\00\00\00\00\00\00\00\00\00", i8 0 }], [62 x i8] zeroinitializer }, align 32
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"psample_groups_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 491, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 24, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"psample_groups_list\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 23, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 991, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 1011, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"psample_nl_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 100, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"psample_nl_mcgrps\00", align 1
@___asan_gen_.41 = private constant [25 x i8] c"../net/psample/psample.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 32, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 308, i32 6 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author563, ptr @__UNIQUE_ID_description564, ptr @__UNIQUE_ID_file565, ptr @__UNIQUE_ID_license566, ptr @__exitcall_psample_module_exit, ptr @__initcall__kmod_psample__562_506_psample_module_init6, ptr @__ksymtab_psample_group_get, ptr @__ksymtab_psample_group_put, ptr @__ksymtab_psample_group_take, ptr @__ksymtab_psample_sample_packet, ptr @psample_module_exit, ptr @psample_sample_packet._entry, ptr @psample_sample_packet._entry_ptr, ptr @psample_groups_lock, ptr @psample_sample_packet._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @psample_groups_list, ptr @.str.4, ptr @.str.5, ptr @psample_nl_ops, ptr @psample_nl_mcgrps, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psample_groups_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psample_sample_packet._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psample_sample_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psample_groups_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psample_nl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psample_nl_mcgrps to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @psample_group_get(ptr noundef %net, i32 noundef %group_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @psample_groups_lock) #7
  %group.013.i = load ptr, ptr @psample_groups_list, align 4
  %cmp.not14.i = icmp eq ptr %group.013.i, @psample_groups_list
  br i1 %cmp.not14.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %group.015.i = phi ptr [ %group.0.i, %for.inc.i.for.body.i_crit_edge ], [ %group.013.i, %entry.for.body.i_crit_edge ]
  %group_num1.i = getelementptr inbounds %struct.psample_group, ptr %group.015.i, i32 0, i32 2
  %0 = ptrtoint ptr %group_num1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %group_num1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %group_num)
  %cmp2.i = icmp eq i32 %1, %group_num
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %net3.i = getelementptr inbounds %struct.psample_group, ptr %group.015.i, i32 0, i32 1
  %2 = ptrtoint ptr %net3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net3.i, align 4
  %cmp4.i = icmp eq ptr %3, %net
  br i1 %cmp4.i, label %psample_group_lookup.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %group.015.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %group.0.i = load ptr, ptr %group.015.i, align 4
  %cmp.not.i = icmp eq ptr %group.0.i, @psample_groups_list
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

psample_group_lookup.exit:                        ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %group.015.i, null
  br i1 %tobool.not, label %psample_group_lookup.exit.if.then_crit_edge, label %psample_group_lookup.exit.if.end4_crit_edge

psample_group_lookup.exit.if.end4_crit_edge:      ; preds = %psample_group_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

psample_group_lookup.exit.if.then_crit_edge:      ; preds = %psample_group_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %psample_group_lookup.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 32) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.out_crit_edge, label %if.end.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %if.then
  %net1.i = getelementptr inbounds %struct.psample_group, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %net, ptr %net1.i, align 8
  %group_num2.i = getelementptr inbounds %struct.psample_group, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %group_num2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %group_num, ptr %group_num2.i, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @psample_groups_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %8, ptr noundef nonnull @psample_groups_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.psample_group_create.exit_crit_edge

if.end.i.psample_group_create.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %psample_group_create.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @psample_groups_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @psample_groups_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i.i, ptr %8, align 4
  br label %psample_group_create.exit

psample_group_create.exit:                        ; preds = %if.end.i.i.i, %if.end.i.psample_group_create.exit_crit_edge
  tail call fastcc void @psample_group_notify(ptr noundef nonnull %call7.i.i.i, i32 noundef 2) #7
  br label %if.end4

if.end4:                                          ; preds = %psample_group_create.exit, %psample_group_lookup.exit.if.end4_crit_edge
  %group.0 = phi ptr [ %group.015.i, %psample_group_lookup.exit.if.end4_crit_edge ], [ %call7.i.i.i, %psample_group_create.exit ]
  %refcount = getelementptr inbounds %struct.psample_group, ptr %group.0, i32 0, i32 3
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcount, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %refcount, align 4
  br label %out

out:                                              ; preds = %if.end4, %if.then.out_crit_edge
  %group.1 = phi ptr [ %group.0, %if.end4 ], [ null, %if.then.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @psample_groups_lock) #7
  ret ptr %group.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psample_group_take(ptr nocapture noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @psample_groups_lock) #7
  %refcount = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %refcount, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @psample_groups_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psample_group_put(ptr noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @psample_groups_lock) #7
  %refcount = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @psample_group_notify(ptr noundef %group, i32 noundef 3) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %group) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %group, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %group, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %group, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %group, null
  br i1 %tobool.not.i, label %list_del.exit.i.if.end_crit_edge, label %do.end.i

list_del.exit.i.if.end_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %rcu.i = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 5
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #7
  br label %if.end

if.end:                                           ; preds = %do.end.i, %list_del.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @psample_groups_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @psample_sample_packet(ptr nocapture noundef %group, ptr noundef %skb, i32 noundef %sample_rate, ptr nocapture noundef readonly %md) #0 align 64 {
entry:
  %tmp.i194.i.i = alloca i16, align 2
  %tmp.i192.i.i = alloca i16, align 2
  %tmp.i188.i.i = alloca i8, align 1
  %tmp.i186.i.i = alloca i8, align 1
  %tmp.i.i175.i.i = alloca i32, align 4
  %tmp.i.i.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i64, align 8
  %tmp.i384 = alloca i16, align 2
  %tmp.i382 = alloca i64, align 8
  %tmp.i380 = alloca i64, align 8
  %tmp.i378 = alloca i64, align 8
  %tmp.i376 = alloca i16, align 2
  %tmp.i374 = alloca i32, align 4
  %tmp.i372 = alloca i32, align 4
  %tmp.i370 = alloca i32, align 4
  %tmp.i368 = alloca i32, align 4
  %tmp.i366 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  %out_ifindex1 = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 2
  %0 = ptrtoint ptr %out_ifindex1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_ifindex1, align 8
  %in_ifindex2 = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 1
  %2 = ptrtoint ptr %in_ifindex2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_ifindex2, align 4
  %4 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %md, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  %out_tc_valid = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 6
  %6 = ptrtoint ptr %out_tc_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %out_tc_valid, align 8
  %7 = lshr i8 %bf.load, 4
  %8 = and i8 %7, 8
  %9 = zext i8 %8 to i32
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool21.not = icmp eq i8 %10, 0
  %cond26 = select i1 %tobool21.not, i32 0, i32 12
  %11 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool32.not = icmp eq i8 %11, 0
  %cond37 = select i1 %tobool32.not, i32 0, i32 12
  %add = select i1 %tobool5.not, i32 52, i32 60
  %add17 = add nuw nsw i32 %add, %spec.select
  %add27 = add nuw nsw i32 %add17, %9
  %add38 = add nuw nsw i32 %add27, %cond26
  %add50 = add nuw nsw i32 %add38, %cond37
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !54

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %entry.skb_dst.exit.i.i_crit_edge
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 8
  %and25.i.i.i = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.i.i.if.end.i_crit_edge:              ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %17 = inttoptr i32 %and25.i.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i.i, align 4
  %20 = and i16 %19, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool1.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.i
  %type.i = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2
  br label %skb_tunnel_info.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %skb_dst.exit.i.i.if.end.i_crit_edge
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i29.i

if.end.i.skb_dst.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.lhs.true.i29.i:                              ; preds = %if.end.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i28.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i28.i, label %land.rhs.i.i, label %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge

land.lhs.true.i29.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i29.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !54

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge, %if.end.i.skb_dst.exit.i_crit_edge
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 8
  %and25.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool2.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool2.not.i, label %skb_dst.exit.i.if.end_crit_edge, label %land.lhs.true3.i

skb_dst.exit.i.if.end_crit_edge:                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3.i:                                 ; preds = %skb_dst.exit.i
  %25 = inttoptr i32 %and25.i.i to ptr
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lwtstate.i, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.if.end_crit_edge:                ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 4
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i16 %29, label %land.lhs.true5.i.if.end_crit_edge [
    i16 2, label %land.lhs.true5.i.if.then15.i_crit_edge
    i16 4, label %land.lhs.true5.i.if.then15.i_crit_edge414
  ]

land.lhs.true5.i.if.then15.i_crit_edge414:        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

land.lhs.true5.i.if.then15.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15.i

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then15.i:                                      ; preds = %land.lhs.true5.i.if.then15.i_crit_edge, %land.lhs.true5.i.if.then15.i_crit_edge414
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %27, i32 0, i32 7
  br label %skb_tunnel_info.exit

skb_tunnel_info.exit:                             ; preds = %if.then15.i, %if.then.i
  %retval.0.i = phi ptr [ %u.i, %if.then.i ], [ %data.i.i, %if.then15.i ]
  %tobool52.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool52.not, label %skb_tunnel_info.exit.if.end_crit_edge, label %if.then

skb_tunnel_info.exit.if.end_crit_edge:            ; preds = %skb_tunnel_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %skb_tunnel_info.exit
  %mode.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode.i.i, align 1
  %33 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i356 = icmp eq i8 %33, 0
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 2
  %34 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %options_len.i, align 8
  %conv.i = zext i8 %35 to i32
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tun_flags.i, align 8
  %38 = and i16 %37, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i = icmp eq i16 %38, 0
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 16
  %39 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool6.not.i = icmp eq i8 %39, 0
  %add9.i = add nuw nsw i32 %spec.select.i, 4
  %sum.1.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 %add9.i
  %u.i357 = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1
  br i1 %tobool.not.i.i356, label %sw.bb.i, label %sw.bb23.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %u.i357 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %u.i357, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.not.i = icmp eq i32 %41, 0
  %add15.i = add nuw nsw i32 %sum.1.i, 8
  %spec.select139.i = select i1 %tobool12.not.i, i32 %sum.1.i, i32 %add15.i
  %dst.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.i = icmp eq i32 %43, 0
  %add21.i = add nuw nsw i32 %spec.select139.i, 8
  %spec.select142.i = select i1 %tobool18.not.i, i32 %spec.select139.i, i32 %add21.i
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %u.i357 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %u.i357, align 4
  %arrayidx2.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %47, %45
  %arrayidx4.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %49
  %arrayidx7.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  %add29.i = add nuw nsw i32 %sum.1.i, 20
  %spec.select140.i = select i1 %cmp.i.i, i32 %sum.1.i, i32 %add29.i
  %dst32.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %dst32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dst32.i, align 4
  %arrayidx2.i130.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx2.i130.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx2.i130.i, align 4
  %or.i131.i = or i32 %55, %53
  %arrayidx4.i132.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx4.i132.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4.i132.i, align 4
  %or5.i133.i = or i32 %or.i131.i, %57
  %arrayidx7.i134.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx7.i134.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.i134.i, align 4
  %or8.i135.i = or i32 %or5.i133.i, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i135.i)
  %cmp.i136.i = icmp eq i32 %or8.i135.i, 0
  %add36.i = add nuw nsw i32 %spec.select140.i, 20
  %spec.select143.i = select i1 %cmp.i136.i, i32 %spec.select140.i, i32 %add36.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb23.i, %sw.bb.i
  %sum.4.i = phi i32 [ %spec.select142.i, %sw.bb.i ], [ %spec.select143.i, %sw.bb23.i ]
  %tos.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 3
  %60 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tos.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool38.not.i = icmp eq i8 %61, 0
  %add41.i = add nuw nsw i32 %sum.4.i, 8
  %spec.select141.i = select i1 %tobool38.not.i, i32 %sum.4.i, i32 %add41.i
  %62 = and i16 %37, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool48.not.i = icmp eq i16 %62, 0
  %sum.6.v.i = select i1 %tobool48.not.i, i32 8, i32 12
  %sum.6.i = add nuw nsw i32 %spec.select141.i, %sum.6.v.i
  %63 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool56.not.i = icmp eq i16 %63, 0
  %add59.i = add nuw nsw i32 %sum.6.i, 4
  %sum.7.i = select i1 %tobool56.not.i, i32 %sum.6.i, i32 %add59.i
  %tp_src.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 6
  %64 = ptrtoint ptr %tp_src.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tp_src.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool61.not.i = icmp eq i16 %65, 0
  %add64.i = add nuw nsw i32 %sum.7.i, 8
  %sum.8.i = select i1 %tobool61.not.i, i32 %sum.7.i, i32 %add64.i
  %tp_dst.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i, i32 0, i32 7
  %66 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tp_dst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool66.not.i = icmp eq i16 %67, 0
  %add69.i = add nuw nsw i32 %sum.8.i, 8
  %sum.9.i = select i1 %tobool66.not.i, i32 %sum.8.i, i32 %add69.i
  %68 = and i16 %37, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool74.not.i = icmp eq i16 %68, 0
  %add77.i = add nuw nsw i32 %sum.9.i, 4
  %sum.10.i = select i1 %tobool74.not.i, i32 %sum.9.i, i32 %add77.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool79.not.i = icmp eq i8 %35, 0
  br i1 %tobool79.not.i, label %sw.epilog.i.psample_tunnel_meta_len.exit_crit_edge, label %if.then80.i

sw.epilog.i.psample_tunnel_meta_len.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %psample_tunnel_meta_len.exit

if.then80.i:                                      ; preds = %sw.epilog.i
  %conv82.i = zext i16 %37 to i32
  %and83.i = and i32 %conv82.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.else.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add nuw nsw i32 %conv.i, 7
  %and.i.i358 = and i32 %sub.i.i, 508
  %add87.i = add nuw nsw i32 %sum.10.i, %and.i.i358
  br label %psample_tunnel_meta_len.exit

if.else.i:                                        ; preds = %if.then80.i
  %and90.i = and i32 %conv82.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.else.i.psample_tunnel_meta_len.exit_crit_edge, label %if.then92.i

if.else.i.psample_tunnel_meta_len.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %psample_tunnel_meta_len.exit

if.then92.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i137.i = add nuw nsw i32 %conv.i, 7
  %and.i138.i = and i32 %sub.i137.i, 508
  %add94.i = add nuw nsw i32 %sum.10.i, %and.i138.i
  br label %psample_tunnel_meta_len.exit

psample_tunnel_meta_len.exit:                     ; preds = %if.then92.i, %if.else.i.psample_tunnel_meta_len.exit_crit_edge, %if.then85.i, %sw.epilog.i.psample_tunnel_meta_len.exit_crit_edge
  %sum.11.i = phi i32 [ %add87.i, %if.then85.i ], [ %add94.i, %if.then92.i ], [ %sum.10.i, %if.else.i.psample_tunnel_meta_len.exit_crit_edge ], [ %sum.10.i, %sw.epilog.i.psample_tunnel_meta_len.exit_crit_edge ]
  %add54 = add nuw nsw i32 %sum.11.i, %add50
  br label %if.end

if.end:                                           ; preds = %psample_tunnel_meta_len.exit, %skb_tunnel_info.exit.if.end_crit_edge, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true3.i.if.end_crit_edge, %skb_dst.exit.i.if.end_crit_edge
  %tobool52.not411 = phi i1 [ false, %psample_tunnel_meta_len.exit ], [ true, %skb_tunnel_info.exit.if.end_crit_edge ], [ true, %land.lhs.true5.i.if.end_crit_edge ], [ true, %land.lhs.true3.i.if.end_crit_edge ], [ true, %skb_dst.exit.i.if.end_crit_edge ]
  %retval.0.i408 = phi ptr [ %retval.0.i, %psample_tunnel_meta_len.exit ], [ null, %skb_tunnel_info.exit.if.end_crit_edge ], [ null, %land.lhs.true5.i.if.end_crit_edge ], [ null, %land.lhs.true3.i.if.end_crit_edge ], [ null, %skb_dst.exit.i.if.end_crit_edge ]
  %meta_len.0 = phi i32 [ %add54, %psample_tunnel_meta_len.exit ], [ %add50, %skb_tunnel_info.exit.if.end_crit_edge ], [ %add50, %land.lhs.true5.i.if.end_crit_edge ], [ %add50, %land.lhs.true3.i.if.end_crit_edge ], [ %add50, %skb_dst.exit.i.if.end_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len, align 4
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 %5)
  %sub.i = add i32 %71, 7
  %and.i = and i32 %sub.i, -4
  %add61 = add i32 %and.i, %meta_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add61)
  %cmp62 = icmp sgt i32 %add61, 65535
  %sub66 = sub nuw nsw i32 65527, %meta_len.0
  %data_len.0 = select i1 %cmp62, i32 %sub66, i32 %71
  %sub.i359 = add i32 %data_len.0, 7
  %and.i360 = and i32 %sub.i359, -4
  %add69 = add nuw nsw i32 %meta_len.0, 7
  %sub.i.i361 = add i32 %add69, %and.i360
  %and.i.i362 = and i32 %sub.i.i361, -4
  %sub.i.i.i = add i32 %and.i.i362, 19
  %and.i.i.i363 = and i32 %sub.i.i.i, -4
  %call.i.i.i364 = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i363, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool71.not = icmp eq ptr %call.i.i.i364, null
  br i1 %tobool71.not, label %if.end.cleanup275_crit_edge, label %if.end76, !prof !54

if.end.cleanup275_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup275

if.end76:                                         ; preds = %if.end
  %call77 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @psample_nl_family, i32 noundef 0, i8 noundef zeroext 0) #7
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end76.error_crit_edge, label %if.end88, !prof !54

if.end76.error_crit_edge:                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end88:                                         ; preds = %if.end76
  br i1 %tobool.not, label %if.end88.if.end103_crit_edge, label %if.then90

if.end88.if.end103_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then90:                                        ; preds = %if.end88
  %conv91 = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #7
  %72 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv91, ptr %tmp.i, align 2
  %call.i365 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i365)
  %cmp93 = icmp slt i32 %call.i365, 0
  br i1 %cmp93, label %if.then90.error_crit_edge, label %if.then90.if.end103_crit_edge, !prof !54

if.then90.if.end103_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then90.error_crit_edge:                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end103:                                        ; preds = %if.then90.if.end103_crit_edge, %if.end88.if.end103_crit_edge
  br i1 %tobool5.not, label %if.end103.if.end118_crit_edge, label %if.then105

if.end103.if.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then105:                                       ; preds = %if.end103
  %conv106 = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i366) #7
  %73 = ptrtoint ptr %tmp.i366 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv106, ptr %tmp.i366, align 2
  %call.i367 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i366) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i366) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %cmp108 = icmp slt i32 %call.i367, 0
  br i1 %cmp108, label %if.then105.error_crit_edge, label %if.then105.if.end118_crit_edge, !prof !54

if.then105.if.end118_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118

if.then105.error_crit_edge:                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end118:                                        ; preds = %if.then105.if.end118_crit_edge, %if.end103.if.end118_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i368) #7
  %74 = ptrtoint ptr %tmp.i368 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sample_rate, ptr %tmp.i368, align 4
  %call.i369 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i368) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i368) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i369)
  %cmp120 = icmp slt i32 %call.i369, 0
  br i1 %cmp120, label %if.end118.error_crit_edge, label %if.end129, !prof !54

if.end118.error_crit_edge:                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end129:                                        ; preds = %if.end118
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i370) #7
  %77 = ptrtoint ptr %tmp.i370 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %tmp.i370, align 4
  %call.i371 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i370) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i370) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %cmp132 = icmp slt i32 %call.i371, 0
  br i1 %cmp132, label %if.end129.error_crit_edge, label %if.end141, !prof !54

if.end129.error_crit_edge:                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end141:                                        ; preds = %if.end129
  %group_num = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 2
  %78 = ptrtoint ptr %group_num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %group_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i372) #7
  %80 = ptrtoint ptr %tmp.i372 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %tmp.i372, align 4
  %call.i373 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i372) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i372) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i373)
  %cmp143 = icmp slt i32 %call.i373, 0
  br i1 %cmp143, label %if.end141.error_crit_edge, label %if.end152, !prof !54

if.end141.error_crit_edge:                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end152:                                        ; preds = %if.end141
  %seq = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 4
  %81 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %seq, align 4
  %inc = add i32 %82, 1
  store i32 %inc, ptr %seq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i374) #7
  %83 = ptrtoint ptr %tmp.i374 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tmp.i374, align 4
  %call.i375 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i374) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i374) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375)
  %cmp154 = icmp slt i32 %call.i375, 0
  br i1 %cmp154, label %if.end152.error_crit_edge, label %if.end163, !prof !54

if.end152.error_crit_edge:                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end163:                                        ; preds = %if.end152
  %84 = ptrtoint ptr %out_tc_valid to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load165 = load i8, ptr %out_tc_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load165)
  %tobool167.not = icmp sgt i8 %bf.load165, -1
  br i1 %tobool167.not, label %if.end163.if.end180_crit_edge, label %if.then168

if.end163.if.end180_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.then168:                                       ; preds = %if.end163
  %out_tc = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 3
  %85 = ptrtoint ptr %out_tc to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %out_tc, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i376) #7
  %87 = ptrtoint ptr %tmp.i376 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %tmp.i376, align 2
  %call.i377 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i376) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i376) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377)
  %cmp170 = icmp slt i32 %call.i377, 0
  br i1 %cmp170, label %if.then168.error_crit_edge, label %if.then168.if.end180_crit_edge, !prof !54

if.then168.if.end180_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

if.then168.error_crit_edge:                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end180:                                        ; preds = %if.then168.if.end180_crit_edge, %if.end163.if.end180_crit_edge
  %88 = ptrtoint ptr %out_tc_valid to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load182 = load i8, ptr %out_tc_valid, align 8
  %89 = and i8 %bf.load182, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool185.not = icmp eq i8 %89, 0
  br i1 %tobool185.not, label %if.end180.if.end198_crit_edge, label %if.then186

if.end180.if.end198_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then186:                                       ; preds = %if.end180
  %out_tc_occ = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 4
  %90 = ptrtoint ptr %out_tc_occ to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %out_tc_occ, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i378) #7
  %92 = ptrtoint ptr %tmp.i378 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %tmp.i378, align 8
  %call.i379 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i364, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %tmp.i378, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i378) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %cmp188 = icmp slt i32 %call.i379, 0
  br i1 %cmp188, label %if.then186.error_crit_edge, label %if.then186.if.end198_crit_edge, !prof !54

if.then186.if.end198_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then186.error_crit_edge:                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end198:                                        ; preds = %if.then186.if.end198_crit_edge, %if.end180.if.end198_crit_edge
  %93 = ptrtoint ptr %out_tc_valid to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load200 = load i8, ptr %out_tc_valid, align 8
  %94 = and i8 %bf.load200, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool203.not = icmp eq i8 %94, 0
  br i1 %tobool203.not, label %if.end198.if.end216_crit_edge, label %if.then204

if.end198.if.end216_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.then204:                                       ; preds = %if.end198
  %latency = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 5
  %95 = ptrtoint ptr %latency to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %latency, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i380) #7
  %97 = ptrtoint ptr %tmp.i380 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %96, ptr %tmp.i380, align 8
  %call.i381 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i364, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i380, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i380) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i381)
  %cmp206 = icmp slt i32 %call.i381, 0
  br i1 %cmp206, label %if.then204.error_crit_edge, label %if.then204.if.end216_crit_edge, !prof !54

if.then204.if.end216_crit_edge:                   ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.then204.error_crit_edge:                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end216:                                        ; preds = %if.then204.if.end216_crit_edge, %if.end198.if.end216_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i382) #7
  %98 = ptrtoint ptr %tmp.i382 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %call.i, ptr %tmp.i382, align 8
  %call.i383 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i364, i32 noundef 13, i32 noundef 8, ptr noundef nonnull %tmp.i382, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i382) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %cmp219 = icmp slt i32 %call.i383, 0
  br i1 %cmp219, label %if.end216.error_crit_edge, label %if.end228, !prof !54

if.end216.error_crit_edge:                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end228:                                        ; preds = %if.end216
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %99 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %protocol, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i384) #7
  %101 = ptrtoint ptr %tmp.i384 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %tmp.i384, align 2
  %call.i385 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i384) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i385)
  %cmp230 = icmp slt i32 %call.i385, 0
  br i1 %cmp230, label %if.end228.error_crit_edge, label %if.end239, !prof !54

if.end228.error_crit_edge:                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end239:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0)
  %tobool240.not = icmp eq i32 %data_len.0, 0
  br i1 %tobool240.not, label %if.end239.if.end253_crit_edge, label %if.then241

if.end239.if.end253_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

if.then241:                                       ; preds = %if.end239
  %call243 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i364, i32 noundef %and.i360) #7
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %call243, i32 0, i32 1
  %102 = ptrtoint ptr %nla_type to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 6, ptr %nla_type, align 2
  %103 = trunc i32 %data_len.0 to i16
  %conv245 = add i16 %103, 4
  %104 = ptrtoint ptr %call243 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv245, ptr %call243, align 2
  %add.ptr.i = getelementptr i8, ptr %call243, i32 4
  %call248 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %add.ptr.i, i32 noundef %data_len.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.then241.if.end253_crit_edge, label %if.then241.error_crit_edge

if.then241.error_crit_edge:                       ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then241.if.end253_crit_edge:                   ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end253

if.end253:                                        ; preds = %if.then241.if.end253_crit_edge, %if.end239.if.end253_crit_edge
  br i1 %tobool52.not411, label %if.end253.if.end267_crit_edge, label %if.then255

if.end253.if.end267_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

if.then255:                                       ; preds = %if.end253
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i364, i32 0, i32 16
  %105 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 8, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i388 = icmp slt i32 %call1.i.i, 0
  %tobool.not20.i = icmp eq ptr %106, null
  %tobool.not.i389 = select i1 %cmp.i.i388, i1 true, i1 %tobool.not20.i
  br i1 %tobool.not.i389, label %if.then255.error_crit_edge, label %if.end.i392

if.then255.error_crit_edge:                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end.i392:                                      ; preds = %if.then255
  %mode.i.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i408, i32 0, i32 3
  %107 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %mode.i.i.i, align 1
  %109 = and i8 %108, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i.i.i390 = icmp eq i8 %109, 0
  %add.ptr.i.i.i = getelementptr %struct.ip_tunnel_info, ptr %retval.0.i408, i32 1
  %options_len.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i408, i32 0, i32 2
  %110 = ptrtoint ptr %options_len.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %options_len.i.i, align 8
  %conv.i.i = zext i8 %111 to i32
  %tun_flags.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 2
  %112 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %tun_flags.i.i, align 8
  %114 = and i16 %113, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.not.i.i391 = icmp eq i16 %114, 0
  br i1 %tobool.not.i.i391, label %if.end.i392.if.end.i.i_crit_edge, label %land.lhs.true.i.i394

if.end.i392.if.end.i.i_crit_edge:                 ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i394:                             ; preds = %if.end.i392
  %115 = ptrtoint ptr %retval.0.i408 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %retval.0.i408, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #7
  %117 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %tmp.i.i.i, align 8
  %call.i.i.i393 = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i364, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %tmp.i.i.i, i32 noundef 14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i393)
  %tobool4.not.i.i = icmp eq i32 %call.i.i.i393, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i394.if.end.i.i_crit_edge, label %land.lhs.true.i.i394.if.then.i.i.i_crit_edge

land.lhs.true.i.i394.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true.i.i394.if.end.i.i_crit_edge:        ; preds = %land.lhs.true.i.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i394.if.end.i.i_crit_edge, %if.end.i392.if.end.i.i_crit_edge
  %118 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %mode.i.i.i, align 1
  %120 = and i8 %119, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool7.not.i.i = icmp eq i8 %120, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end12.i.i_crit_edge, label %land.lhs.true8.i.i

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

land.lhs.true8.i.i:                               ; preds = %if.end.i.i
  %call.i174.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 16, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i174.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true8.i.i.if.end12.i.i_crit_edge, label %land.lhs.true8.i.i.if.then.i.i.i_crit_edge

land.lhs.true8.i.i.if.then.i.i.i_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true8.i.i.if.end12.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.lhs.true8.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %u.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1
  br i1 %tobool.not.i.i.i390, label %sw.bb.i.i, label %sw.bb31.i.i

sw.bb.i.i:                                        ; preds = %if.end12.i.i
  %121 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %u.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool14.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool14.not.i.i, label %sw.bb.i.i.if.end21.i.i_crit_edge, label %land.lhs.true15.i.i

sw.bb.i.i.if.end21.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

land.lhs.true15.i.i:                              ; preds = %sw.bb.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #7
  %123 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true15.i.i.if.end21.i.i_crit_edge, label %land.lhs.true15.i.i.if.then.i.i.i_crit_edge

land.lhs.true15.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true15.i.i.if.end21.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %land.lhs.true15.i.i.if.end21.i.i_crit_edge, %sw.bb.i.i.if.end21.i.i_crit_edge
  %dst.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %124 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool23.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool23.not.i.i, label %if.end21.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true24.i.i

if.end21.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

land.lhs.true24.i.i:                              ; preds = %if.end21.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i175.i.i) #7
  %126 = ptrtoint ptr %tmp.i.i175.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %tmp.i.i175.i.i, align 4
  %call.i.i176.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i175.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i175.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i.i176.i.i, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true24.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true24.i.i.if.then.i.i.i_crit_edge

land.lhs.true24.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true24.i.i.sw.epilog.i.i_crit_edge:      ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %if.end12.i.i
  %127 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %u.i.i, align 4
  %arrayidx2.i.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %129 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %130, %128
  %arrayidx4.i.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %131 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or.i.i.i, %132
  %arrayidx7.i.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %133 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx7.i.i.i, align 4
  %or8.i.i.i = or i32 %or5.i.i.i, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or8.i.i.i, 0
  br i1 %cmp.i.i.i, label %sw.bb31.i.i.if.end41.i.i_crit_edge, label %land.lhs.true35.i.i

sw.bb31.i.i.if.end41.i.i_crit_edge:               ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

land.lhs.true35.i.i:                              ; preds = %sw.bb31.i.i
  %call.i177.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 12, i32 noundef 16, ptr noundef %u.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177.i.i)
  %tobool39.not.i.i = icmp eq i32 %call.i177.i.i, 0
  br i1 %tobool39.not.i.i, label %land.lhs.true35.i.i.if.end41.i.i_crit_edge, label %land.lhs.true35.i.i.if.then.i.i.i_crit_edge

land.lhs.true35.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true35.i.i.if.end41.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %land.lhs.true35.i.i.if.end41.i.i_crit_edge, %sw.bb31.i.i.if.end41.i.i_crit_edge
  %dst43.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 1
  %135 = ptrtoint ptr %dst43.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dst43.i.i, align 4
  %arrayidx2.i178.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %137 = ptrtoint ptr %arrayidx2.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx2.i178.i.i, align 4
  %or.i179.i.i = or i32 %138, %136
  %arrayidx4.i180.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %139 = ptrtoint ptr %arrayidx4.i180.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx4.i180.i.i, align 4
  %or5.i181.i.i = or i32 %or.i179.i.i, %140
  %arrayidx7.i182.i.i = getelementptr %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %141 = ptrtoint ptr %arrayidx7.i182.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx7.i182.i.i, align 4
  %or8.i183.i.i = or i32 %or5.i181.i.i, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i183.i.i)
  %cmp.i184.i.i = icmp eq i32 %or8.i183.i.i, 0
  br i1 %cmp.i184.i.i, label %if.end41.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true45.i.i

if.end41.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

land.lhs.true45.i.i:                              ; preds = %if.end41.i.i
  %call.i185.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 13, i32 noundef 16, ptr noundef %dst43.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.i.i)
  %tobool49.not.i.i = icmp eq i32 %call.i185.i.i, 0
  br i1 %tobool49.not.i.i, label %land.lhs.true45.i.i.sw.epilog.i.i_crit_edge, label %land.lhs.true45.i.i.if.then.i.i.i_crit_edge

land.lhs.true45.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true45.i.i.sw.epilog.i.i_crit_edge:      ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %land.lhs.true45.i.i.sw.epilog.i.i_crit_edge, %if.end41.i.i.sw.epilog.i.i_crit_edge, %land.lhs.true24.i.i.sw.epilog.i.i_crit_edge, %if.end21.i.i.sw.epilog.i.i_crit_edge
  %tos.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 3
  %143 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %tos.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool53.not.i.i = icmp eq i8 %144, 0
  br i1 %tobool53.not.i.i, label %sw.epilog.i.i.if.end59.i.i_crit_edge, label %land.lhs.true54.i.i

sw.epilog.i.i.if.end59.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i

land.lhs.true54.i.i:                              ; preds = %sw.epilog.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i186.i.i) #7
  %145 = ptrtoint ptr %tmp.i186.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %tmp.i186.i.i, align 1
  %call.i187.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i186.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i186.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187.i.i)
  %tobool57.not.i.i = icmp eq i32 %call.i187.i.i, 0
  br i1 %tobool57.not.i.i, label %land.lhs.true54.i.i.if.end59.i.i_crit_edge, label %land.lhs.true54.i.i.if.then.i.i.i_crit_edge

land.lhs.true54.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true54.i.i.if.end59.i.i_crit_edge:       ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %land.lhs.true54.i.i.if.end59.i.i_crit_edge, %sw.epilog.i.i.if.end59.i.i_crit_edge
  %ttl.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 4
  %146 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ttl.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i188.i.i) #7
  %148 = ptrtoint ptr %tmp.i188.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %tmp.i188.i.i, align 1
  %call.i189.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i188.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i188.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189.i.i)
  %tobool61.not.i.i = icmp eq i32 %call.i189.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end63.i.i, label %if.end59.i.i.if.then.i.i.i_crit_edge

if.end59.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.end63.i.i:                                     ; preds = %if.end59.i.i
  %149 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %tun_flags.i.i, align 8
  %151 = and i16 %150, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool67.not.i.i = icmp eq i16 %151, 0
  br i1 %tobool67.not.i.i, label %if.end63.i.i.if.end72.i.i_crit_edge, label %land.lhs.true68.i.i

if.end63.i.i.if.end72.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i.i

land.lhs.true68.i.i:                              ; preds = %if.end63.i.i
  %call.i190.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 5, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190.i.i)
  %tobool70.not.i.i = icmp eq i32 %call.i190.i.i, 0
  br i1 %tobool70.not.i.i, label %land.lhs.true68.i.i.if.end72.i.i_crit_edge, label %land.lhs.true68.i.i.if.then.i.i.i_crit_edge

land.lhs.true68.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true68.i.i.if.end72.i.i_crit_edge:       ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %land.lhs.true68.i.i.if.end72.i.i_crit_edge, %if.end63.i.i.if.end72.i.i_crit_edge
  %152 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %tun_flags.i.i, align 8
  %154 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool76.not.i.i = icmp eq i16 %154, 0
  br i1 %tobool76.not.i.i, label %if.end72.i.i.if.end81.i.i_crit_edge, label %land.lhs.true77.i.i

if.end72.i.i.if.end81.i.i_crit_edge:              ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i.i

land.lhs.true77.i.i:                              ; preds = %if.end72.i.i
  %call.i191.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 6, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191.i.i)
  %tobool79.not.i.i = icmp eq i32 %call.i191.i.i, 0
  br i1 %tobool79.not.i.i, label %land.lhs.true77.i.i.if.end81.i.i_crit_edge, label %land.lhs.true77.i.i.if.then.i.i.i_crit_edge

land.lhs.true77.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true77.i.i.if.end81.i.i_crit_edge:       ; preds = %land.lhs.true77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %land.lhs.true77.i.i.if.end81.i.i_crit_edge, %if.end72.i.i.if.end81.i.i_crit_edge
  %tp_src.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 6
  %155 = ptrtoint ptr %tp_src.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %tp_src.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool83.not.i.i = icmp eq i16 %156, 0
  br i1 %tobool83.not.i.i, label %if.end81.i.i.if.end89.i.i_crit_edge, label %land.lhs.true84.i.i

if.end81.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i.i

land.lhs.true84.i.i:                              ; preds = %if.end81.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i192.i.i) #7
  %157 = ptrtoint ptr %tmp.i192.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %tmp.i192.i.i, align 2
  %call.i193.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i192.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i192.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193.i.i)
  %tobool87.not.i.i = icmp eq i32 %call.i193.i.i, 0
  br i1 %tobool87.not.i.i, label %land.lhs.true84.i.i.if.end89.i.i_crit_edge, label %land.lhs.true84.i.i.if.then.i.i.i_crit_edge

land.lhs.true84.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true84.i.i.if.end89.i.i_crit_edge:       ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %land.lhs.true84.i.i.if.end89.i.i_crit_edge, %if.end81.i.i.if.end89.i.i_crit_edge
  %tp_dst.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %retval.0.i408, i32 0, i32 7
  %158 = ptrtoint ptr %tp_dst.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %tp_dst.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool91.not.i.i = icmp eq i16 %159, 0
  br i1 %tobool91.not.i.i, label %if.end89.i.i.if.end97.i.i_crit_edge, label %land.lhs.true92.i.i

if.end89.i.i.if.end97.i.i_crit_edge:              ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i.i

land.lhs.true92.i.i:                              ; preds = %if.end89.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i194.i.i) #7
  %160 = ptrtoint ptr %tmp.i194.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %tmp.i194.i.i, align 2
  %call.i195.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i194.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i194.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195.i.i)
  %tobool95.not.i.i = icmp eq i32 %call.i195.i.i, 0
  br i1 %tobool95.not.i.i, label %land.lhs.true92.i.i.if.end97.i.i_crit_edge, label %land.lhs.true92.i.i.if.then.i.i.i_crit_edge

land.lhs.true92.i.i.if.then.i.i.i_crit_edge:      ; preds = %land.lhs.true92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true92.i.i.if.end97.i.i_crit_edge:       ; preds = %land.lhs.true92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i.i

if.end97.i.i:                                     ; preds = %land.lhs.true92.i.i.if.end97.i.i_crit_edge, %if.end89.i.i.if.end97.i.i_crit_edge
  %161 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %tun_flags.i.i, align 8
  %163 = and i16 %162, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool101.not.i.i = icmp eq i16 %163, 0
  br i1 %tobool101.not.i.i, label %if.end97.i.i.if.end106.i.i_crit_edge, label %land.lhs.true102.i.i

if.end97.i.i.if.end106.i.i_crit_edge:             ; preds = %if.end97.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i.i

land.lhs.true102.i.i:                             ; preds = %if.end97.i.i
  %call.i196.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 7, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196.i.i)
  %tobool104.not.i.i = icmp eq i32 %call.i196.i.i, 0
  br i1 %tobool104.not.i.i, label %land.lhs.true102.i.i.if.end106.i.i_crit_edge, label %land.lhs.true102.i.i.if.then.i.i.i_crit_edge

land.lhs.true102.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true102.i.i.if.end106.i.i_crit_edge:     ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i.i

if.end106.i.i:                                    ; preds = %land.lhs.true102.i.i.if.end106.i.i_crit_edge, %if.end97.i.i.if.end106.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool107.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool107.not.i.i, label %if.end106.i.i.psample_ip_tun_to_nlattr.exit_crit_edge, label %if.then108.i.i

if.end106.i.i.psample_ip_tun_to_nlattr.exit_crit_edge: ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %psample_ip_tun_to_nlattr.exit

if.then108.i.i:                                   ; preds = %if.end106.i.i
  %164 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %tun_flags.i.i, align 8
  %166 = and i16 %165, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %166)
  %tobool112.not.i.i = icmp eq i16 %166, 0
  br i1 %tobool112.not.i.i, label %if.then108.i.i.if.else.i.i_crit_edge, label %land.lhs.true113.i.i

if.then108.i.i.if.else.i.i_crit_edge:             ; preds = %if.then108.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true113.i.i:                             ; preds = %if.then108.i.i
  %call114.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 8, i32 noundef %conv.i.i, ptr noundef %add.ptr.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i.i)
  %tobool115.not.i.i = icmp eq i32 %call114.i.i, 0
  br i1 %tobool115.not.i.i, label %land.lhs.true113.i.i.if.else.i.i_crit_edge, label %land.lhs.true113.i.i.if.then.i.i.i_crit_edge

land.lhs.true113.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true113.i.i.if.else.i.i_crit_edge:       ; preds = %land.lhs.true113.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true113.i.i.if.else.i.i_crit_edge, %if.then108.i.i.if.else.i.i_crit_edge
  %167 = ptrtoint ptr %tun_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %tun_flags.i.i, align 8
  %169 = and i16 %168, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool120.not.i.i = icmp eq i16 %169, 0
  br i1 %tobool120.not.i.i, label %if.else.i.i.psample_ip_tun_to_nlattr.exit_crit_edge, label %land.lhs.true121.i.i

if.else.i.i.psample_ip_tun_to_nlattr.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %psample_ip_tun_to_nlattr.exit

land.lhs.true121.i.i:                             ; preds = %if.else.i.i
  %call122.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i364, i32 noundef 15, i32 noundef %conv.i.i, ptr noundef %add.ptr.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i.i)
  %tobool123.not.i.i = icmp eq i32 %call122.i.i, 0
  br i1 %tobool123.not.i.i, label %land.lhs.true121.i.i.psample_ip_tun_to_nlattr.exit_crit_edge, label %land.lhs.true121.i.i.if.then.i.i.i_crit_edge

land.lhs.true121.i.i.if.then.i.i.i_crit_edge:     ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

land.lhs.true121.i.i.psample_ip_tun_to_nlattr.exit_crit_edge: ; preds = %land.lhs.true121.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %psample_ip_tun_to_nlattr.exit

if.then.i.i.i:                                    ; preds = %land.lhs.true121.i.i.if.then.i.i.i_crit_edge, %land.lhs.true113.i.i.if.then.i.i.i_crit_edge, %land.lhs.true102.i.i.if.then.i.i.i_crit_edge, %land.lhs.true92.i.i.if.then.i.i.i_crit_edge, %land.lhs.true84.i.i.if.then.i.i.i_crit_edge, %land.lhs.true77.i.i.if.then.i.i.i_crit_edge, %land.lhs.true68.i.i.if.then.i.i.i_crit_edge, %if.end59.i.i.if.then.i.i.i_crit_edge, %land.lhs.true54.i.i.if.then.i.i.i_crit_edge, %land.lhs.true45.i.i.if.then.i.i.i_crit_edge, %land.lhs.true35.i.i.if.then.i.i.i_crit_edge, %land.lhs.true24.i.i.if.then.i.i.i_crit_edge, %land.lhs.true15.i.i.if.then.i.i.i_crit_edge, %land.lhs.true8.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i394.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i364, i32 0, i32 19
  %170 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i14.i = icmp ugt ptr %171, %106
  br i1 %cmp.i.i14.i, label %do.end.i.i.i395, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !54

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit.i

do.end.i.i.i395:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i395, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %172 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %106 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %173 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i364, i32 noundef %sub.ptr.sub.i.i.i) #7
  br label %error

psample_ip_tun_to_nlattr.exit:                    ; preds = %land.lhs.true121.i.i.psample_ip_tun_to_nlattr.exit_crit_edge, %if.else.i.i.psample_ip_tun_to_nlattr.exit_crit_edge, %if.end106.i.i.psample_ip_tun_to_nlattr.exit_crit_edge
  %174 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %175 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i16.i = trunc i32 %sub.ptr.sub.i.i to i16
  %176 = ptrtoint ptr %106 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i16.i, ptr %106, align 2
  br label %if.end267

if.end267:                                        ; preds = %psample_ip_tun_to_nlattr.exit, %if.end253.if.end267_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call77, i32 -20
  %tail.i.i.i397 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i364, i32 0, i32 16
  %177 = ptrtoint ptr %tail.i.i.i397 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tail.i.i.i397, align 8
  %sub.ptr.lhs.cast.i.i398 = ptrtoint ptr %178 to i32
  %sub.ptr.rhs.cast.i.i399 = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i400 = sub i32 %sub.ptr.lhs.cast.i.i398, %sub.ptr.rhs.cast.i.i399
  %179 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %sub.ptr.sub.i.i400, ptr %add.ptr1.i, align 4
  %180 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @psample_nl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %180)
  %cmp.not.i = icmp ugt i8 %180, 1
  br i1 %cmp.not.i, label %if.end39.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end267
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup275_crit_edge, label %if.then.i402, !prof !55

land.rhs.i.cleanup275_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup275

if.then.i402:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 308, i32 noundef 9, ptr noundef null) #7
  br label %cleanup275

if.end39.i:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 1
  %181 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %net, align 4
  %183 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @psample_nl_family, i32 0, i32 5), align 4
  %add.i403 = add i32 %183, 1
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %182, i32 0, i32 21
  %184 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i364, i32 0, i32 3, i32 16
  %186 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add.i403, ptr %dst_group.i.i, align 8
  %call.i.i404 = call i32 @netlink_broadcast(ptr noundef %185, ptr noundef nonnull %call.i.i.i364, i32 noundef 0, i32 noundef %add.i403, i32 noundef 2592) #7
  br label %cleanup275

error:                                            ; preds = %nla_nest_cancel.exit.i, %if.then255.error_crit_edge, %if.then241.error_crit_edge, %if.end228.error_crit_edge, %if.end216.error_crit_edge, %if.then204.error_crit_edge, %if.then186.error_crit_edge, %if.then168.error_crit_edge, %if.end152.error_crit_edge, %if.end141.error_crit_edge, %if.end129.error_crit_edge, %if.end118.error_crit_edge, %if.then105.error_crit_edge, %if.then90.error_crit_edge, %if.end76.error_crit_edge
  %call269 = call i32 @___ratelimit(ptr noundef nonnull @psample_sample_packet._rs, ptr noundef nonnull @__func__.psample_sample_packet) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %error.if.end274_crit_edge, label %do.end

error.if.end274_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274

do.end:                                           ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  %call273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %if.end274

if.end274:                                        ; preds = %do.end, %error.if.end274_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i364, i32 noundef 0) #7
  br label %cleanup275

cleanup275:                                       ; preds = %if.end274, %if.end39.i, %if.then.i402, %land.rhs.i.cleanup275_crit_edge, %if.end.cleanup275_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @psample_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @psample_nl_family) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @psample_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @psample_nl_family) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @psample_group_notify(ptr nocapture noundef readonly %group, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @psample_group_nl_fill(ptr noundef nonnull %call.i.i, ptr noundef %group, i32 noundef %cmd, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @psample_nl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.not.i.not = icmp eq i8 %0, 0
  br i1 %cmp.not.i.not, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then3
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !55

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 308, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end39.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 1
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @psample_nl_family, i32 0, i32 5), align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 21
  %4 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genl_sock.i, align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %6 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %dst_group.i.i, align 8
  %call.i.i11 = tail call i32 @netlink_broadcast(ptr noundef %5, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %3, i32 noundef 2592) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end39.i, %if.then.i, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @psample_group_nl_fill(ptr noundef %msg, ptr nocapture noundef readonly %group, i32 noundef %cmd, i32 noundef %portid, i32 noundef %seq) unnamed_addr #0 align 64 {
entry:
  %tmp.i3 = alloca i32, align 4
  %tmp.i1 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %cmd to i8
  %call = tail call ptr @genlmsg_put(ptr noundef %msg, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @psample_nl_family, i32 noundef 2, i8 noundef zeroext %conv) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %group_num = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %group_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %group_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.if.then.i_crit_edge, label %if.end4

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end4:                                          ; preds = %if.end
  %refcount = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 3
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcount, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1) #7
  %5 = ptrtoint ptr %tmp.i1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i1, align 4
  %call.i2 = call i32 @nla_put(ptr noundef %msg, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp6 = icmp slt i32 %call.i2, 0
  br i1 %cmp6, label %if.end4.if.then.i_crit_edge, label %if.end9

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end9:                                          ; preds = %if.end4
  %seq10 = getelementptr inbounds %struct.psample_group, ptr %group, i32 0, i32 4
  %6 = ptrtoint ptr %seq10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3) #7
  %8 = ptrtoint ptr %tmp.i3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i3, align 4
  %call.i4 = call i32 @nla_put(ptr noundef %msg, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp12 = icmp slt i32 %call.i4, 0
  br i1 %cmp12, label %if.end9.if.then.i_crit_edge, label %if.end15

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end9.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i5 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %13, %add.ptr1.i5
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !54

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psample_nl_cmd_get_group_dumpit(ptr noundef %msg, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @psample_groups_lock) #7
  %group.027 = load ptr, ptr @psample_groups_list, align 4
  %cmp.not28 = icmp eq ptr %group.027, @psample_groups_list
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %group.030 = phi ptr [ %group.027, %for.body.lr.ph ], [ %group.0, %for.inc.for.body_crit_edge ]
  %idx.029 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1, %for.inc.for.body_crit_edge ]
  %net = getelementptr inbounds %struct.psample_group, ptr %group.030, i32 0, i32 1
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %5, %9
  br i1 %cmp.i.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.029, i32 %2)
  %cmp2 = icmp slt i32 %idx.029, %2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %idx.029, 1
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid, align 4
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlmsg_seq, align 4
  %call6 = tail call fastcc i32 @psample_group_nl_fill(ptr noundef %msg, ptr noundef %group.030, i32 noundef 2, i32 noundef %13, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %inc10 = add i32 %idx.029, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %if.then3, %for.body.for.inc_crit_edge
  %idx.1 = phi i32 [ %inc, %if.then3 ], [ %inc10, %if.end9 ], [ %idx.029, %for.body.for.inc_crit_edge ]
  %18 = ptrtoint ptr %group.030 to i32
  call void @__asan_load4_noabort(i32 %18)
  %group.0 = load ptr, ptr %group.030, align 4
  %cmp.not = icmp eq ptr %group.0, @psample_groups_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %idx.029, %if.end4.for.end_crit_edge ], [ %idx.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @psample_groups_lock) #7
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %idx.0.lcssa, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__ksymtab_psample_group_get, !1, !"__ksymtab_psample_group_get", i1 false, i1 false}
!1 = !{!"../net/psample/psample.c", i32 192, i32 1}
!2 = !{ptr @__ksymtab_psample_group_take, !3, !"__ksymtab_psample_group_take", i1 false, i1 false}
!3 = !{!"../net/psample/psample.c", i32 200, i32 1}
!4 = !{ptr @__ksymtab_psample_group_put, !5, !"__ksymtab_psample_group_put", i1 false, i1 false}
!5 = !{!"../net/psample/psample.c", i32 211, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/psample/psample.c", i32 491, i32 2}
!8 = !{ptr @psample_sample_packet._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.psample_sample_packet, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @psample_sample_packet._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @psample_sample_packet._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_psample_sample_packet, !15, !"__ksymtab_psample_sample_packet", i1 false, i1 false}
!15 = !{!"../net/psample/psample.c", i32 494, i32 1}
!16 = !{ptr @__initcall__kmod_psample__562_506_psample_module_init6, !17, !"__initcall__kmod_psample__562_506_psample_module_init6", i1 false, i1 false}
!17 = !{!"../net/psample/psample.c", i32 506, i32 1}
!18 = !{ptr @__exitcall_psample_module_exit, !19, !"__exitcall_psample_module_exit", i1 false, i1 false}
!19 = !{!"../net/psample/psample.c", i32 507, i32 1}
!20 = !{ptr @__UNIQUE_ID_author563, !21, !"__UNIQUE_ID_author563", i1 false, i1 false}
!21 = !{!"../net/psample/psample.c", i32 509, i32 1}
!22 = !{ptr @__UNIQUE_ID_description564, !23, !"__UNIQUE_ID_description564", i1 false, i1 false}
!23 = !{!"../net/psample/psample.c", i32 510, i32 1}
!24 = !{ptr @__UNIQUE_ID_file565, !25, !"__UNIQUE_ID_file565", i1 false, i1 false}
!25 = !{!"../net/psample/psample.c", i32 511, i32 1}
!26 = !{ptr @__UNIQUE_ID_license566, !25, !"__UNIQUE_ID_license566", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/psample/psample.c", i32 24, i32 8}
!29 = !{ptr @psample_groups_lock, !28, !"psample_groups_lock", i1 false, i1 false}
!30 = !{ptr @psample_groups_list, !31, !"psample_groups_list", i1 false, i1 false}
!31 = !{!"../net/psample/psample.c", i32 23, i32 8}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/net/netlink.h", i32 991, i32 3}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!36 = !{ptr @psample_nl_family, !37, !"psample_nl_family", i1 false, i1 false}
!37 = !{!"../net/psample/psample.c", i32 109, i32 27}
!38 = !{ptr @psample_nl_ops, !39, !"psample_nl_ops", i1 false, i1 false}
!39 = !{!"../net/psample/psample.c", i32 100, i32 36}
!40 = !{ptr @psample_nl_mcgrps, !41, !"psample_nl_mcgrps", i1 false, i1 false}
!41 = !{!"../net/psample/psample.c", i32 32, i32 42}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!44 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
