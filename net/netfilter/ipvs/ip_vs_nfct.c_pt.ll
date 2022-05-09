; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_nfct.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_nfct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_vs_nfct_expect_related\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_vs_nfct_expect_related\09\09\09\09"
module asm "\09.long\09__crc_ip_vs_nfct_expect_related\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_vs_nfct_expect_related:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_vs_nfct_expect_related\22\09\09\09\09\09"
module asm "__kstrtabns_ip_vs_nfct_expect_related:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.112 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.112 = type { %union.nf_inet_addr, %union.anon.113, i8, i8 }
%union.anon.113 = type { i16 }
%struct.sk_buff = type { %union.anon, %union.anon.150, %union.anon.151, [48 x i8], %union.anon.152, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.154, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, ptr }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.156, i32, i32, i32, i16, i16, %union.anon.158, i32, %union.anon.159, %union.anon.160, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.156 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.167, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.167 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.120 }
%struct.anon.120 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.ip_vs_conn_param = type { ptr, ptr, ptr, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }

@ip_vs_update_conntrack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017IPVS: %s: Updating conntrack ct=%p, status=0x%lX, ctinfo=%d, old reply=%s:%u->%s:%u/%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ip_vs_update_conntrack\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/ipvs/ip_vs_nfct.c\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_update_conntrack._entry_ptr = internal global ptr @ip_vs_update_conntrack._entry, section ".printk_index", align 4
@ip_vs_update_conntrack._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017IPVS: %s: Updating conntrack ct=%p, status=0x%lX, ctinfo=%d, new reply=%s:%u->%s:%u/%u\0A\00", [38 x i8] zeroinitializer }, align 32
@ip_vs_update_conntrack._entry_ptr.5 = internal global ptr @ip_vs_update_conntrack._entry.3, section ".printk_index", align 4
@ip_vs_update_conntrack._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017IPVS: %s: Updated conntrack ct=%p for cp=%s:%u->%s:%u->%s:%u/%u:%u\0A\00", [58 x i8] zeroinitializer }, align 32
@ip_vs_update_conntrack._entry_ptr.8 = internal global ptr @ip_vs_update_conntrack._entry.6, section ".printk_index", align 4
@ip_vs_nfct_expect_related._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017IPVS: %s: ct=%p, expect tuple=%s:%u->%s:%u/%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip_vs_nfct_expect_related\00", [38 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_related._entry_ptr = internal global ptr @ip_vs_nfct_expect_related._entry, section ".printk_index", align 4
@__kstrtab_ip_vs_nfct_expect_related = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_vs_nfct_expect_related = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_vs_nfct_expect_related = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_vs_nfct_expect_related to i32), ptr @__kstrtab_ip_vs_nfct_expect_related, ptr @__kstrtabns_ip_vs_nfct_expect_related }, section "___ksymtab+ip_vs_nfct_expect_related", align 4
@ip_vs_conn_drop_conntrack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017IPVS: %s: dropping conntrack for conn %s:%u->%s:%u->%s:%u/%u:%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip_vs_conn_drop_conntrack\00", [38 x i8] zeroinitializer }, align 32
@ip_vs_conn_drop_conntrack._entry_ptr = internal global ptr @ip_vs_conn_drop_conntrack._entry, section ".printk_index", align 4
@nf_ct_zone_dflt = external dso_local constant %struct.nf_conntrack_zone, align 2
@ip_vs_conn_drop_conntrack._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017IPVS: %s: ct=%p deleted for tuple=%s:%u->%s:%u/%u\0A\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_conn_drop_conntrack._entry_ptr.15 = internal global ptr @ip_vs_conn_drop_conntrack._entry.13, section ".printk_index", align 4
@ip_vs_conn_drop_conntrack._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: %s: ct=%p, no conntrack for tuple=%s:%u->%s:%u/%u\0A\00", [37 x i8] zeroinitializer }, align 32
@ip_vs_conn_drop_conntrack._entry_ptr.18 = internal global ptr @ip_vs_conn_drop_conntrack._entry.16, section ".printk_index", align 4
@ip_vs_conn_drop_conntrack._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017IPVS: %s: no conntrack for tuple=%s:%u->%s:%u/%u\0A\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_conn_drop_conntrack._entry_ptr.21 = internal global ptr @ip_vs_conn_drop_conntrack._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017IPVS: %s: for ct=%p, status=0x%lX found inout cp=%s:%u->%s:%u->%s:%u/%u:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip_vs_nfct_expect_callback\00", [37 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_callback._entry_ptr = internal global ptr @ip_vs_nfct_expect_callback._entry, section ".printk_index", align 4
@ip_vs_nfct_expect_callback._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017IPVS: %s: ct=%p before alter: reply tuple=%s:%u->%s:%u/%u\0A\00", [35 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_callback._entry_ptr.28 = internal global ptr @ip_vs_nfct_expect_callback._entry.26, section ".printk_index", align 4
@ip_vs_nfct_expect_callback._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017IPVS: %s: for ct=%p, status=0x%lX found outin cp=%s:%u->%s:%u->%s:%u/%u:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_callback._entry_ptr.31 = internal global ptr @ip_vs_nfct_expect_callback._entry.29, section ".printk_index", align 4
@ip_vs_nfct_expect_callback._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_callback._entry_ptr.33 = internal global ptr @ip_vs_nfct_expect_callback._entry.32, section ".printk_index", align 4
@ip_vs_nfct_expect_callback._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017IPVS: %s: ct=%p, status=0x%lX, tuple=%s:%u->%s:%u/%u - unknown expect\0A\00", [55 x i8] zeroinitializer }, align 32
@ip_vs_nfct_expect_callback._entry_ptr.36 = internal global ptr @ip_vs_nfct_expect_callback._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 58]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 58]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 119, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 123, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 128, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 232, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 259, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 266, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 270, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 276, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 196, i32 46 }
@___asan_gen_.102 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 200, i32 46 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 164, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 168, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 180, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 184, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [35 x i8] c"../net/netfilter/ipvs/ip_vs_nfct.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 192, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab_ip_vs_nfct_expect_related, ptr @ip_vs_conn_drop_conntrack._entry, ptr @ip_vs_conn_drop_conntrack._entry.13, ptr @ip_vs_conn_drop_conntrack._entry.16, ptr @ip_vs_conn_drop_conntrack._entry.19, ptr @ip_vs_conn_drop_conntrack._entry_ptr, ptr @ip_vs_conn_drop_conntrack._entry_ptr.15, ptr @ip_vs_conn_drop_conntrack._entry_ptr.18, ptr @ip_vs_conn_drop_conntrack._entry_ptr.21, ptr @ip_vs_nfct_expect_callback._entry, ptr @ip_vs_nfct_expect_callback._entry.26, ptr @ip_vs_nfct_expect_callback._entry.29, ptr @ip_vs_nfct_expect_callback._entry.32, ptr @ip_vs_nfct_expect_callback._entry.34, ptr @ip_vs_nfct_expect_callback._entry_ptr, ptr @ip_vs_nfct_expect_callback._entry_ptr.28, ptr @ip_vs_nfct_expect_callback._entry_ptr.31, ptr @ip_vs_nfct_expect_callback._entry_ptr.33, ptr @ip_vs_nfct_expect_callback._entry_ptr.36, ptr @ip_vs_nfct_expect_related._entry, ptr @ip_vs_nfct_expect_related._entry_ptr, ptr @ip_vs_update_conntrack._entry, ptr @ip_vs_update_conntrack._entry.3, ptr @ip_vs_update_conntrack._entry.6, ptr @ip_vs_update_conntrack._entry_ptr, ptr @ip_vs_update_conntrack._entry_ptr.5, ptr @ip_vs_update_conntrack._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.35], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_update_conntrack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_update_conntrack._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_update_conntrack._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nfct_expect_related._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_drop_conntrack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_drop_conntrack._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_drop_conntrack._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_drop_conntrack._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nfct_expect_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nfct_expect_callback._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nfct_expect_callback._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nfct_expect_callback._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_nfct_expect_callback._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_update_conntrack(ptr nocapture noundef readonly %skb, ptr noundef %cp, i32 noundef %outin) local_unnamed_addr #0 align 64 {
entry:
  %new_tuple = alloca %struct.nf_conntrack_tuple, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %ip_vs_dbg_buf114 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf153 = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %new_tuple) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 8
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 8
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and = and i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and9 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp13 = icmp ugt i32 %and.i, 2
  %or.cond = select i1 %tobool10.not, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end16

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %13 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %app, align 4
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %if.end16.if.end28_crit_edge, label %land.lhs.true

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end16
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %15 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp19 = icmp eq i8 %16, 6
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true21:                                  ; preds = %land.lhs.true
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %17 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true21.land.lhs.true24_crit_edge, label %nf_ct_ext_exist.exit.i.i

land.lhs.true21.land.lhs.true24_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true24

nf_ct_ext_exist.exit.i.i:                         ; preds = %land.lhs.true21
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.i.not.i.i = icmp eq i8 %20, 0
  %conv.i.i = zext i8 %20 to i32
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %conv.i.i
  %tobool23.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond308 = select i1 %tobool.i.i.not.i.i, i1 true, i1 %tobool23.not
  br i1 %or.cond308, label %nf_ct_ext_exist.exit.i.i.land.lhs.true24_crit_edge, label %nf_ct_ext_exist.exit.i.i.if.end28_crit_edge

nf_ct_ext_exist.exit.i.i.if.end28_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

nf_ct_ext_exist.exit.i.i.land.lhs.true24_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true24

land.lhs.true24:                                  ; preds = %nf_ct_ext_exist.exit.i.i.land.lhs.true24_crit_edge, %land.lhs.true21.land.lhs.true24_crit_edge
  %call.i = tail call ptr @nf_ct_ext_add(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 2592) #6
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.if.end28_crit_edge

land.lhs.true24.if.end28_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true24.if.end28_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %tuple = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1
  %21 = call ptr @memcpy(ptr %new_tuple, ptr %tuple, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outin)
  %tobool29.not = icmp eq i32 %outin, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %22 = call ptr @memcpy(ptr %new_tuple, ptr %daddr, i32 16)
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %protonum, align 2
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.then40 [
    i8 1, label %if.then30.do.body_crit_edge
    i8 58, label %if.then30.do.body_crit_edge309
  ]

if.then30.do.body_crit_edge309:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then30.do.body_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then40:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %26 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dport, align 2
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_tuple, i32 0, i32 1
  %28 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %u, align 4
  br label %do.body

if.else:                                          ; preds = %if.end28
  %dst43 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %29 = call ptr @memcpy(ptr %dst43, ptr %vaddr, i32 16)
  %protonum46 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %protonum46 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protonum46, align 2
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %31, label %if.then56 [
    i8 1, label %if.else.do.body_crit_edge
    i8 58, label %if.else.do.body_crit_edge310
  ]

if.else.do.body_crit_edge310:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %33 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vport, align 4
  %u58 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %u58 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %u58, align 4
  br label %do.body

do.body:                                          ; preds = %if.then56, %if.else.do.body_crit_edge, %if.else.do.body_crit_edge310, %if.then40, %if.then30.do.body_crit_edge, %if.then30.do.body_crit_edge309
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %36 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call62 = tail call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, 6
  br i1 %cmp63, label %do.end, label %do.body.if.end110_crit_edge

do.body.if.end110_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

do.end:                                           ; preds = %do.body
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i, align 8
  %l3num = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i = icmp eq i16 %40, 10
  %.str.22..str.23.i = select i1 %cmp.i, ptr @.str.22, ptr @.str.23
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i, ptr noundef %tuple) #6
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !71

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %u82 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %u82 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %u82, align 8
  %43 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %l3num, align 2
  %dst94 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %44)
  %cmp.i227 = icmp eq i16 %44, 10
  %arrayidx.i228 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i229 = sub nsw i32 159, %call3.i
  %.str.22..str.23.i230 = select i1 %cmp.i227, ptr @.str.22, ptr @.str.23
  %call3.i231 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i228, i32 noundef %sub.i229, ptr noundef nonnull %.str.22..str.23.i230, ptr noundef %dst94) #6
  %len.0.i232 = add nsw i32 %call3.i, 2
  %add5.i233 = add i32 %len.0.i232, %call3.i231
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i233)
  %cmp7.i234 = icmp ugt i32 %add5.i233, 161
  br i1 %cmp7.i234, label %do.body10.i235, label %ip_vs_dbg_addr.exit237, !prof !71

do.body10.i235:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit237:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv83 = zext i16 %42 to i32
  %u101 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 1, i32 1
  %45 = ptrtoint ptr %u101 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %u101, align 4
  %conv102 = zext i16 %46 to i32
  %protonum107 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 1, i32 2
  %47 = ptrtoint ptr %protonum107 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %protonum107, align 2
  %conv108 = zext i8 %48 to i32
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef %38, i32 noundef %and.i, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv83, ptr noundef %arrayidx.i228, i32 noundef %conv102, i32 noundef %conv108) #9
  br label %if.end110

if.end110:                                        ; preds = %ip_vs_dbg_addr.exit237, %do.body.if.end110_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf114) #6
  %49 = call ptr @memset(ptr %ip_vs_dbg_buf114, i32 255, i32 160)
  %call116 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call116)
  %cmp117 = icmp sgt i32 %call116, 6
  br i1 %cmp117, label %do.end122, label %if.end110.if.end149_crit_edge

if.end110.if.end149_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

do.end122:                                        ; preds = %if.end110
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status.i, align 8
  %l3num126 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_tuple, i32 0, i32 2
  %52 = ptrtoint ptr %l3num126 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %l3num126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %53)
  %cmp.i238 = icmp eq i16 %53, 10
  %.str.22..str.23.i241 = select i1 %cmp.i238, ptr @.str.22, ptr @.str.23
  %call3.i242 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf114, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i241, ptr noundef nonnull %new_tuple) #6
  %len.0.i243 = add i32 %call3.i242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i243)
  %cmp7.i245 = icmp ugt i32 %len.0.i243, 161
  br i1 %cmp7.i245, label %do.body10.i246, label %ip_vs_dbg_addr.exit248, !prof !71

do.body10.i246:                                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit248:                           ; preds = %do.end122
  %u133 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_tuple, i32 0, i32 1
  %54 = ptrtoint ptr %u133 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %u133, align 4
  %56 = ptrtoint ptr %l3num126 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %l3num126, align 2
  %dst139 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %57)
  %cmp.i249 = icmp eq i16 %57, 10
  %arrayidx.i250 = getelementptr i8, ptr %ip_vs_dbg_buf114, i32 %len.0.i243
  %sub.i251 = sub nsw i32 159, %call3.i242
  %.str.22..str.23.i252 = select i1 %cmp.i249, ptr @.str.22, ptr @.str.23
  %call3.i253 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i250, i32 noundef %sub.i251, ptr noundef nonnull %.str.22..str.23.i252, ptr noundef %dst139) #6
  %len.0.i254 = add nsw i32 %call3.i242, 2
  %add5.i255 = add i32 %len.0.i254, %call3.i253
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i255)
  %cmp7.i256 = icmp ugt i32 %add5.i255, 161
  br i1 %cmp7.i256, label %do.body10.i257, label %ip_vs_dbg_addr.exit259, !prof !71

do.body10.i257:                                   ; preds = %ip_vs_dbg_addr.exit248
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit259:                           ; preds = %ip_vs_dbg_addr.exit248
  call void @__sanitizer_cov_trace_pc() #8
  %conv134 = zext i16 %55 to i32
  %u143 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %u143 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %u143, align 4
  %conv144 = zext i16 %59 to i32
  %protonum146 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_tuple, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %protonum146 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %protonum146, align 2
  %conv147 = zext i8 %61 to i32
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef %51, i32 noundef %and.i, ptr noundef nonnull %ip_vs_dbg_buf114, i32 noundef %conv134, ptr noundef %arrayidx.i250, i32 noundef %conv144, i32 noundef %conv147) #9
  br label %if.end149

if.end149:                                        ; preds = %ip_vs_dbg_addr.exit259, %if.end110.if.end149_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf114) #6
  call void @nf_conntrack_alter_reply(ptr noundef nonnull %2, ptr noundef nonnull %new_tuple) #6
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf153) #6
  %62 = call ptr @memset(ptr %ip_vs_dbg_buf153, i32 255, i32 160)
  %call155 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call155)
  %cmp156 = icmp sgt i32 %call155, 6
  br i1 %cmp156, label %do.end161, label %if.end149.if.end183_crit_edge

if.end149.if.end183_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

do.end161:                                        ; preds = %if.end149
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %63 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %64)
  %cmp.i260 = icmp eq i16 %64, 10
  %.str.22..str.23.i263 = select i1 %cmp.i260, ptr @.str.22, ptr @.str.23
  %call3.i264 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf153, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i263, ptr noundef %caddr) #6
  %len.0.i265 = add i32 %call3.i264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i265)
  %cmp7.i267 = icmp ugt i32 %len.0.i265, 161
  br i1 %cmp7.i267, label %do.body10.i268, label %ip_vs_dbg_addr.exit270, !prof !71

do.body10.i268:                                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit270:                           ; preds = %do.end161
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %65 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %cport, align 4
  %conv166 = zext i16 %66 to i32
  %67 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %af, align 2
  %vaddr170 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %68)
  %cmp.i271 = icmp eq i16 %68, 10
  %arrayidx.i272 = getelementptr i8, ptr %ip_vs_dbg_buf153, i32 %len.0.i265
  %sub.i273 = sub nsw i32 159, %call3.i264
  %.str.22..str.23.i274 = select i1 %cmp.i271, ptr @.str.22, ptr @.str.23
  %call3.i275 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i272, i32 noundef %sub.i273, ptr noundef nonnull %.str.22..str.23.i274, ptr noundef %vaddr170) #6
  %len.0.i276 = add nsw i32 %call3.i264, 2
  %add5.i277 = add i32 %len.0.i276, %call3.i275
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i277)
  %cmp7.i278 = icmp ugt i32 %add5.i277, 161
  br i1 %cmp7.i278, label %do.body10.i279, label %ip_vs_dbg_addr.exit281, !prof !71

do.body10.i279:                                   ; preds = %ip_vs_dbg_addr.exit270
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit281:                           ; preds = %ip_vs_dbg_addr.exit270
  %vport172 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %69 = ptrtoint ptr %vport172 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vport172, align 4
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %71 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %daf, align 2
  %daddr176 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %72)
  %cmp.i282 = icmp eq i16 %72, 10
  %arrayidx.i283 = getelementptr i8, ptr %ip_vs_dbg_buf153, i32 %add5.i277
  %sub.i284 = sub nsw i32 160, %add5.i277
  %.str.22..str.23.i285 = select i1 %cmp.i282, ptr @.str.22, ptr @.str.23
  %call3.i286 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i283, i32 noundef %sub.i284, ptr noundef nonnull %.str.22..str.23.i285, ptr noundef %daddr176) #6
  %len.0.i287 = add nuw nsw i32 %add5.i277, 1
  %add5.i288 = add i32 %len.0.i287, %call3.i286
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i288)
  %cmp7.i289 = icmp ugt i32 %add5.i288, 161
  br i1 %cmp7.i289, label %do.body10.i290, label %ip_vs_dbg_addr.exit292, !prof !71

do.body10.i290:                                   ; preds = %ip_vs_dbg_addr.exit281
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit292:                           ; preds = %ip_vs_dbg_addr.exit281
  call void @__sanitizer_cov_trace_pc() #8
  %conv173 = zext i16 %70 to i32
  %dport178 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %73 = ptrtoint ptr %dport178 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %dport178, align 2
  %conv179 = zext i16 %74 to i32
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %75 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %protocol, align 4
  %conv180 = zext i16 %76 to i32
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %77 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load volatile i16, ptr %state, align 4
  %conv181 = zext i16 %78 to i32
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef nonnull %ip_vs_dbg_buf153, i32 noundef %conv166, ptr noundef %arrayidx.i272, i32 noundef %conv173, ptr noundef %arrayidx.i283, i32 noundef %conv179, i32 noundef %conv180, i32 noundef %conv181) #9
  br label %if.end183

if.end183:                                        ; preds = %ip_vs_dbg_addr.exit292, %if.end149.if.end183_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf153) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %land.lhs.true24.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_tuple) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_alter_reply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_confirm_conntrack(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.nf_conntrack_confirm.exit_crit_edge, label %if.then.i

entry.nf_conntrack_confirm.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_conntrack_confirm.exit

if.then.i:                                        ; preds = %entry
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i.i, align 8
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.if.then7.i_crit_edge

if.then.i.if.then7.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call i32 @__nf_conntrack_confirm(ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.i, label %if.end.i.if.then7.i_crit_edge, label %if.end.i.nf_conntrack_confirm.exit_crit_edge, !prof !73

if.end.i.nf_conntrack_confirm.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nf_conntrack_confirm.exit

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then.i.if.then7.i_crit_edge
  tail call void @nf_ct_deliver_cached_events(ptr noundef nonnull %2) #6
  br label %nf_conntrack_confirm.exit

nf_conntrack_confirm.exit:                        ; preds = %if.then7.i, %if.end.i.nf_conntrack_confirm.exit_crit_edge, %entry.nf_conntrack_confirm.exit_crit_edge
  %ret.1.i = phi i32 [ 1, %if.then7.i ], [ %call4.i, %if.end.i.nf_conntrack_confirm.exit_crit_edge ], [ 1, %entry.nf_conntrack_confirm.exit_crit_edge ]
  ret i32 %ret.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_nfct_expect_related(ptr nocapture readnone %skb, ptr noundef %ct, ptr noundef %cp, i8 noundef zeroext %proto, i16 noundef zeroext %port, i32 noundef %from_rs) #0 align 64 {
entry:
  %port.addr = alloca i16, align 2
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %port, ptr %port.addr, align 2
  %cmp = icmp eq ptr %ct, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nf_ct_expect_alloc(ptr noundef nonnull %ct) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %l3num.i, align 2
  %conv = trunc i16 %2 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from_rs)
  %tobool4.not = icmp eq i32 %from_rs, 0
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %cond = select i1 %tobool4.not, ptr %caddr, ptr %daddr
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %cond10 = select i1 %tobool4.not, ptr %vaddr, ptr %caddr
  %3 = ptrtoint ptr %port.addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port.addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool12.not = icmp eq i16 %4, 0
  %port.addr. = select i1 %tobool12.not, ptr null, ptr %port.addr
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %cond21 = select i1 %tobool4.not, ptr %vport, ptr %cport
  call void @nf_ct_expect_init(ptr noundef nonnull %call, i32 noundef 0, i8 noundef zeroext %conv, ptr noundef %cond, ptr noundef %cond10, i8 noundef zeroext %proto, ptr noundef %port.addr., ptr noundef %cond21) #6
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ip_vs_nfct_expect_callback, ptr %expectfn, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %6 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call22 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, 6
  br i1 %cmp23, label %do.end, label %if.end2.if.end50_crit_edge

if.end2.if.end50_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end:                                           ; preds = %if.end2
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %8)
  %cmp.i = icmp eq i16 %8, 10
  %.str.22..str.23.i = select i1 %cmp.i, ptr @.str.22, ptr @.str.23
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i, ptr noundef %tuple) #6
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !71

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %u, align 4
  %11 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %l3num, align 2
  %dst = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %12)
  %cmp.i75 = icmp eq i16 %12, 10
  %arrayidx.i76 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i77 = sub nsw i32 159, %call3.i
  %.str.22..str.23.i78 = select i1 %cmp.i75, ptr @.str.22, ptr @.str.23
  %call3.i79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i76, i32 noundef %sub.i77, ptr noundef nonnull %.str.22..str.23.i78, ptr noundef %dst) #6
  %len.0.i80 = add nsw i32 %call3.i, 2
  %add5.i81 = add i32 %len.0.i80, %call3.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i81)
  %cmp7.i82 = icmp ugt i32 %add5.i81, 161
  br i1 %cmp7.i82, label %do.body10.i83, label %ip_vs_dbg_addr.exit85, !prof !71

do.body10.i83:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit85:                            ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = zext i16 %10 to i32
  %u44 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %u44 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u44, align 4
  %conv45 = zext i16 %14 to i32
  %protonum = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2, i32 1, i32 2
  %15 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protonum, align 2
  %conv48 = zext i8 %16 to i32
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %ct, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv33, ptr noundef %arrayidx.i76, i32 noundef %conv45, i32 noundef %conv48) #9
  br label %if.end50

if.end50:                                         ; preds = %ip_vs_dbg_addr.exit85, %if.end2.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %call.i = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @nf_ct_expect_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_nfct_expect_callback(ptr noundef %ct, ptr nocapture noundef readonly %exp) #0 align 64 {
entry:
  %new_reply = alloca %struct.nf_conntrack_tuple, align 4
  %p = alloca %struct.ip_vs_conn_param, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %ip_vs_dbg_buf37 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf86 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf130 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf176 = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %new_reply) #6
  %0 = call ptr @memset(ptr %new_reply, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #6
  %1 = getelementptr inbounds i8, ptr %p, i32 28
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %3 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ct_net.i, align 4
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %ipvs.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 48
  %5 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipvs.i, align 8
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %l3num, align 2
  %dst = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1
  %protonum = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %9 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protonum, align 2
  %u = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %u, align 4
  %u9 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %u9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u9, align 4
  %15 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %p, align 4
  %af2.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %16 = ptrtoint ptr %af2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %8, ptr %af2.i, align 2
  %conv3.i = zext i8 %10 to i16
  %protocol4.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %17 = ptrtoint ptr %protocol4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv3.i, ptr %protocol4.i, align 4
  %caddr5.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %18 = ptrtoint ptr %caddr5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tuple, ptr %caddr5.i, align 4
  %cport6.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %19 = ptrtoint ptr %cport6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %12, ptr %cport6.i, align 4
  %vaddr7.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %20 = ptrtoint ptr %vaddr7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dst, ptr %vaddr7.i, align 4
  %vport8.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %21 = ptrtoint ptr %vport8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %14, ptr %vport8.i, align 2
  %pe.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %22 = ptrtoint ptr %pe.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pe.i, align 4
  %pe_data.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %23 = ptrtoint ptr %pe_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pe_data.i, align 4
  %call11 = call ptr @ip_vs_conn_out_get(ptr noundef nonnull %p) #6
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end81, label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %24 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call12 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call12)
  %cmp = icmp sgt i32 %call12, 6
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %do.body
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 8
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 4
  %27 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %28)
  %cmp.i = icmp eq i16 %28, 10
  %.str.22..str.23.i = select i1 %cmp.i, ptr @.str.22, ptr @.str.23
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i, ptr noundef %caddr) #6
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !71

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 1
  %29 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cport, align 4
  %conv18 = zext i16 %30 to i32
  %31 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %32)
  %cmp.i274 = icmp eq i16 %32, 10
  %arrayidx.i275 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i276 = sub nsw i32 159, %call3.i
  %.str.22..str.23.i277 = select i1 %cmp.i274, ptr @.str.22, ptr @.str.23
  %call3.i278 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i275, i32 noundef %sub.i276, ptr noundef nonnull %.str.22..str.23.i277, ptr noundef %vaddr) #6
  %len.0.i279 = add nsw i32 %call3.i, 2
  %add5.i280 = add i32 %len.0.i279, %call3.i278
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i280)
  %cmp7.i281 = icmp ugt i32 %add5.i280, 161
  br i1 %cmp7.i281, label %do.body10.i282, label %ip_vs_dbg_addr.exit284, !prof !71

do.body10.i282:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit284:                           ; preds = %ip_vs_dbg_addr.exit
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 3
  %33 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vport, align 4
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 10
  %35 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %daf, align 2
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %36)
  %cmp.i285 = icmp eq i16 %36, 10
  %arrayidx.i286 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %add5.i280
  %sub.i287 = sub nsw i32 160, %add5.i280
  %.str.22..str.23.i288 = select i1 %cmp.i285, ptr @.str.22, ptr @.str.23
  %call3.i289 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i286, i32 noundef %sub.i287, ptr noundef nonnull %.str.22..str.23.i288, ptr noundef %daddr) #6
  %len.0.i290 = add nuw nsw i32 %add5.i280, 1
  %add5.i291 = add i32 %len.0.i290, %call3.i289
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i291)
  %cmp7.i292 = icmp ugt i32 %add5.i291, 161
  br i1 %cmp7.i292, label %do.body10.i293, label %ip_vs_dbg_addr.exit295, !prof !71

do.body10.i293:                                   ; preds = %ip_vs_dbg_addr.exit284
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit295:                           ; preds = %ip_vs_dbg_addr.exit284
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = zext i16 %34 to i32
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 2
  %37 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dport, align 2
  %conv27 = zext i16 %38 to i32
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 9
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %protocol, align 4
  %conv28 = zext i16 %40 to i32
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 16
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load volatile i16, ptr %state, align 4
  %conv29 = zext i16 %42 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %ct, i32 noundef %26, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv18, ptr noundef %arrayidx.i275, i32 noundef %conv23, ptr noundef %arrayidx.i286, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29) #9
  br label %if.end

if.end:                                           ; preds = %ip_vs_dbg_addr.exit295, %do.body.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %tuple35 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %43 = call ptr @memcpy(ptr %new_reply, ptr %tuple35, i32 40)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf37) #6
  %44 = call ptr @memset(ptr %ip_vs_dbg_buf37, i32 255, i32 160)
  %call39 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call39)
  %cmp40 = icmp sgt i32 %call39, 6
  br i1 %cmp40, label %do.end45, label %if.end.if.end71_crit_edge

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

do.end45:                                         ; preds = %if.end
  %l3num48 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_reply, i32 0, i32 2
  %45 = ptrtoint ptr %l3num48 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %l3num48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %46)
  %cmp.i296 = icmp eq i16 %46, 10
  %.str.22..str.23.i299 = select i1 %cmp.i296, ptr @.str.22, ptr @.str.23
  %call3.i300 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf37, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i299, ptr noundef nonnull %new_reply) #6
  %len.0.i301 = add i32 %call3.i300, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i301)
  %cmp7.i303 = icmp ugt i32 %len.0.i301, 161
  br i1 %cmp7.i303, label %do.body10.i304, label %ip_vs_dbg_addr.exit306, !prof !71

do.body10.i304:                                   ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit306:                           ; preds = %do.end45
  %u55 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_reply, i32 0, i32 1
  %47 = ptrtoint ptr %u55 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %u55, align 4
  %49 = ptrtoint ptr %l3num48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %l3num48, align 2
  %dst61 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %50)
  %cmp.i307 = icmp eq i16 %50, 10
  %arrayidx.i308 = getelementptr i8, ptr %ip_vs_dbg_buf37, i32 %len.0.i301
  %sub.i309 = sub nsw i32 159, %call3.i300
  %.str.22..str.23.i310 = select i1 %cmp.i307, ptr @.str.22, ptr @.str.23
  %call3.i311 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i308, i32 noundef %sub.i309, ptr noundef nonnull %.str.22..str.23.i310, ptr noundef %dst61) #6
  %len.0.i312 = add nsw i32 %call3.i300, 2
  %add5.i313 = add i32 %len.0.i312, %call3.i311
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i313)
  %cmp7.i314 = icmp ugt i32 %add5.i313, 161
  br i1 %cmp7.i314, label %do.body10.i315, label %ip_vs_dbg_addr.exit317, !prof !71

do.body10.i315:                                   ; preds = %ip_vs_dbg_addr.exit306
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit317:                           ; preds = %ip_vs_dbg_addr.exit306
  call void @__sanitizer_cov_trace_pc() #8
  %conv56 = zext i16 %48 to i32
  %u65 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %u65 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %u65, align 4
  %conv66 = zext i16 %52 to i32
  %protonum68 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %protonum68 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %protonum68, align 2
  %conv69 = zext i8 %54 to i32
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %ct, ptr noundef nonnull %ip_vs_dbg_buf37, i32 noundef %conv56, ptr noundef %arrayidx.i308, i32 noundef %conv66, i32 noundef %conv69) #9
  br label %if.end71

if.end71:                                         ; preds = %ip_vs_dbg_addr.exit317, %if.end.if.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf37) #6
  %dst74 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1
  %vaddr76 = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 6
  %55 = call ptr @memcpy(ptr %dst74, ptr %vaddr76, i32 16)
  %vport77 = getelementptr inbounds %struct.ip_vs_conn, ptr %call11, i32 0, i32 3
  %56 = ptrtoint ptr %vport77 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vport77, align 4
  %u79 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %u79 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %u79, align 4
  br label %alter

if.end81:                                         ; preds = %entry
  %call82 = call ptr @ip_vs_conn_in_get(ptr noundef nonnull %p) #6
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.body175, label %do.body85

do.body85:                                        ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf86) #6
  %59 = call ptr @memset(ptr %ip_vs_dbg_buf86, i32 255, i32 160)
  %call88 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call88)
  %cmp89 = icmp sgt i32 %call88, 6
  br i1 %cmp89, label %do.end94, label %do.body85.if.end123_crit_edge

do.body85.if.end123_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

do.end94:                                         ; preds = %do.body85
  %status96 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %60 = ptrtoint ptr %status96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %status96, align 8
  %af97 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 4
  %62 = ptrtoint ptr %af97 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %af97, align 2
  %caddr100 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %63)
  %cmp.i318 = icmp eq i16 %63, 10
  %.str.22..str.23.i321 = select i1 %cmp.i318, ptr @.str.22, ptr @.str.23
  %call3.i322 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf86, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i321, ptr noundef %caddr100) #6
  %len.0.i323 = add i32 %call3.i322, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i323)
  %cmp7.i325 = icmp ugt i32 %len.0.i323, 161
  br i1 %cmp7.i325, label %do.body10.i326, label %ip_vs_dbg_addr.exit328, !prof !71

do.body10.i326:                                   ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit328:                           ; preds = %do.end94
  %cport102 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 1
  %64 = ptrtoint ptr %cport102 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %cport102, align 4
  %conv103 = zext i16 %65 to i32
  %66 = ptrtoint ptr %af97 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %af97, align 2
  %vaddr107 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %67)
  %cmp.i329 = icmp eq i16 %67, 10
  %arrayidx.i330 = getelementptr i8, ptr %ip_vs_dbg_buf86, i32 %len.0.i323
  %sub.i331 = sub nsw i32 159, %call3.i322
  %.str.22..str.23.i332 = select i1 %cmp.i329, ptr @.str.22, ptr @.str.23
  %call3.i333 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i330, i32 noundef %sub.i331, ptr noundef nonnull %.str.22..str.23.i332, ptr noundef %vaddr107) #6
  %len.0.i334 = add nsw i32 %call3.i322, 2
  %add5.i335 = add i32 %len.0.i334, %call3.i333
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i335)
  %cmp7.i336 = icmp ugt i32 %add5.i335, 161
  br i1 %cmp7.i336, label %do.body10.i337, label %ip_vs_dbg_addr.exit339, !prof !71

do.body10.i337:                                   ; preds = %ip_vs_dbg_addr.exit328
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit339:                           ; preds = %ip_vs_dbg_addr.exit328
  %vport109 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 3
  %68 = ptrtoint ptr %vport109 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vport109, align 4
  %daf111 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 10
  %70 = ptrtoint ptr %daf111 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %daf111, align 2
  %daddr114 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %71)
  %cmp.i340 = icmp eq i16 %71, 10
  %arrayidx.i341 = getelementptr i8, ptr %ip_vs_dbg_buf86, i32 %add5.i335
  %sub.i342 = sub nsw i32 160, %add5.i335
  %.str.22..str.23.i343 = select i1 %cmp.i340, ptr @.str.22, ptr @.str.23
  %call3.i344 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i341, i32 noundef %sub.i342, ptr noundef nonnull %.str.22..str.23.i343, ptr noundef %daddr114) #6
  %len.0.i345 = add nuw nsw i32 %add5.i335, 1
  %add5.i346 = add i32 %len.0.i345, %call3.i344
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i346)
  %cmp7.i347 = icmp ugt i32 %add5.i346, 161
  br i1 %cmp7.i347, label %do.body10.i348, label %ip_vs_dbg_addr.exit350, !prof !71

do.body10.i348:                                   ; preds = %ip_vs_dbg_addr.exit339
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit350:                           ; preds = %ip_vs_dbg_addr.exit339
  call void @__sanitizer_cov_trace_pc() #8
  %conv110 = zext i16 %69 to i32
  %dport116 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 2
  %72 = ptrtoint ptr %dport116 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %dport116, align 2
  %conv117 = zext i16 %73 to i32
  %protocol118 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 9
  %74 = ptrtoint ptr %protocol118 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %protocol118, align 4
  %conv119 = zext i16 %75 to i32
  %state120 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 16
  %76 = ptrtoint ptr %state120 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load volatile i16, ptr %state120, align 4
  %conv121 = zext i16 %77 to i32
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, ptr noundef %ct, i32 noundef %61, ptr noundef nonnull %ip_vs_dbg_buf86, i32 noundef %conv103, ptr noundef %arrayidx.i330, i32 noundef %conv110, ptr noundef %arrayidx.i341, i32 noundef %conv117, i32 noundef %conv119, i32 noundef %conv121) #9
  br label %if.end123

if.end123:                                        ; preds = %ip_vs_dbg_addr.exit350, %do.body85.if.end123_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf86) #6
  %tuple128 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %78 = call ptr @memcpy(ptr %new_reply, ptr %tuple128, i32 40)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf130) #6
  %79 = call ptr @memset(ptr %ip_vs_dbg_buf130, i32 255, i32 160)
  %call132 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call132)
  %cmp133 = icmp sgt i32 %call132, 6
  br i1 %cmp133, label %do.end138, label %if.end123.if.end164_crit_edge

if.end123.if.end164_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

do.end138:                                        ; preds = %if.end123
  %l3num141 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_reply, i32 0, i32 2
  %80 = ptrtoint ptr %l3num141 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %l3num141, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %81)
  %cmp.i351 = icmp eq i16 %81, 10
  %.str.22..str.23.i354 = select i1 %cmp.i351, ptr @.str.22, ptr @.str.23
  %call3.i355 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf130, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i354, ptr noundef nonnull %new_reply) #6
  %len.0.i356 = add i32 %call3.i355, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i356)
  %cmp7.i358 = icmp ugt i32 %len.0.i356, 161
  br i1 %cmp7.i358, label %do.body10.i359, label %ip_vs_dbg_addr.exit361, !prof !71

do.body10.i359:                                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit361:                           ; preds = %do.end138
  %u148 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_reply, i32 0, i32 1
  %82 = ptrtoint ptr %u148 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %u148, align 4
  %84 = ptrtoint ptr %l3num141 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %l3num141, align 2
  %dst154 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %85)
  %cmp.i362 = icmp eq i16 %85, 10
  %arrayidx.i363 = getelementptr i8, ptr %ip_vs_dbg_buf130, i32 %len.0.i356
  %sub.i364 = sub nsw i32 159, %call3.i355
  %.str.22..str.23.i365 = select i1 %cmp.i362, ptr @.str.22, ptr @.str.23
  %call3.i366 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i363, i32 noundef %sub.i364, ptr noundef nonnull %.str.22..str.23.i365, ptr noundef %dst154) #6
  %len.0.i367 = add nsw i32 %call3.i355, 2
  %add5.i368 = add i32 %len.0.i367, %call3.i366
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i368)
  %cmp7.i369 = icmp ugt i32 %add5.i368, 161
  br i1 %cmp7.i369, label %do.body10.i370, label %ip_vs_dbg_addr.exit372, !prof !71

do.body10.i370:                                   ; preds = %ip_vs_dbg_addr.exit361
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit372:                           ; preds = %ip_vs_dbg_addr.exit361
  call void @__sanitizer_cov_trace_pc() #8
  %conv149 = zext i16 %83 to i32
  %u158 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %u158 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %u158, align 4
  %conv159 = zext i16 %87 to i32
  %protonum161 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %new_reply, i32 0, i32 1, i32 2
  %88 = ptrtoint ptr %protonum161 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %protonum161, align 2
  %conv162 = zext i8 %89 to i32
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %ct, ptr noundef nonnull %ip_vs_dbg_buf130, i32 noundef %conv149, ptr noundef %arrayidx.i363, i32 noundef %conv159, i32 noundef %conv162) #9
  br label %if.end164

if.end164:                                        ; preds = %ip_vs_dbg_addr.exit372, %if.end123.if.end164_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf130) #6
  %daddr169 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 7
  %90 = call ptr @memcpy(ptr %new_reply, ptr %daddr169, i32 16)
  %dport170 = getelementptr inbounds %struct.ip_vs_conn, ptr %call82, i32 0, i32 2
  %91 = ptrtoint ptr %dport170 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %dport170, align 2
  %u172 = getelementptr inbounds %struct.nf_conntrack_man, ptr %new_reply, i32 0, i32 1
  %93 = ptrtoint ptr %u172 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %u172, align 4
  br label %alter

do.body175:                                       ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf176) #6
  %94 = call ptr @memset(ptr %ip_vs_dbg_buf176, i32 255, i32 160)
  %call178 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call178)
  %cmp179 = icmp sgt i32 %call178, 6
  br i1 %cmp179, label %do.end184, label %do.body175.if.end211_crit_edge

do.body175.if.end211_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

do.end184:                                        ; preds = %do.body175
  %status186 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %95 = ptrtoint ptr %status186 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %status186, align 8
  %l3num188 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %97 = ptrtoint ptr %l3num188 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %l3num188, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %98)
  %cmp.i373 = icmp eq i16 %98, 10
  %.str.22..str.23.i376 = select i1 %cmp.i373, ptr @.str.22, ptr @.str.23
  %call3.i377 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf176, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i376, ptr noundef %tuple) #6
  %len.0.i378 = add i32 %call3.i377, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i378)
  %cmp7.i380 = icmp ugt i32 %len.0.i378, 161
  br i1 %cmp7.i380, label %do.body10.i381, label %ip_vs_dbg_addr.exit383, !prof !71

do.body10.i381:                                   ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit383:                           ; preds = %do.end184
  %99 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %u, align 4
  %101 = ptrtoint ptr %l3num188 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %l3num188, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %102)
  %cmp.i384 = icmp eq i16 %102, 10
  %arrayidx.i385 = getelementptr i8, ptr %ip_vs_dbg_buf176, i32 %len.0.i378
  %sub.i386 = sub nsw i32 159, %call3.i377
  %.str.22..str.23.i387 = select i1 %cmp.i384, ptr @.str.22, ptr @.str.23
  %call3.i388 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i385, i32 noundef %sub.i386, ptr noundef nonnull %.str.22..str.23.i387, ptr noundef %dst) #6
  %len.0.i389 = add nsw i32 %call3.i377, 2
  %add5.i390 = add i32 %len.0.i389, %call3.i388
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i390)
  %cmp7.i391 = icmp ugt i32 %add5.i390, 161
  br i1 %cmp7.i391, label %do.body10.i392, label %ip_vs_dbg_addr.exit394, !prof !71

do.body10.i392:                                   ; preds = %ip_vs_dbg_addr.exit383
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit394:                           ; preds = %ip_vs_dbg_addr.exit383
  call void @__sanitizer_cov_trace_pc() #8
  %conv196 = zext i16 %100 to i32
  %103 = ptrtoint ptr %u9 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %u9, align 4
  %conv206 = zext i16 %104 to i32
  %105 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %protonum, align 2
  %conv209 = zext i8 %106 to i32
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.25, ptr noundef %ct, i32 noundef %96, ptr noundef nonnull %ip_vs_dbg_buf176, i32 noundef %conv196, ptr noundef %arrayidx.i385, i32 noundef %conv206, i32 noundef %conv209) #9
  br label %if.end211

if.end211:                                        ; preds = %ip_vs_dbg_addr.exit394, %do.body175.if.end211_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf176) #6
  br label %cleanup

alter:                                            ; preds = %if.end164, %if.end71
  %cp.0 = phi ptr [ %call11, %if.end71 ], [ %call82, %if.end164 ]
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0, i32 0, i32 8
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags, align 4
  %and = and i32 %108, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp214 = icmp eq i32 %and, 0
  br i1 %cmp214, label %if.then216, label %alter.if.end217_crit_edge

alter.if.end217_crit_edge:                        ; preds = %alter
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end217

if.then216:                                       ; preds = %alter
  call void @__sanitizer_cov_trace_pc() #8
  call void @nf_conntrack_alter_reply(ptr noundef %ct, ptr noundef nonnull %new_reply) #6
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %alter.if.end217_crit_edge
  call void @ip_vs_conn_put(ptr noundef nonnull %cp.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end217, %if.end211
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_reply) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_conn_drop_conntrack(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  %tuple = alloca %struct.nf_conntrack_tuple, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %ip_vs_dbg_buf42 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf80 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf120 = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tuple) #6
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %0 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 4
  %conv = trunc i16 %3 to i8
  %.compoundliteral.sroa.2.0.tuple.sroa_idx = getelementptr inbounds i8, ptr %tuple, i32 38
  %4 = ptrtoint ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx, align 2
  %.compoundliteral.sroa.3.0.tuple.sroa_idx = getelementptr inbounds i8, ptr %tuple, i32 39
  %5 = ptrtoint ptr %.compoundliteral.sroa.3.0.tuple.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %.compoundliteral.sroa.3.0.tuple.sroa_idx, align 1
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %tuple, ptr %caddr, i32 16)
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %1, ptr %u, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %8 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %af, align 2
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 2
  %10 = ptrtoint ptr %l3num to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %l3num, align 2
  %dst4 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %dst4, ptr %vaddr, i32 16)
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vport, align 4
  %u7 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %u7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %u7, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %15 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call = tail call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp sgt i32 %call, 6
  br i1 %cmp, label %do.end, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end:                                           ; preds = %if.end
  %16 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp.i = icmp eq i16 %17, 10
  %.str.22..str.23.i = select i1 %cmp.i, ptr @.str.22, ptr @.str.23
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i, ptr noundef %caddr) #6
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !71

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %18 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cport, align 4
  %conv16 = zext i16 %19 to i32
  %20 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %21)
  %cmp.i182 = icmp eq i16 %21, 10
  %arrayidx.i183 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i184 = sub nsw i32 159, %call3.i
  %.str.22..str.23.i185 = select i1 %cmp.i182, ptr @.str.22, ptr @.str.23
  %call3.i186 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i183, i32 noundef %sub.i184, ptr noundef nonnull %.str.22..str.23.i185, ptr noundef %vaddr) #6
  %len.0.i187 = add nsw i32 %call3.i, 2
  %add5.i188 = add i32 %len.0.i187, %call3.i186
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i188)
  %cmp7.i189 = icmp ugt i32 %add5.i188, 161
  br i1 %cmp7.i189, label %do.body10.i190, label %ip_vs_dbg_addr.exit192, !prof !71

do.body10.i190:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit192:                           ; preds = %ip_vs_dbg_addr.exit
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vport, align 4
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %24 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %daf, align 2
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %cmp.i193 = icmp eq i16 %25, 10
  %arrayidx.i194 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %add5.i188
  %sub.i195 = sub nsw i32 160, %add5.i188
  %.str.22..str.23.i196 = select i1 %cmp.i193, ptr @.str.22, ptr @.str.23
  %call3.i197 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i194, i32 noundef %sub.i195, ptr noundef nonnull %.str.22..str.23.i196, ptr noundef %daddr) #6
  %len.0.i198 = add nuw nsw i32 %add5.i188, 1
  %add5.i199 = add i32 %len.0.i198, %call3.i197
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i199)
  %cmp7.i200 = icmp ugt i32 %add5.i199, 161
  br i1 %cmp7.i200, label %do.body10.i201, label %ip_vs_dbg_addr.exit203, !prof !71

do.body10.i201:                                   ; preds = %ip_vs_dbg_addr.exit192
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit203:                           ; preds = %ip_vs_dbg_addr.exit192
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = zext i16 %23 to i32
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %26 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dport, align 2
  %conv27 = zext i16 %27 to i32
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol, align 4
  %conv29 = zext i16 %29 to i32
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load volatile i16, ptr %state, align 4
  %conv30 = zext i16 %31 to i32
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv16, ptr noundef %arrayidx.i183, i32 noundef %conv23, ptr noundef %arrayidx.i194, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv30) #9
  br label %if.end32

if.end32:                                         ; preds = %ip_vs_dbg_addr.exit203, %if.end.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %32 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ipvs, align 4
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %33, i32 0, i32 75
  %34 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net, align 8
  %call35 = call ptr @nf_conntrack_find_get(ptr noundef %35, ptr noundef nonnull @nf_ct_zone_dflt, ptr noundef nonnull %tuple) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.body119, label %if.then37

if.then37:                                        ; preds = %if.end32
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call35, i32 0, i32 1, i32 1, i32 3
  %36 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %37 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call35, i32 %idx.neg.i
  %call.i = call zeroext i1 @nf_ct_delete(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #6
  br i1 %call.i, label %do.body41, label %do.body79

do.body41:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf42) #6
  %38 = call ptr @memset(ptr %ip_vs_dbg_buf42, i32 255, i32 160)
  %call44 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, 6
  br i1 %cmp45, label %do.end50, label %do.body41.if.end76_crit_edge

do.body41.if.end76_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end50:                                         ; preds = %do.body41
  %39 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %40)
  %cmp.i204 = icmp eq i16 %40, 10
  %.str.22..str.23.i207 = select i1 %cmp.i204, ptr @.str.22, ptr @.str.23
  %call3.i208 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf42, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i207, ptr noundef nonnull %tuple) #6
  %len.0.i209 = add i32 %call3.i208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i209)
  %cmp7.i211 = icmp ugt i32 %len.0.i209, 161
  br i1 %cmp7.i211, label %do.body10.i212, label %ip_vs_dbg_addr.exit214, !prof !71

do.body10.i212:                                   ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit214:                           ; preds = %do.end50
  %41 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %u, align 4
  %43 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %44)
  %cmp.i215 = icmp eq i16 %44, 10
  %arrayidx.i216 = getelementptr i8, ptr %ip_vs_dbg_buf42, i32 %len.0.i209
  %sub.i217 = sub nsw i32 159, %call3.i208
  %.str.22..str.23.i218 = select i1 %cmp.i215, ptr @.str.22, ptr @.str.23
  %call3.i219 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i216, i32 noundef %sub.i217, ptr noundef nonnull %.str.22..str.23.i218, ptr noundef %dst4) #6
  %len.0.i220 = add nsw i32 %call3.i208, 2
  %add5.i221 = add i32 %len.0.i220, %call3.i219
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i221)
  %cmp7.i222 = icmp ugt i32 %add5.i221, 161
  br i1 %cmp7.i222, label %do.body10.i223, label %ip_vs_dbg_addr.exit225, !prof !71

do.body10.i223:                                   ; preds = %ip_vs_dbg_addr.exit214
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit225:                           ; preds = %ip_vs_dbg_addr.exit214
  call void @__sanitizer_cov_trace_pc() #8
  %conv61 = zext i16 %42 to i32
  %45 = ptrtoint ptr %u7 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %u7, align 4
  %conv71 = zext i16 %46 to i32
  %47 = ptrtoint ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx, align 2
  %conv74 = zext i8 %48 to i32
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %add.ptr.i, ptr noundef nonnull %ip_vs_dbg_buf42, i32 noundef %conv61, ptr noundef %arrayidx.i216, i32 noundef %conv71, i32 noundef %conv74) #9
  br label %if.end76

if.end76:                                         ; preds = %ip_vs_dbg_addr.exit225, %do.body41.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf42) #6
  br label %if.end117

do.body79:                                        ; preds = %if.then37
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf80) #6
  %49 = call ptr @memset(ptr %ip_vs_dbg_buf80, i32 255, i32 160)
  %call82 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call82)
  %cmp83 = icmp sgt i32 %call82, 6
  br i1 %cmp83, label %do.end88, label %do.body79.if.end114_crit_edge

do.body79.if.end114_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

do.end88:                                         ; preds = %do.body79
  %50 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %51)
  %cmp.i226 = icmp eq i16 %51, 10
  %.str.22..str.23.i229 = select i1 %cmp.i226, ptr @.str.22, ptr @.str.23
  %call3.i230 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf80, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i229, ptr noundef nonnull %tuple) #6
  %len.0.i231 = add i32 %call3.i230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i231)
  %cmp7.i233 = icmp ugt i32 %len.0.i231, 161
  br i1 %cmp7.i233, label %do.body10.i234, label %ip_vs_dbg_addr.exit236, !prof !71

do.body10.i234:                                   ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit236:                           ; preds = %do.end88
  %52 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %u, align 4
  %54 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %55)
  %cmp.i237 = icmp eq i16 %55, 10
  %arrayidx.i238 = getelementptr i8, ptr %ip_vs_dbg_buf80, i32 %len.0.i231
  %sub.i239 = sub nsw i32 159, %call3.i230
  %.str.22..str.23.i240 = select i1 %cmp.i237, ptr @.str.22, ptr @.str.23
  %call3.i241 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i238, i32 noundef %sub.i239, ptr noundef nonnull %.str.22..str.23.i240, ptr noundef %dst4) #6
  %len.0.i242 = add nsw i32 %call3.i230, 2
  %add5.i243 = add i32 %len.0.i242, %call3.i241
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i243)
  %cmp7.i244 = icmp ugt i32 %add5.i243, 161
  br i1 %cmp7.i244, label %do.body10.i245, label %ip_vs_dbg_addr.exit247, !prof !71

do.body10.i245:                                   ; preds = %ip_vs_dbg_addr.exit236
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit247:                           ; preds = %ip_vs_dbg_addr.exit236
  call void @__sanitizer_cov_trace_pc() #8
  %conv99 = zext i16 %53 to i32
  %56 = ptrtoint ptr %u7 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %u7, align 4
  %conv109 = zext i16 %57 to i32
  %58 = ptrtoint ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx, align 2
  %conv112 = zext i8 %59 to i32
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef %add.ptr.i, ptr noundef nonnull %ip_vs_dbg_buf80, i32 noundef %conv99, ptr noundef %arrayidx.i238, i32 noundef %conv109, i32 noundef %conv112) #9
  br label %if.end114

if.end114:                                        ; preds = %ip_vs_dbg_addr.exit247, %do.body79.if.end114_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf80) #6
  br label %if.end117

if.end117:                                        ; preds = %if.end114, %if.end76
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %if.end117.cleanup_crit_edge, label %land.lhs.true.i

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end117
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !74
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #6
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #6, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #6
  br label %cleanup

do.body119:                                       ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf120) #6
  %61 = call ptr @memset(ptr %ip_vs_dbg_buf120, i32 255, i32 160)
  %call122 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call122)
  %cmp123 = icmp sgt i32 %call122, 6
  br i1 %cmp123, label %do.end128, label %do.body119.if.end154_crit_edge

do.body119.if.end154_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

do.end128:                                        ; preds = %do.body119
  %62 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %63)
  %cmp.i248 = icmp eq i16 %63, 10
  %.str.22..str.23.i251 = select i1 %cmp.i248, ptr @.str.22, ptr @.str.23
  %call3.i252 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf120, i32 noundef 160, ptr noundef nonnull %.str.22..str.23.i251, ptr noundef nonnull %tuple) #6
  %len.0.i253 = add i32 %call3.i252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i253)
  %cmp7.i255 = icmp ugt i32 %len.0.i253, 161
  br i1 %cmp7.i255, label %do.body10.i256, label %ip_vs_dbg_addr.exit258, !prof !71

do.body10.i256:                                   ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit258:                           ; preds = %do.end128
  %64 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %u, align 4
  %66 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %67)
  %cmp.i259 = icmp eq i16 %67, 10
  %arrayidx.i260 = getelementptr i8, ptr %ip_vs_dbg_buf120, i32 %len.0.i253
  %sub.i261 = sub nsw i32 159, %call3.i252
  %.str.22..str.23.i262 = select i1 %cmp.i259, ptr @.str.22, ptr @.str.23
  %call3.i263 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i260, i32 noundef %sub.i261, ptr noundef nonnull %.str.22..str.23.i262, ptr noundef %dst4) #6
  %len.0.i264 = add nsw i32 %call3.i252, 2
  %add5.i265 = add i32 %len.0.i264, %call3.i263
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i265)
  %cmp7.i266 = icmp ugt i32 %add5.i265, 161
  br i1 %cmp7.i266, label %do.body10.i267, label %ip_vs_dbg_addr.exit269, !prof !71

do.body10.i267:                                   ; preds = %ip_vs_dbg_addr.exit258
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

ip_vs_dbg_addr.exit269:                           ; preds = %ip_vs_dbg_addr.exit258
  call void @__sanitizer_cov_trace_pc() #8
  %conv139 = zext i16 %65 to i32
  %68 = ptrtoint ptr %u7 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %u7, align 4
  %conv149 = zext i16 %69 to i32
  %70 = ptrtoint ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %.compoundliteral.sroa.2.0.tuple.sroa_idx, align 2
  %conv152 = zext i8 %71 to i32
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, ptr noundef nonnull %ip_vs_dbg_buf120, i32 noundef %conv139, ptr noundef %arrayidx.i260, i32 noundef %conv149, i32 noundef %conv152) #9
  br label %if.end154

if.end154:                                        ; preds = %ip_vs_dbg_addr.exit269, %do.body119.if.end154_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf120) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end154, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tuple) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_conntrack_confirm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_deliver_cached_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_out_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_conn_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 119, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ip_vs_update_conntrack._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ip_vs_update_conntrack._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 123, i32 2}
!8 = !{ptr @ip_vs_update_conntrack._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ip_vs_update_conntrack._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 128, i32 2}
!12 = !{ptr @ip_vs_update_conntrack._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ip_vs_update_conntrack._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 232, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ip_vs_nfct_expect_related._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @ip_vs_nfct_expect_related._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_ip_vs_nfct_expect_related, !20, !"__ksymtab_ip_vs_nfct_expect_related", i1 false, i1 false}
!20 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 237, i32 1}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 259, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ip_vs_conn_drop_conntrack._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ip_vs_conn_drop_conntrack._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 266, i32 4}
!28 = !{ptr @ip_vs_conn_drop_conntrack._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ip_vs_conn_drop_conntrack._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 270, i32 4}
!32 = !{ptr @ip_vs_conn_drop_conntrack._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ip_vs_conn_drop_conntrack._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 276, i32 3}
!36 = !{ptr @ip_vs_conn_drop_conntrack._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ip_vs_conn_drop_conntrack._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 164, i32 3}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ip_vs_nfct_expect_callback._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ip_vs_nfct_expect_callback._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 168, i32 3}
!49 = !{ptr @ip_vs_nfct_expect_callback._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ip_vs_nfct_expect_callback._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 180, i32 3}
!53 = !{ptr @ip_vs_nfct_expect_callback._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ip_vs_nfct_expect_callback._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ip_vs_nfct_expect_callback._entry.32, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 184, i32 3}
!57 = !{ptr @ip_vs_nfct_expect_callback._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/ipvs/ip_vs_nfct.c", i32 192, i32 2}
!60 = !{ptr @ip_vs_nfct_expect_callback._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ip_vs_nfct_expect_callback._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2158105680, i64 2158106164, i64 2158105717, i64 2158105773, i64 2158105807, i64 2158105831, i64 2158105872, i64 2158105893, i64 2158105921, i64 2158105955}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2148436648}
!75 = !{i64 2148351088, i64 2148351120, i64 2148351149, i64 2148351183, i64 2148351214, i64 2148351237}
!76 = !{i64 2149312762}
