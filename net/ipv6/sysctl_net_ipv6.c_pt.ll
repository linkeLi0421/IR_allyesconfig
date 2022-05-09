; ModuleID = '/llk/IR_all_yes/net/ipv6/sysctl_net_ipv6.c_pt.bc'
source_filename = "../net/ipv6/sysctl_net_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }

@init_net = external dso_local global %struct.net, align 128
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net/ipv6\00", [23 x i8] zeroinitializer }, align 32
@ipv6_rotable = internal global { [5 x %struct.ctl_table], [44 x i8] } { [5 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @sysctl_mld_max_msf, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @sysctl_mld_qrv, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.3, ptr @calipso_cache_enabled, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @calipso_cache_bucketsize, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [44 x i8] zeroinitializer }, align 32
@ip6_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ipv6_sysctl_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv6_sysctl_net_init, ptr null, ptr @ipv6_sysctl_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mld_max_msf\00", [20 x i8] zeroinitializer }, align 32
@sysctl_mld_max_msf = external dso_local global i32, align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mld_qrv\00", [24 x i8] zeroinitializer }, align 32
@sysctl_mld_qrv = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"calipso_cache_enable\00", [43 x i8] zeroinitializer }, align 32
@calipso_cache_enabled = external dso_local global i32, align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"calipso_cache_bucket_size\00", [38 x i8] zeroinitializer }, align 32
@calipso_cache_bucketsize = external dso_local global i32, align 4
@ipv6_table_template = internal global { [21 x %struct.ctl_table], [172 x i8] } { [21 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr getelementptr (i8, ptr @init_net, i64 1977), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @init_net, i64 2024), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.9, ptr getelementptr (i8, ptr @init_net, i64 1978), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr getelementptr (i8, ptr @init_net, i64 1979), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr @auto_flowlabels_max }, %struct.ctl_table { ptr @.str.11, ptr getelementptr (i8, ptr @init_net, i64 2026), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @init_net, i64 2028), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr getelementptr (i8, ptr @init_net, i64 2032), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @init_net, i64 2027), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr getelementptr (i8, ptr @init_net, i64 2025), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.16, ptr getelementptr (i8, ptr @init_net, i64 2036), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @flowlabel_reflect_max }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @init_net, i64 2040), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.18, ptr getelementptr (i8, ptr @init_net, i64 2044), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @init_net, i64 2048), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 2052), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @init_net, i64 1976), i32 1, i16 420, ptr null, ptr @proc_rt6_multipath_hash_policy, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @three }, %struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @init_net, i64 1972), i32 4, i16 420, ptr null, ptr @proc_rt6_multipath_hash_fields, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @rt6_multipath_hash_fields_all_mask }, %struct.ctl_table { ptr @.str.23, ptr getelementptr (i8, ptr @init_net, i64 2056), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr getelementptr (i8, ptr @init_net, i64 2073), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two }, %struct.ctl_table { ptr @.str.25, ptr getelementptr (i8, ptr @init_net, i64 2060), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr null, ptr @ioam6_id_max }, %struct.ctl_table { ptr @.str.26, ptr getelementptr (i8, ptr @init_net, i64 2064), i32 8, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr @ioam6_id_wide_max }, %struct.ctl_table zeroinitializer], [172 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/ipv6/route\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/ipv6/icmp\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bindv6only\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anycast_src_echo_reply\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flowlabel_consistency\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"auto_flowlabels\00", [16 x i8] zeroinitializer }, align 32
@auto_flowlabels_max = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fwmark_reflect\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idgen_retries\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idgen_delay\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"flowlabel_state_ranges\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ip_nonlocal_bind\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flowlabel_reflect\00", [46 x i8] zeroinitializer }, align 32
@flowlabel_reflect_max = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_dst_opts_number\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_hbh_opts_number\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_dst_opts_length\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_hbh_length\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fib_multipath_hash_policy\00", [38 x i8] zeroinitializer }, align 32
@three = internal global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fib_multipath_hash_fields\00", [38 x i8] zeroinitializer }, align 32
@rt6_multipath_hash_fields_all_mask = internal global { i32, [28 x i8] } { i32 4095, [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"seg6_flowlabel\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fib_notify_on_flag_change\00", [38 x i8] zeroinitializer }, align 32
@two = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ioam6_id\00", [23 x i8] zeroinitializer }, align 32
@ioam6_id_max = internal global { i32, [28 x i8] } { i32 16777215, [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ioam6_id_wide\00", [18 x i8] zeroinitializer }, align 32
@ioam6_id_wide_max = internal global { i64, [24 x i8] } { i64 72057594037927935, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 340, i32 46 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"ipv6_rotable\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 221, i32 25 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"ip6_header\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 334, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"ipv6_sysctl_net_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 329, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 223, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 230, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 239, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 246, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"ipv6_table_template\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 66, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 285, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 290, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 68, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 75, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 82, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 89, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"auto_flowlabels_max\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 29, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 97, i32 15 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 104, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 111, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 118, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 125, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 132, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"flowlabel_reflect_max\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 28, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 141, i32 15 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 148, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 155, i32 15 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 162, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 169, i32 15 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 27, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 178, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant [35 x i8] c"rt6_multipath_hash_fields_all_mask\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 30, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 187, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 194, i32 15 }
@___asan_gen_.126 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 26, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 203, i32 15 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"ioam6_id_max\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 32, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 211, i32 15 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"ioam6_id_wide_max\00", align 1
@___asan_gen_.139 = private constant [30 x i8] c"../net/ipv6/sysctl_net_ipv6.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 33, i32 12 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @ipv6_rotable, ptr @ip6_header, ptr @ipv6_sysctl_net_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ipv6_table_template, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @auto_flowlabels_max, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @flowlabel_reflect_max, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @three, ptr @.str.22, ptr @rt6_multipath_hash_fields_all_mask, ptr @.str.23, ptr @.str.24, ptr @two, ptr @.str.25, ptr @ioam6_id_max, ptr @.str.26, ptr @ioam6_id_wide_max], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_rotable to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_sysctl_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipv6_table_template to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_flowlabels_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flowlabel_reflect_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @three to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt6_multipath_hash_fields_all_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @two to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_id_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioam6_id_wide_max to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipv6_sysctl_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @ipv6_rotable) #2
  store ptr %call, ptr @ip6_header, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv6_sysctl_net_ops) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %err_pernet

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

out:                                              ; preds = %err_pernet, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call1, %err_pernet ], [ 0, %if.end.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  ret i32 %err.0

err_pernet:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = load ptr, ptr @ip6_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #2
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipv6_sysctl_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ip6_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #2
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ipv6_sysctl_net_ops) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6_sysctl_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @ipv6_table_template, i32 noundef 756, i32 noundef 3264) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

for.cond.preheader:                               ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %net to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @init_net to i32)
  %data = getelementptr %struct.ctl_table, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %sub.ptr.sub
  store ptr %add.ptr, ptr %data, align 4
  %data.1 = getelementptr %struct.ctl_table, ptr %call, i32 1, i32 1
  %2 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %3, i32 %sub.ptr.sub
  store ptr %add.ptr.1, ptr %data.1, align 4
  %data.2 = getelementptr %struct.ctl_table, ptr %call, i32 2, i32 1
  %4 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.2, align 4
  %add.ptr.2 = getelementptr i8, ptr %5, i32 %sub.ptr.sub
  store ptr %add.ptr.2, ptr %data.2, align 4
  %data.3 = getelementptr %struct.ctl_table, ptr %call, i32 3, i32 1
  %6 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.3, align 4
  %add.ptr.3 = getelementptr i8, ptr %7, i32 %sub.ptr.sub
  store ptr %add.ptr.3, ptr %data.3, align 4
  %data.4 = getelementptr %struct.ctl_table, ptr %call, i32 4, i32 1
  %8 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.4, align 4
  %add.ptr.4 = getelementptr i8, ptr %9, i32 %sub.ptr.sub
  store ptr %add.ptr.4, ptr %data.4, align 4
  %data.5 = getelementptr %struct.ctl_table, ptr %call, i32 5, i32 1
  %10 = ptrtoint ptr %data.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.5, align 4
  %add.ptr.5 = getelementptr i8, ptr %11, i32 %sub.ptr.sub
  store ptr %add.ptr.5, ptr %data.5, align 4
  %data.6 = getelementptr %struct.ctl_table, ptr %call, i32 6, i32 1
  %12 = ptrtoint ptr %data.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.6, align 4
  %add.ptr.6 = getelementptr i8, ptr %13, i32 %sub.ptr.sub
  store ptr %add.ptr.6, ptr %data.6, align 4
  %data.7 = getelementptr %struct.ctl_table, ptr %call, i32 7, i32 1
  %14 = ptrtoint ptr %data.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.7, align 4
  %add.ptr.7 = getelementptr i8, ptr %15, i32 %sub.ptr.sub
  store ptr %add.ptr.7, ptr %data.7, align 4
  %data.8 = getelementptr %struct.ctl_table, ptr %call, i32 8, i32 1
  %16 = ptrtoint ptr %data.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.8, align 4
  %add.ptr.8 = getelementptr i8, ptr %17, i32 %sub.ptr.sub
  store ptr %add.ptr.8, ptr %data.8, align 4
  %data.9 = getelementptr %struct.ctl_table, ptr %call, i32 9, i32 1
  %18 = ptrtoint ptr %data.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.9, align 4
  %add.ptr.9 = getelementptr i8, ptr %19, i32 %sub.ptr.sub
  store ptr %add.ptr.9, ptr %data.9, align 4
  %data.10 = getelementptr %struct.ctl_table, ptr %call, i32 10, i32 1
  %20 = ptrtoint ptr %data.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.10, align 4
  %add.ptr.10 = getelementptr i8, ptr %21, i32 %sub.ptr.sub
  store ptr %add.ptr.10, ptr %data.10, align 4
  %data.11 = getelementptr %struct.ctl_table, ptr %call, i32 11, i32 1
  %22 = ptrtoint ptr %data.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.11, align 4
  %add.ptr.11 = getelementptr i8, ptr %23, i32 %sub.ptr.sub
  store ptr %add.ptr.11, ptr %data.11, align 4
  %data.12 = getelementptr %struct.ctl_table, ptr %call, i32 12, i32 1
  %24 = ptrtoint ptr %data.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.12, align 4
  %add.ptr.12 = getelementptr i8, ptr %25, i32 %sub.ptr.sub
  store ptr %add.ptr.12, ptr %data.12, align 4
  %data.13 = getelementptr %struct.ctl_table, ptr %call, i32 13, i32 1
  %26 = ptrtoint ptr %data.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.13, align 4
  %add.ptr.13 = getelementptr i8, ptr %27, i32 %sub.ptr.sub
  store ptr %add.ptr.13, ptr %data.13, align 4
  %data.14 = getelementptr %struct.ctl_table, ptr %call, i32 14, i32 1
  %28 = ptrtoint ptr %data.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.14, align 4
  %add.ptr.14 = getelementptr i8, ptr %29, i32 %sub.ptr.sub
  store ptr %add.ptr.14, ptr %data.14, align 4
  %data.15 = getelementptr %struct.ctl_table, ptr %call, i32 15, i32 1
  %30 = ptrtoint ptr %data.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.15, align 4
  %add.ptr.15 = getelementptr i8, ptr %31, i32 %sub.ptr.sub
  store ptr %add.ptr.15, ptr %data.15, align 4
  %data.16 = getelementptr %struct.ctl_table, ptr %call, i32 16, i32 1
  %32 = ptrtoint ptr %data.16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.16, align 4
  %add.ptr.16 = getelementptr i8, ptr %33, i32 %sub.ptr.sub
  store ptr %add.ptr.16, ptr %data.16, align 4
  %data.17 = getelementptr %struct.ctl_table, ptr %call, i32 17, i32 1
  %34 = ptrtoint ptr %data.17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.17, align 4
  %add.ptr.17 = getelementptr i8, ptr %35, i32 %sub.ptr.sub
  store ptr %add.ptr.17, ptr %data.17, align 4
  %data.18 = getelementptr %struct.ctl_table, ptr %call, i32 18, i32 1
  %36 = ptrtoint ptr %data.18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.18, align 4
  %add.ptr.18 = getelementptr i8, ptr %37, i32 %sub.ptr.sub
  store ptr %add.ptr.18, ptr %data.18, align 4
  %data.19 = getelementptr %struct.ctl_table, ptr %call, i32 19, i32 1
  %38 = ptrtoint ptr %data.19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.19, align 4
  %add.ptr.19 = getelementptr i8, ptr %39, i32 %sub.ptr.sub
  store ptr %add.ptr.19, ptr %data.19, align 4
  %call1 = tail call ptr @ipv6_route_sysctl_init(ptr noundef %net) #2
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %for.cond.preheader.out_ipv6_table_crit_edge, label %if.end4

for.cond.preheader.out_ipv6_table_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_ipv6_table

if.end4:                                          ; preds = %for.cond.preheader
  %call5 = tail call ptr @ipv6_icmp_sysctl_init(ptr noundef %net) #2
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.out_ipv6_route_table_crit_edge, label %if.end8

if.end4.out_ipv6_route_table_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_ipv6_route_table

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str, ptr noundef nonnull %call) #2
  %sysctl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1
  %40 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9, ptr %sysctl, align 128
  %tobool13.not = icmp eq ptr %call9, null
  br i1 %tobool13.not, label %if.end8.out_ipv6_icmp_table_crit_edge, label %if.end15

if.end8.out_ipv6_icmp_table_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_ipv6_icmp_table

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.5, ptr noundef nonnull %call1) #2
  %route_hdr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 1
  %41 = ptrtoint ptr %route_hdr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call16, ptr %route_hdr, align 4
  %tobool22.not = icmp eq ptr %call16, null
  br i1 %tobool22.not, label %if.end15.out_unregister_ipv6_table_crit_edge, label %if.end24

if.end15.out_unregister_ipv6_table_crit_edge:     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %out_unregister_ipv6_table

if.end24:                                         ; preds = %if.end15
  %call25 = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.6, ptr noundef nonnull %call5) #2
  %icmp_hdr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 2
  %42 = ptrtoint ptr %icmp_hdr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call25, ptr %icmp_hdr, align 8
  %tobool31.not = icmp eq ptr %call25, null
  br i1 %tobool31.not, label %out_unregister_route_table, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

out:                                              ; preds = %out_ipv6_table, %if.end24.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -12, %out_ipv6_table ], [ -12, %entry.out_crit_edge ], [ 0, %if.end24.out_crit_edge ]
  ret i32 %err.0

out_unregister_route_table:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  %43 = ptrtoint ptr %route_hdr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %route_hdr, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %44) #2
  br label %out_unregister_ipv6_table

out_unregister_ipv6_table:                        ; preds = %out_unregister_route_table, %if.end15.out_unregister_ipv6_table_crit_edge
  %45 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sysctl, align 128
  tail call void @unregister_net_sysctl_table(ptr noundef %46) #2
  br label %out_ipv6_icmp_table

out_ipv6_icmp_table:                              ; preds = %out_unregister_ipv6_table, %if.end8.out_ipv6_icmp_table_crit_edge
  tail call void @kfree(ptr noundef nonnull %call5) #2
  br label %out_ipv6_route_table

out_ipv6_route_table:                             ; preds = %out_ipv6_icmp_table, %if.end4.out_ipv6_route_table_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1) #2
  br label %out_ipv6_table

out_ipv6_table:                                   ; preds = %out_ipv6_route_table, %for.cond.preheader.out_ipv6_table_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #2
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipv6_sysctl_net_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl, align 128
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg, align 4
  %route_hdr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 1
  %4 = ptrtoint ptr %route_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %route_hdr, align 4
  %ctl_table_arg3 = getelementptr inbounds %struct.ctl_table_header, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ctl_table_arg3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_table_arg3, align 4
  %icmp_hdr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 1, i32 2
  %8 = ptrtoint ptr %icmp_hdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %icmp_hdr, align 8
  %ctl_table_arg6 = getelementptr inbounds %struct.ctl_table_header, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ctl_table_arg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl_table_arg6, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %9) #2
  %12 = ptrtoint ptr %route_hdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %route_hdr, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %13) #2
  %14 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sysctl, align 128
  tail call void @unregister_net_sysctl_table(ptr noundef %15) #2
  tail call void @kfree(ptr noundef %3) #2
  tail call void @kfree(ptr noundef %7) #2
  tail call void @kfree(ptr noundef %11) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_route_sysctl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_icmp_sysctl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_rt6_multipath_hash_policy(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @proc_dou8vec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr = getelementptr i8, ptr %1, i32 -1976
  %call1 = tail call i32 @call_netevent_notifiers(i32 noundef 5, ptr noundef %add.ptr) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_rt6_multipath_hash_fields(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call i32 @proc_douintvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp ne i32 %write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr = getelementptr i8, ptr %1, i32 -1972
  %call1 = tail call i32 @call_netevent_notifiers(i32 noundef 5, ptr noundef %add.ptr) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netevent_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 340, i32 46}
!2 = !{ptr @ip6_header, !3, !"ip6_header", i1 false, i1 false}
!3 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 334, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 223, i32 15}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 230, i32 15}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 239, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 246, i32 15}
!12 = !{ptr @ipv6_rotable, !13, !"ipv6_rotable", i1 false, i1 false}
!13 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 221, i32 25}
!14 = !{ptr @ipv6_sysctl_net_ops, !15, !"ipv6_sysctl_net_ops", i1 false, i1 false}
!15 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 329, i32 33}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 285, i32 28}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 290, i32 28}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 68, i32 15}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 75, i32 15}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 82, i32 15}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 89, i32 15}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 97, i32 15}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 104, i32 15}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 111, i32 15}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 118, i32 15}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 125, i32 15}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 132, i32 15}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 141, i32 15}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 148, i32 15}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 155, i32 15}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 162, i32 15}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 169, i32 15}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 178, i32 15}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 187, i32 15}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 194, i32 15}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 203, i32 15}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 211, i32 15}
!60 = !{ptr @ipv6_table_template, !61, !"ipv6_table_template", i1 false, i1 false}
!61 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 66, i32 25}
!62 = !{ptr @auto_flowlabels_max, !63, !"auto_flowlabels_max", i1 false, i1 false}
!63 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 29, i32 12}
!64 = !{ptr @flowlabel_reflect_max, !65, !"flowlabel_reflect_max", i1 false, i1 false}
!65 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 28, i32 12}
!66 = !{ptr @three, !67, !"three", i1 false, i1 false}
!67 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 27, i32 12}
!68 = !{ptr @rt6_multipath_hash_fields_all_mask, !69, !"rt6_multipath_hash_fields_all_mask", i1 false, i1 false}
!69 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 30, i32 12}
!70 = !{ptr @two, !71, !"two", i1 false, i1 false}
!71 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 26, i32 12}
!72 = !{ptr @ioam6_id_max, !73, !"ioam6_id_max", i1 false, i1 false}
!73 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 32, i32 12}
!74 = !{ptr @ioam6_id_wide_max, !75, !"ioam6_id_wide_max", i1 false, i1 false}
!75 = !{!"../net/ipv6/sysctl_net_ipv6.c", i32 33, i32 12}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
