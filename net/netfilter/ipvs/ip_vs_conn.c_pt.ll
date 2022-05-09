; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_conn.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_conn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ip_vs_conn_in_get_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_vs_conn_in_get_proto\09\09\09\09"
module asm "\09.long\09__crc_ip_vs_conn_in_get_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_vs_conn_in_get_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_vs_conn_in_get_proto\22\09\09\09\09\09"
module asm "__kstrtabns_ip_vs_conn_in_get_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_vs_conn_out_get_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_vs_conn_out_get_proto\09\09\09\09"
module asm "\09.long\09__crc_ip_vs_conn_out_get_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_vs_conn_out_get_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_vs_conn_out_get_proto\22\09\09\09\09\09"
module asm "__kstrtabns_ip_vs_conn_out_get_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ip_vs_aligned_lock = type { %struct.spinlock, [84 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_vs_conn_param = type { ptr, ptr, ptr, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%union.nf_inet_addr = type { [4 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
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
%struct.ip_vs_pe = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%struct.ip_vs_dest = type { %struct.list_head, %struct.hlist_node, i16, i16, %union.nf_inet_addr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i16, i16, i16, %struct.refcount_struct, %struct.ip_vs_stats, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, i16, i16, %union.nf_inet_addr, i32, %struct.list_head, i8 }
%struct.ip_vs_proto_data = type { ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.ip_vs_service = type { %struct.hlist_node, %struct.hlist_node, %struct.atomic_t, i16, i16, %union.nf_inet_addr, i16, i32, i32, i32, i32, ptr, %struct.list_head, i32, %struct.ip_vs_stats, ptr, %struct.spinlock, ptr, ptr, i32, %struct.callback_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ip_vs_iter_state = type { %struct.seq_net_private, ptr }
%struct.seq_net_private = type { ptr, ptr }

@__param_str_conn_tab_bits = internal constant [20 x i8] c"ip_vs.conn_tab_bits\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ip_vs_conn_tab_bits = internal global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_conn_tab_bits = internal constant %struct.kernel_param { ptr @__param_str_conn_tab_bits, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.134 { ptr @ip_vs_conn_tab_bits } }, section "__param", align 4
@__UNIQUE_ID_conn_tab_bitstype584 = internal constant [33 x i8] c"ip_vs.parmtype=conn_tab_bits:int\00", section ".modinfo", align 1
@__UNIQUE_ID_conn_tab_bits585 = internal constant [52 x i8] c"ip_vs.parm=conn_tab_bits:Set connections' hash size\00", section ".modinfo", align 1
@ip_vs_conn_no_cport_cnt = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ip_vs_conn_in_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017IPVS: lookup/in %s %s:%d->%s:%d %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_conn_in_get\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/ipvs/ip_vs_conn.c\00", [32 x i8] zeroinitializer }, align 32
@ip_vs_conn_in_get._entry_ptr = internal global ptr @ip_vs_conn_in_get._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hit\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"not hit\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_ip_vs_conn_in_get_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_vs_conn_in_get_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_vs_conn_in_get_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_vs_conn_in_get_proto to i32), ptr @__kstrtab_ip_vs_conn_in_get_proto, ptr @__kstrtabns_ip_vs_conn_in_get_proto }, section "___ksymtab_gpl+ip_vs_conn_in_get_proto", align 4
@ip_vs_ct_in_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ip_vs_conn_tab = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ip_vs_ct_in_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017IPVS: template lookup/in %s %s:%d->%s:%d %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_ct_in_get\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_ct_in_get._entry_ptr = internal global ptr @ip_vs_ct_in_get._entry, section ".printk_index", align 4
@ip_vs_conn_out_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_conn_out_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017IPVS: lookup/out %s %s:%d->%s:%d %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_conn_out_get\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_conn_out_get._entry_ptr = internal global ptr @ip_vs_conn_out_get._entry, section ".printk_index", align 4
@__kstrtab_ip_vs_conn_out_get_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_vs_conn_out_get_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_vs_conn_out_get_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_vs_conn_out_get_proto to i32), ptr @__kstrtab_ip_vs_conn_out_get_proto, ptr @__kstrtabns_ip_vs_conn_out_get_proto }, section "___ksymtab_gpl+ip_vs_conn_out_get_proto", align 4
@ip_vs_check_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\017IPVS: check_template: dest not available for protocol %s s:%s:%d v:%s:%d -> d:%s:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_vs_check_template\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_check_template._entry_ptr = internal global ptr @ip_vs_check_template._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_vs_conn_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ip_vs_conn_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013IPVS: %s(): no memory\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip_vs_conn_new\00", [17 x i8] zeroinitializer }, align 32
@ip_vs_conn_new._entry_ptr = internal global ptr @ip_vs_conn_new._entry, section ".printk_index", align 4
@ip_vs_conn_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&cp->timer)\00", [19 x i8] zeroinitializer }, align 32
@ip_vs_conn_new.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cp->lock\00", [22 x i8] zeroinitializer }, align 32
@ip_vs_conn_tab_size = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@ip_vs_conn_tab_mask = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@ip_vs_random_dropentry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_random_dropentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017IPVS: drop connection\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ip_vs_random_dropentry\00", [41 x i8] zeroinitializer }, align 32
@ip_vs_random_dropentry._entry_ptr = internal global ptr @ip_vs_random_dropentry._entry, section ".printk_index", align 4
@ip_vs_expire_nodest_conn_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_expire_nodest_conn_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017IPVS: del connection\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ip_vs_expire_nodest_conn_flush\00", [33 x i8] zeroinitializer }, align 32
@ip_vs_expire_nodest_conn_flush._entry_ptr = internal global ptr @ip_vs_expire_nodest_conn_flush._entry, section ".printk_index", align 4
@ip_vs_expire_nodest_conn_flush._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017IPVS: del controlling connection\0A\00", [60 x i8] zeroinitializer }, align 32
@ip_vs_expire_nodest_conn_flush._entry_ptr.23 = internal global ptr @ip_vs_expire_nodest_conn_flush._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip_vs_conn\00", [21 x i8] zeroinitializer }, align 32
@ip_vs_conn_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ip_vs_conn_seq_start, ptr @ip_vs_conn_seq_stop, ptr @ip_vs_conn_seq_next, ptr @ip_vs_conn_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_conn_sync\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_conn_sync_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ip_vs_conn_seq_start, ptr @ip_vs_conn_seq_stop, ptr @ip_vs_conn_seq_next, ptr @ip_vs_conn_sync_seq_show }, [16 x i8] zeroinitializer }, align 32
@ip_vs_conn_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016IPVS: conn_tab_bits not in [8, 20]. Using default value\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_conn_init\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_conn_init._entry_ptr = internal global ptr @ip_vs_conn_init._entry, section ".printk_index", align 4
@ip_vs_conn_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016IPVS: Connection hash table configured (size=%d, memory=%ldKbytes)\0A\00", [58 x i8] zeroinitializer }, align 32
@ip_vs_conn_init._entry_ptr.30 = internal global ptr @ip_vs_conn_init._entry.28, section ".printk_index", align 4
@ip_vs_conn_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 1500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017IPVS: Each connection entry needs %zd bytes at least\0A\00", [40 x i8] zeroinitializer }, align 32
@ip_vs_conn_init._entry_ptr.33 = internal global ptr @ip_vs_conn_init._entry.31, section ".printk_index", align 4
@ip_vs_conn_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__ip_vs_conntbl_lock_array = internal global [32 x %struct.ip_vs_aligned_lock] zeroinitializer, section ".data..cacheline_aligned", align 128
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&__ip_vs_conntbl_lock_array[idx].l\00", [61 x i8] zeroinitializer }, align 32
@ip_vs_conn_rnd = internal global i32 0, section ".data..read_mostly", align 4
@__ip_vs_conn_in_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ip_vs_conn_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013IPVS: %s(): request for already hashed, called from %pS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_conn_hash\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_conn_hash._entry_ptr = internal global ptr @ip_vs_conn_hash._entry, section ".printk_index", align 4
@ip_vs_bind_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\017IPVS: Bind-dest %s c:%s:%d v:%s:%d d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d dest->refcnt:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_vs_bind_dest\00", [16 x i8] zeroinitializer }, align 32
@ip_vs_bind_dest._entry_ptr = internal global ptr @ip_vs_bind_dest._entry, section ".printk_index", align 4
@ip_vs_conn_expire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017IPVS: drop controlling connection\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_conn_expire\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_conn_expire._entry_ptr = internal global ptr @ip_vs_conn_expire._entry, section ".printk_index", align 4
@ip_vs_conn_expire._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017IPVS: delayed: conn->refcnt=%d conn->n_control=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@ip_vs_conn_expire._entry_ptr.48 = internal global ptr @ip_vs_conn_expire._entry.46, section ".printk_index", align 4
@ip_vs_control_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.51, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013IPVS: request control DEL for uncontrolled: %s:%d to %s:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_control_del\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/net/ip_vs.h\00", [44 x i8] zeroinitializer }, align 32
@ip_vs_control_del._entry_ptr = internal global ptr @ip_vs_control_del._entry, section ".printk_index", align 4
@ip_vs_control_del._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.51, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017IPVS: DELeting control for: cp.dst=%s:%d ctl_cp.dst=%s:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@ip_vs_control_del._entry_ptr.54 = internal global ptr @ip_vs_control_del._entry.52, section ".printk_index", align 4
@ip_vs_control_del._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.51, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013IPVS: BUG control DEL with n=0 : %s:%d to %s:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_control_del._entry_ptr.57 = internal global ptr @ip_vs_control_del._entry.55, section ".printk_index", align 4
@ip_vs_unbind_dest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\017IPVS: Unbind-dest %s c:%s:%d v:%s:%d d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d dest->refcnt:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_vs_unbind_dest\00", [46 x i8] zeroinitializer }, align 32
@ip_vs_unbind_dest._entry_ptr = internal global ptr @ip_vs_unbind_dest._entry, section ".printk_index", align 4
@ip_vs_conn_ops_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@todrop_entry.todrop_rate = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\01\02\03\04\05\06\07\08", [23 x i8] zeroinitializer }, align 32
@todrop_entry.todrop_counter = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@ip_vs_conn_array.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_conn_seq_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_conn_seq_next.__warned.62 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Pro FromIP   FPrt ToIP     TPrt DestIP   DPrt State       Expires PEName PEData\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI6\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08X\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%-3s %pI6 %04X %pI6 %04X %s %04X %-11s %7u%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%-3s %08X %04X %08X %04X %s %04X %-11s %7u%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Pro FromIP   FPrt ToIP     TPrt DestIP   DPrt State       Origin Expires\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%-3s %pI6 %04X %pI6 %04X %s %04X %-11s %-6s %7u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%-3s %08X %04X %08X %04X %s %04X %-11s %-6s %7u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SYNC\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOCAL\00", [26 x i8] zeroinitializer }, align 32
@ip_vs_conn_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ip_vs_conn_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.73, ptr @.str.2, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_vs_conn_flush\00", [47 x i8] zeroinitializer }, align 32
@ip_vs_conn_flush._entry_ptr = internal global ptr @ip_vs_conn_flush._entry, section ".printk_index", align 4
@ip_vs_conn_flush._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.73, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ip_vs_conn_flush._entry_ptr.75 = internal global ptr @ip_vs_conn_flush._entry.74, section ".printk_index", align 4
@switch.table.ip_vs_conn_expire = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 77, i32 76, i32 84, i32 82, i32 66], [44 x i8] zeroinitializer }, align 32
@switch.table.ip_vs_bind_dest = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 77, i32 76, i32 84, i32 82, i32 66], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 132]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 3, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 8]
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"ip_vs_conn_tab_bits\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 47, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [24 x i8] c"ip_vs_conn_no_cport_cnt\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 64, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 304, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 358, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 388, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 442, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 779, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 952, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 957, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 982, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1359, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1426, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1429, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1450, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [19 x i8] c"ip_vs_conn_seq_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1181, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1452, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"ip_vs_conn_sync_seq_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1247, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1472, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1495, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1499, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1506, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 196, i32 46 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 200, i32 46 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 695, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 723, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 183, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 614, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 874, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 906, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1271, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1281, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 1290, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 711, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1296, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"todrop_rate\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1268, i32 20 }
@___asan_gen_.307 = private unnamed_addr constant [15 x i8] c"todrop_counter\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1269, i32 14 }
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 2089, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1124, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1146, i32 33 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1149, i32 33 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1154, i32 20 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1167, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1202, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1220, i32 20 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1233, i32 5 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1191, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1193, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1386, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.350 = private constant [35 x i8] c"../net/netfilter/ipvs/ip_vs_conn.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1389, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant [31 x i8] c"switch.table.ip_vs_conn_expire\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [29 x i8] c"switch.table.ip_vs_bind_dest\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_conn_tab_bits585, ptr @__UNIQUE_ID_conn_tab_bitstype584, ptr @__ksymtab_ip_vs_conn_in_get_proto, ptr @__ksymtab_ip_vs_conn_out_get_proto, ptr @__param_conn_tab_bits, ptr @ip_vs_bind_dest._entry, ptr @ip_vs_bind_dest._entry_ptr, ptr @ip_vs_check_template._entry, ptr @ip_vs_check_template._entry_ptr, ptr @ip_vs_conn_expire._entry, ptr @ip_vs_conn_expire._entry.46, ptr @ip_vs_conn_expire._entry_ptr, ptr @ip_vs_conn_expire._entry_ptr.48, ptr @ip_vs_conn_flush._entry, ptr @ip_vs_conn_flush._entry.74, ptr @ip_vs_conn_flush._entry_ptr, ptr @ip_vs_conn_flush._entry_ptr.75, ptr @ip_vs_conn_hash._entry, ptr @ip_vs_conn_hash._entry_ptr, ptr @ip_vs_conn_in_get._entry, ptr @ip_vs_conn_in_get._entry_ptr, ptr @ip_vs_conn_init._entry, ptr @ip_vs_conn_init._entry.28, ptr @ip_vs_conn_init._entry.31, ptr @ip_vs_conn_init._entry_ptr, ptr @ip_vs_conn_init._entry_ptr.30, ptr @ip_vs_conn_init._entry_ptr.33, ptr @ip_vs_conn_new._entry, ptr @ip_vs_conn_new._entry_ptr, ptr @ip_vs_conn_out_get._entry, ptr @ip_vs_conn_out_get._entry_ptr, ptr @ip_vs_control_del._entry, ptr @ip_vs_control_del._entry.52, ptr @ip_vs_control_del._entry.55, ptr @ip_vs_control_del._entry_ptr, ptr @ip_vs_control_del._entry_ptr.54, ptr @ip_vs_control_del._entry_ptr.57, ptr @ip_vs_ct_in_get._entry, ptr @ip_vs_ct_in_get._entry_ptr, ptr @ip_vs_expire_nodest_conn_flush._entry, ptr @ip_vs_expire_nodest_conn_flush._entry.21, ptr @ip_vs_expire_nodest_conn_flush._entry_ptr, ptr @ip_vs_expire_nodest_conn_flush._entry_ptr.23, ptr @ip_vs_random_dropentry._entry, ptr @ip_vs_random_dropentry._entry_ptr, ptr @ip_vs_unbind_dest._entry, ptr @ip_vs_unbind_dest._entry_ptr, ptr @ip_vs_conn_tab_bits, ptr @ip_vs_conn_no_cport_cnt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ip_vs_conn_new.__key, ptr @.str.14, ptr @ip_vs_conn_new.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @ip_vs_conn_seq_ops, ptr @.str.25, ptr @ip_vs_conn_sync_seq_ops, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @ip_vs_conn_init.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @todrop_entry.todrop_rate, ptr @todrop_entry.todrop_counter, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @switch.table.ip_vs_conn_expire, ptr @switch.table.ip_vs_bind_dest], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_tab_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_no_cport_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_in_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ct_in_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_out_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_check_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_new.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_random_dropentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_expire_nodest_conn_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_expire_nodest_conn_flush._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_sync_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_bind_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_expire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_expire._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_del._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_control_del._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_unbind_dest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @todrop_entry.todrop_rate to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @todrop_entry.todrop_counter to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_conn_flush._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ip_vs_conn_expire to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ip_vs_bind_dest to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_conn_in_get(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %cport_zero_p = alloca %struct.ip_vs_conn_param, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__ip_vs_conn_in_get(ptr noundef %p)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ip_vs_conn_no_cport_cnt, i32 noundef 4) #13
  %0 = load volatile i32, ptr @ip_vs_conn_no_cport_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cport_zero_p) #13
  %1 = call ptr @memcpy(ptr %cport_zero_p, ptr %p, i32 32)
  %cport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %cport_zero_p, i32 0, i32 3
  %2 = ptrtoint ptr %cport to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %cport, align 4
  %call3 = call fastcc ptr @__ip_vs_conn_in_get(ptr noundef nonnull %cport_zero_p)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cport_zero_p) #13
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %cp.0 = phi ptr [ %call, %entry.do.body_crit_edge ], [ %call3, %if.then ], [ null, %land.lhs.true.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %3 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call4 = call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call4)
  %cmp = icmp sgt i32 %call4, 8
  br i1 %cmp, label %do.end, label %do.body.if.end19_crit_edge

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end:                                           ; preds = %do.body
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 4
  %conv = zext i16 %5 to i32
  %call7 = call ptr @ip_vs_proto_name(i32 noundef %conv) #13
  %af = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %8 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %7)
  %cmp.i = icmp eq i16 %7, 10
  %.str.35..str.36.i = select i1 %cmp.i, ptr @.str.35, ptr @.str.36
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i, ptr noundef %9) #13
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !212

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %cport10 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %10 = ptrtoint ptr %cport10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cport10, align 4
  %12 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %14 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cmp.i32 = icmp eq i16 %13, 10
  %arrayidx.i33 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i34 = sub nsw i32 159, %call3.i
  %.str.35..str.36.i35 = select i1 %cmp.i32, ptr @.str.35, ptr @.str.36
  %call3.i36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i33, i32 noundef %sub.i34, ptr noundef nonnull %.str.35..str.36.i35, ptr noundef %15) #13
  %len.0.i37 = add nsw i32 %call3.i, 2
  %add5.i38 = add i32 %len.0.i37, %call3.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i38)
  %cmp7.i39 = icmp ugt i32 %add5.i38, 161
  br i1 %cmp7.i39, label %do.body10.i40, label %ip_vs_dbg_addr.exit42, !prof !212

do.body10.i40:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit42:                            ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv11 = zext i16 %11 to i32
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %16 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport, align 2
  %conv16 = zext i16 %17 to i32
  %tobool17.not = icmp eq ptr %cp.0, null
  %cond = select i1 %tobool17.not, ptr @.str.4, ptr @.str.3
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call7, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv11, ptr noundef %arrayidx.i33, i32 noundef %conv16, ptr noundef nonnull %cond) #16
  br label %if.end19

if.end19:                                         ; preds = %ip_vs_dbg_addr.exit42, %do.body.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  ret ptr %cp.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ip_vs_conn_in_get(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef %p, i1 noundef zeroext false)
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b103 = load i1, ptr @__ip_vs_conn_in_get.__warned, align 1
  br i1 %.b103, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__ip_vs_conn_in_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 272, ptr noundef nonnull @.str.5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %call
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cp.0143 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not144 = icmp eq ptr %cp.0143, null
  br i1 %tobool13.not144, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %cport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %af25 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %caddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %vaddr139 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cp.0145 = phi ptr [ %cp.0143, %for.body.lr.ph ], [ %cp.0, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cport, align 4
  %cport14 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 1
  %8 = ptrtoint ptr %cport14 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cport14, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp = icmp eq i16 %7, %9
  br i1 %cmp, label %land.lhs.true17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true17:                                  ; preds = %for.body
  %10 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport, align 2
  %vport19 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 3
  %12 = ptrtoint ptr %vport19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vport19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp21 = icmp eq i16 %11, %13
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 4
  %14 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %af, align 2
  %16 = ptrtoint ptr %af25 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %af25, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp27 = icmp eq i16 %15, %17
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %18 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caddr, align 4
  %caddr32 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp.i = icmp eq i16 %15, 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %caddr32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caddr32, align 4
  br i1 %cmp.i, label %ip_vs_addr_equal.exit, label %ip_vs_addr_equal.exit.thread

ip_vs_addr_equal.exit:                            ; preds = %land.lhs.true29
  %xor.i.i = xor i32 %23, %21
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %27, %25
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %31, %29
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %19, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 5, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %35, %33
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i.not = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i.not, label %if.then.i121, label %ip_vs_addr_equal.exit.for.inc_crit_edge

ip_vs_addr_equal.exit.for.inc_crit_edge:          ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ip_vs_addr_equal.exit.thread:                     ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp1.i.not = icmp eq i32 %21, %23
  br i1 %cmp1.i.not, label %ip_vs_addr_equal.exit126, label %ip_vs_addr_equal.exit.thread.for.inc_crit_edge

ip_vs_addr_equal.exit.thread.for.inc_crit_edge:   ; preds = %ip_vs_addr_equal.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i121:                                     ; preds = %ip_vs_addr_equal.exit
  %36 = ptrtoint ptr %vaddr139 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vaddr139, align 4
  %vaddr38 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 6
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %vaddr38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vaddr38, align 4
  %xor.i.i107 = xor i32 %41, %39
  %arrayidx4.i.i108 = getelementptr [4 x i32], ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx4.i.i108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.i.i108, align 4
  %arrayidx6.i.i109 = getelementptr %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 6, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx6.i.i109 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx6.i.i109, align 4
  %xor7.i.i110 = xor i32 %45, %43
  %or.i.i111 = or i32 %xor7.i.i110, %xor.i.i107
  %arrayidx9.i.i112 = getelementptr [4 x i32], ptr %37, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx9.i.i112 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx9.i.i112, align 4
  %arrayidx11.i.i113 = getelementptr %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 6, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx11.i.i113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx11.i.i113, align 4
  %xor12.i.i114 = xor i32 %49, %47
  %or13.i.i115 = or i32 %or.i.i111, %xor12.i.i114
  %arrayidx15.i.i116 = getelementptr [4 x i32], ptr %37, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx15.i.i116 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx15.i.i116, align 4
  %arrayidx17.i.i117 = getelementptr %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 6, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx17.i.i117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx17.i.i117, align 4
  %xor18.i.i118 = xor i32 %53, %51
  %or19.i.i119 = or i32 %or13.i.i115, %xor18.i.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i119)
  %cmp.i.i120 = icmp eq i32 %or19.i.i119, 0
  br i1 %cmp.i.i120, label %if.then.i121.land.lhs.true41_crit_edge, label %if.then.i121.for.inc_crit_edge

if.then.i121.for.inc_crit_edge:                   ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i121.land.lhs.true41_crit_edge:           ; preds = %if.then.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true41

ip_vs_addr_equal.exit126:                         ; preds = %ip_vs_addr_equal.exit.thread
  %54 = ptrtoint ptr %vaddr139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vaddr139, align 4
  %vaddr38140 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 6
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = ptrtoint ptr %vaddr38140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vaddr38140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp1.i122 = icmp eq i32 %57, %59
  br i1 %cmp1.i122, label %ip_vs_addr_equal.exit126.land.lhs.true41_crit_edge, label %ip_vs_addr_equal.exit126.for.inc_crit_edge

ip_vs_addr_equal.exit126.for.inc_crit_edge:       ; preds = %ip_vs_addr_equal.exit126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ip_vs_addr_equal.exit126.land.lhs.true41_crit_edge: ; preds = %ip_vs_addr_equal.exit126
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true41

land.lhs.true41:                                  ; preds = %ip_vs_addr_equal.exit126.land.lhs.true41_crit_edge, %if.then.i121.land.lhs.true41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool43.not = icmp eq i16 %7, 0
  %lnot.ext = zext i1 %tobool43.not to i32
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 8
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %flags, align 4
  %and = lshr i32 %61, 11
  %and.lobit = and i32 %and, 1
  %62 = xor i32 %and.lobit, %lnot.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %tobool47.not = icmp eq i32 %62, 1
  br i1 %tobool47.not, label %land.lhs.true41.for.inc_crit_edge, label %land.lhs.true48

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true48:                                  ; preds = %land.lhs.true41
  %63 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %protocol, align 4
  %protocol50 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 9
  %65 = ptrtoint ptr %protocol50 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %protocol50, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %66)
  %cmp52 = icmp eq i16 %64, %66
  br i1 %cmp52, label %land.lhs.true54, label %land.lhs.true48.for.inc_crit_edge

land.lhs.true48.for.inc_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true54:                                  ; preds = %land.lhs.true48
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 11
  %67 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ipvs, align 4
  %69 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %p, align 4
  %cmp56 = icmp eq ptr %68, %70
  br i1 %cmp56, label %if.then58, label %land.lhs.true54.for.inc_crit_edge

land.lhs.true54.for.inc_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then58:                                        ; preds = %land.lhs.true54
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0145, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %71 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then58
  %73 = phi i32 [ %72, %if.then58 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %74 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %73, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %75 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %77 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %76, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #13, !srcloc !215
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %76
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %78 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %79, 1
  %80 = or i32 %add5.i.i.i.i, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %.not.i.i.i.i = icmp sgt i32 %80, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ip_vs_conn_get.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #13
  %81 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %__ip_vs_conn_get.exit

__ip_vs_conn_get.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge
  %82 = phi i32 [ %79, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool12.i.i.i.i.not = icmp eq i32 %82, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not, label %__ip_vs_conn_get.exit.for.inc_crit_edge, label %if.end61

__ip_vs_conn_get.exit.for.inc_crit_edge:          ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end61:                                         ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @rcu_read_unlock()
  br label %cleanup

for.inc:                                          ; preds = %__ip_vs_conn_get.exit.for.inc_crit_edge, %land.lhs.true54.for.inc_crit_edge, %land.lhs.true48.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %ip_vs_addr_equal.exit126.for.inc_crit_edge, %if.then.i121.for.inc_crit_edge, %ip_vs_addr_equal.exit.thread.for.inc_crit_edge, %ip_vs_addr_equal.exit.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %83 = ptrtoint ptr %cp.0145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %cp.0 = load volatile ptr, ptr %cp.0145, align 4
  %tobool13.not = icmp eq ptr %cp.0, null
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i127 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i127, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i130

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i130:                               ; preds = %for.end
  %call1.i128 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool.not.i129 = icmp eq i32 %call1.i128, 0
  br i1 %tobool.not.i129, label %land.lhs.true.i130.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i132

land.lhs.true.i130.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i132:                              ; preds = %land.lhs.true.i130
  %.b4.i131 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i131, label %land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge, label %if.then.i133

land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i133:                                     ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i133, %land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i130.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %84 = call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i134 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i134 to ptr
  %preempt_count.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i135, align 4
  %sub.i.i.i = add i32 %87, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i135, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end61
  %cp.0142 = phi ptr [ null, %rcu_read_unlock.exit ], [ %cp.0145, %if.end61 ]
  ret ptr %cp.0142
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_conn_in_get_proto(ptr noundef %ipvs, i32 noundef %af, ptr noundef %skb, ptr noundef %iph) #0 align 64 {
entry:
  %_ports.i = alloca [2 x i16], align 2
  %p = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #13
  %0 = call ptr @memset(ptr %p, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #13
  %1 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %_ports.i, align 2, !annotation !218
  %2 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !218
  %len.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i.i, align 8
  %10 = add i32 %5, %9
  %sub.i1.i.i.i = sub i32 %7, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %frag_safe_skb_hp.exit.i, label %if.end.i.i.i.i, !prof !216

if.end.i.i.i.i:                                   ; preds = %entry
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_fill_param_proto.exit.thread

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %5, ptr noundef nonnull %_ports.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

lor.lhs.false.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_fill_param_proto.exit.thread

frag_safe_skb_hp.exit.i:                          ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 %5
  %cmp.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %cmp.i, label %frag_safe_skb_hp.exit.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, label %frag_safe_skb_hp.exit.i.if.end.i_crit_edge

frag_safe_skb_hp.exit.i.if.end.i_crit_edge:       ; preds = %frag_safe_skb_hp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

frag_safe_skb_hp.exit.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge: ; preds = %frag_safe_skb_hp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_fill_param_proto.exit.thread

if.end.i:                                         ; preds = %frag_safe_skb_hp.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i_crit_edge
  %retval.0.i.i.i42.i = phi ptr [ %add.ptr.i.i.i.i, %frag_safe_skb_hp.exit.i.if.end.i_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i.i.i.if.end.i_crit_edge ]
  %13 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iph, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %protocol.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 2
  br i1 %tobool.i.not.i, label %if.then4.i, label %if.else.i, !prof !216

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %saddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %daddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx5.i = getelementptr i16, ptr %retval.0.i.i.i42.i, i32 1
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %daddr8.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx9.i = getelementptr i16, ptr %retval.0.i.i.i42.i, i32 1
  %saddr10.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %if.end

ip_vs_conn_fill_param_proto.exit.thread:          ; preds = %frag_safe_skb_hp.exit.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, %lor.lhs.false.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, %if.end.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %if.then4.i
  %arrayidx5.sink.i = phi ptr [ %arrayidx5.i, %if.then4.i ], [ %retval.0.i.i.i42.i, %if.else.i ]
  %saddr.sink.i = phi ptr [ %saddr.i, %if.then4.i ], [ %daddr8.i, %if.else.i ]
  %.sink45.in.i = phi ptr [ %retval.0.i.i.i42.i, %if.then4.i ], [ %arrayidx9.i, %if.else.i ]
  %daddr.sink.i = phi ptr [ %daddr.i, %if.then4.i ], [ %saddr10.i, %if.else.i ]
  %17 = ptrtoint ptr %.sink45.in.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %.sink45.i = load i16, ptr %.sink45.in.i, align 2
  %18 = ptrtoint ptr %arrayidx5.sink.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.sink.i, align 2
  %20 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ipvs, ptr %p, align 4
  %conv.i.i = trunc i32 %af to i16
  %af2.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %af2.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %af2.i.i, align 2
  %protocol4.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %22 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %16, ptr %protocol4.i.i, align 4
  %caddr5.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %23 = ptrtoint ptr %caddr5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %saddr.sink.i, ptr %caddr5.i.i, align 4
  %cport6.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %24 = ptrtoint ptr %cport6.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink45.i, ptr %cport6.i.i, align 4
  %vaddr7.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %25 = ptrtoint ptr %vaddr7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %daddr.sink.i, ptr %vaddr7.i.i, align 4
  %vport8.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %26 = ptrtoint ptr %vport8.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %19, ptr %vport8.i.i, align 2
  %pe.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %27 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pe.i.i, align 4
  %pe_data.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %28 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pe_data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #13
  %call1 = call ptr @ip_vs_conn_in_get(ptr noundef nonnull %p)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip_vs_conn_fill_param_proto.exit.thread
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %ip_vs_conn_fill_param_proto.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_ct_in_get(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef %p, i1 noundef zeroext false)
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b178 = load i1, ptr @ip_vs_ct_in_get.__warned, align 1
  br i1 %.b178, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_ct_in_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 358, ptr noundef nonnull @.str.5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %call
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cp.0230 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not231 = icmp eq ptr %cp.0230, null
  br i1 %tobool13.not231, label %do.end.out_crit_edge, label %for.body.lr.ph

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %do.end
  %pe_data = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %pe = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %af35 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %caddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %vaddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %cport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cp.0232 = phi ptr [ %cp.0230, %for.body.lr.ph ], [ %cp.0, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pe_data, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %for.body.if.end34_crit_edge, label %land.rhs

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

land.rhs:                                         ; preds = %for.body
  %8 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pe, align 4
  %ct_match = getelementptr inbounds %struct.ip_vs_pe, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ct_match to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ct_match, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %land.rhs.if.end34_crit_edge, label %if.then18, !prof !216

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then18:                                        ; preds = %land.rhs
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 11
  %12 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipvs, align 4
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 4
  %cmp.not = icmp eq ptr %13, %15
  br i1 %cmp.not, label %if.end21, label %if.then18.for.inc_crit_edge

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end21:                                         ; preds = %if.then18
  %pe23 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 29
  %16 = ptrtoint ptr %pe23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pe23, align 4
  %cmp24 = icmp eq ptr %9, %17
  br i1 %cmp24, label %land.lhs.true25, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true25:                                  ; preds = %if.end21
  %call28 = call zeroext i1 %11(ptr noundef %p, ptr noundef nonnull %cp.0232) #13
  br i1 %call28, label %if.then29, label %land.lhs.true25.for.inc_crit_edge

land.lhs.true25.for.inc_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then29:                                        ; preds = %land.lhs.true25
  %call30 = call fastcc zeroext i1 @__ip_vs_conn_get(ptr noundef nonnull %cp.0232)
  br i1 %call30, label %if.then29.out_crit_edge, label %if.then29.for.inc_crit_edge

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end34:                                         ; preds = %land.rhs.if.end34_crit_edge, %for.body.if.end34_crit_edge
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 4
  %18 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %af, align 2
  %20 = ptrtoint ptr %af35 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %af35, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp37 = icmp eq i16 %19, %21
  br i1 %cmp37, label %land.lhs.true39, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true39:                                  ; preds = %if.end34
  %22 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caddr, align 4
  %caddr42 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp.i = icmp eq i16 %19, 10
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = ptrtoint ptr %caddr42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caddr42, align 4
  br i1 %cmp.i, label %if.then.i180, label %ip_vs_addr_equal.exit

if.then.i180:                                     ; preds = %land.lhs.true39
  %xor.i.i = xor i32 %27, %25
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %31, %29
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 5, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %35, %33
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %23, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 5, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %39, %37
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true45, label %if.then.i180.for.inc_crit_edge

if.then.i180.for.inc_crit_edge:                   ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ip_vs_addr_equal.exit:                            ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp1.i = icmp eq i32 %25, %27
  br i1 %cmp1.i, label %land.lhs.true45.thread, label %ip_vs_addr_equal.exit.for.inc_crit_edge

ip_vs_addr_equal.exit.for.inc_crit_edge:          ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true45:                                  ; preds = %if.then.i180
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp47 = icmp eq i16 %41, 0
  br i1 %cmp47, label %land.lhs.true45.cond.end53.thread_crit_edge, label %if.then.i196

land.lhs.true45.cond.end53.thread_crit_edge:      ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53.thread

land.lhs.true45.thread:                           ; preds = %ip_vs_addr_equal.exit
  %42 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp47235 = icmp eq i16 %43, 0
  br i1 %cmp47235, label %land.lhs.true45.thread.cond.end53.thread_crit_edge, label %land.lhs.true45.thread.ip_vs_addr_equal.exit201_crit_edge

land.lhs.true45.thread.ip_vs_addr_equal.exit201_crit_edge: ; preds = %land.lhs.true45.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_addr_equal.exit201

land.lhs.true45.thread.cond.end53.thread_crit_edge: ; preds = %land.lhs.true45.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end53.thread

cond.end53.thread:                                ; preds = %land.lhs.true45.thread.cond.end53.thread_crit_edge, %land.lhs.true45.cond.end53.thread_crit_edge
  br label %ip_vs_addr_equal.exit201

if.then.i196:                                     ; preds = %land.lhs.true45
  %44 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vaddr, align 4
  %vaddr55 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 6
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = ptrtoint ptr %vaddr55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vaddr55, align 4
  %xor.i.i182 = xor i32 %49, %47
  %arrayidx4.i.i183 = getelementptr [4 x i32], ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx4.i.i183 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.i.i183, align 4
  %arrayidx6.i.i184 = getelementptr %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 6, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx6.i.i184 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx6.i.i184, align 4
  %xor7.i.i185 = xor i32 %53, %51
  %or.i.i186 = or i32 %xor7.i.i185, %xor.i.i182
  %arrayidx9.i.i187 = getelementptr [4 x i32], ptr %45, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx9.i.i187 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx9.i.i187, align 4
  %arrayidx11.i.i188 = getelementptr %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 6, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx11.i.i188 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx11.i.i188, align 4
  %xor12.i.i189 = xor i32 %57, %55
  %or13.i.i190 = or i32 %or.i.i186, %xor12.i.i189
  %arrayidx15.i.i191 = getelementptr [4 x i32], ptr %45, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx15.i.i191 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15.i.i191, align 4
  %arrayidx17.i.i192 = getelementptr %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 6, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx17.i.i192 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx17.i.i192, align 4
  %xor18.i.i193 = xor i32 %61, %59
  %or19.i.i194 = or i32 %or13.i.i190, %xor18.i.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i194)
  %cmp.i.i195 = icmp eq i32 %or19.i.i194, 0
  br i1 %cmp.i.i195, label %if.then.i196.land.lhs.true58_crit_edge, label %if.then.i196.for.inc_crit_edge

if.then.i196.for.inc_crit_edge:                   ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i196.land.lhs.true58_crit_edge:           ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true58

ip_vs_addr_equal.exit201:                         ; preds = %cond.end53.thread, %land.lhs.true45.thread.ip_vs_addr_equal.exit201_crit_edge
  %62 = phi i16 [ 0, %cond.end53.thread ], [ %43, %land.lhs.true45.thread.ip_vs_addr_equal.exit201_crit_edge ]
  %63 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vaddr, align 4
  %vaddr55228 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 6
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = ptrtoint ptr %vaddr55228 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vaddr55228, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp1.i197 = icmp eq i32 %66, %68
  br i1 %cmp1.i197, label %ip_vs_addr_equal.exit201.land.lhs.true58_crit_edge, label %ip_vs_addr_equal.exit201.for.inc_crit_edge

ip_vs_addr_equal.exit201.for.inc_crit_edge:       ; preds = %ip_vs_addr_equal.exit201
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ip_vs_addr_equal.exit201.land.lhs.true58_crit_edge: ; preds = %ip_vs_addr_equal.exit201
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true58

land.lhs.true58:                                  ; preds = %ip_vs_addr_equal.exit201.land.lhs.true58_crit_edge, %if.then.i196.land.lhs.true58_crit_edge
  %69 = phi i16 [ %41, %if.then.i196.land.lhs.true58_crit_edge ], [ %62, %ip_vs_addr_equal.exit201.land.lhs.true58_crit_edge ]
  %70 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vport, align 2
  %vport60 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 3
  %72 = ptrtoint ptr %vport60 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vport60, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp62 = icmp eq i16 %71, %73
  br i1 %cmp62, label %land.lhs.true64, label %land.lhs.true58.for.inc_crit_edge

land.lhs.true58.for.inc_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %74 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cport, align 4
  %cport66 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 1
  %76 = ptrtoint ptr %cport66 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %cport66, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp68 = icmp eq i16 %75, %77
  br i1 %cmp68, label %land.lhs.true70, label %land.lhs.true64.for.inc_crit_edge

land.lhs.true64.for.inc_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true70:                                  ; preds = %land.lhs.true64
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 8
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flags, align 4
  %and = and i32 %79, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool71.not = icmp eq i32 %and, 0
  br i1 %tobool71.not, label %land.lhs.true70.for.inc_crit_edge, label %land.lhs.true72

land.lhs.true70.for.inc_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true72:                                  ; preds = %land.lhs.true70
  %protocol75 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 9
  %80 = ptrtoint ptr %protocol75 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %protocol75, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %81)
  %cmp77 = icmp eq i16 %69, %81
  br i1 %cmp77, label %land.lhs.true79, label %land.lhs.true72.for.inc_crit_edge

land.lhs.true72.for.inc_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true79:                                  ; preds = %land.lhs.true72
  %ipvs80 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 11
  %82 = ptrtoint ptr %ipvs80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipvs80, align 4
  %84 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %p, align 4
  %cmp82 = icmp eq ptr %83, %85
  br i1 %cmp82, label %if.then84, label %land.lhs.true79.for.inc_crit_edge

land.lhs.true79.for.inc_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then84:                                        ; preds = %land.lhs.true79
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0232, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %86 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then84
  %88 = phi i32 [ %87, %if.then84 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %89 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i.i.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %88, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %90 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %92 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %91, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #13, !srcloc !215
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %92, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %92, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %91
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %93 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %94, 1
  %95 = or i32 %add5.i.i.i.i, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %.not.i.i.i.i = icmp sgt i32 %95, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ip_vs_conn_get.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #13
  %96 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %__ip_vs_conn_get.exit

__ip_vs_conn_get.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge
  %97 = phi i32 [ %94, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool12.i.i.i.i.not = icmp eq i32 %97, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not, label %__ip_vs_conn_get.exit.for.inc_crit_edge, label %__ip_vs_conn_get.exit.out_crit_edge

__ip_vs_conn_get.exit.out_crit_edge:              ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

__ip_vs_conn_get.exit.for.inc_crit_edge:          ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %__ip_vs_conn_get.exit.for.inc_crit_edge, %land.lhs.true79.for.inc_crit_edge, %land.lhs.true72.for.inc_crit_edge, %land.lhs.true70.for.inc_crit_edge, %land.lhs.true64.for.inc_crit_edge, %land.lhs.true58.for.inc_crit_edge, %ip_vs_addr_equal.exit201.for.inc_crit_edge, %if.then.i196.for.inc_crit_edge, %ip_vs_addr_equal.exit.for.inc_crit_edge, %if.then.i180.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %if.then29.for.inc_crit_edge, %land.lhs.true25.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %if.then18.for.inc_crit_edge
  %98 = ptrtoint ptr %cp.0232 to i32
  call void @__asan_load4_noabort(i32 %98)
  %cp.0 = load volatile ptr, ptr %cp.0232, align 4
  %tobool13.not = icmp eq ptr %cp.0, null
  br i1 %tobool13.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %__ip_vs_conn_get.exit.out_crit_edge, %if.then29.out_crit_edge, %do.end.out_crit_edge
  %cp.0.lcssa = phi ptr [ null, %do.end.out_crit_edge ], [ null, %for.inc.out_crit_edge ], [ %cp.0232, %__ip_vs_conn_get.exit.out_crit_edge ], [ %cp.0232, %if.then29.out_crit_edge ]
  %call.i202 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i202, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i205

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i205:                               ; preds = %out
  %call1.i203 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i203)
  %tobool.not.i204 = icmp eq i32 %call1.i203, 0
  br i1 %tobool.not.i204, label %land.lhs.true.i205.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i207

land.lhs.true.i205.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i205
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i207:                              ; preds = %land.lhs.true.i205
  %.b4.i206 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i206, label %land.lhs.true2.i207.rcu_read_unlock.exit_crit_edge, label %if.then.i208

land.lhs.true2.i207.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i207
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i208:                                     ; preds = %land.lhs.true2.i207
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i208, %land.lhs.true2.i207.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i205.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %99 = call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i209 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i209 to ptr
  %preempt_count.i.i.i.i210 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i210, align 4
  %sub.i.i.i = add i32 %102, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i210, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %103 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call105 = call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call105)
  %cmp106 = icmp sgt i32 %call105, 8
  br i1 %cmp106, label %do.end111, label %rcu_read_unlock.exit.if.end132_crit_edge

rcu_read_unlock.exit.if.end132_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

do.end111:                                        ; preds = %rcu_read_unlock.exit
  %protocol113 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %104 = ptrtoint ptr %protocol113 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %protocol113, align 4
  %conv114 = zext i16 %105 to i32
  %call115 = call ptr @ip_vs_proto_name(i32 noundef %conv114) #13
  %af116 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %106 = ptrtoint ptr %af116 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %af116, align 2
  %caddr118 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %108 = ptrtoint ptr %caddr118 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %caddr118, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %107)
  %cmp.i211 = icmp eq i16 %107, 10
  %.str.35..str.36.i = select i1 %cmp.i211, ptr @.str.35, ptr @.str.36
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i, ptr noundef %109) #13
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !212

do.body10.i:                                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end111
  %cport120 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %110 = ptrtoint ptr %cport120 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %cport120, align 4
  %112 = ptrtoint ptr %af116 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %af116, align 2
  %vaddr125 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %114 = ptrtoint ptr %vaddr125 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vaddr125, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %113)
  %cmp.i212 = icmp eq i16 %113, 10
  %arrayidx.i213 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i214 = sub nsw i32 159, %call3.i
  %.str.35..str.36.i215 = select i1 %cmp.i212, ptr @.str.35, ptr @.str.36
  %call3.i216 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i213, i32 noundef %sub.i214, ptr noundef nonnull %.str.35..str.36.i215, ptr noundef %115) #13
  %len.0.i217 = add nsw i32 %call3.i, 2
  %add5.i218 = add i32 %len.0.i217, %call3.i216
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i218)
  %cmp7.i219 = icmp ugt i32 %add5.i218, 161
  br i1 %cmp7.i219, label %do.body10.i220, label %ip_vs_dbg_addr.exit222, !prof !212

do.body10.i220:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit222:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv121 = zext i16 %111 to i32
  %vport127 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %116 = ptrtoint ptr %vport127 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vport127, align 2
  %conv128 = zext i16 %117 to i32
  %tobool129.not = icmp eq ptr %cp.0.lcssa, null
  %cond130 = select i1 %tobool129.not, ptr @.str.4, ptr @.str.3
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %call115, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv121, ptr noundef %arrayidx.i213, i32 noundef %conv128, ptr noundef nonnull %cond130) #16
  br label %if.end132

if.end132:                                        ; preds = %ip_vs_dbg_addr.exit222, %rcu_read_unlock.exit.if.end132_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  ret ptr %cp.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef %p, i1 noundef zeroext %inverse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pe_data = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pe_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pe = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %2 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pe, align 4
  %hashkey_raw = getelementptr inbounds %struct.ip_vs_pe, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %hashkey_raw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hashkey_raw, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %6 = load i32, ptr @ip_vs_conn_rnd, align 4
  %call = tail call i32 %5(ptr noundef %p, i32 noundef %6, i1 noundef zeroext %inverse) #13
  %7 = load i32, ptr @ip_vs_conn_tab_mask, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %inverse, label %if.else, label %if.then9, !prof !212

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %caddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %cport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %vaddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %addr.0.in = phi ptr [ %caddr, %if.then9 ], [ %vaddr, %if.else ]
  %port.0.in = phi ptr [ %cport, %if.then9 ], [ %vport, %if.else ]
  %8 = ptrtoint ptr %port.0.in to i32
  call void @__asan_load2_noabort(i32 %8)
  %port.0 = load i16, ptr %port.0.in, align 2
  %9 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %addr.0 = load ptr, ptr %addr.0.in, align 4
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %12 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %af, align 2
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol, align 4
  %conv11 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cmp.i = icmp eq i16 %13, 10
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %16 = load i32, ptr @ip_vs_conn_rnd, align 4
  %add1.i.i = add i32 %16, -559038721
  %17 = ptrtoint ptr %addr.0 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %addr.0, align 1
  %add2.i.i = add i32 %18, %add1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %addr.0, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr.i.i, align 1
  %add4.i.i = add i32 %20, %add1.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %addr.0, i32 8
  %21 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr5.i.i, align 1
  %add7.i.i = add i32 %22, %add1.i.i
  %sub.i.i = sub i32 %add2.i.i, %add7.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #13
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #13
  %xor12.i.i = xor i32 %sub10.i.i, %or.i1.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #13
  %xor16.i.i = xor i32 %sub14.i.i, %or.i2.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #13
  %xor20.i.i = xor i32 %sub18.i.i, %or.i3.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #13
  %xor24.i.i = xor i32 %sub22.i.i, %or.i4.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #13
  %xor28.i.i = xor i32 %sub26.i.i, %or.i5.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %add.ptr31.i.i = getelementptr i8, ptr %addr.0, i32 12
  %arrayidx67.i.i = getelementptr i8, ptr %addr.0, i32 15
  %23 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %24 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %arrayidx72.i.i = getelementptr i8, ptr %addr.0, i32 14
  %25 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %26 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %arrayidx77.i.i = getelementptr i8, ptr %addr.0, i32 13
  %27 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %28 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %29 = ptrtoint ptr %add.ptr31.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr31.i.i, align 1
  %conv83.i.i = zext i8 %30 to i32
  %add70.i.i = or i32 %shl74.i.i, %shl69.i.i
  %add75.i.i = or i32 %add70.i.i, %shl79.i.i
  %add80.i.i = or i32 %add75.i.i, %conv83.i.i
  %add84.i.i = add i32 %add25.i.i, %add80.i.i
  %xor85.i.i = xor i32 %xor28.i.i, %add29.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add29.i.i, i32 %add29.i.i, i32 14) #13
  %sub87.i.i = sub i32 %xor85.i.i, %or.i6.i.i
  %xor88.i.i = xor i32 %sub87.i.i, %add84.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #13
  %sub90.i.i = sub i32 %xor88.i.i, %or.i7.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add29.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #13
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #13
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #13
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #13
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #13
  %conv.i = zext i16 %port.0 to i32
  %add1.i11.i = add i32 %16, -559038725
  %sub105.i.i = sub i32 %add1.i11.i, %or.i12.i.i
  %add.i.i.i = add i32 %sub105.i.i, %xor103.i.i
  %add1.i.i.i = add i32 %add1.i11.i, %conv.i
  %add2.i.i.i = add i32 %add1.i11.i, %conv11
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #13
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #13
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #13
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #13
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #13
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #13
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #13
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  br label %ip_vs_conn_hashkey.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %addr.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr.0, align 4
  %conv2.i = zext i16 %port.0 to i32
  %33 = load i32, ptr @ip_vs_conn_rnd, align 4
  %add1.i12.i = add i32 %33, -559038725
  %add.i.i13.i = add i32 %add1.i12.i, %32
  %add1.i.i14.i = add i32 %add1.i12.i, %conv2.i
  %add2.i.i15.i = add i32 %add1.i12.i, %conv11
  %xor.i.i16.i = xor i32 %add2.i.i15.i, %add1.i.i14.i
  %or.i.i.i17.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i14.i, i32 %add1.i.i14.i, i32 14) #13
  %sub.i.i18.i = sub i32 %xor.i.i16.i, %or.i.i.i17.i
  %xor3.i.i19.i = xor i32 %sub.i.i18.i, %add.i.i13.i
  %or.i52.i.i20.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i18.i, i32 %sub.i.i18.i, i32 11) #13
  %sub5.i.i21.i = sub i32 %xor3.i.i19.i, %or.i52.i.i20.i
  %xor6.i.i22.i = xor i32 %sub5.i.i21.i, %add1.i.i14.i
  %or.i53.i.i23.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i21.i, i32 %sub5.i.i21.i, i32 25) #13
  %sub8.i.i24.i = sub i32 %xor6.i.i22.i, %or.i53.i.i23.i
  %xor9.i.i25.i = xor i32 %sub8.i.i24.i, %sub.i.i18.i
  %or.i54.i.i26.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i24.i, i32 %sub8.i.i24.i, i32 16) #13
  %sub11.i.i27.i = sub i32 %xor9.i.i25.i, %or.i54.i.i26.i
  %xor12.i.i28.i = xor i32 %sub11.i.i27.i, %sub5.i.i21.i
  %or.i55.i.i29.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i27.i, i32 %sub11.i.i27.i, i32 4) #13
  %sub14.i.i30.i = sub i32 %xor12.i.i28.i, %or.i55.i.i29.i
  %xor15.i.i31.i = xor i32 %sub14.i.i30.i, %sub8.i.i24.i
  %or.i56.i.i32.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i30.i, i32 %sub14.i.i30.i, i32 14) #13
  %sub17.i.i33.i = sub i32 %xor15.i.i31.i, %or.i56.i.i32.i
  %xor18.i.i34.i = xor i32 %sub17.i.i33.i, %sub11.i.i27.i
  %or.i57.i.i35.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i33.i, i32 %sub17.i.i33.i, i32 24) #13
  %sub20.i.i36.i = sub i32 %xor18.i.i34.i, %or.i57.i.i35.i
  br label %ip_vs_conn_hashkey.exit

ip_vs_conn_hashkey.exit:                          ; preds = %if.end.i, %if.then.i
  %sub20.i.i36.sink.i = phi i32 [ %sub20.i.i36.i, %if.end.i ], [ %sub20.i.i.i, %if.then.i ]
  %34 = ptrtoint ptr %11 to i32
  %shr4.i = lshr i32 %34, 8
  %xor5.i = xor i32 %sub20.i.i36.sink.i, %shr4.i
  %35 = load i32, ptr @ip_vs_conn_tab_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %ip_vs_conn_hashkey.exit, %if.then
  %.sink = phi i32 [ %35, %ip_vs_conn_hashkey.exit ], [ %call, %if.then ]
  %xor5.i.sink = phi i32 [ %xor5.i, %ip_vs_conn_hashkey.exit ], [ %7, %if.then ]
  %and6.i = and i32 %xor5.i.sink, %.sink
  ret i32 %and6.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__ip_vs_conn_get(ptr noundef %cp) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #13
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #13, !srcloc !215
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !216

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #13
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #13
  ret i1 %tobool12.i.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_conn_out_get(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef %p, i1 noundef zeroext true)
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b140 = load i1, ptr @ip_vs_conn_out_get.__warned, align 1
  br i1 %.b140, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_conn_out_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 415, ptr noundef nonnull @.str.5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %4, i32 %call
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cp.0192 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not193 = icmp eq ptr %cp.0192, null
  br i1 %tobool13.not193, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %cport23 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %af30 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %vaddr37 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %caddr43191 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cp.0194 = phi ptr [ %cp.0192, %for.body.lr.ph ], [ %cp.0, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 2
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 1
  %8 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cport, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.not = icmp eq i16 %7, %9
  br i1 %cmp.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  %vport21 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 3
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 6
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 7
  %sport.0.in = select i1 %cmp18.not, ptr %dport, ptr %vport21
  %saddr.0 = select i1 %cmp18.not, ptr %daddr, ptr %vaddr
  %12 = ptrtoint ptr %sport.0.in to i32
  call void @__asan_load2_noabort(i32 %12)
  %sport.0 = load i16, ptr %sport.0.in, align 2
  %13 = ptrtoint ptr %cport23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cport23, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %sport.0)
  %cmp26 = icmp eq i16 %14, %sport.0
  br i1 %cmp26, label %land.lhs.true28, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true28:                                  ; preds = %if.end17
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 4
  %15 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %af, align 2
  %17 = ptrtoint ptr %af30 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %af30, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp32 = icmp eq i16 %16, %18
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %19 = ptrtoint ptr %vaddr37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vaddr37, align 4
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %16)
  %cmp.i = icmp eq i16 %16, 10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caddr, align 4
  br i1 %cmp.i, label %ip_vs_addr_equal.exit, label %ip_vs_addr_equal.exit.thread

ip_vs_addr_equal.exit:                            ; preds = %land.lhs.true34
  %xor.i.i = xor i32 %24, %22
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %28, %26
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %20, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 5, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %32, %30
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %20, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 5, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %36, %34
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i.not = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i.not, label %if.then.i158, label %ip_vs_addr_equal.exit.for.inc_crit_edge

ip_vs_addr_equal.exit.for.inc_crit_edge:          ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ip_vs_addr_equal.exit.thread:                     ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp1.i.not = icmp eq i32 %22, %24
  br i1 %cmp1.i.not, label %ip_vs_addr_equal.exit163, label %ip_vs_addr_equal.exit.thread.for.inc_crit_edge

ip_vs_addr_equal.exit.thread.for.inc_crit_edge:   ; preds = %ip_vs_addr_equal.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i158:                                     ; preds = %ip_vs_addr_equal.exit
  %37 = ptrtoint ptr %caddr43191 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %caddr43191, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %41 = ptrtoint ptr %saddr.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %saddr.0, align 4
  %xor.i.i144 = xor i32 %42, %40
  %arrayidx4.i.i145 = getelementptr [4 x i32], ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx4.i.i145 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i.i145, align 4
  %arrayidx6.i.i146 = getelementptr [4 x i32], ptr %saddr.0, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx6.i.i146 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx6.i.i146, align 4
  %xor7.i.i147 = xor i32 %46, %44
  %or.i.i148 = or i32 %xor7.i.i147, %xor.i.i144
  %arrayidx9.i.i149 = getelementptr [4 x i32], ptr %38, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx9.i.i149 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx9.i.i149, align 4
  %arrayidx11.i.i150 = getelementptr [4 x i32], ptr %saddr.0, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx11.i.i150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx11.i.i150, align 4
  %xor12.i.i151 = xor i32 %50, %48
  %or13.i.i152 = or i32 %or.i.i148, %xor12.i.i151
  %arrayidx15.i.i153 = getelementptr [4 x i32], ptr %38, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx15.i.i153 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx15.i.i153, align 4
  %arrayidx17.i.i154 = getelementptr [4 x i32], ptr %saddr.0, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx17.i.i154 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx17.i.i154, align 4
  %xor18.i.i155 = xor i32 %54, %52
  %or19.i.i156 = or i32 %or13.i.i152, %xor18.i.i155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i156)
  %cmp.i.i157 = icmp eq i32 %or19.i.i156, 0
  br i1 %cmp.i.i157, label %if.then.i158.land.lhs.true46_crit_edge, label %if.then.i158.for.inc_crit_edge

if.then.i158.for.inc_crit_edge:                   ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i158.land.lhs.true46_crit_edge:           ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true46

ip_vs_addr_equal.exit163:                         ; preds = %ip_vs_addr_equal.exit.thread
  %55 = ptrtoint ptr %caddr43191 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %caddr43191, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = ptrtoint ptr %saddr.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %saddr.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp1.i159 = icmp eq i32 %58, %60
  br i1 %cmp1.i159, label %ip_vs_addr_equal.exit163.land.lhs.true46_crit_edge, label %ip_vs_addr_equal.exit163.for.inc_crit_edge

ip_vs_addr_equal.exit163.for.inc_crit_edge:       ; preds = %ip_vs_addr_equal.exit163
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

ip_vs_addr_equal.exit163.land.lhs.true46_crit_edge: ; preds = %ip_vs_addr_equal.exit163
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true46

land.lhs.true46:                                  ; preds = %ip_vs_addr_equal.exit163.land.lhs.true46_crit_edge, %if.then.i158.land.lhs.true46_crit_edge
  %61 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %protocol, align 4
  %protocol48 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 9
  %63 = ptrtoint ptr %protocol48 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %protocol48, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %cmp50 = icmp eq i16 %62, %64
  br i1 %cmp50, label %land.lhs.true52, label %land.lhs.true46.for.inc_crit_edge

land.lhs.true46.for.inc_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 11
  %65 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ipvs, align 4
  %67 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %p, align 4
  %cmp54 = icmp eq ptr %66, %68
  br i1 %cmp54, label %if.then56, label %land.lhs.true52.for.inc_crit_edge

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then56:                                        ; preds = %land.lhs.true52
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0194, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %69 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then56
  %71 = phi i32 [ %70, %if.then56 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %72 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %71, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %73 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %75 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %74, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #13, !srcloc !215
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %75, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %75, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %74
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %76 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %77, 1
  %78 = or i32 %add5.i.i.i.i, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i.i = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ip_vs_conn_get.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #13
  %79 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %__ip_vs_conn_get.exit

__ip_vs_conn_get.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge
  %80 = phi i32 [ %77, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool12.i.i.i.i.not = icmp eq i32 %80, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not, label %__ip_vs_conn_get.exit.for.inc_crit_edge, label %__ip_vs_conn_get.exit.for.end_crit_edge

__ip_vs_conn_get.exit.for.end_crit_edge:          ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

__ip_vs_conn_get.exit.for.inc_crit_edge:          ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %__ip_vs_conn_get.exit.for.inc_crit_edge, %land.lhs.true52.for.inc_crit_edge, %land.lhs.true46.for.inc_crit_edge, %ip_vs_addr_equal.exit163.for.inc_crit_edge, %if.then.i158.for.inc_crit_edge, %ip_vs_addr_equal.exit.thread.for.inc_crit_edge, %ip_vs_addr_equal.exit.for.inc_crit_edge, %land.lhs.true28.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %81 = ptrtoint ptr %cp.0194 to i32
  call void @__asan_load4_noabort(i32 %81)
  %cp.0 = load volatile ptr, ptr %cp.0194, align 4
  %tobool13.not = icmp eq ptr %cp.0, null
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__ip_vs_conn_get.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %cp.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %cp.0194, %__ip_vs_conn_get.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i164 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i164, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i167

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i167:                               ; preds = %for.end
  %call1.i165 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %tobool.not.i166 = icmp eq i32 %call1.i165, 0
  br i1 %tobool.not.i166, label %land.lhs.true.i167.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i169

land.lhs.true.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i169:                              ; preds = %land.lhs.true.i167
  %.b4.i168 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i168, label %land.lhs.true2.i169.rcu_read_unlock.exit_crit_edge, label %if.then.i170

land.lhs.true2.i169.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i170:                                     ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i170, %land.lhs.true2.i169.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i167.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %82 = call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i171 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i171 to ptr
  %preempt_count.i.i.i.i172 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i172, align 4
  %sub.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i172, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %86 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call77 = call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call77)
  %cmp78 = icmp sgt i32 %call77, 8
  br i1 %cmp78, label %do.end83, label %rcu_read_unlock.exit.if.end104_crit_edge

rcu_read_unlock.exit.if.end104_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

do.end83:                                         ; preds = %rcu_read_unlock.exit
  %protocol85 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %87 = ptrtoint ptr %protocol85 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %protocol85, align 4
  %conv86 = zext i16 %88 to i32
  %call87 = call ptr @ip_vs_proto_name(i32 noundef %conv86) #13
  %af88 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %89 = ptrtoint ptr %af88 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %af88, align 2
  %caddr90 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %91 = ptrtoint ptr %caddr90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %caddr90, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %90)
  %cmp.i173 = icmp eq i16 %90, 10
  %.str.35..str.36.i = select i1 %cmp.i173, ptr @.str.35, ptr @.str.36
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i, ptr noundef %92) #13
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !212

do.body10.i:                                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end83
  %cport92 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %93 = ptrtoint ptr %cport92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %cport92, align 4
  %95 = ptrtoint ptr %af88 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %af88, align 2
  %vaddr97 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %97 = ptrtoint ptr %vaddr97 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vaddr97, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %96)
  %cmp.i174 = icmp eq i16 %96, 10
  %arrayidx.i175 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i176 = sub nsw i32 159, %call3.i
  %.str.35..str.36.i177 = select i1 %cmp.i174, ptr @.str.35, ptr @.str.36
  %call3.i178 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i175, i32 noundef %sub.i176, ptr noundef nonnull %.str.35..str.36.i177, ptr noundef %98) #13
  %len.0.i179 = add nsw i32 %call3.i, 2
  %add5.i180 = add i32 %len.0.i179, %call3.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i180)
  %cmp7.i181 = icmp ugt i32 %add5.i180, 161
  br i1 %cmp7.i181, label %do.body10.i182, label %ip_vs_dbg_addr.exit184, !prof !212

do.body10.i182:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit184:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv93 = zext i16 %94 to i32
  %vport99 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %99 = ptrtoint ptr %vport99 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vport99, align 2
  %conv100 = zext i16 %100 to i32
  %tobool101.not = icmp eq ptr %cp.0.lcssa, null
  %cond102 = select i1 %tobool101.not, ptr @.str.4, ptr @.str.3
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %call87, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv93, ptr noundef %arrayidx.i175, i32 noundef %conv100, ptr noundef nonnull %cond102) #16
  br label %if.end104

if.end104:                                        ; preds = %ip_vs_dbg_addr.exit184, %rcu_read_unlock.exit.if.end104_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  ret ptr %cp.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_conn_out_get_proto(ptr noundef %ipvs, i32 noundef %af, ptr noundef %skb, ptr noundef %iph) #0 align 64 {
entry:
  %_ports.i = alloca [2 x i16], align 2
  %p = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #13
  %0 = call ptr @memset(ptr %p, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #13
  %1 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %_ports.i, align 2, !annotation !218
  %2 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %2, align 2, !annotation !218
  %len.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i.i, align 8
  %10 = add i32 %5, %9
  %sub.i1.i.i.i = sub i32 %7, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %frag_safe_skb_hp.exit.i, label %if.end.i.i.i.i, !prof !216

if.end.i.i.i.i:                                   ; preds = %entry
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_fill_param_proto.exit.thread

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %5, ptr noundef nonnull %_ports.i, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

lor.lhs.false.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_fill_param_proto.exit.thread

frag_safe_skb_hp.exit.i:                          ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 %5
  %cmp.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %cmp.i, label %frag_safe_skb_hp.exit.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, label %frag_safe_skb_hp.exit.i.if.end.i_crit_edge

frag_safe_skb_hp.exit.i.if.end.i_crit_edge:       ; preds = %frag_safe_skb_hp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

frag_safe_skb_hp.exit.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge: ; preds = %frag_safe_skb_hp.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_fill_param_proto.exit.thread

if.end.i:                                         ; preds = %frag_safe_skb_hp.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i_crit_edge
  %retval.0.i.i.i42.i = phi ptr [ %add.ptr.i.i.i.i, %frag_safe_skb_hp.exit.i.if.end.i_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i.i.i.if.end.i_crit_edge ]
  %13 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iph, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %protocol.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 2
  br i1 %tobool.i.not.i, label %if.then4.i, label %if.else.i, !prof !216

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %saddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %daddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx5.i = getelementptr i16, ptr %retval.0.i.i.i42.i, i32 1
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %daddr8.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx9.i = getelementptr i16, ptr %retval.0.i.i.i42.i, i32 1
  %saddr10.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %if.end

ip_vs_conn_fill_param_proto.exit.thread:          ; preds = %frag_safe_skb_hp.exit.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, %lor.lhs.false.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge, %if.end.i.i.i.i.ip_vs_conn_fill_param_proto.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.else.i, %if.then4.i
  %arrayidx5.sink.i = phi ptr [ %arrayidx5.i, %if.then4.i ], [ %retval.0.i.i.i42.i, %if.else.i ]
  %saddr.sink.i = phi ptr [ %saddr.i, %if.then4.i ], [ %daddr8.i, %if.else.i ]
  %.sink45.in.i = phi ptr [ %retval.0.i.i.i42.i, %if.then4.i ], [ %arrayidx9.i, %if.else.i ]
  %daddr.sink.i = phi ptr [ %daddr.i, %if.then4.i ], [ %saddr10.i, %if.else.i ]
  %17 = ptrtoint ptr %.sink45.in.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %.sink45.i = load i16, ptr %.sink45.in.i, align 2
  %18 = ptrtoint ptr %arrayidx5.sink.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.sink.i, align 2
  %20 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ipvs, ptr %p, align 4
  %conv.i.i = trunc i32 %af to i16
  %af2.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %af2.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %af2.i.i, align 2
  %protocol4.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %22 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %16, ptr %protocol4.i.i, align 4
  %caddr5.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %23 = ptrtoint ptr %caddr5.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %saddr.sink.i, ptr %caddr5.i.i, align 4
  %cport6.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %24 = ptrtoint ptr %cport6.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink45.i, ptr %cport6.i.i, align 4
  %vaddr7.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %25 = ptrtoint ptr %vaddr7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %daddr.sink.i, ptr %vaddr7.i.i, align 4
  %vport8.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %26 = ptrtoint ptr %vport8.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %19, ptr %vport8.i.i, align 2
  %pe.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %27 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pe.i.i, align 4
  %pe_data.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %28 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pe_data.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #13
  %call1 = call ptr @ip_vs_conn_out_get(ptr noundef nonnull %p)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip_vs_conn_fill_param_proto.exit.thread
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %ip_vs_conn_fill_param_proto.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_conn_put(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true1:                                   ; preds = %land.lhs.true
  %pprev.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %if.then, label %land.lhs.true1.if.else_crit_edge

land.lhs.true1.if.else_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #15
  %timer = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13
  tail call void @ip_vs_conn_expire(ptr noundef %timer)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true1.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.else.cond.end.i_crit_edge

if.else.cond.end.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %8 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %timeout.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.else.cond.end.i_crit_edge
  %cond.i = phi i32 [ %9, %cond.false.i ], [ 0, %if.else.cond.end.i_crit_edge ]
  %timer.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %10, %cond.i
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %cond.end.i.if.end_crit_edge, !prof !212

cond.end.i.if.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3.i.i.i.i:                                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i.i.i, %cond.end.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_conn_expire(ptr noundef %t) #0 align 64 {
entry:
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %old.i.i.i.i = alloca i32, align 4
  %p.i.i = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  %ipvs1 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipvs1, align 4
  %n_control = getelementptr i8, ptr %t, i32 112
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_control, i32 noundef 4) #13
  %2 = ptrtoint ptr %n_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %n_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body75_crit_edge

entry.do.body75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body75

if.end:                                           ; preds = %entry
  %flags.i = getelementptr i8, ptr %t, i32 -16
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %refcnt.i = getelementptr i8, ptr %t, i32 -4
  %call.i = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i) #13
  br i1 %call.i, label %if.then.i.if.then5_crit_edge, label %if.then.i.do.body75_crit_edge, !prof !216

if.then.i.do.body75_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body75

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p.i.i) #13
  %6 = getelementptr inbounds i8, ptr %p.i.i, i32 28
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %ipvs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipvs1, align 4
  %af.i.i = getelementptr i8, ptr %t, i32 -66
  %10 = ptrtoint ptr %af.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %af.i.i, align 2
  %protocol.i.i = getelementptr i8, ptr %t, i32 -12
  %12 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol.i.i, align 4
  %caddr.i.i = getelementptr i8, ptr %t, i32 -64
  %cport.i.i = getelementptr i8, ptr %t, i32 -72
  %14 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cport.i.i, align 4
  %16 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %p.i.i, align 4
  %af2.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %af2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %11, ptr %af2.i.i.i, align 2
  %protocol4.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %protocol4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %protocol4.i.i.i, align 4
  %caddr5.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %caddr5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %caddr.i.i, ptr %caddr5.i.i.i, align 4
  %cport6.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %cport6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %15, ptr %cport6.i.i.i, align 4
  %vaddr7.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %vaddr7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %vaddr7.i.i.i, align 4
  %vport8.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %vport8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %vport8.i.i.i, align 2
  %pe.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %pe.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %pe.i.i.i, align 4
  %pe_data.i.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %pe_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pe_data.i.i.i, align 4
  %pe.i.i = getelementptr i8, ptr %t, i32 160
  %25 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pe.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.ip_vs_conn_hashkey_conn.exit.i_crit_edge, label %if.then.i.i

if.end.i.ip_vs_conn_hashkey_conn.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_hashkey_conn.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %pe.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %pe.i.i.i, align 4
  %pe_data.i.i = getelementptr i8, ptr %t, i32 164
  %28 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pe_data.i.i, align 4
  %30 = ptrtoint ptr %pe_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %pe_data.i.i.i, align 4
  %pe_data_len.i.i = getelementptr i8, ptr %t, i32 168
  %31 = ptrtoint ptr %pe_data_len.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pe_data_len.i.i, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %6, align 4
  br label %ip_vs_conn_hashkey_conn.exit.i

ip_vs_conn_hashkey_conn.exit.i:                   ; preds = %if.then.i.i, %if.end.i.ip_vs_conn_hashkey_conn.exit.i_crit_edge
  %call.i.i137 = call fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef nonnull %p.i.i, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p.i.i) #13
  %and.i.i = and i32 %call.i.i137, 31
  %arrayidx.i.i = getelementptr [32 x %struct.ip_vs_aligned_lock], ptr @__ip_vs_conntbl_lock_array, i32 0, i32 %and.i.i
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i.i) #13
  %lock.i = getelementptr i8, ptr %t, i32 52
  call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %and3.i = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %ip_vs_conn_hashkey_conn.exit.i.ip_vs_conn_unlink.exit_crit_edge, label %if.then5.i

ip_vs_conn_hashkey_conn.exit.i.ip_vs_conn_unlink.exit_crit_edge: ; preds = %ip_vs_conn_hashkey_conn.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_unlink.exit

if.then5.i:                                       ; preds = %ip_vs_conn_hashkey_conn.exit.i
  %refcnt6.i = getelementptr i8, ptr %t, i32 -4
  %call7.i = call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt6.i) #13
  br i1 %call7.i, label %if.then8.i, label %if.then5.i.ip_vs_conn_unlink.exit_crit_edge

if.then5.i.ip_vs_conn_unlink.exit_crit_edge:      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_unlink.exit

if.then8.i:                                       ; preds = %if.then5.i
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %pprev2.i.i.i = getelementptr i8, ptr %t, i32 -76
  %38 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.then8.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.then8.i.hlist_del_rcu.exit.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.then8.i.hlist_del_rcu.exit.i_crit_edge
  %42 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i, align 4
  %and10.i = and i32 %44, -65
  store volatile i32 %and10.i, ptr %flags.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i.i) #13
  br label %if.then5

ip_vs_conn_unlink.exit:                           ; preds = %if.then5.i.ip_vs_conn_unlink.exit_crit_edge, %ip_vs_conn_hashkey_conn.exit.i.ip_vs_conn_unlink.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #13
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i.i) #13
  br label %do.body75

if.then5:                                         ; preds = %hlist_del_rcu.exit.i, %if.then.i.if.then5_crit_edge
  %control = getelementptr i8, ptr %t, i32 108
  %45 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %control, align 4
  %call6 = call i32 @del_timer(ptr noundef %t) #13
  %tobool7.not = icmp eq ptr %46, null
  br i1 %tobool7.not, label %if.then5.if.end33_crit_edge, label %if.then8

if.then5.if.end33_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then8:                                         ; preds = %if.then5
  %timeout = getelementptr i8, ptr %t, i32 48
  %47 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool9.not = icmp eq i32 %48, 0
  br i1 %tobool9.not, label %land.rhs, label %if.end33.critedge

land.rhs:                                         ; preds = %if.then8
  %refcnt.i138 = getelementptr inbounds %struct.ip_vs_conn, ptr %46, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i138, i32 noundef 4) #13
  %49 = ptrtoint ptr %refcnt.i138 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %refcnt.i138, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.rhs
  %51 = phi i32 [ %50, %land.rhs ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %52 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %51, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i138, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %53 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i138, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %55 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i138, ptr %refcnt.i138, i32 %54, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i138) #13, !srcloc !215
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %54
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !216

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %56 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %57, 1
  %58 = or i32 %add5.i.i.i.i, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %.not.i.i.i.i = icmp sgt i32 %58, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge, label %if.then10.i.i.i.i, !prof !216

if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge:  ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ip_vs_conn_get.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i138, i32 noundef 0) #13
  %59 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %__ip_vs_conn_get.exit

__ip_vs_conn_get.exit:                            ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge
  %60 = phi i32 [ %57, %if.end4.i.i.i.i.__ip_vs_conn_get.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool12.i.i.i.i.not = icmp eq i32 %60, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  call fastcc void @ip_vs_control_del(ptr noundef %add.ptr)
  br i1 %tobool12.i.i.i.i.not, label %__ip_vs_conn_get.exit.if.end33_crit_edge, label %land.lhs.true

__ip_vs_conn_get.exit.if.end33_crit_edge:         ; preds = %__ip_vs_conn_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true:                                    ; preds = %__ip_vs_conn_get.exit
  %n_control12 = getelementptr inbounds %struct.ip_vs_conn, ptr %46, i32 0, i32 21
  %call.i.i133 = call zeroext i1 @__kasan_check_read(ptr noundef %n_control12, i32 noundef 4) #13
  %61 = ptrtoint ptr %n_control12 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %n_control12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool14.not = icmp eq i32 %62, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %land.lhs.true.if.then30_crit_edge

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

land.lhs.true15:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %46, i32 0, i32 8
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags, align 4
  %and = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true15.do.body_crit_edge, label %lor.lhs.false

land.lhs.true15.do.body_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %46, i32 0, i32 16
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load volatile i16, ptr %state, align 4
  %67 = and i16 %66, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool18.not = icmp eq i16 %67, 0
  br i1 %tobool18.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true15.do.body_crit_edge
  %call20 = call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call20)
  %cmp = icmp sgt i32 %call20, 3
  br i1 %cmp, label %do.end, label %do.body.do.end28_crit_edge

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %do.end28

do.end28:                                         ; preds = %do.end, %do.body.do.end28_crit_edge
  call fastcc void @ip_vs_conn_del_put(ptr noundef nonnull %46)
  br label %if.end33

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i138, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  call void @llvm.prefetch.p0(ptr %refcnt.i138, i32 1, i32 3, i32 1) #13
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i138, ptr %refcnt.i138, i32 1, ptr elementtype(i32) %refcnt.i138) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.then30.if.end33_crit_edge, !prof !212

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then3.i.i.i:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i138, i32 noundef 4) #13
  br label %if.end33

if.end33.critedge:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @ip_vs_control_del(ptr noundef %add.ptr)
  br label %if.end33

if.end33:                                         ; preds = %if.end33.critedge, %if.then3.i.i.i, %if.then30.if.end33_crit_edge, %do.end28, %__ip_vs_conn_get.exit.if.end33_crit_edge, %if.then5.if.end33_crit_edge
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i, align 4
  %and35 = and i32 %70, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end51_crit_edge, label %land.lhs.true37

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true37:                                  ; preds = %if.end33
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags.i, align 4
  %and39 = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end45, label %land.lhs.true37.if.end51_crit_edge

land.lhs.true37.if.end51_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.end45:                                         ; preds = %land.lhs.true37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  %enable = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool48.not = icmp eq i32 %74, 0
  br i1 %tobool48.not, label %do.end45.if.end51_crit_edge, label %if.then49

do.end45.if.end51_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  call void @ip_vs_conn_drop_conntrack(ptr noundef %add.ptr) #13
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %do.end45.if.end51_crit_edge, %land.lhs.true37.if.end51_crit_edge, %if.end33.if.end51_crit_edge
  %app = getelementptr i8, ptr %t, i32 128
  %75 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %app, align 4
  %cmp52.not = icmp eq ptr %76, null
  br i1 %cmp52.not, label %if.end51.if.end61_crit_edge, label %if.then60, !prof !216

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  call void @ip_vs_unbind_app(ptr noundef %add.ptr) #13
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end51.if.end61_crit_edge
  %dest1.i = getelementptr i8, ptr %t, i32 116
  %77 = ptrtoint ptr %dest1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dest1.i, align 4
  %tobool.not.i140 = icmp eq ptr %78, null
  br i1 %tobool.not.i140, label %if.end61.ip_vs_unbind_dest.exit_crit_edge, label %do.body.i

if.end61.ip_vs_unbind_dest.exit_crit_edge:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_unbind_dest.exit

do.body.i:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #13
  %79 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call.i141 = call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i141)
  %cmp.i = icmp sgt i32 %call.i141, 6
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end24.i_crit_edge

do.body.i.if.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

do.end.i:                                         ; preds = %do.body.i
  %protocol.i = getelementptr i8, ptr %t, i32 -12
  %80 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %protocol.i, align 4
  %conv.i = zext i16 %81 to i32
  %call4.i = call ptr @ip_vs_proto_name(i32 noundef %conv.i) #13
  %af.i = getelementptr i8, ptr %t, i32 -66
  %82 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %af.i, align 2
  %caddr.i = getelementptr i8, ptr %t, i32 -64
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %83)
  %cmp.i.i = icmp eq i16 %83, 10
  %.str.35..str.36.i.i = select i1 %cmp.i.i, ptr @.str.35, ptr @.str.36
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i.i, ptr noundef %caddr.i) #13
  %len.0.i.i = add i32 %call3.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i.i)
  %cmp7.i.i = icmp ugt i32 %len.0.i.i, 161
  br i1 %cmp7.i.i, label %do.body10.i.i, label %ip_vs_dbg_addr.exit.i, !prof !212

do.body10.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit.i:                            ; preds = %do.end.i
  %cport.i = getelementptr i8, ptr %t, i32 -72
  %84 = ptrtoint ptr %cport.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cport.i, align 4
  %conv7.i = zext i16 %85 to i32
  %86 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %af.i, align 2
  %vaddr.i = getelementptr i8, ptr %t, i32 -48
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %87)
  %cmp.i104.i = icmp eq i16 %87, 10
  %arrayidx.i105.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %len.0.i.i
  %sub.i106.i = sub nsw i32 159, %call3.i.i
  %.str.35..str.36.i107.i = select i1 %cmp.i104.i, ptr @.str.35, ptr @.str.36
  %call3.i108.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i105.i, i32 noundef %sub.i106.i, ptr noundef nonnull %.str.35..str.36.i107.i, ptr noundef %vaddr.i) #13
  %len.0.i109.i = add nsw i32 %call3.i.i, 2
  %add5.i110.i = add i32 %len.0.i109.i, %call3.i108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i110.i)
  %cmp7.i111.i = icmp ugt i32 %add5.i110.i, 161
  br i1 %cmp7.i111.i, label %do.body10.i112.i, label %ip_vs_dbg_addr.exit114.i, !prof !212

do.body10.i112.i:                                 ; preds = %ip_vs_dbg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit114.i:                         ; preds = %ip_vs_dbg_addr.exit.i
  %vport.i = getelementptr i8, ptr %t, i32 -68
  %88 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vport.i, align 4
  %conv12.i = zext i16 %89 to i32
  %daf.i = getelementptr i8, ptr %t, i32 -10
  %90 = ptrtoint ptr %daf.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %daf.i, align 2
  %daddr.i = getelementptr i8, ptr %t, i32 -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %91)
  %cmp.i115.i = icmp eq i16 %91, 10
  %arrayidx.i116.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %add5.i110.i
  %sub.i117.i = sub nsw i32 160, %add5.i110.i
  %.str.35..str.36.i118.i = select i1 %cmp.i115.i, ptr @.str.35, ptr @.str.36
  %call3.i119.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i116.i, i32 noundef %sub.i117.i, ptr noundef nonnull %.str.35..str.36.i118.i, ptr noundef %daddr.i) #13
  %len.0.i120.i = add nuw nsw i32 %add5.i110.i, 1
  %add5.i121.i = add i32 %len.0.i120.i, %call3.i119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i121.i)
  %cmp7.i122.i = icmp ugt i32 %add5.i121.i, 161
  br i1 %cmp7.i122.i, label %do.body10.i123.i, label %ip_vs_dbg_addr.exit125.i, !prof !212

do.body10.i123.i:                                 ; preds = %ip_vs_dbg_addr.exit114.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit125.i:                         ; preds = %ip_vs_dbg_addr.exit114.i
  %dport.i = getelementptr i8, ptr %t, i32 -70
  %92 = ptrtoint ptr %dport.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %dport.i, align 2
  %conv16.i = zext i16 %93 to i32
  %94 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags.i, align 4
  %and.i.i142 = and i32 %95, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i.i142)
  %96 = icmp ult i32 %and.i.i142, 5
  br i1 %96, label %switch.lookup, label %ip_vs_dbg_addr.exit125.i.ip_vs_fwd_tag.exit.i_crit_edge

ip_vs_dbg_addr.exit125.i.ip_vs_fwd_tag.exit.i_crit_edge: ; preds = %ip_vs_dbg_addr.exit125.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_fwd_tag.exit.i

switch.lookup:                                    ; preds = %ip_vs_dbg_addr.exit125.i
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ip_vs_conn_expire, i32 0, i32 %and.i.i142
  %97 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %97)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ip_vs_fwd_tag.exit.i

ip_vs_fwd_tag.exit.i:                             ; preds = %switch.lookup, %ip_vs_dbg_addr.exit125.i.ip_vs_fwd_tag.exit.i_crit_edge
  %fwd.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 63, %ip_vs_dbg_addr.exit125.i.ip_vs_fwd_tag.exit.i_crit_edge ]
  %state.i = getelementptr i8, ptr %t, i32 96
  %98 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load volatile i16, ptr %state.i, align 4
  %conv19.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %flags.i, align 4
  %refcnt.i143 = getelementptr i8, ptr %t, i32 -4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i143, i32 noundef 4) #13
  %102 = ptrtoint ptr %refcnt.i143 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %refcnt.i143, align 4
  %refcnt21.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 12
  %call.i.i.i126.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt21.i, i32 noundef 4) #13
  %104 = ptrtoint ptr %refcnt21.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %refcnt21.i, align 4
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %call4.i, ptr noundef nonnull %ip_vs_dbg_buf.i, i32 noundef %conv7.i, ptr noundef %arrayidx.i105.i, i32 noundef %conv12.i, ptr noundef %arrayidx.i116.i, i32 noundef %conv16.i, i32 noundef %fwd.0.i.i, i32 noundef %conv19.i, i32 noundef %101, i32 noundef %103, i32 noundef %105) #16
  br label %if.end24.i

if.end24.i:                                       ; preds = %ip_vs_fwd_tag.exit.i, %do.body.i.if.end24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #13
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %flags.i, align 4
  %and.i144 = and i32 %107, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool28.not.i = icmp eq i32 %and.i144, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.else35.i

if.then29.i:                                      ; preds = %if.end24.i
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags.i, align 4
  %and31.i = and i32 %109, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  %inactconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inactconns.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %inactconns.i, i32 1, i32 3, i32 1) #13
  %110 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns.i, ptr %inactconns.i, i32 1, ptr elementtype(i32) %inactconns.i) #13, !srcloc !223
  br label %if.end36.i

if.else.i:                                        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 15
  %call.i.i102.i = call zeroext i1 @__kasan_check_write(ptr noundef %activeconns.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %activeconns.i, i32 1, i32 3, i32 1) #13
  %111 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns.i, ptr %activeconns.i, i32 1, ptr elementtype(i32) %activeconns.i) #13, !srcloc !223
  br label %if.end36.i

if.else35.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %persistconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 17
  %call.i.i103.i = call zeroext i1 @__kasan_check_write(ptr noundef %persistconns.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %persistconns.i, i32 1, i32 3, i32 1) #13
  %112 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %persistconns.i, ptr %persistconns.i, i32 1, ptr elementtype(i32) %persistconns.i) #13, !srcloc !223
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else35.i, %if.else.i, %if.then33.i
  %l_threshold.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 19
  %113 = ptrtoint ptr %l_threshold.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %l_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp37.not.i = icmp eq i32 %114, 0
  br i1 %cmp37.not.i, label %if.else48.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  %activeconns.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 15
  %call.i.i.i127.i = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i.i, i32 noundef 4) #13
  %115 = ptrtoint ptr %activeconns.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %activeconns.i.i, align 4
  %inactconns.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 16
  %call.i.i3.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i.i, i32 noundef 4) #13
  %117 = ptrtoint ptr %inactconns.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %inactconns.i.i, align 4
  %add.i.i = add i32 %118, %116
  %119 = ptrtoint ptr %l_threshold.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %l_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %120)
  %cmp42.i = icmp ult i32 %add.i.i, %120
  br i1 %cmp42.i, label %if.then44.i, label %if.then39.i.if.end70.i_crit_edge

if.then39.i.if.end70.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then44.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags45.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 5
  br label %if.end70.sink.split.i

if.else48.i:                                      ; preds = %if.end36.i
  %u_threshold.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 18
  %121 = ptrtoint ptr %u_threshold.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %u_threshold.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp49.not.i = icmp eq i32 %122, 0
  br i1 %cmp49.not.i, label %if.else61.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.else48.i
  %activeconns.i128.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 15
  %call.i.i.i129.i = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i128.i, i32 noundef 4) #13
  %123 = ptrtoint ptr %activeconns.i128.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %activeconns.i128.i, align 4
  %inactconns.i130.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 16
  %call.i.i3.i131.i = call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i130.i, i32 noundef 4) #13
  %125 = ptrtoint ptr %inactconns.i130.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %inactconns.i130.i, align 4
  %add.i132.i = add i32 %126, %124
  %mul.i = shl i32 %add.i132.i, 2
  %127 = ptrtoint ptr %u_threshold.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %u_threshold.i, align 8
  %mul54.i = mul i32 %128, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul54.i)
  %cmp55.i = icmp ult i32 %mul.i, %mul54.i
  br i1 %cmp55.i, label %if.then57.i, label %if.then51.i.if.end70.i_crit_edge

if.then51.i.if.end70.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then57.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags58.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 5
  br label %if.end70.sink.split.i

if.else61.i:                                      ; preds = %if.else48.i
  %flags62.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 5
  %129 = ptrtoint ptr %flags62.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %flags62.i, align 4
  %and63.i = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.else61.i.if.end70.i_crit_edge, label %if.else61.i.if.end70.sink.split.i_crit_edge

if.else61.i.if.end70.sink.split.i_crit_edge:      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.sink.split.i

if.else61.i.if.end70.i_crit_edge:                 ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.end70.sink.split.i:                            ; preds = %if.else61.i.if.end70.sink.split.i_crit_edge, %if.then57.i, %if.then44.i
  %flags58.sink138.i = phi ptr [ %flags58.i, %if.then57.i ], [ %flags45.i, %if.then44.i ], [ %flags62.i, %if.else61.i.if.end70.sink.split.i_crit_edge ]
  %131 = ptrtoint ptr %flags58.sink138.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %flags58.sink138.i, align 4
  %and59.i = and i32 %132, -3
  store volatile i32 %and59.i, ptr %flags58.sink138.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end70.sink.split.i, %if.else61.i.if.end70.i_crit_edge, %if.then51.i.if.end70.i_crit_edge, %if.then39.i.if.end70.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !224
  %refcnt.i.i = getelementptr inbounds %struct.ip_vs_dest, ptr %78, i32 0, i32 12
  %call.i.i.i.i.i.i145 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #13
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i.i146 = extractvalue { i32, i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i146)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i146, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end70.i.ip_vs_unbind_dest.exit_crit_edge, !prof !212

if.end70.i.ip_vs_unbind_dest.exit_crit_edge:      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_unbind_dest.exit

if.then3.i.i.i.i:                                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 4) #13
  br label %ip_vs_unbind_dest.exit

ip_vs_unbind_dest.exit:                           ; preds = %if.then3.i.i.i.i, %if.end70.i.ip_vs_unbind_dest.exit_crit_edge, %if.end61.ip_vs_unbind_dest.exit_crit_edge
  %134 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flags.i, align 4
  %and63 = and i32 %135, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %ip_vs_unbind_dest.exit.if.end66_crit_edge, label %if.then65

ip_vs_unbind_dest.exit.if.end66_crit_edge:        ; preds = %ip_vs_unbind_dest.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then65:                                        ; preds = %ip_vs_unbind_dest.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i134 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ip_vs_conn_no_cport_cnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr nonnull @ip_vs_conn_no_cport_cnt, i32 1, i32 3, i32 1) #13
  %136 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ip_vs_conn_no_cport_cnt, ptr nonnull @ip_vs_conn_no_cport_cnt, i32 1, ptr nonnull elementtype(i32) @ip_vs_conn_no_cport_cnt) #13, !srcloc !223
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %ip_vs_unbind_dest.exit.if.end66_crit_edge
  %137 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %flags.i, align 4
  %and68 = and i32 %138, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %if.end66
  %pe.i = getelementptr i8, ptr %t, i32 160
  %139 = ptrtoint ptr %pe.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pe.i, align 4
  %tobool.not.i147 = icmp eq ptr %140, null
  br i1 %tobool.not.i147, label %if.then70.ip_vs_conn_rcu_free.exit_crit_edge, label %land.lhs.true.i

if.then70.ip_vs_conn_rcu_free.exit_crit_edge:     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_rcu_free.exit

land.lhs.true.i:                                  ; preds = %if.then70
  %module.i = getelementptr inbounds %struct.ip_vs_pe, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %module.i, align 4
  %tobool2.not.i = icmp eq ptr %142, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.ip_vs_conn_rcu_free.exit_crit_edge, label %if.then.i148

land.lhs.true.i.ip_vs_conn_rcu_free.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_rcu_free.exit

if.then.i148:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @module_put(ptr noundef nonnull %142) #13
  br label %ip_vs_conn_rcu_free.exit

ip_vs_conn_rcu_free.exit:                         ; preds = %if.then.i148, %land.lhs.true.i.ip_vs_conn_rcu_free.exit_crit_edge, %if.then70.ip_vs_conn_rcu_free.exit_crit_edge
  %pe_data.i = getelementptr i8, ptr %t, i32 164
  %143 = ptrtoint ptr %pe_data.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pe_data.i, align 4
  call void @kfree(ptr noundef %144) #13
  %145 = load ptr, ptr @ip_vs_conn_cachep, align 4
  call void @kmem_cache_free(ptr noundef %145, ptr noundef %add.ptr) #13
  br label %if.end73

if.else71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head72 = getelementptr i8, ptr %t, i32 172
  call void @call_rcu(ptr noundef %callback_head72, ptr noundef nonnull @ip_vs_conn_rcu_free) #13
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %ip_vs_conn_rcu_free.exit
  %conn_count = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 8
  %call.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %conn_count, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %conn_count, i32 1, i32 3, i32 1) #13
  %146 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_count, ptr %conn_count, i32 1, ptr elementtype(i32) %conn_count) #13, !srcloc !223
  br label %cleanup

do.body75:                                        ; preds = %ip_vs_conn_unlink.exit, %if.then.i.do.body75_crit_edge, %entry.do.body75_crit_edge
  %call76 = call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call76)
  %cmp77 = icmp sgt i32 %call76, 6
  br i1 %cmp77, label %do.end82, label %do.body75.do.end90_crit_edge

do.body75.do.end90_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end90

do.end82:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr i8, ptr %t, i32 -4
  %call.i.i.i150 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %147 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %refcnt, align 4
  %call.i.i136 = call zeroext i1 @__kasan_check_read(ptr noundef %n_control, i32 noundef 4) #13
  %149 = ptrtoint ptr %n_control to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %n_control, align 4
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %148, i32 noundef %150) #16
  br label %do.end90

do.end90:                                         ; preds = %do.end82, %do.body75.do.end90_crit_edge
  %refcnt91 = getelementptr i8, ptr %t, i32 -4
  %call.i.i.i.i.i151 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt91, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt91, i32 1, i32 3, i32 1) #13
  %151 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt91, ptr %refcnt91, i32 1, ptr elementtype(i32) %refcnt91) #13, !srcloc !225
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end90.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !212

do.end90.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end90
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %152 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %152)
  %.not.i.i.i = icmp sgt i32 %152, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !216

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end90.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end90.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt91, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %timeout92 = getelementptr i8, ptr %t, i32 48
  %153 = ptrtoint ptr %timeout92 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 6000, ptr %timeout92, align 4
  %sync_state = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 71
  %154 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %sync_state, align 8
  %and93 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %refcount_inc.exit.if.end97_crit_edge, label %if.then95

refcount_inc.exit.if.end97_crit_edge:             ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

if.then95:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sysctl_sync_threshold.i = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 46
  %156 = ptrtoint ptr %sysctl_sync_threshold.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sysctl_sync_threshold.i, align 8
  call void @ip_vs_sync_conn(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %157) #13
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %refcount_inc.exit.if.end97_crit_edge
  %flags.i152 = getelementptr i8, ptr %t, i32 -16
  %158 = ptrtoint ptr %flags.i152 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %flags.i152, align 4
  %and.i153 = and i32 %159, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  br i1 %tobool.not.i154, label %cond.false.i, label %if.end97.cond.end.i_crit_edge

if.end97.cond.end.i_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %timeout92 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %timeout92, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end97.cond.end.i_crit_edge
  %cond.i = phi i32 [ %161, %cond.false.i ], [ 0, %if.end97.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %162 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %162, %cond.i
  %call.i155 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  %call.i.i.i.i.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt91, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  call void @llvm.prefetch.p0(ptr %refcnt91, i32 1, i32 3, i32 1) #13
  %163 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt91, ptr %refcnt91, i32 1, ptr elementtype(i32) %refcnt91) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i.i158 = extractvalue { i32, i32, i32 } %163, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i158)
  %cmp.i.i.i.i159 = icmp slt i32 %asmresult.i.i.i.i.i.i.i158, 2
  br i1 %cmp.i.i.i.i159, label %if.then3.i.i.i.i160, label %cond.end.i.cleanup_crit_edge, !prof !212

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i.i.i.i160:                              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt91, i32 noundef 4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i.i.i160, %cond.end.i.cleanup_crit_edge, %if.end73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_conn_fill_cport(ptr noundef %cp, i16 noundef zeroext %cport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip_vs_conn_unhash(ptr noundef %cp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ip_vs_conn_no_cport_cnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @ip_vs_conn_no_cport_cnt, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ip_vs_conn_no_cport_cnt, ptr nonnull @ip_vs_conn_no_cport_cnt, i32 1, ptr nonnull elementtype(i32) @ip_vs_conn_no_cport_cnt) #13, !srcloc !223
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and4 = and i32 %4, -2049
  store volatile i32 %and4, ptr %flags, align 4
  %cport5 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %5 = ptrtoint ptr %cport5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %cport, ptr %cport5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  tail call fastcc void @ip_vs_conn_hash(ptr noundef %cp)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_vs_conn_unhash(ptr noundef %cp) unnamed_addr #2 align 64 {
entry:
  %p.i = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p.i) #13
  %0 = getelementptr inbounds i8, ptr %p.i, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %ipvs.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %2 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipvs.i, align 4
  %af.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %4 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %af.i, align 2
  %protocol.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 4
  %caddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %cport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %8 = ptrtoint ptr %cport.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cport.i, align 4
  %10 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %p.i, align 4
  %af2.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 6
  %11 = ptrtoint ptr %af2.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %5, ptr %af2.i.i, align 2
  %protocol4.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 5
  %12 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %protocol4.i.i, align 4
  %caddr5.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 1
  %13 = ptrtoint ptr %caddr5.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %caddr.i, ptr %caddr5.i.i, align 4
  %cport6.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 3
  %14 = ptrtoint ptr %cport6.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %9, ptr %cport6.i.i, align 4
  %vaddr7.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 2
  %15 = ptrtoint ptr %vaddr7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %vaddr7.i.i, align 4
  %vport8.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 4
  %16 = ptrtoint ptr %vport8.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %vport8.i.i, align 2
  %pe.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 7
  %17 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pe.i.i, align 4
  %pe_data.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 8
  %18 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pe_data.i.i, align 4
  %pe.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 29
  %19 = ptrtoint ptr %pe.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pe.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %entry.ip_vs_conn_hashkey_conn.exit_crit_edge, label %if.then.i

entry.ip_vs_conn_hashkey_conn.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_hashkey_conn.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %pe.i.i, align 4
  %pe_data.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 30
  %22 = ptrtoint ptr %pe_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pe_data.i, align 4
  %24 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %pe_data.i.i, align 4
  %pe_data_len.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 31
  %25 = ptrtoint ptr %pe_data_len.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pe_data_len.i, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %0, align 4
  br label %ip_vs_conn_hashkey_conn.exit

ip_vs_conn_hashkey_conn.exit:                     ; preds = %if.then.i, %entry.ip_vs_conn_hashkey_conn.exit_crit_edge
  %call.i = call fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef nonnull %p.i, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p.i) #13
  %and.i = and i32 %call.i, 31
  %arrayidx.i = getelementptr [32 x %struct.ip_vs_aligned_lock], ptr @__ip_vs_conntbl_lock_array, i32 0, i32 %and.i
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #13
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %and = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ip_vs_conn_hashkey_conn.exit.if.end_crit_edge, label %if.then

ip_vs_conn_hashkey_conn.exit.if.end_crit_edge:    ; preds = %ip_vs_conn_hashkey_conn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %ip_vs_conn_hashkey_conn.exit
  %30 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cp, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %cp, i32 0, i32 1
  %32 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pprev2.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %31, ptr %33, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del_rcu.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.then.hlist_del_rcu.exit_crit_edge
  %36 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags, align 4
  %and2 = and i32 %38, -65
  store volatile i32 %and2, ptr %flags, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !221
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %hlist_del_rcu.exit.if.end_crit_edge, !prof !212

hlist_del_rcu.exit.if.end_crit_edge:              ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3.i.i:                                     ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 4) #13
  br label %if.end

if.end:                                           ; preds = %if.then3.i.i, %hlist_del_rcu.exit.if.end_crit_edge, %ip_vs_conn_hashkey_conn.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %ip_vs_conn_hashkey_conn.exit.if.end_crit_edge ], [ 1, %hlist_del_rcu.exit.if.end_crit_edge ], [ 1, %if.then3.i.i ]
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #13
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_conn_hash(ptr noundef %cp) unnamed_addr #2 align 64 {
entry:
  %p.i = alloca %struct.ip_vs_conn_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p.i) #13
  %2 = getelementptr inbounds i8, ptr %p.i, i32 28
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %ipvs.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %4 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipvs.i, align 4
  %af.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %6 = ptrtoint ptr %af.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %af.i, align 2
  %protocol.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %8 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol.i, align 4
  %caddr.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  %cport.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %10 = ptrtoint ptr %cport.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cport.i, align 4
  %12 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %p.i, align 4
  %af2.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 6
  %13 = ptrtoint ptr %af2.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %7, ptr %af2.i.i, align 2
  %protocol4.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 5
  %14 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %9, ptr %protocol4.i.i, align 4
  %caddr5.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 1
  %15 = ptrtoint ptr %caddr5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %caddr.i, ptr %caddr5.i.i, align 4
  %cport6.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 3
  %16 = ptrtoint ptr %cport6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %11, ptr %cport6.i.i, align 4
  %vaddr7.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 2
  %17 = ptrtoint ptr %vaddr7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vaddr7.i.i, align 4
  %vport8.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 4
  %18 = ptrtoint ptr %vport8.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %vport8.i.i, align 2
  %pe.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 7
  %19 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %pe.i.i, align 4
  %pe_data.i.i = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p.i, i32 0, i32 8
  %20 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pe_data.i.i, align 4
  %pe.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 29
  %21 = ptrtoint ptr %pe.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pe.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.ip_vs_conn_hashkey_conn.exit_crit_edge, label %if.then.i

if.end.ip_vs_conn_hashkey_conn.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_hashkey_conn.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pe.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %pe.i.i, align 4
  %pe_data.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 30
  %24 = ptrtoint ptr %pe_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pe_data.i, align 4
  %26 = ptrtoint ptr %pe_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %pe_data.i.i, align 4
  %pe_data_len.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 31
  %27 = ptrtoint ptr %pe_data_len.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pe_data_len.i, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %2, align 4
  br label %ip_vs_conn_hashkey_conn.exit

ip_vs_conn_hashkey_conn.exit:                     ; preds = %if.then.i, %if.end.ip_vs_conn_hashkey_conn.exit_crit_edge
  %call.i = call fastcc i32 @ip_vs_conn_hashkey_param(ptr noundef nonnull %p.i, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p.i) #13
  %and.i = and i32 %call.i, 31
  %arrayidx.i = getelementptr [32 x %struct.ip_vs_aligned_lock], ptr @__ip_vs_conntbl_lock_array, i32 0, i32 %and.i
  call void @_raw_spin_lock_bh(ptr noundef %arrayidx.i) #13
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags, align 4
  %and2 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %do.end

if.then4:                                         ; preds = %ip_vs_conn_hashkey_conn.exit
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags, align 4
  %or = or i32 %33, 64
  store volatile i32 %or, ptr %flags, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #13
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #13, !srcloc !225
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then4.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !212

if.then4.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then4
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !216

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then4.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then4.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #13
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %36 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %36, i32 %call.i
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %cp, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %cp, i32 0, i32 1
  %40 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !226
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %cp, ptr %arrayidx, align 4
  %tobool.not.i1 = icmp eq ptr %38, null
  br i1 %tobool.not.i1, label %refcount_inc.exit.if.end7_crit_edge, label %do.body49.i

refcount_inc.exit.if.end7_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

do.body49.i:                                      ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %cp, ptr %pprev51.i, align 4
  br label %if.end7

do.end:                                           ; preds = %ip_vs_conn_hashkey_conn.exit
  call void @__sanitizer_cov_trace_pc() #15
  %43 = call ptr @llvm.returnaddress(i32 0)
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef %43) #16
  br label %if.end7

if.end7:                                          ; preds = %do.end, %do.body49.i, %refcount_inc.exit.if.end7_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @_raw_spin_unlock_bh(ptr noundef %arrayidx.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_try_bind_dest(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 11
  %4 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipvs, align 4
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %6 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %af, align 2
  %conv = zext i16 %7 to i32
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %8 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dport, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %10 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 4
  %fwmark = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 18
  %14 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fwmark, align 4
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %call = tail call ptr @ip_vs_find_dest(ptr noundef %5, i32 noundef %conv, i32 noundef %conv, ptr noundef %daddr, i16 noundef zeroext %9, ptr noundef %vaddr, i16 noundef zeroext %11, i16 noundef zeroext %13, i32 noundef %15, i32 noundef %17) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end25_crit_edge, label %if.then

rcu_read_lock.exit.if.end25_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then:                                          ; preds = %rcu_read_lock.exit
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %dest3 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %18 = ptrtoint ptr %dest3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dest3, align 4
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %call.i55 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i55, label %if.then5.cleanup_crit_edge, label %land.lhs.true.i58

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i58:                                ; preds = %if.then5
  %call1.i56 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true.i58.cleanup_crit_edge, label %land.lhs.true2.i60

land.lhs.true.i58.cleanup_crit_edge:              ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.i60:                               ; preds = %land.lhs.true.i58
  %.b4.i59 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i59, label %land.lhs.true2.i60.cleanup_crit_edge, label %if.then.i61

land.lhs.true2.i60.cleanup_crit_edge:             ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i61:                                      ; preds = %land.lhs.true2.i60
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 25
  %20 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %app, align 4
  %tobool7.not = icmp eq ptr %21, null
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ip_vs_unbind_app(ptr noundef %cp) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  tail call fastcc void @ip_vs_bind_dest(ptr noundef %cp, ptr noundef nonnull %call)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #13
  %packet_xmit = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 24
  %22 = ptrtoint ptr %packet_xmit to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %packet_xmit, align 4
  %23 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %24)
  %cmp = icmp eq i16 %24, 10
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %and.i = and i32 %26, 7
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  %27 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.then14.if.end15_crit_edge [
    i32 0, label %if.then14.if.end15.sink.split_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 1, label %sw.bb7.i
    i32 4, label %sw.bb9.i
  ]

if.then14.if.end15.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

sw.bb1.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %daf.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %28 = ptrtoint ptr %daf.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %daf.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %29)
  %cmp.i = icmp eq i16 %29, 10
  %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit = select i1 %cmp.i, ptr @ip_vs_tunnel_xmit_v6, ptr @ip_vs_tunnel_xmit
  br label %if.end15.sink.split

sw.bb5.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

sw.bb7.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

sw.bb9.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

if.else:                                          ; preds = %if.end9
  %30 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %and.i, label %if.else.if.end15_crit_edge [
    i32 0, label %if.else.if.end15.sink.split_crit_edge
    i32 2, label %sw.bb1.i72
    i32 3, label %sw.bb5.i76
    i32 1, label %sw.bb7.i78
    i32 4, label %sw.bb9.i80
  ]

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

sw.bb1.i72:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %daf.i69 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %31 = ptrtoint ptr %daf.i69 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %daf.i69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %32)
  %cmp.i70 = icmp eq i16 %32, 10
  %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit93 = select i1 %cmp.i70, ptr @ip_vs_tunnel_xmit_v6, ptr @ip_vs_tunnel_xmit
  br label %if.end15.sink.split

sw.bb5.i76:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

sw.bb7.i78:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

sw.bb9.i80:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %sw.bb9.i80, %sw.bb7.i78, %sw.bb5.i76, %sw.bb1.i72, %if.else.if.end15.sink.split_crit_edge, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb1.i, %if.then14.if.end15.sink.split_crit_edge
  %ip_vs_bypass_xmit.sink = phi ptr [ @ip_vs_bypass_xmit, %sw.bb9.i80 ], [ @ip_vs_null_xmit, %sw.bb7.i78 ], [ @ip_vs_dr_xmit, %sw.bb5.i76 ], [ @ip_vs_bypass_xmit_v6, %sw.bb9.i ], [ @ip_vs_null_xmit, %sw.bb7.i ], [ @ip_vs_dr_xmit_v6, %sw.bb5.i ], [ @ip_vs_nat_xmit_v6, %if.then14.if.end15.sink.split_crit_edge ], [ %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit, %sw.bb1.i ], [ @ip_vs_nat_xmit, %if.else.if.end15.sink.split_crit_edge ], [ %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit93, %sw.bb1.i72 ]
  %33 = ptrtoint ptr %packet_xmit to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ip_vs_bypass_xmit.sink, ptr %packet_xmit, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge, %if.then14.if.end15_crit_edge
  %34 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ipvs, align 4
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol, align 4
  %call18 = tail call ptr @ip_vs_proto_data_get(ptr noundef %35, i16 noundef zeroext %37) #13
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end15.if.end25_crit_edge, label %land.lhs.true

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end15
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call18, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %appcnt, i32 noundef 4) #13
  %38 = ptrtoint ptr %appcnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %appcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool21.not = icmp eq i32 %39, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end25_crit_edge, label %if.then22

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %pp = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call18, i32 0, i32 1
  %40 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp, align 4
  %call23 = tail call i32 @ip_vs_bind_app(ptr noundef %cp, ptr noundef %41) #13
  br label %if.end25

cleanup:                                          ; preds = %if.then.i61, %land.lhs.true2.i60.cleanup_crit_edge, %land.lhs.true.i58.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  br label %cleanup26

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge, %if.end15.if.end25_crit_edge, %rcu_read_lock.exit.if.end25_crit_edge
  %call.i81 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i81, label %if.end25.rcu_read_unlock.exit91_crit_edge, label %land.lhs.true.i84

if.end25.rcu_read_unlock.exit91_crit_edge:        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit91

land.lhs.true.i84:                                ; preds = %if.end25
  %call1.i82 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit91_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit91_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit91

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit91_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit91_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit91

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit91

rcu_read_unlock.exit91:                           ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit91_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit91_crit_edge, %if.end25.rcu_read_unlock.exit91_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  br label %cleanup26

cleanup26:                                        ; preds = %rcu_read_unlock.exit91, %cleanup
  %42 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i62 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i62 to ptr
  %preempt_count.i.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i63, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i63, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_find_dest(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_unbind_app(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_bind_dest(ptr noundef %cp, ptr noundef %dest) unnamed_addr #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  %tobool.not = icmp eq ptr %dest, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !225
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !212

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !216

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_dest_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #13
  br label %ip_vs_dest_hold.exit

ip_vs_dest_hold.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.ip_vs_dest_hold.exit_crit_edge
  %conn_flags1 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %conn_flags1, i32 noundef 4) #13
  %2 = ptrtoint ptr %conn_flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %conn_flags1, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %5)
  %cmp.not = icmp eq i16 %5, 17
  %and = and i32 %3, -8193
  %spec.select = select i1 %cmp.not, i32 %3, i32 %and
  %flags5 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %6 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags5, align 4
  %and6 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %ip_vs_dest_hold.exit.if.end15_crit_edge, label %if.then8

ip_vs_dest_hold.exit.if.end15_crit_edge:          ; preds = %ip_vs_dest_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then8:                                         ; preds = %ip_vs_dest_hold.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and9 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and12 = and i32 %spec.select, -257
  %spec.select105 = select i1 %tobool10.not, i32 %and12, i32 %spec.select
  %and14 = and i32 %7, -136
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %ip_vs_dest_hold.exit.if.end15_crit_edge
  %flags.0 = phi i32 [ %and14, %if.then8 ], [ %7, %ip_vs_dest_hold.exit.if.end15_crit_edge ]
  %conn_flags.2 = phi i32 [ %spec.select105, %if.then8 ], [ %spec.select, %ip_vs_dest_hold.exit.if.end15_crit_edge ]
  %or = or i32 %conn_flags.2, %flags.0
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %or, ptr %flags5, align 4
  %dest17 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 22
  %9 = ptrtoint ptr %dest17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dest, ptr %dest17, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %10 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call18 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call18)
  %cmp19 = icmp sgt i32 %call18, 6
  br i1 %cmp19, label %do.end, label %if.end15.if.end46_crit_edge

if.end15.if.end46_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

do.end:                                           ; preds = %if.end15
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol, align 4
  %conv24 = zext i16 %12 to i32
  %call25 = tail call ptr @ip_vs_proto_name(i32 noundef %conv24) #13
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp.i = icmp eq i16 %14, 10
  %.str.35..str.36.i = select i1 %cmp.i, ptr @.str.35, ptr @.str.36
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i, ptr noundef %caddr) #13
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !212

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %15 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cport, align 4
  %conv28 = zext i16 %16 to i32
  %17 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %18)
  %cmp.i109 = icmp eq i16 %18, 10
  %arrayidx.i110 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i111 = sub nsw i32 159, %call3.i
  %.str.35..str.36.i112 = select i1 %cmp.i109, ptr @.str.35, ptr @.str.36
  %call3.i113 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i110, i32 noundef %sub.i111, ptr noundef nonnull %.str.35..str.36.i112, ptr noundef %vaddr) #13
  %len.0.i114 = add nsw i32 %call3.i, 2
  %add5.i115 = add i32 %len.0.i114, %call3.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i115)
  %cmp7.i116 = icmp ugt i32 %add5.i115, 161
  br i1 %cmp7.i116, label %do.body10.i117, label %ip_vs_dbg_addr.exit119, !prof !212

do.body10.i117:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit119:                           ; preds = %ip_vs_dbg_addr.exit
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %conv33 = zext i16 %20 to i32
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 10
  %21 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %daf, align 2
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %22)
  %cmp.i120 = icmp eq i16 %22, 10
  %arrayidx.i121 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %add5.i115
  %sub.i122 = sub nsw i32 160, %add5.i115
  %.str.35..str.36.i123 = select i1 %cmp.i120, ptr @.str.35, ptr @.str.36
  %call3.i124 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i121, i32 noundef %sub.i122, ptr noundef nonnull %.str.35..str.36.i123, ptr noundef %daddr) #13
  %len.0.i125 = add nuw nsw i32 %add5.i115, 1
  %add5.i126 = add i32 %len.0.i125, %call3.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i126)
  %cmp7.i127 = icmp ugt i32 %add5.i126, 161
  br i1 %cmp7.i127, label %do.body10.i128, label %ip_vs_dbg_addr.exit130, !prof !212

do.body10.i128:                                   ; preds = %ip_vs_dbg_addr.exit119
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit130:                           ; preds = %ip_vs_dbg_addr.exit119
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 2
  %23 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dport, align 2
  %conv37 = zext i16 %24 to i32
  %25 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags5, align 4
  %and.i = and i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %27 = icmp ult i32 %and.i, 5
  br i1 %27, label %switch.lookup, label %ip_vs_dbg_addr.exit130.ip_vs_fwd_tag.exit_crit_edge

ip_vs_dbg_addr.exit130.ip_vs_fwd_tag.exit_crit_edge: ; preds = %ip_vs_dbg_addr.exit130
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_fwd_tag.exit

switch.lookup:                                    ; preds = %ip_vs_dbg_addr.exit130
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ip_vs_bind_dest, i32 0, i32 %and.i
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ip_vs_fwd_tag.exit

ip_vs_fwd_tag.exit:                               ; preds = %switch.lookup, %ip_vs_dbg_addr.exit130.ip_vs_fwd_tag.exit_crit_edge
  %fwd.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 63, %ip_vs_dbg_addr.exit130.ip_vs_fwd_tag.exit_crit_edge ]
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load volatile i16, ptr %state, align 4
  %conv40 = zext i16 %30 to i32
  %31 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags5, align 4
  %refcnt = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #13
  %33 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %refcnt, align 4
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %refcnt.i, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %call25, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv28, ptr noundef %arrayidx.i110, i32 noundef %conv33, ptr noundef %arrayidx.i121, i32 noundef %conv37, i32 noundef %fwd.0.i, i32 noundef %conv40, i32 noundef %32, i32 noundef %34, i32 noundef %36) #16
  br label %if.end46

if.end46:                                         ; preds = %ip_vs_fwd_tag.exit, %if.end15.if.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %and49 = and i32 %or, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.end46
  %and52 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %activeconns = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 15
  %call.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %activeconns, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %activeconns, i32 1, i32 3, i32 1) #13
  %37 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %activeconns, ptr %activeconns, i32 1, ptr elementtype(i32) %activeconns) #13, !srcloc !227
  br label %if.end57

if.else:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %inactconns = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 16
  %call.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %inactconns, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %inactconns, i32 1, i32 3, i32 1) #13
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inactconns, ptr %inactconns, i32 1, ptr elementtype(i32) %inactconns) #13, !srcloc !227
  br label %if.end57

if.else56:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  %persistconns = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 17
  %call.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef %persistconns, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %persistconns, i32 1, i32 3, i32 1) #13
  %39 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %persistconns, ptr %persistconns, i32 1, ptr elementtype(i32) %persistconns) #13, !srcloc !227
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.else, %if.then54
  %u_threshold = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 18
  %40 = ptrtoint ptr %u_threshold to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %u_threshold, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp58.not = icmp eq i32 %41, 0
  br i1 %cmp58.not, label %if.end57.cleanup_crit_edge, label %land.lhs.true

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end57
  %activeconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 15
  %call.i.i.i132 = call zeroext i1 @__kasan_check_read(ptr noundef %activeconns.i, i32 noundef 4) #13
  %42 = ptrtoint ptr %activeconns.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %activeconns.i, align 4
  %inactconns.i = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 16
  %call.i.i3.i = call zeroext i1 @__kasan_check_read(ptr noundef %inactconns.i, i32 noundef 4) #13
  %44 = ptrtoint ptr %inactconns.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %inactconns.i, align 4
  %add.i = add i32 %45, %43
  %46 = ptrtoint ptr %u_threshold to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %u_threshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %47)
  %cmp62.not = icmp ult i32 %add.i, %47
  br i1 %cmp62.not, label %land.lhs.true.cleanup_crit_edge, label %if.then64

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %flags65 = getelementptr inbounds %struct.ip_vs_dest, ptr %dest, i32 0, i32 5
  %48 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags65, align 4
  %or66 = or i32 %49, 2
  store volatile i32 %or66, ptr %flags65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %land.lhs.true.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_data_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_bind_app(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_check_template(ptr noundef %ct, ptr noundef readnone %cdest) local_unnamed_addr #0 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dest1 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 22
  %0 = ptrtoint ptr %dest1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dest1, align 4
  %ipvs2 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 11
  %2 = ptrtoint ptr %ipvs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipvs2, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %sysctl_expire_quiescent_template.i = getelementptr inbounds %struct.netns_ipvs, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %sysctl_expire_quiescent_template.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysctl_expire_quiescent_template.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %lor.lhs.false3.lor.lhs.false5_crit_edge, label %expire_quiescent_template.exit

lor.lhs.false3.lor.lhs.false5_crit_edge:          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false5

expire_quiescent_template.exit:                   ; preds = %lor.lhs.false3
  %weight.i = getelementptr inbounds %struct.ip_vs_dest, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %weight.i, i32 noundef 4) #13
  %8 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %weight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  br i1 %cmp.i.not, label %expire_quiescent_template.exit.do.body_crit_edge, label %expire_quiescent_template.exit.lor.lhs.false5_crit_edge

expire_quiescent_template.exit.lor.lhs.false5_crit_edge: ; preds = %expire_quiescent_template.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false5

expire_quiescent_template.exit.do.body_crit_edge: ; preds = %expire_quiescent_template.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false5:                                   ; preds = %expire_quiescent_template.exit.lor.lhs.false5_crit_edge, %lor.lhs.false3.lor.lhs.false5_crit_edge
  %tobool6.not = icmp eq ptr %cdest, null
  %cmp7.not = icmp eq ptr %1, %cdest
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false5.do.body_crit_edge

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %expire_quiescent_template.exit.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %10 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call8 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, 8
  br i1 %cmp9, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %do.body
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 9
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol, align 4
  %conv = zext i16 %12 to i32
  %call12 = tail call ptr @ip_vs_proto_name(i32 noundef %conv) #13
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp.i66 = icmp eq i16 %14, 10
  %.str.35..str.36.i = select i1 %cmp.i66, ptr @.str.35, ptr @.str.36
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i, ptr noundef %caddr) #13
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !212

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 1
  %15 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cport, align 4
  %conv15 = zext i16 %16 to i32
  %17 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %18)
  %cmp.i67 = icmp eq i16 %18, 10
  %arrayidx.i68 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i69 = sub nsw i32 159, %call3.i
  %.str.35..str.36.i70 = select i1 %cmp.i67, ptr @.str.35, ptr @.str.36
  %call3.i71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i68, i32 noundef %sub.i69, ptr noundef nonnull %.str.35..str.36.i70, ptr noundef %vaddr) #13
  %len.0.i72 = add nsw i32 %call3.i, 2
  %add5.i73 = add i32 %len.0.i72, %call3.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i73)
  %cmp7.i74 = icmp ugt i32 %add5.i73, 161
  br i1 %cmp7.i74, label %do.body10.i75, label %ip_vs_dbg_addr.exit77, !prof !212

do.body10.i75:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit77:                            ; preds = %ip_vs_dbg_addr.exit
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 3
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 10
  %21 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %daf, align 2
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %22)
  %cmp.i78 = icmp eq i16 %22, 10
  %arrayidx.i79 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %add5.i73
  %sub.i80 = sub nsw i32 160, %add5.i73
  %.str.35..str.36.i81 = select i1 %cmp.i78, ptr @.str.35, ptr @.str.36
  %call3.i82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i79, i32 noundef %sub.i80, ptr noundef nonnull %.str.35..str.36.i81, ptr noundef %daddr) #13
  %len.0.i83 = add nuw nsw i32 %add5.i73, 1
  %add5.i84 = add i32 %len.0.i83, %call3.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i84)
  %cmp7.i85 = icmp ugt i32 %add5.i84, 161
  br i1 %cmp7.i85, label %do.body10.i86, label %ip_vs_dbg_addr.exit88, !prof !212

do.body10.i86:                                    ; preds = %ip_vs_dbg_addr.exit77
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit88:                            ; preds = %ip_vs_dbg_addr.exit77
  call void @__sanitizer_cov_trace_pc() #15
  %conv20 = zext i16 %20 to i32
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 2
  %23 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dport, align 2
  %conv24 = zext i16 %24 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %call12, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv15, ptr noundef %arrayidx.i68, i32 noundef %conv20, ptr noundef %arrayidx.i79, i32 noundef %conv24) #16
  br label %if.end

if.end:                                           ; preds = %ip_vs_dbg_addr.exit88, %do.body.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %vport28 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 3
  %25 = ptrtoint ptr %vport28 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vport28, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %26)
  %cmp30.not = icmp eq i16 %26, -1
  br i1 %cmp30.not, label %if.end.if.end41_crit_edge, label %if.then32

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then32:                                        ; preds = %if.end
  %call33 = call fastcc i32 @ip_vs_conn_unhash(ptr noundef %ct)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end41_crit_edge, label %if.then35

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %dport36 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 2
  %27 = ptrtoint ptr %dport36 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %dport36, align 2
  %28 = ptrtoint ptr %vport28 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %vport28, align 4
  %cport38 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 1
  %29 = ptrtoint ptr %cport38 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %cport38, align 4
  call fastcc void @ip_vs_conn_hash(ptr noundef %ct)
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.then32.if.end41_crit_edge, %if.end.if.end41_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end41.cleanup_crit_edge, !prof !212

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.i.i.i:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i.i, %if.end41.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.then3.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_conn_expire_now(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13
  %pprev.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %expires = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expires, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call3 = tail call i32 @mod_timer_pending(ptr noundef %timer, i32 noundef %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer_pending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_conn_new(ptr nocapture noundef readonly %p, i32 noundef %dest_af, ptr nocapture noundef readonly %daddr, i16 noundef zeroext %dport, i32 noundef %flags, ptr noundef %dest, i32 noundef %fwmark) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 4
  %call = tail call ptr @ip_vs_proto_data_get(ptr noundef %1, i16 noundef zeroext %3) #13
  %4 = load ptr, ptr @ip_vs_conn_cachep, align 4
  %call3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 2592) #13
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  %call4 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %cleanup

if.end10:                                         ; preds = %entry
  %5 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call3, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pprev.i, align 4
  %timer = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ip_vs_conn_expire, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @ip_vs_conn_new.__key) #13
  %ipvs14 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 11
  %7 = ptrtoint ptr %ipvs14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %ipvs14, align 8
  %af = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %8 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %af, align 2
  %af15 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %af15 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %af15, align 2
  %conv = trunc i32 %dest_af to i16
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 10
  %11 = ptrtoint ptr %daf to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %daf, align 2
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 4
  %protocol17 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 9
  %14 = ptrtoint ptr %protocol17 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %protocol17, align 4
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 5
  %caddr20 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %15 = ptrtoint ptr %caddr20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caddr20, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %9)
  %cmp.i = icmp eq i16 %9, 10
  br i1 %cmp.i, label %ip_vs_addr_set.exit.thread, label %ip_vs_addr_set.exit

ip_vs_addr_set.exit:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %caddr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %caddr, align 8
  %arrayidx.i = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 5, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx1.i, align 8
  %arrayidx2.i = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 5, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx2.i, align 4
  %cport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %23 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cport, align 4
  %cport21 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 1
  %25 = ptrtoint ptr %cport21 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %cport21, align 8
  br label %if.end.i168

ip_vs_addr_set.exit.thread:                       ; preds = %if.end10
  %26 = call ptr @memcpy(ptr %caddr, ptr %16, i32 16)
  %cport200 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %27 = ptrtoint ptr %cport200 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cport200, align 4
  %cport21201 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 1
  %29 = ptrtoint ptr %cport21201 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %cport21201, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp24202 = icmp eq i16 %13, 0
  br i1 %cmp24202, label %ip_vs_addr_set.exit.thread.if.end.i168_crit_edge, label %if.then.i164

ip_vs_addr_set.exit.thread.if.end.i168_crit_edge: ; preds = %ip_vs_addr_set.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i168

if.then.i164:                                     ; preds = %ip_vs_addr_set.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  %vaddr204 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 6
  %vaddr28205 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %30 = ptrtoint ptr %vaddr28205 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vaddr28205, align 4
  %32 = call ptr @memcpy(ptr %vaddr204, ptr %31, i32 16)
  br label %ip_vs_addr_set.exit169

if.end.i168:                                      ; preds = %ip_vs_addr_set.exit.thread.if.end.i168_crit_edge, %ip_vs_addr_set.exit
  %vaddr199 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 6
  %.in = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %33 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.in, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %37 = ptrtoint ptr %vaddr199 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %vaddr199, align 8
  %arrayidx.i165 = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 6, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx.i165, align 4
  %arrayidx1.i166 = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 6, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx1.i166 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx1.i166, align 8
  %arrayidx2.i167 = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 6, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx2.i167 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx2.i167, align 4
  br label %ip_vs_addr_set.exit169

ip_vs_addr_set.exit169:                           ; preds = %if.end.i168, %if.then.i164
  %vport = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %41 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vport, align 2
  %vport29 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 3
  %43 = ptrtoint ptr %vport29 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %vport29, align 4
  %44 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %daf, align 2
  %daddr32 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %45)
  %cmp.i170 = icmp eq i16 %45, 10
  br i1 %cmp.i170, label %if.then.i171, label %if.end.i175

if.then.i171:                                     ; preds = %ip_vs_addr_set.exit169
  call void @__sanitizer_cov_trace_pc() #15
  %46 = call ptr @memcpy(ptr %daddr32, ptr %daddr, i32 16)
  br label %ip_vs_addr_set.exit176

if.end.i175:                                      ; preds = %ip_vs_addr_set.exit169
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %daddr, align 4
  %49 = ptrtoint ptr %daddr32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %daddr32, align 8
  %arrayidx.i172 = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 7, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx.i172, align 4
  %arrayidx1.i173 = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 7, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx1.i173 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx1.i173, align 8
  %arrayidx2.i174 = getelementptr %struct.ip_vs_conn, ptr %call3, i32 0, i32 7, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx2.i174 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx2.i174, align 4
  br label %ip_vs_addr_set.exit176

ip_vs_addr_set.exit176:                           ; preds = %if.end.i175, %if.then.i171
  %dport33 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 2
  %53 = ptrtoint ptr %dport33 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %dport, ptr %dport33, align 2
  %flags34 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 8
  %54 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %flags, ptr %flags34, align 8
  %fwmark35 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 18
  %55 = ptrtoint ptr %fwmark35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %fwmark, ptr %fwmark35, align 4
  %and = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %ip_vs_addr_set.exit176.if.else_crit_edge, label %land.lhs.true

ip_vs_addr_set.exit176.if.else_crit_edge:         ; preds = %ip_vs_addr_set.exit176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %ip_vs_addr_set.exit176
  %pe = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %56 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pe, align 4
  %tobool37.not = icmp eq ptr %57, null
  br i1 %tobool37.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true41

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true41:                                  ; preds = %land.lhs.true
  %module = getelementptr inbounds %struct.ip_vs_pe, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %module, align 4
  %tobool43.not = icmp eq ptr %59, null
  br i1 %tobool43.not, label %land.lhs.true41.if.end47_crit_edge, label %if.then44

land.lhs.true41.if.end47_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__module_get(ptr noundef nonnull %59) #13
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %land.lhs.true41.if.end47_crit_edge
  %60 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pe, align 4
  %pe49 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 29
  %62 = ptrtoint ptr %pe49 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %pe49, align 8
  %pe_data = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %63 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pe_data, align 4
  %pe_data50 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 30
  %65 = ptrtoint ptr %pe_data50 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %pe_data50, align 4
  %pe_data_len = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 9
  %66 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pe_data_len, align 4
  br label %do.body56

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %ip_vs_addr_set.exit176.if.else_crit_edge
  %pe52 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 29
  %68 = ptrtoint ptr %pe52 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %pe52, align 8
  %pe_data53 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 30
  %69 = ptrtoint ptr %pe_data53 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pe_data53, align 4
  br label %do.body56

do.body56:                                        ; preds = %if.else, %if.end47
  %.sink = phi i8 [ %67, %if.end47 ], [ 0, %if.else ]
  %pe_data_len51 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 31
  %70 = ptrtoint ptr %pe_data_len51 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %.sink, ptr %pe_data_len51, align 8
  %lock = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @ip_vs_conn_new.__key.15, i16 noundef signext 3) #13
  %refcnt = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #13
  %71 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 1, ptr %refcnt, align 4
  %control = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 20
  %72 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %control, align 4
  %n_control = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %n_control, i32 noundef 4) #13
  %73 = ptrtoint ptr %n_control to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 0, ptr %n_control, align 8
  %in_pkts = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 23
  %call.i.i159 = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_pkts, i32 noundef 4) #13
  %74 = ptrtoint ptr %in_pkts to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %in_pkts, align 8
  %packet_xmit = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 24
  %75 = ptrtoint ptr %packet_xmit to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %packet_xmit, align 4
  %app = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 25
  %76 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %app, align 8
  %app_data = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 26
  %77 = ptrtoint ptr %app_data to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %app_data, align 4
  %delta = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 27, i32 1
  %78 = ptrtoint ptr %delta to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %delta, align 4
  %delta60 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 28, i32 1
  %79 = ptrtoint ptr %delta60 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %delta60, align 8
  %conn_count = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 8
  %call.i.i160 = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_count, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %conn_count, i32 1, i32 3, i32 1) #13
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_count, ptr %conn_count, i32 1, ptr elementtype(i32) %conn_count) #13, !srcloc !227
  %and61 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body56.if.end64_crit_edge, label %if.then63

do.body56.if.end64_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then63:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i161 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ip_vs_conn_no_cport_cnt, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @ip_vs_conn_no_cport_cnt, i32 1, i32 3, i32 1) #13
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ip_vs_conn_no_cport_cnt, ptr nonnull @ip_vs_conn_no_cport_cnt, i32 1, ptr nonnull elementtype(i32) @ip_vs_conn_no_cport_cnt) #13, !srcloc !227
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %do.body56.if.end64_crit_edge
  %dest65 = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 22
  %82 = ptrtoint ptr %dest65 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %dest65, align 4
  tail call fastcc void @ip_vs_bind_dest(ptr noundef nonnull %call3, ptr noundef %dest)
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 16
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %83)
  store volatile i16 0, ptr %state, align 8
  %old_state = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 17
  %84 = ptrtoint ptr %old_state to i32
  call void @__asan_store2_noabort(i32 %84)
  store volatile i16 0, ptr %old_state, align 2
  %timeout = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 14
  %85 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 300, ptr %timeout, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %and66 = and i32 %86, -4
  %sync_endtime = getelementptr inbounds %struct.ip_vs_conn, ptr %call3, i32 0, i32 19
  %87 = ptrtoint ptr %sync_endtime to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and66, ptr %sync_endtime, align 8
  %88 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %89)
  %cmp69 = icmp eq i16 %89, 10
  %90 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags34, align 8
  %and.i = and i32 %91, 7
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.end64
  %92 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and.i, label %if.then71.if.end73_crit_edge [
    i32 0, label %if.then71.if.end73.sink.split_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb5.i
    i32 1, label %sw.bb7.i
    i32 4, label %sw.bb9.i
  ]

if.then71.if.end73.sink.split_crit_edge:          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

if.then71.if.end73_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

sw.bb1.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %daf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %94)
  %cmp.i177 = icmp eq i16 %94, 10
  %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit = select i1 %cmp.i177, ptr @ip_vs_tunnel_xmit_v6, ptr @ip_vs_tunnel_xmit
  br label %if.end73.sink.split

sw.bb5.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

sw.bb7.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

sw.bb9.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

if.else72:                                        ; preds = %if.end64
  %95 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and.i, label %if.else72.if.end73_crit_edge [
    i32 0, label %if.else72.if.end73.sink.split_crit_edge
    i32 2, label %sw.bb1.i186
    i32 3, label %sw.bb5.i190
    i32 1, label %sw.bb7.i192
    i32 4, label %sw.bb9.i194
  ]

if.else72.if.end73.sink.split_crit_edge:          ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

if.else72.if.end73_crit_edge:                     ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

sw.bb1.i186:                                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %daf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %97)
  %cmp.i184 = icmp eq i16 %97, 10
  %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit208 = select i1 %cmp.i184, ptr @ip_vs_tunnel_xmit_v6, ptr @ip_vs_tunnel_xmit
  br label %if.end73.sink.split

sw.bb5.i190:                                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

sw.bb7.i192:                                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

sw.bb9.i194:                                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %sw.bb9.i194, %sw.bb7.i192, %sw.bb5.i190, %sw.bb1.i186, %if.else72.if.end73.sink.split_crit_edge, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %sw.bb1.i, %if.then71.if.end73.sink.split_crit_edge
  %ip_vs_bypass_xmit.sink = phi ptr [ @ip_vs_bypass_xmit, %sw.bb9.i194 ], [ @ip_vs_null_xmit, %sw.bb7.i192 ], [ @ip_vs_dr_xmit, %sw.bb5.i190 ], [ @ip_vs_bypass_xmit_v6, %sw.bb9.i ], [ @ip_vs_null_xmit, %sw.bb7.i ], [ @ip_vs_dr_xmit_v6, %sw.bb5.i ], [ @ip_vs_nat_xmit_v6, %if.then71.if.end73.sink.split_crit_edge ], [ %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit, %sw.bb1.i ], [ @ip_vs_nat_xmit, %if.else72.if.end73.sink.split_crit_edge ], [ %ip_vs_tunnel_xmit_v6.ip_vs_tunnel_xmit208, %sw.bb1.i186 ]
  %98 = ptrtoint ptr %packet_xmit to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %ip_vs_bypass_xmit.sink, ptr %packet_xmit, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.else72.if.end73_crit_edge, %if.then71.if.end73_crit_edge
  %tobool74.not = icmp eq ptr %call, null
  br i1 %tobool74.not, label %if.end73.if.end81_crit_edge, label %land.rhs

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

land.rhs:                                         ; preds = %if.end73
  %appcnt = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 3
  %call.i.i162 = tail call zeroext i1 @__kasan_check_read(ptr noundef %appcnt, i32 noundef 4) #13
  %99 = ptrtoint ptr %appcnt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %appcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool76.not = icmp eq i32 %100, 0
  br i1 %tobool76.not, label %land.rhs.if.end81_crit_edge, label %if.then79, !prof !216

land.rhs.if.end81_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then79:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %pp = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call, i32 0, i32 1
  %101 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pp, align 4
  %call80 = tail call i32 @ip_vs_bind_app(ptr noundef nonnull %call3, ptr noundef %102) #13
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.rhs.if.end81_crit_edge, %if.end73.if.end81_crit_edge
  %sysctl_conntrack.i = getelementptr inbounds %struct.netns_ipvs, ptr %1, i32 0, i32 34
  %103 = ptrtoint ptr %sysctl_conntrack.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sysctl_conntrack.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool83.not = icmp eq i32 %104, 0
  br i1 %tobool83.not, label %if.end81.if.end86_crit_edge, label %if.then84

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags34, align 8
  %or = or i32 %106, 65536
  store volatile i32 %or, ptr %flags34, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.end81.if.end86_crit_edge
  tail call fastcc void @ip_vs_conn_hash(ptr noundef nonnull %call3)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end, %do.body.cleanup_crit_edge
  ret ptr %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_random_dropentry(ptr noundef readnone %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load i32, ptr @ip_vs_conn_tab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %4)
  %cmp189 = icmp sgt i32 %4, 31
  br i1 %cmp189, label %rcu_read_lock.exit.for.body_crit_edge, label %rcu_read_lock.exit.for.end97_crit_edge

rcu_read_lock.exit.for.end97_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end97

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %idx.0190 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ 0, %rcu_read_lock.exit.for.body_crit_edge ]
  %call = tail call i32 @prandom_u32() #13
  %5 = load i32, ptr @ip_vs_conn_tab_mask, align 4
  %and = and i32 %5, %call
  %call1 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b116 = load i1, ptr @ip_vs_random_dropentry.__warned, align 1
  br i1 %.b116, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_random_dropentry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1313, ptr noundef nonnull @.str.5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %6 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %6, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cp.0185 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not186 = icmp eq ptr %cp.0185, null
  br i1 %tobool14.not186, label %do.end.for.end_crit_edge, label %do.end.for.body15_crit_edge

do.end.for.body15_crit_edge:                      ; preds = %do.end
  br label %for.body15

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %do.end.for.body15_crit_edge
  %cp.0187 = phi ptr [ %cp.0, %for.inc.for.body15_crit_edge ], [ %cp.0185, %do.end.for.body15_crit_edge ]
  %ipvs16 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 11
  %8 = ptrtoint ptr %ipvs16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipvs16, align 4
  %cmp17.not = icmp eq ptr %9, %ipvs
  br i1 %cmp17.not, label %if.end19, label %for.body15.for.inc_crit_edge

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end19:                                         ; preds = %for.body15
  %n_control = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_control, i32 noundef 4) #13
  %10 = ptrtoint ptr %n_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %n_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end23:                                         ; preds = %if.end19
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and24 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end23
  %dest.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 22
  %14 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dest.i, align 4
  %tobool.not.i118 = icmp eq ptr %15, null
  br i1 %tobool.not.i118, label %if.then26.if.end29_crit_edge, label %if.end.i

if.then26.if.end29_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end.i:                                         ; preds = %if.then26
  %svc2.i = getelementptr inbounds %struct.ip_vs_dest, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %svc2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %svc2.i, align 8
  %call.i119 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool4.not.i = icmp eq i32 %call.i119, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i120, label %if.end.i.do.end12.i_crit_edge

if.end.i.do.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true.i120:                               ; preds = %if.end.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i120.do.end12.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i120.do.end12.i_crit_edge:          ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i120
  %.b19.i = load i1, ptr @ip_vs_conn_ops_mode.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true7.i.do.end12.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end12.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_conn_ops_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1296, ptr noundef nonnull @.str.60) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then9.i, %land.lhs.true7.i.do.end12.i_crit_edge, %land.lhs.true.i120.do.end12.i_crit_edge, %if.end.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %do.end12.i.if.end29_crit_edge, label %ip_vs_conn_ops_mode.exit

do.end12.i.if.end29_crit_edge:                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

ip_vs_conn_ops_mode.exit:                         ; preds = %do.end12.i
  %flags.i = getelementptr inbounds %struct.ip_vs_service, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool15.i.not, label %ip_vs_conn_ops_mode.exit.if.end29_crit_edge, label %ip_vs_conn_ops_mode.exit.try_drop_crit_edge

ip_vs_conn_ops_mode.exit.try_drop_crit_edge:      ; preds = %ip_vs_conn_ops_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_drop

ip_vs_conn_ops_mode.exit.if.end29_crit_edge:      ; preds = %ip_vs_conn_ops_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %ip_vs_conn_ops_mode.exit.if.end29_crit_edge, %do.end12.i.if.end29_crit_edge, %if.then26.if.end29_crit_edge
  %state = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 16
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load volatile i16, ptr %state, align 4
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool31.not = icmp eq i16 %22, 0
  br i1 %tobool31.not, label %if.end29.do.body68_crit_edge, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end29.do.body68_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68

if.end34:                                         ; preds = %if.end23
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 9
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol, align 4
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %24, label %if.end34.try_drop_crit_edge [
    i16 6, label %if.then38
    i16 132, label %if.then50
  ]

if.end34.try_drop_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %try_drop

if.then38:                                        ; preds = %if.end34
  %state39 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 16
  %26 = ptrtoint ptr %state39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load volatile i16, ptr %state39, align 4
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %27, label %if.then38.for.inc_crit_edge [
    i16 3, label %if.then38.do.body68_crit_edge
    i16 10, label %if.then38.do.body68_crit_edge193
    i16 1, label %sw.bb41
  ]

if.then38.do.body68_crit_edge193:                 ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68

if.then38.do.body68_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb41:                                          ; preds = %if.then38
  %timeout.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 14
  %29 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %timeout.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %expires.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %expires.i, align 4
  %add1.neg.i = add i32 %30, -6000
  %add.i = add i32 %add1.neg.i, %31
  %sub.i = sub i32 %add.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.bb41.for.inc_crit_edge, label %if.end.i121

sw.bb41.for.inc_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i121:                                      ; preds = %sw.bb41
  %in_pkts.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_pkts.i, i32 noundef 4) #13
  %34 = ptrtoint ptr %in_pkts.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %in_pkts.i, align 4
  %36 = add i32 %35, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %36)
  %37 = icmp ult i32 %36, -8
  br i1 %37, label %if.end.i121.for.inc_crit_edge, label %if.end7.i

if.end.i121.for.inc_crit_edge:                    ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7.i:                                        ; preds = %if.end.i121
  %arrayidx.i = getelementptr [9 x i8], ptr @todrop_entry.todrop_rate, i32 0, i32 %35
  %arrayidx8.i = getelementptr [9 x i8], ptr @todrop_entry.todrop_counter, i32 0, i32 %35
  %38 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx8.i, align 1
  %dec.i = add i8 %39, -1
  store i8 %dec.i, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp9.not.i = icmp eq i8 %dec.i, 0
  br i1 %cmp9.not.i, label %if.end7.i.do.body68.sink.split_crit_edge, label %if.end7.i.for.inc_crit_edge

if.end7.i.for.inc_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7.i.do.body68.sink.split_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68.sink.split

if.then50:                                        ; preds = %if.end34
  %state51 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 16
  %40 = ptrtoint ptr %state51 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load volatile i16, ptr %state51, align 4
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %41, label %if.then50.for.inc_crit_edge [
    i16 1, label %if.then50.do.body68_crit_edge
    i16 2, label %if.then50.do.body68_crit_edge194
    i16 8, label %sw.bb54
  ]

if.then50.do.body68_crit_edge194:                 ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68

if.then50.do.body68_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb54:                                          ; preds = %if.then50
  %timeout.i124 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 14
  %43 = ptrtoint ptr %timeout.i124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %timeout.i124, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %expires.i125 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %expires.i125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %expires.i125, align 4
  %add1.neg.i126 = add i32 %44, -6000
  %add.i127 = add i32 %add1.neg.i126, %45
  %sub.i128 = sub i32 %add.i127, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i128)
  %cmp.i129 = icmp slt i32 %sub.i128, 0
  br i1 %cmp.i129, label %sw.bb54.for.inc_crit_edge, label %if.end.i132

sw.bb54.for.inc_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i132:                                      ; preds = %sw.bb54
  %in_pkts.i130 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 23
  %call.i.i.i131 = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_pkts.i130, i32 noundef 4) #13
  %48 = ptrtoint ptr %in_pkts.i130 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %in_pkts.i130, align 4
  %50 = add i32 %49, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %50)
  %51 = icmp ult i32 %50, -8
  br i1 %51, label %if.end.i132.for.inc_crit_edge, label %if.end7.i139

if.end.i132.for.inc_crit_edge:                    ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7.i139:                                     ; preds = %if.end.i132
  %arrayidx.i133 = getelementptr [9 x i8], ptr @todrop_entry.todrop_rate, i32 0, i32 %49
  %arrayidx8.i136 = getelementptr [9 x i8], ptr @todrop_entry.todrop_counter, i32 0, i32 %49
  %52 = ptrtoint ptr %arrayidx8.i136 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx8.i136, align 1
  %dec.i137 = add i8 %53, -1
  store i8 %dec.i137, ptr %arrayidx8.i136, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i137)
  %cmp9.not.i138 = icmp eq i8 %dec.i137, 0
  br i1 %cmp9.not.i138, label %if.end7.i139.do.body68.sink.split_crit_edge, label %if.end7.i139.for.inc_crit_edge

if.end7.i139.for.inc_crit_edge:                   ; preds = %if.end7.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7.i139.do.body68.sink.split_crit_edge:      ; preds = %if.end7.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68.sink.split

try_drop:                                         ; preds = %if.end34.try_drop_crit_edge, %ip_vs_conn_ops_mode.exit.try_drop_crit_edge
  %timeout.i143 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 14
  %54 = ptrtoint ptr %timeout.i143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %timeout.i143, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %expires.i144 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 13, i32 1
  %57 = ptrtoint ptr %expires.i144 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %expires.i144, align 4
  %add1.neg.i145 = add i32 %55, -6000
  %add.i146 = add i32 %add1.neg.i145, %56
  %sub.i147 = sub i32 %add.i146, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i147)
  %cmp.i148 = icmp slt i32 %sub.i147, 0
  br i1 %cmp.i148, label %try_drop.for.inc_crit_edge, label %if.end.i151

try_drop.for.inc_crit_edge:                       ; preds = %try_drop
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i151:                                      ; preds = %try_drop
  %in_pkts.i149 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 23
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_pkts.i149, i32 noundef 4) #13
  %59 = ptrtoint ptr %in_pkts.i149 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %in_pkts.i149, align 4
  %61 = add i32 %60, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %61)
  %62 = icmp ult i32 %61, -8
  br i1 %62, label %if.end.i151.for.inc_crit_edge, label %if.end7.i158

if.end.i151.for.inc_crit_edge:                    ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7.i158:                                     ; preds = %if.end.i151
  %arrayidx.i152 = getelementptr [9 x i8], ptr @todrop_entry.todrop_rate, i32 0, i32 %60
  %arrayidx8.i155 = getelementptr [9 x i8], ptr @todrop_entry.todrop_counter, i32 0, i32 %60
  %63 = ptrtoint ptr %arrayidx8.i155 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx8.i155, align 1
  %dec.i156 = add i8 %64, -1
  store i8 %dec.i156, ptr %arrayidx8.i155, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i156)
  %cmp9.not.i157 = icmp eq i8 %dec.i156, 0
  br i1 %cmp9.not.i157, label %if.end7.i158.do.body68.sink.split_crit_edge, label %if.end7.i158.for.inc_crit_edge

if.end7.i158.for.inc_crit_edge:                   ; preds = %if.end7.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7.i158.do.body68.sink.split_crit_edge:      ; preds = %if.end7.i158
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body68.sink.split

do.body68.sink.split:                             ; preds = %if.end7.i158.do.body68.sink.split_crit_edge, %if.end7.i139.do.body68.sink.split_crit_edge, %if.end7.i.do.body68.sink.split_crit_edge
  %arrayidx.i152.sink = phi ptr [ %arrayidx.i, %if.end7.i.do.body68.sink.split_crit_edge ], [ %arrayidx.i133, %if.end7.i139.do.body68.sink.split_crit_edge ], [ %arrayidx.i152, %if.end7.i158.do.body68.sink.split_crit_edge ]
  %arrayidx8.i155.sink = phi ptr [ %arrayidx8.i, %if.end7.i.do.body68.sink.split_crit_edge ], [ %arrayidx8.i136, %if.end7.i139.do.body68.sink.split_crit_edge ], [ %arrayidx8.i155, %if.end7.i158.do.body68.sink.split_crit_edge ]
  %65 = ptrtoint ptr %arrayidx.i152.sink to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i152.sink, align 1
  %67 = ptrtoint ptr %arrayidx8.i155.sink to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx8.i155.sink, align 1
  br label %do.body68

do.body68:                                        ; preds = %do.body68.sink.split, %if.then50.do.body68_crit_edge, %if.then50.do.body68_crit_edge194, %if.then38.do.body68_crit_edge, %if.then38.do.body68_crit_edge193, %if.end29.do.body68_crit_edge
  %call69 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call69)
  %cmp70 = icmp sgt i32 %call69, 3
  br i1 %cmp70, label %do.end75, label %do.body68.do.end80_crit_edge

do.body68.do.end80_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end80

do.end75:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #15
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #16
  br label %do.end80

do.end80:                                         ; preds = %do.end75, %do.body68.do.end80_crit_edge
  %timer.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 13
  %call.i162 = tail call i32 @del_timer(ptr noundef %timer.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %do.end80.for.inc_crit_edge, label %if.then.i164

do.end80.for.inc_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i164:                                     ; preds = %do.end80
  %control.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 20
  %68 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %control.i, align 4
  %tobool1.not.i = icmp eq ptr %69, null
  br i1 %tobool1.not.i, label %if.then.i164.if.end.i166_crit_edge, label %if.then2.i

if.then.i164.if.end.i166_crit_edge:               ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i166

if.then2.i:                                       ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i165 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0187, i32 0, i32 14
  %70 = ptrtoint ptr %timeout.i165 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 0, ptr %timeout.i165, align 4
  br label %if.end.i166

if.end.i166:                                      ; preds = %if.then2.i, %if.then.i164.if.end.i166_crit_edge
  tail call void @ip_vs_conn_expire(ptr noundef %timer.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end.i166, %do.end80.for.inc_crit_edge, %if.end7.i158.for.inc_crit_edge, %if.end.i151.for.inc_crit_edge, %try_drop.for.inc_crit_edge, %if.end7.i139.for.inc_crit_edge, %if.end.i132.for.inc_crit_edge, %sw.bb54.for.inc_crit_edge, %if.then50.for.inc_crit_edge, %if.end7.i.for.inc_crit_edge, %if.end.i121.for.inc_crit_edge, %sw.bb41.for.inc_crit_edge, %if.then38.for.inc_crit_edge, %if.end29.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %for.body15.for.inc_crit_edge
  %71 = ptrtoint ptr %cp.0187 to i32
  call void @__asan_load4_noabort(i32 %71)
  %cp.0 = load volatile ptr, ptr %cp.0187, align 4
  %tobool14.not = icmp eq ptr %cp.0, null
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call fastcc void @cond_resched_rcu()
  %inc = add nuw nsw i32 %idx.0190, 1
  %72 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %shr = ashr i32 %72, 5
  %cmp = icmp slt i32 %inc, %shr
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end97_crit_edge

for.end.for.end97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end97

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end97:                                        ; preds = %for.end.for.end97_crit_edge, %rcu_read_lock.exit.for.end97_crit_edge
  %call.i167 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i167, label %for.end97.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i170

for.end97.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i170:                               ; preds = %for.end97
  %call1.i168 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool.not.i169 = icmp eq i32 %call1.i168, 0
  br i1 %tobool.not.i169, label %land.lhs.true.i170.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i172

land.lhs.true.i170.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i172:                              ; preds = %land.lhs.true.i170
  %.b4.i171 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i171, label %land.lhs.true2.i172.rcu_read_unlock.exit_crit_edge, label %if.then.i173

land.lhs.true2.i172.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i173:                                     ; preds = %land.lhs.true2.i172
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i173, %land.lhs.true2.i172.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i170.rcu_read_unlock.exit_crit_edge, %for.end97.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %73 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i174 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i.i.i174 to ptr
  %preempt_count.i.i.i.i175 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %preempt_count.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %preempt_count.i.i.i.i175, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i175, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cond_resched_rcu() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i1, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %entry
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i8 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  tail call void @__might_resched(ptr noundef nonnull @.str.61, i32 noundef 2089, i32 noundef 0) #13
  %call.i10 = tail call i32 @__cond_resched() #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_expire_nodest_conn_flush(ptr noundef readonly %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load i32, ptr @ip_vs_conn_tab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp124 = icmp sgt i32 %4, 0
  br i1 %cmp124, label %do.body.lr.ph, label %rcu_read_lock.exit.for.end78_crit_edge

rcu_read_lock.exit.for.end78_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

do.body.lr.ph:                                    ; preds = %rcu_read_lock.exit
  %enable = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 1
  br label %do.body

for.cond:                                         ; preds = %for.end
  %inc = add nuw nsw i32 %idx.0125, 1
  %5 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.cond.do.body_crit_edge, label %for.cond.for.end78_crit_edge

for.cond.for.end78_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %do.body.lr.ph
  %idx.0125 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.cond.do.body_crit_edge ]
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b96 = load i1, ptr @ip_vs_expire_nodest_conn_flush.__warned, align 1
  br i1 %.b96, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_expire_nodest_conn_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1414, ptr noundef nonnull @.str.5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %6 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %6, i32 %idx.0125
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cp.0121 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not122 = icmp eq ptr %cp.0121, null
  br i1 %tobool13.not122, label %do.end.for.end_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %cp.0123 = phi ptr [ %cp.0, %for.inc.for.body14_crit_edge ], [ %cp.0121, %do.end.for.body14_crit_edge ]
  %ipvs15 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0123, i32 0, i32 11
  %8 = ptrtoint ptr %ipvs15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipvs15, align 4
  %cmp16.not = icmp eq ptr %9, %ipvs
  br i1 %cmp16.not, label %if.end18, label %for.body14.for.inc_crit_edge

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end18:                                         ; preds = %for.body14
  %dest19 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0123, i32 0, i32 22
  %10 = ptrtoint ptr %dest19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dest19, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end18.for.inc_crit_edge, label %lor.lhs.false

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end18
  %flags = getelementptr inbounds %struct.ip_vs_dest, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end23, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end23:                                         ; preds = %lor.lhs.false
  %n_control = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0123, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_control, i32 noundef 4) #13
  %14 = ptrtoint ptr %n_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %n_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end27:                                         ; preds = %if.end23
  %control = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0123, i32 0, i32 20
  %16 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %control, align 4
  %call29 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call29)
  %cmp30 = icmp sgt i32 %call29, 3
  br i1 %cmp30, label %do.end34, label %if.end27.do.end39_crit_edge

if.end27.do.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %if.end27.do.end39_crit_edge
  %timer.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0123, i32 0, i32 13
  %call.i99 = tail call i32 @del_timer(ptr noundef %timer.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %do.end39.ip_vs_conn_del.exit_crit_edge, label %if.then.i101

do.end39.ip_vs_conn_del.exit_crit_edge:           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_del.exit

if.then.i101:                                     ; preds = %do.end39
  %18 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %control, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %if.then.i101.if.end.i_crit_edge, label %if.then2.i

if.then.i101.if.end.i_crit_edge:                  ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0123, i32 0, i32 14
  %20 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %timeout.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i101.if.end.i_crit_edge
  tail call void @ip_vs_conn_expire(ptr noundef %timer.i) #13
  br label %ip_vs_conn_del.exit

ip_vs_conn_del.exit:                              ; preds = %if.end.i, %do.end39.ip_vs_conn_del.exit_crit_edge
  %tobool40.not = icmp eq ptr %17, null
  br i1 %tobool40.not, label %ip_vs_conn_del.exit.for.inc_crit_edge, label %land.lhs.true41

ip_vs_conn_del.exit.for.inc_crit_edge:            ; preds = %ip_vs_conn_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true41:                                  ; preds = %ip_vs_conn_del.exit
  %n_control42 = getelementptr inbounds %struct.ip_vs_conn, ptr %17, i32 0, i32 21
  %call.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_control42, i32 noundef 4) #13
  %21 = ptrtoint ptr %n_control42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %n_control42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool44.not = icmp eq i32 %22, 0
  br i1 %tobool44.not, label %do.body46, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body46:                                        ; preds = %land.lhs.true41
  %call47 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, 3
  br i1 %cmp48, label %do.end52, label %do.body46.do.end57_crit_edge

do.body46.do.end57_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end57

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %do.end57

do.end57:                                         ; preds = %do.end52, %do.body46.do.end57_crit_edge
  %timer.i102 = getelementptr inbounds %struct.ip_vs_conn, ptr %17, i32 0, i32 13
  %call.i103 = tail call i32 @del_timer(ptr noundef %timer.i102) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %do.end57.for.inc_crit_edge, label %if.then.i107

do.end57.for.inc_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i107:                                     ; preds = %do.end57
  %control.i105 = getelementptr inbounds %struct.ip_vs_conn, ptr %17, i32 0, i32 20
  %23 = ptrtoint ptr %control.i105 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %control.i105, align 4
  %tobool1.not.i106 = icmp eq ptr %24, null
  br i1 %tobool1.not.i106, label %if.then.i107.if.end.i110_crit_edge, label %if.then2.i109

if.then.i107.if.end.i110_crit_edge:               ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i110

if.then2.i109:                                    ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i108 = getelementptr inbounds %struct.ip_vs_conn, ptr %17, i32 0, i32 14
  %25 = ptrtoint ptr %timeout.i108 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %timeout.i108, align 4
  br label %if.end.i110

if.end.i110:                                      ; preds = %if.then2.i109, %if.then.i107.if.end.i110_crit_edge
  tail call void @ip_vs_conn_expire(ptr noundef %timer.i102) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end.i110, %do.end57.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %ip_vs_conn_del.exit.for.inc_crit_edge, %if.end23.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end18.for.inc_crit_edge, %for.body14.for.inc_crit_edge
  %26 = ptrtoint ptr %cp.0123 to i32
  call void @__asan_load4_noabort(i32 %26)
  %cp.0 = load volatile ptr, ptr %cp.0123, align 4
  %tobool13.not = icmp eq ptr %cp.0, null
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call fastcc void @cond_resched_rcu()
  %27 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool74.not = icmp eq i32 %28, 0
  br i1 %tobool74.not, label %for.end.for.end78_crit_edge, label %for.cond

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.end78:                                        ; preds = %for.end.for.end78_crit_edge, %for.cond.for.end78_crit_edge, %rcu_read_lock.exit.for.end78_crit_edge
  %call.i112 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i112, label %for.end78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i115

for.end78.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i115:                               ; preds = %for.end78
  %call1.i113 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool.not.i114, label %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i117

land.lhs.true.i115.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i117:                              ; preds = %land.lhs.true.i115
  %.b4.i116 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116, label %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, label %if.then.i118

land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i118:                                     ; preds = %land.lhs.true2.i117
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i118, %land.lhs.true2.i117.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i115.rcu_read_unlock.exit_crit_edge, %for.end78.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %29 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i119 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i119 to ptr
  %preempt_count.i.i.i.i120 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i120, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i120, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_conn_net_init(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_count = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_count, i32 noundef 4) #13
  %0 = ptrtoint ptr %conn_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %conn_count, align 4
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 8
  %proc_net = getelementptr inbounds %struct.net, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.24, i16 noundef zeroext 0, ptr noundef %4, ptr noundef nonnull @ip_vs_conn_seq_ops, i32 noundef 12, ptr noundef null) #13
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 8
  %proc_net2 = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %proc_net2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_net2, align 4
  %call3 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.25, i16 noundef zeroext 0, ptr noundef %8, ptr noundef nonnull @ip_vs_conn_sync_seq_ops, i32 noundef 12, ptr noundef null) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_conn_net_cleanup(ptr noundef %ipvs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_count.i = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 8
  br label %flush_again.i

flush_again.i:                                    ; preds = %if.then73.i, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %flush_again.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

flush_again.i.rcu_read_lock.exit.i_crit_edge:     ; preds = %flush_again.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %flush_again.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %flush_again.i.rcu_read_lock.exit.i_crit_edge
  %4 = load i32, ptr @ip_vs_conn_tab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp118.i = icmp sgt i32 %4, 0
  br i1 %cmp118.i, label %rcu_read_lock.exit.i.do.body.i_crit_edge, label %rcu_read_lock.exit.i.for.end70.i_crit_edge

rcu_read_lock.exit.i.for.end70.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end70.i

rcu_read_lock.exit.i.do.body.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i.do.body.i_crit_edge, %rcu_read_lock.exit.i.do.body.i_crit_edge
  %idx.0119.i = phi i32 [ %inc.i, %for.end.i.do.body.i_crit_edge ], [ 0, %rcu_read_lock.exit.i.do.body.i_crit_edge ]
  %call.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b89.i = load i1, ptr @ip_vs_conn_flush.__warned, align 1
  br i1 %.b89.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_conn_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1380, ptr noundef nonnull @.str.5) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %5 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %idx.0119.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cp.0115.i = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not116.i = icmp eq ptr %cp.0115.i, null
  br i1 %tobool13.not116.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body14.i_crit_edge

do.end.i.for.body14.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body14.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body14.i:                                     ; preds = %for.inc.i.for.body14.i_crit_edge, %do.end.i.for.body14.i_crit_edge
  %cp.0117.i = phi ptr [ %cp.0.i, %for.inc.i.for.body14.i_crit_edge ], [ %cp.0115.i, %do.end.i.for.body14.i_crit_edge ]
  %ipvs15.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0117.i, i32 0, i32 11
  %7 = ptrtoint ptr %ipvs15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipvs15.i, align 4
  %cmp16.not.i = icmp eq ptr %8, %ipvs
  br i1 %cmp16.not.i, label %if.end18.i, label %for.body14.i.for.inc.i_crit_edge

for.body14.i.for.inc.i_crit_edge:                 ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end18.i:                                       ; preds = %for.body14.i
  %n_control.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0117.i, i32 0, i32 21
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_control.i, i32 noundef 4) #13
  %9 = ptrtoint ptr %n_control.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %n_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool20.not.i = icmp eq i32 %10, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end18.i
  %control.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0117.i, i32 0, i32 20
  %11 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %control.i, align 4
  %call24.i = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call24.i)
  %cmp25.i = icmp sgt i32 %call24.i, 3
  br i1 %cmp25.i, label %do.end29.i, label %if.end22.i.do.end34.i_crit_edge

if.end22.i.do.end34.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end34.i

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.end29.i, %if.end22.i.do.end34.i_crit_edge
  %timer.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0117.i, i32 0, i32 13
  %call.i93.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %do.end34.i.ip_vs_conn_del.exit.i_crit_edge, label %if.then.i95.i

do.end34.i.ip_vs_conn_del.exit.i_crit_edge:       ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ip_vs_conn_del.exit.i

if.then.i95.i:                                    ; preds = %do.end34.i
  %13 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control.i, align 4
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %if.then.i95.i.if.end.i.i_crit_edge, label %if.then2.i.i

if.then.i95.i.if.end.i.i_crit_edge:               ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp.0117.i, i32 0, i32 14
  %15 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 0, ptr %timeout.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.then.i95.i.if.end.i.i_crit_edge
  tail call void @ip_vs_conn_expire(ptr noundef %timer.i.i) #13
  br label %ip_vs_conn_del.exit.i

ip_vs_conn_del.exit.i:                            ; preds = %if.end.i.i, %do.end34.i.ip_vs_conn_del.exit.i_crit_edge
  %tobool35.not.i = icmp eq ptr %12, null
  br i1 %tobool35.not.i, label %ip_vs_conn_del.exit.i.for.inc.i_crit_edge, label %land.lhs.true36.i

ip_vs_conn_del.exit.i.for.inc.i_crit_edge:        ; preds = %ip_vs_conn_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true36.i:                                ; preds = %ip_vs_conn_del.exit.i
  %n_control37.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 21
  %call.i.i91.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %n_control37.i, i32 noundef 4) #13
  %16 = ptrtoint ptr %n_control37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %n_control37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not.i = icmp eq i32 %17, 0
  br i1 %tobool39.not.i, label %do.body41.i, label %land.lhs.true36.i.for.inc.i_crit_edge

land.lhs.true36.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body41.i:                                      ; preds = %land.lhs.true36.i
  %call42.i = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call42.i)
  %cmp43.i = icmp sgt i32 %call42.i, 3
  br i1 %cmp43.i, label %do.end47.i, label %do.body41.i.do.end52.i_crit_edge

do.body41.i.do.end52.i_crit_edge:                 ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end52.i

do.end47.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %do.end52.i

do.end52.i:                                       ; preds = %do.end47.i, %do.body41.i.do.end52.i_crit_edge
  %timer.i96.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 13
  %call.i97.i = tail call i32 @del_timer(ptr noundef %timer.i96.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool.not.i98.i, label %do.end52.i.for.inc.i_crit_edge, label %if.then.i101.i

do.end52.i.for.inc.i_crit_edge:                   ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i101.i:                                   ; preds = %do.end52.i
  %control.i99.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 20
  %18 = ptrtoint ptr %control.i99.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %control.i99.i, align 4
  %tobool1.not.i100.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i100.i, label %if.then.i101.i.if.end.i104.i_crit_edge, label %if.then2.i103.i

if.then.i101.i.if.end.i104.i_crit_edge:           ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i104.i

if.then2.i103.i:                                  ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #15
  %timeout.i102.i = getelementptr inbounds %struct.ip_vs_conn, ptr %12, i32 0, i32 14
  %20 = ptrtoint ptr %timeout.i102.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %timeout.i102.i, align 4
  br label %if.end.i104.i

if.end.i104.i:                                    ; preds = %if.then2.i103.i, %if.then.i101.i.if.end.i104.i_crit_edge
  tail call void @ip_vs_conn_expire(ptr noundef %timer.i96.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i104.i, %do.end52.i.for.inc.i_crit_edge, %land.lhs.true36.i.for.inc.i_crit_edge, %ip_vs_conn_del.exit.i.for.inc.i_crit_edge, %if.end18.i.for.inc.i_crit_edge, %for.body14.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %cp.0117.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cp.0.i = load volatile ptr, ptr %cp.0117.i, align 4
  %tobool13.not.i = icmp eq ptr %cp.0.i, null
  br i1 %tobool13.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body14.i_crit_edge

for.inc.i.for.body14.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  tail call fastcc void @cond_resched_rcu() #13
  %inc.i = add nuw nsw i32 %idx.0119.i, 1
  %22 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %cmp.i = icmp slt i32 %inc.i, %22
  br i1 %cmp.i, label %for.end.i.do.body.i_crit_edge, label %for.end.i.for.end70.i_crit_edge

for.end.i.for.end70.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end70.i

for.end.i.do.body.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.end70.i:                                      ; preds = %for.end.i.for.end70.i_crit_edge, %rcu_read_lock.exit.i.for.end70.i_crit_edge
  %call.i106.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i106.i, label %for.end70.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i109.i

for.end70.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i109.i:                             ; preds = %for.end70.i
  %call1.i107.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107.i)
  %tobool.not.i108.i = icmp eq i32 %call1.i107.i, 0
  br i1 %tobool.not.i108.i, label %land.lhs.true.i109.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i111.i

land.lhs.true.i109.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i111.i:                            ; preds = %land.lhs.true.i109.i
  %.b4.i110.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i110.i, label %land.lhs.true2.i111.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i112.i

land.lhs.true2.i111.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i112.i:                                   ; preds = %land.lhs.true2.i111.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i112.i, %land.lhs.true2.i111.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i109.i.rcu_read_unlock.exit.i_crit_edge, %for.end70.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %23 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i113.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i113.i to ptr
  %preempt_count.i.i.i.i114.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i114.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i114.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i92.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %conn_count.i, i32 noundef 4) #13
  %27 = ptrtoint ptr %conn_count.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %conn_count.i, align 4
  %cmp72.not.i = icmp eq i32 %28, 0
  br i1 %cmp72.not.i, label %ip_vs_conn_flush.exit, label %if.then73.i

if.then73.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @schedule() #13
  br label %flush_again.i

ip_vs_conn_flush.exit:                            ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.netns_ipvs, ptr %ipvs, i32 0, i32 75
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 8
  %proc_net = getelementptr inbounds %struct.net, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.24, ptr noundef %32) #13
  %33 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net, align 8
  %proc_net2 = getelementptr inbounds %struct.net, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %proc_net2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %proc_net2, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.25, ptr noundef %36) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_conn_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ip_vs_conn_tab_bits, align 4
  %1 = add i32 %0, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %1)
  %2 = icmp ult i32 %1, -13
  br i1 %2, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  store i32 12, ptr @ip_vs_conn_tab_bits, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = load i32, ptr @ip_vs_conn_tab_bits, align 4
  %shl = shl nuw i32 1, %3
  store i32 %shl, ptr @ip_vs_conn_tab_size, align 4
  %sub = add i32 %shl, -1
  store i32 %sub, ptr @ip_vs_conn_tab_mask, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 4) #13
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %retval.0.i = select i1 %5, i32 -1, i32 %6
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #17
  store ptr %call3, ptr @ip_vs_conn_tab, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 260, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %call6, ptr @ip_vs_conn_cachep, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %do.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %7 = load ptr, ptr @ip_vs_conn_tab, align 4
  tail call void @vfree(ptr noundef %7) #13
  br label %cleanup

do.end12:                                         ; preds = %if.end5
  %8 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %mul = shl i32 %8, 3
  %div = sdiv i32 %mul, 1024
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %8, i32 noundef %div) #16
  %call16 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %do.end21, label %do.end12.do.end26_crit_edge

do.end12.do.end26_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end26

do.end21:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef 260) #16
  br label %do.end26

do.end26:                                         ; preds = %do.end21, %do.end12.do.end26_crit_edge
  %9 = load i32, ptr @ip_vs_conn_tab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2744 = icmp sgt i32 %9, 0
  br i1 %cmp2744, label %for.body.lr.ph, label %do.end26.do.body31.preheader_crit_edge

do.end26.do.body31.preheader_crit_edge:           ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31.preheader

for.body.lr.ph:                                   ; preds = %do.end26
  %10 = load ptr, ptr @ip_vs_conn_tab, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %idx.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hlist_head, ptr %10, i32 %idx.045
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.045, 1
  %12 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %cmp27 = icmp slt i32 %inc, %12
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.do.body31.preheader_crit_edge

for.body.do.body31.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body31.preheader:                              ; preds = %for.body.do.body31.preheader_crit_edge, %do.end26.do.body31.preheader_crit_edge
  br label %do.body31

do.body31:                                        ; preds = %do.body31.do.body31_crit_edge, %do.body31.preheader
  %idx.146 = phi i32 [ %inc37, %do.body31.do.body31_crit_edge ], [ 0, %do.body31.preheader ]
  %arrayidx32 = getelementptr [32 x %struct.ip_vs_aligned_lock], ptr @__ip_vs_conntbl_lock_array, i32 0, i32 %idx.146
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx32, ptr noundef nonnull @.str.34, ptr noundef nonnull @ip_vs_conn_init.__key, i16 noundef signext 3) #13
  %inc37 = add nuw nsw i32 %idx.146, 1
  %exitcond.not = icmp eq i32 %inc37, 32
  br i1 %exitcond.not, label %for.end38, label %do.body31.do.body31_crit_edge

do.body31.do.body31_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body31

for.end38:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @get_random_bytes(ptr noundef nonnull @ip_vs_conn_rnd, i32 noundef 4) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %if.then8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end38 ], [ -12, %if.then8 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_conn_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #13
  %0 = load ptr, ptr @ip_vs_conn_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #13
  %1 = load ptr, ptr @ip_vs_conn_tab, align 4
  tail call void @vfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_nat_xmit_v6(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_tunnel_xmit_v6(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_tunnel_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_dr_xmit_v6(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_null_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_bypass_xmit_v6(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_nat_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_dr_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_bypass_xmit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_control_del(ptr noundef %cp) unnamed_addr #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  %ip_vs_dbg_buf12 = alloca [160 x i8], align 1
  %ip_vs_dbg_buf45 = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  %control = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 20
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %do.body11

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  %2 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %3 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %af, align 2
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %4)
  %cmp.i = icmp eq i16 %4, 10
  %.str.35..str.36.i = select i1 %cmp.i, ptr @.str.35, ptr @.str.36
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i, ptr noundef %caddr) #13
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !212

do.body10.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.body
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %5 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cport, align 4
  %7 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %af, align 2
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %8)
  %cmp.i92 = icmp eq i16 %8, 10
  %arrayidx.i93 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i94 = sub nsw i32 159, %call3.i
  %.str.35..str.36.i95 = select i1 %cmp.i92, ptr @.str.35, ptr @.str.36
  %call3.i96 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i93, i32 noundef %sub.i94, ptr noundef nonnull %.str.35..str.36.i95, ptr noundef %vaddr) #13
  %len.0.i97 = add nsw i32 %call3.i, 2
  %add5.i98 = add i32 %len.0.i97, %call3.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i98)
  %cmp7.i99 = icmp ugt i32 %add5.i98, 161
  br i1 %cmp7.i99, label %do.body10.i100, label %ip_vs_dbg_addr.exit102, !prof !212

do.body10.i100:                                   ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit102:                           ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv2 = zext i16 %6 to i32
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %9 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport, align 4
  %conv7 = zext i16 %10 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef %conv2, ptr noundef %arrayidx.i93, i32 noundef %conv7) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #13
  br label %cleanup

do.body11:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf12) #13
  %11 = call ptr @memset(ptr %ip_vs_dbg_buf12, i32 255, i32 160)
  %call14 = tail call i32 @ip_vs_get_debug_level() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call14)
  %cmp = icmp sgt i32 %call14, 6
  br i1 %cmp, label %do.end19, label %do.body11.if.end36_crit_edge

do.body11.if.end36_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end19:                                         ; preds = %do.body11
  %af21 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %12 = ptrtoint ptr %af21 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %af21, align 2
  %caddr24 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %13)
  %cmp.i103 = icmp eq i16 %13, 10
  %.str.35..str.36.i106 = select i1 %cmp.i103, ptr @.str.35, ptr @.str.36
  %call3.i107 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf12, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i106, ptr noundef %caddr24) #13
  %len.0.i108 = add i32 %call3.i107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i108)
  %cmp7.i110 = icmp ugt i32 %len.0.i108, 161
  br i1 %cmp7.i110, label %do.body10.i111, label %ip_vs_dbg_addr.exit113, !prof !212

do.body10.i111:                                   ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit113:                           ; preds = %do.end19
  %cport26 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %14 = ptrtoint ptr %cport26 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cport26, align 4
  %16 = ptrtoint ptr %af21 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %af21, align 2
  %caddr31 = getelementptr inbounds %struct.ip_vs_conn, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp.i114 = icmp eq i16 %17, 10
  %arrayidx.i115 = getelementptr i8, ptr %ip_vs_dbg_buf12, i32 %len.0.i108
  %sub.i116 = sub nsw i32 159, %call3.i107
  %.str.35..str.36.i117 = select i1 %cmp.i114, ptr @.str.35, ptr @.str.36
  %call3.i118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i115, i32 noundef %sub.i116, ptr noundef nonnull %.str.35..str.36.i117, ptr noundef %caddr31) #13
  %len.0.i119 = add nsw i32 %call3.i107, 2
  %add5.i120 = add i32 %len.0.i119, %call3.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i120)
  %cmp7.i121 = icmp ugt i32 %add5.i120, 161
  br i1 %cmp7.i121, label %do.body10.i122, label %ip_vs_dbg_addr.exit124, !prof !212

do.body10.i122:                                   ; preds = %ip_vs_dbg_addr.exit113
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit124:                           ; preds = %ip_vs_dbg_addr.exit113
  call void @__sanitizer_cov_trace_pc() #15
  %conv27 = zext i16 %15 to i32
  %cport33 = getelementptr inbounds %struct.ip_vs_conn, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %cport33 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cport33, align 4
  %conv34 = zext i16 %19 to i32
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %ip_vs_dbg_buf12, i32 noundef %conv27, ptr noundef %arrayidx.i115, i32 noundef %conv34) #16
  br label %if.end36

if.end36:                                         ; preds = %ip_vs_dbg_addr.exit124, %do.body11.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf12) #13
  %20 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %control, align 4
  %n_control = getelementptr inbounds %struct.ip_vs_conn, ptr %1, i32 0, i32 21
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %n_control, i32 noundef 4) #13
  %21 = ptrtoint ptr %n_control to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %n_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp41 = icmp eq i32 %22, 0
  br i1 %cmp41, label %do.body44, label %if.end68

do.body44:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf45) #13
  %23 = call ptr @memset(ptr %ip_vs_dbg_buf45, i32 255, i32 160)
  %af51 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 4
  %24 = ptrtoint ptr %af51 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %af51, align 2
  %caddr54 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %25)
  %cmp.i125 = icmp eq i16 %25, 10
  %.str.35..str.36.i128 = select i1 %cmp.i125, ptr @.str.35, ptr @.str.36
  %call3.i129 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf45, i32 noundef 160, ptr noundef nonnull %.str.35..str.36.i128, ptr noundef %caddr54) #13
  %len.0.i130 = add i32 %call3.i129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i130)
  %cmp7.i132 = icmp ugt i32 %len.0.i130, 161
  br i1 %cmp7.i132, label %do.body10.i133, label %ip_vs_dbg_addr.exit135, !prof !212

do.body10.i133:                                   ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit135:                           ; preds = %do.body44
  %cport56 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 1
  %26 = ptrtoint ptr %cport56 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cport56, align 4
  %28 = ptrtoint ptr %af51 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %af51, align 2
  %vaddr61 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %29)
  %cmp.i136 = icmp eq i16 %29, 10
  %arrayidx.i137 = getelementptr i8, ptr %ip_vs_dbg_buf45, i32 %len.0.i130
  %sub.i138 = sub nsw i32 159, %call3.i129
  %.str.35..str.36.i139 = select i1 %cmp.i136, ptr @.str.35, ptr @.str.36
  %call3.i140 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i137, i32 noundef %sub.i138, ptr noundef nonnull %.str.35..str.36.i139, ptr noundef %vaddr61) #13
  %len.0.i141 = add nsw i32 %call3.i129, 2
  %add5.i142 = add i32 %len.0.i141, %call3.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i142)
  %cmp7.i143 = icmp ugt i32 %add5.i142, 161
  br i1 %cmp7.i143, label %do.body10.i144, label %ip_vs_dbg_addr.exit146, !prof !212

do.body10.i144:                                   ; preds = %ip_vs_dbg_addr.exit135
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #13, !srcloc !213
  unreachable

ip_vs_dbg_addr.exit146:                           ; preds = %ip_vs_dbg_addr.exit135
  call void @__sanitizer_cov_trace_pc() #15
  %conv57 = zext i16 %27 to i32
  %vport63 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 3
  %30 = ptrtoint ptr %vport63 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vport63, align 4
  %conv64 = zext i16 %31 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull %ip_vs_dbg_buf45, i32 noundef %conv57, ptr noundef %arrayidx.i137, i32 noundef %conv64) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf45) #13
  br label %cleanup

if.end68:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i91 = call zeroext i1 @__kasan_check_write(ptr noundef %n_control, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %n_control, i32 1, i32 3, i32 1) #13
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %n_control, ptr %n_control, i32 1, ptr elementtype(i32) %n_control) #13, !srcloc !223
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %ip_vs_dbg_addr.exit146, %ip_vs_dbg_addr.exit102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_conn_del_put(ptr noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 13
  %call = tail call i32 @del_timer(ptr noundef %timer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %control = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 20
  %0 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %control, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %timeout = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 14
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.end.__ip_vs_conn_put.exit_crit_edge, !prof !212

if.end.__ip_vs_conn_put.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__ip_vs_conn_put.exit

if.then3.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #13
  br label %__ip_vs_conn_put.exit

__ip_vs_conn_put.exit:                            ; preds = %if.then3.i.i.i, %if.end.__ip_vs_conn_put.exit_crit_edge
  tail call void @ip_vs_conn_expire(ptr noundef %timer)
  br label %if.end4

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  %refcnt.i10 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 12
  %call.i.i.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i10, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !220
  tail call void @llvm.prefetch.p0(ptr %refcnt.i10, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i10, ptr %refcnt.i10, i32 1, ptr elementtype(i32) %refcnt.i10) #13, !srcloc !221
  %asmresult.i.i.i.i.i.i12 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i12)
  %cmp.i.i.i13 = icmp slt i32 %asmresult.i.i.i.i.i.i12, 2
  br i1 %cmp.i.i.i13, label %if.then3.i.i.i14, label %if.else.if.end4_crit_edge, !prof !212

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3.i.i.i14:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i10, i32 noundef 4) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3.i.i.i14, %if.else.if.end4_crit_edge, %__ip_vs_conn_put.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_conn_drop_conntrack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_conn_rcu_free(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pe = getelementptr i8, ptr %head, i32 -12
  %0 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %module = getelementptr inbounds %struct.ip_vs_pe, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @module_put(ptr noundef nonnull %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -252
  %pe_data = getelementptr i8, ptr %head, i32 -8
  %4 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pe_data, align 4
  tail call void @kfree(ptr noundef %5) #13
  %6 = load ptr, ptr @ip_vs_conn_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_sync_conn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_conn_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %l = getelementptr inbounds %struct.ip_vs_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %l, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !214
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 696, ptr noundef nonnull @.str.38) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock.exit.cond.end_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i64 %8, -1
  %call = tail call fastcc ptr @ip_vs_conn_array(ptr noundef %seq, i64 noundef %sub)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcu_read_lock.exit.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.true ], [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_conn_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @.str.39) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %0 = tail call i32 @llvm.read_register.i32(metadata !202) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_conn_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %l1 = getelementptr inbounds %struct.ip_vs_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc ptr @ip_vs_conn_array(ptr noundef %seq, i64 noundef 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %v, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @ip_vs_conn_seq_next.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_conn_seq_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1097, ptr noundef nonnull @.str.60) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end16, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %8 = load ptr, ptr @ip_vs_conn_tab, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %inc1780 = add nsw i32 %sub.ptr.div, 1
  %9 = load i32, ptr @ip_vs_conn_tab_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc1780, i32 %9)
  %cmp1881 = icmp slt i32 %inc1780, %9
  br i1 %cmp1881, label %if.end16.do.body19_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end16.do.body19_crit_edge:                     ; preds = %if.end16
  br label %do.body19

do.body19:                                        ; preds = %for.end.do.body19_crit_edge, %if.end16.do.body19_crit_edge
  %inc1782 = phi i32 [ %inc17, %for.end.do.body19_crit_edge ], [ %inc1780, %if.end16.do.body19_crit_edge ]
  %call20 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %do.body19.do.end30_crit_edge

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.body19
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b7778 = load i1, ptr @ip_vs_conn_seq_next.__warned.62, align 1
  br i1 %.b7778, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_conn_seq_next.__warned.62, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1103, ptr noundef nonnull @.str.5) #13
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.body19.do.end30_crit_edge
  %10 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %10, i32 %inc1782
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx, align 4
  %tobool37.not = icmp eq ptr %12, null
  br i1 %tobool37.not, label %for.end, label %for.body

for.body:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %l1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %l1, align 4
  br label %cleanup

for.end:                                          ; preds = %do.end30
  tail call fastcc void @cond_resched_rcu()
  %inc17 = add nsw i32 %inc1782, 1
  %14 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %cmp18 = icmp slt i32 %inc17, %14
  br i1 %cmp18, label %for.end.do.body19_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

for.end.do.body19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end16.while.end_crit_edge
  %15 = ptrtoint ptr %l1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %l1, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.body, %do.end11.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %12, %for.body ], [ null, %while.end ], [ %7, %do.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_conn_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %pe_data = alloca [274 x i8], align 1
  %dbuf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.63) #13
  br label %return

if.else:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 274, ptr nonnull %pe_data) #13
  %4 = call ptr @memset(ptr %pe_data, i32 255, i32 274)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dbuf) #13
  %5 = call ptr @memset(ptr %dbuf, i32 255, i32 48)
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 11
  %6 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipvs, align 4
  %net1 = getelementptr inbounds %struct.netns_ipvs, ptr %7, i32 0, i32 75
  %8 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net1, align 8
  %cmp.i.not = icmp eq ptr %9, %3
  br i1 %cmp.i.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.else
  %pe_data4 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 30
  %10 = ptrtoint ptr %pe_data4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pe_data4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pe_data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %pe_data, align 1
  %pe = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 29
  %13 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pe, align 4
  %name = getelementptr inbounds %struct.ip_vs_pe, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call7 = tail call i32 @strlen(ptr noundef %16) #18
  %add.ptr = getelementptr inbounds i8, ptr %pe_data, i32 1
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %16, i32 %call7)
  %add = add i32 %call7, 1
  %arrayidx10 = getelementptr [274 x i8], ptr %pe_data, i32 0, i32 %add
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %arrayidx10, align 1
  %add11 = add i32 %call7, 2
  %show_pe_data = getelementptr inbounds %struct.ip_vs_pe, ptr %14, i32 0, i32 7
  %19 = ptrtoint ptr %show_pe_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %show_pe_data, align 4
  %add.ptr14 = getelementptr i8, ptr %pe_data, i32 %add11
  %call15 = call i32 %20(ptr noundef %v, ptr noundef %add.ptr14) #13
  %add16 = add i32 %call15, %add11
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.end.if.end17_crit_edge
  %len.0 = phi i32 [ %add16, %if.then6 ], [ 0, %if.end.if.end17_crit_edge ]
  %arrayidx18 = getelementptr [274 x i8], ptr %pe_data, i32 0, i32 %len.0
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx18, align 1
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 10
  %22 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %daf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %23)
  %cmp19 = icmp eq i16 %23, 10
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 7
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dbuf, i32 noundef 48, ptr noundef nonnull @.str.64, ptr noundef %daddr)
  br label %if.end28

if.else24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %daddr, align 4
  %call27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dbuf, i32 noundef 48, ptr noundef nonnull @.str.65, i32 noundef %25)
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then21
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 4
  %26 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %27)
  %cmp30 = icmp eq i16 %27, 10
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 9
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol, align 4
  %conv33 = zext i16 %29 to i32
  %call34 = call ptr @ip_vs_proto_name(i32 noundef %conv33) #13
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 5
  br i1 %cmp30, label %if.then32, label %if.else42

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 1
  %30 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cport, align 4
  %conv35 = zext i16 %31 to i32
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 6
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 3
  %32 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vport, align 4
  %conv36 = zext i16 %33 to i32
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 2
  %34 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dport, align 2
  %conv38 = zext i16 %35 to i32
  %call39 = call ptr @ip_vs_state_name(ptr noundef %v) #13
  %expires = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 13, i32 1
  %36 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %37, %38
  %39 = call i32 @llvm.smax.i32(i32 %sub, i32 0) #13
  %call.i = call i32 @jiffies_to_msecs(i32 noundef %39) #13
  %div = udiv i32 %call.i, 1000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.66, ptr noundef %call34, ptr noundef %caddr, i32 noundef %conv35, ptr noundef %vaddr, i32 noundef %conv36, ptr noundef nonnull %dbuf, i32 noundef %conv38, ptr noundef %call39, i32 noundef %div, ptr noundef nonnull %pe_data) #13
  br label %cleanup

if.else42:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caddr, align 4
  %cport47 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 1
  %42 = ptrtoint ptr %cport47 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cport47, align 4
  %conv48 = zext i16 %43 to i32
  %vaddr49 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 6
  %44 = ptrtoint ptr %vaddr49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vaddr49, align 4
  %vport50 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 3
  %46 = ptrtoint ptr %vport50 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vport50, align 4
  %conv51 = zext i16 %47 to i32
  %dport53 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 2
  %48 = ptrtoint ptr %dport53 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %dport53, align 2
  %conv54 = zext i16 %49 to i32
  %call55 = call ptr @ip_vs_state_name(ptr noundef %v) #13
  %expires57 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %expires57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %expires57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub58 = sub i32 %51, %52
  %53 = call i32 @llvm.smax.i32(i32 %sub58, i32 0) #13
  %call.i102 = call i32 @jiffies_to_msecs(i32 noundef %53) #13
  %div60 = udiv i32 %call.i102, 1000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.67, ptr noundef %call34, i32 noundef %41, i32 noundef %conv48, i32 noundef %45, i32 noundef %conv51, ptr noundef nonnull %dbuf, i32 noundef %conv54, ptr noundef %call55, i32 noundef %div60, ptr noundef nonnull %pe_data) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %if.then32, %if.else.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dbuf) #13
  call void @llvm.lifetime.end.p0(i64 274, ptr nonnull %pe_data) #13
  br label %return

return:                                           ; preds = %cleanup, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_vs_conn_array(ptr nocapture noundef readonly %seq, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = load i32, ptr @ip_vs_conn_tab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp54 = icmp sgt i32 %2, 0
  br i1 %cmp54, label %entry.do.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry.do.body_crit_edge
  %pos.addr.056 = phi i64 [ %pos.addr.1.lcssa, %for.end.do.body_crit_edge ], [ %pos, %entry.do.body_crit_edge ]
  %idx.055 = phi i32 [ %inc, %for.end.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @ip_vs_conn_array.__warned, align 1
  br i1 %.b46, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ip_vs_conn_array.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1059, ptr noundef nonnull @.str.5) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %3 = load ptr, ptr @ip_vs_conn_tab, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %idx.055
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cp.050 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not51 = icmp eq ptr %cp.050, null
  br i1 %tobool13.not51, label %do.end.for.end_crit_edge, label %do.end.for.body14_crit_edge

do.end.for.body14_crit_edge:                      ; preds = %do.end
  br label %for.body14

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %do.end.for.body14_crit_edge
  %cp.053 = phi ptr [ %cp.0, %for.inc.for.body14_crit_edge ], [ %cp.050, %do.end.for.body14_crit_edge ]
  %pos.addr.152 = phi i64 [ %dec, %for.inc.for.body14_crit_edge ], [ %pos.addr.056, %do.end.for.body14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.152)
  %cmp15 = icmp eq i64 %pos.addr.152, 0
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  %l = getelementptr inbounds %struct.ip_vs_iter_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %l, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body14
  %dec = add i64 %pos.addr.152, -1
  %6 = ptrtoint ptr %cp.053 to i32
  call void @__asan_load4_noabort(i32 %6)
  %cp.0 = load volatile ptr, ptr %cp.053, align 4
  %tobool13.not = icmp eq ptr %cp.0, null
  br i1 %tobool13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %pos.addr.1.lcssa = phi i64 [ %pos.addr.056, %do.end.for.end_crit_edge ], [ %dec, %for.inc.for.end_crit_edge ]
  tail call fastcc void @cond_resched_rcu()
  %inc = add nuw nsw i32 %idx.055, 1
  %7 = load i32, ptr @ip_vs_conn_tab_size, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.end.do.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cp.053, %if.then16 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_state_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_conn_sync_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %dbuf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dbuf) #13
  %0 = call ptr @memset(ptr %dbuf, i32 255, i32 48)
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.68) #13
  br label %cleanup50

if.else:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %ipvs = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 11
  %5 = ptrtoint ptr %ipvs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipvs, align 4
  %net1 = getelementptr inbounds %struct.netns_ipvs, ptr %6, i32 0, i32 75
  %7 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net1, align 8
  %cmp.i.not = icmp eq ptr %8, %4
  br i1 %cmp.i.not, label %if.end, label %if.else.cleanup50_crit_edge

if.else.cleanup50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup50

if.end:                                           ; preds = %if.else
  %daf = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 10
  %9 = ptrtoint ptr %daf to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %daf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %10)
  %cmp4 = icmp eq i16 %10, 10
  %daddr = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 7
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dbuf, i32 noundef 48, ptr noundef nonnull @.str.64, ptr noundef %daddr)
  br label %if.end12

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daddr, align 4
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %dbuf, i32 noundef 48, ptr noundef nonnull @.str.65, i32 noundef %12)
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.then6
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 4
  %13 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %af, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %14)
  %cmp14 = icmp eq i16 %14, 10
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 9
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol, align 4
  %conv17 = zext i16 %16 to i32
  %call18 = tail call ptr @ip_vs_proto_name(i32 noundef %conv17) #13
  %caddr = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 5
  br i1 %cmp14, label %if.then16, label %if.else26

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %cport = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 1
  %17 = ptrtoint ptr %cport to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cport, align 4
  %conv19 = zext i16 %18 to i32
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 6
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 3
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport, align 4
  %conv20 = zext i16 %20 to i32
  %dport = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 2
  %21 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dport, align 2
  %conv22 = zext i16 %22 to i32
  %call23 = tail call ptr @ip_vs_state_name(ptr noundef %v) #13
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %and.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.str.72..str.71.i = select i1 %tobool.not.i, ptr @.str.72, ptr @.str.71
  %expires = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 13, i32 1
  %25 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %26, %27
  %28 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0) #13
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %28) #13
  %div = udiv i32 %call.i, 1000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.69, ptr noundef %call18, ptr noundef %caddr, i32 noundef %conv19, ptr noundef %vaddr, i32 noundef %conv20, ptr noundef nonnull %dbuf, i32 noundef %conv22, ptr noundef %call23, ptr noundef nonnull %.str.72..str.71.i, i32 noundef %div) #13
  br label %cleanup50

if.else26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caddr, align 4
  %cport31 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 1
  %31 = ptrtoint ptr %cport31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cport31, align 4
  %conv32 = zext i16 %32 to i32
  %vaddr33 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 6
  %33 = ptrtoint ptr %vaddr33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vaddr33, align 4
  %vport34 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 3
  %35 = ptrtoint ptr %vport34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vport34, align 4
  %conv35 = zext i16 %36 to i32
  %dport37 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 2
  %37 = ptrtoint ptr %dport37 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %dport37, align 2
  %conv38 = zext i16 %38 to i32
  %call39 = tail call ptr @ip_vs_state_name(ptr noundef %v) #13
  %flags40 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 8
  %39 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags40, align 4
  %and.i78 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78)
  %tobool.not.i79 = icmp eq i32 %and.i78, 0
  %.str.72..str.71.i80 = select i1 %tobool.not.i79, ptr @.str.72, ptr @.str.71
  %expires43 = getelementptr inbounds %struct.ip_vs_conn, ptr %v, i32 0, i32 13, i32 1
  %41 = ptrtoint ptr %expires43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %expires43, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub44 = sub i32 %42, %43
  %44 = tail call i32 @llvm.smax.i32(i32 %sub44, i32 0) #13
  %call.i81 = tail call i32 @jiffies_to_msecs(i32 noundef %44) #13
  %div46 = udiv i32 %call.i81, 1000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.70, ptr noundef %call18, i32 noundef %30, i32 noundef %conv32, i32 noundef %34, i32 noundef %conv35, ptr noundef nonnull %dbuf, i32 noundef %conv38, ptr noundef %call39, ptr noundef nonnull %.str.72..str.71.i80, i32 noundef %div46) #13
  br label %cleanup50

cleanup50:                                        ; preds = %if.else26, %if.then16, %if.else.cleanup50_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dbuf) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !199, !201}
!llvm.named.register.sp = !{!202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__param_conn_tab_bits, !1, !"__param_conn_tab_bits", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_conn_tab_bitstype584, !1, !"__UNIQUE_ID_conn_tab_bitstype584", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_conn_tab_bits585, !4, !"__UNIQUE_ID_conn_tab_bits585", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 49, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 304, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ip_vs_conn_in_get._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ip_vs_conn_in_get._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ip_vs_conn_in_get_proto, !14, !"__ksymtab_ip_vs_conn_in_get_proto", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 346, i32 1}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 358, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 388, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ip_vs_ct_in_get._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ip_vs_ct_in_get._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 415, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 442, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ip_vs_conn_out_get._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ip_vs_conn_out_get._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_ip_vs_conn_out_get_proto, !31, !"__ksymtab_ip_vs_conn_out_get_proto", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 463, i32 1}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 779, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ip_vs_check_template._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ip_vs_check_template._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 952, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ip_vs_conn_new._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ip_vs_conn_new._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ip_vs_conn_new.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 957, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ip_vs_conn_new.__key.15, !46, !"__key", i1 false, i1 false}
!46 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 982, i32 2}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1313, i32 3}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1359, i32 4}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ip_vs_random_dropentry._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ip_vs_random_dropentry._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1414, i32 3}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1426, i32 4}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ip_vs_expire_nodest_conn_flush._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ip_vs_expire_nodest_conn_flush._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1429, i32 5}
!64 = !{ptr @ip_vs_expire_nodest_conn_flush._entry.21, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ip_vs_expire_nodest_conn_flush._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1450, i32 2}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1452, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1472, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ip_vs_conn_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @ip_vs_conn_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1495, i32 2}
!77 = !{ptr @ip_vs_conn_init._entry.28, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ip_vs_conn_init._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1499, i32 2}
!81 = !{ptr @ip_vs_conn_init._entry.31, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ip_vs_conn_init._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ip_vs_conn_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1506, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ip_vs_conn_tab_size, !87, !"ip_vs_conn_tab_size", i1 false, i1 false}
!87 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 52, i32 5}
!88 = !{ptr @ip_vs_conn_tab_mask, !89, !"ip_vs_conn_tab_mask", i1 false, i1 false}
!89 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 53, i32 12}
!90 = !{ptr @ip_vs_conn_tab, !91, !"ip_vs_conn_tab", i1 false, i1 false}
!91 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 58, i32 27}
!92 = !{ptr @ip_vs_conn_cachep, !93, !"ip_vs_conn_cachep", i1 false, i1 false}
!93 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 61, i32 27}
!94 = !{ptr @ip_vs_conn_rnd, !95, !"ip_vs_conn_rnd", i1 false, i1 false}
!95 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 67, i32 21}
!96 = !{ptr @__ip_vs_conntbl_lock_array, !97, !"__ip_vs_conntbl_lock_array", i1 false, i1 false}
!97 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 90, i32 1}
!98 = !{ptr @__param_str_conn_tab_bits, !1, !"__param_str_conn_tab_bits", i1 false, i1 false}
!99 = !{ptr @ip_vs_conn_tab_bits, !100, !"ip_vs_conn_tab_bits", i1 false, i1 false}
!100 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 47, i32 12}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 272, i32 2}
!103 = !{ptr @ip_vs_conn_no_cport_cnt, !104, !"ip_vs_conn_no_cport_cnt", i1 false, i1 false}
!104 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 64, i32 17}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!111 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!115 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 183, i32 3}
!118 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ip_vs_conn_hash._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ip_vs_conn_hash._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 614, i32 2}
!123 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ip_vs_bind_dest._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @ip_vs_bind_dest._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 874, i32 5}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ip_vs_conn_expire._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ip_vs_conn_expire._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 906, i32 2}
!133 = !{ptr @ip_vs_conn_expire._entry.46, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ip_vs_conn_expire._entry_ptr.48, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/net/ip_vs.h", i32 1271, i32 3}
!137 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ip_vs_control_del._entry, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @ip_vs_control_del._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/net/ip_vs.h", i32 1281, i32 2}
!143 = !{ptr @ip_vs_control_del._entry.52, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ip_vs_control_del._entry_ptr.54, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/net/ip_vs.h", i32 1290, i32 3}
!147 = !{ptr @ip_vs_control_del._entry.55, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ip_vs_control_del._entry_ptr.57, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 711, i32 2}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ip_vs_unbind_dest._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @ip_vs_unbind_dest._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1296, i32 8}
!156 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @todrop_entry.todrop_rate, !158, !"todrop_rate", i1 false, i1 false}
!158 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1268, i32 20}
!159 = !{ptr @todrop_entry.todrop_counter, !160, !"todrop_counter", i1 false, i1 false}
!160 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1269, i32 14}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!163 = !{ptr @ip_vs_conn_seq_ops, !164, !"ip_vs_conn_seq_ops", i1 false, i1 false}
!164 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1181, i32 36}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1059, i32 3}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1097, i32 6}
!169 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!170 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1103, i32 3}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1124, i32 4}
!173 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1146, i32 33}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1149, i32 33}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1154, i32 20}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1167, i32 5}
!181 = !{ptr @ip_vs_conn_sync_seq_ops, !182, !"ip_vs_conn_sync_seq_ops", i1 false, i1 false}
!182 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1247, i32 36}
!183 = !{ptr @.str.68, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1202, i32 4}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1220, i32 20}
!187 = !{ptr @.str.70, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1233, i32 5}
!189 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1191, i32 10}
!191 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1193, i32 10}
!193 = distinct !{null, !194, !"__warned", i1 false, i1 false}
!194 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1380, i32 3}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1386, i32 4}
!197 = !{ptr @ip_vs_conn_flush._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @ip_vs_conn_flush._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @ip_vs_conn_flush._entry.74, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../net/netfilter/ipvs/ip_vs_conn.c", i32 1389, i32 5}
!201 = !{ptr @ip_vs_conn_flush._entry_ptr.75, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{!"sp"}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !{i64 2158080138, i64 2158080622, i64 2158080175, i64 2158080231, i64 2158080265, i64 2158080289, i64 2158080330, i64 2158080351, i64 2158080379, i64 2158080413}
!214 = !{i64 2149326500}
!215 = !{i64 755914, i64 755938, i64 755959, i64 755976, i64 755993}
!216 = !{!"branch_weights", i32 2000, i32 1}
!217 = !{i64 2149326766}
!218 = !{!"auto-init"}
!219 = !{i64 2158095320}
!220 = !{i64 2148361709}
!221 = !{i64 2148276173, i64 2148276205, i64 2148276234, i64 2148276268, i64 2148276299, i64 2148276322}
!222 = !{i64 2158220012}
!223 = !{i64 2148274643, i64 2148274669, i64 2148274698, i64 2148274732, i64 2148274763, i64 2148274786}
!224 = !{i64 2158117657}
!225 = !{i64 2148273708, i64 2148273740, i64 2148273769, i64 2148273803, i64 2148273834, i64 2148273857}
!226 = !{i64 2149428111}
!227 = !{i64 2148272178, i64 2148272204, i64 2148272233, i64 2148272267, i64 2148272298, i64 2148272321}
