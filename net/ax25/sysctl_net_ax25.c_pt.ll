; ModuleID = '/llk/IR_all_yes/net/ax25/sysctl_net_ax25.c_pt.bc'
source_filename = "../net/ax25/sysctl_net_ax25.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }

@ax25_param_table = internal constant { [15 x %struct.ctl_table], [132 x i8] } { [15 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_ipdefmode, ptr @max_ipdefmode }, %struct.ctl_table { ptr @.str.2, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_axdefmode, ptr @max_axdefmode }, %struct.ctl_table { ptr @.str.3, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_backoff, ptr @max_backoff }, %struct.ctl_table { ptr @.str.4, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_conmode, ptr @max_conmode }, %struct.ctl_table { ptr @.str.5, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_window, ptr @max_window }, %struct.ctl_table { ptr @.str.6, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_ewindow, ptr @max_ewindow }, %struct.ctl_table { ptr @.str.7, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_t1, ptr @max_t1 }, %struct.ctl_table { ptr @.str.8, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_t2, ptr @max_t2 }, %struct.ctl_table { ptr @.str.9, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_t3, ptr @max_t3 }, %struct.ctl_table { ptr @.str.10, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_idle, ptr @max_idle }, %struct.ctl_table { ptr @.str.11, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_n2, ptr @max_n2 }, %struct.ctl_table { ptr @.str.12, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_paclen, ptr @max_paclen }, %struct.ctl_table { ptr @.str.13, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_proto, ptr @max_proto }, %struct.ctl_table { ptr @.str.14, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_ds_timeout, ptr @max_ds_timeout }, %struct.ctl_table zeroinitializer], [132 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"net/ax25/%s\00", [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip_default_mode\00", [16 x i8] zeroinitializer }, align 32
@min_ipdefmode = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_ipdefmode = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ax25_default_mode\00", [46 x i8] zeroinitializer }, align 32
@min_axdefmode = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_axdefmode = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"backoff_type\00", [19 x i8] zeroinitializer }, align 32
@min_backoff = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_backoff = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"connect_mode\00", [19 x i8] zeroinitializer }, align 32
@min_conmode = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_conmode = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"standard_window_size\00", [43 x i8] zeroinitializer }, align 32
@min_window = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_window = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 7], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"extended_window_size\00", [43 x i8] zeroinitializer }, align 32
@min_ewindow = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_ewindow = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 63], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t1_timeout\00", [21 x i8] zeroinitializer }, align 32
@min_t1 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_t1 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 30000], [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t2_timeout\00", [21 x i8] zeroinitializer }, align 32
@min_t2 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_t2 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 20000], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t3_timeout\00", [21 x i8] zeroinitializer }, align 32
@min_t3 = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_t3 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 3600000], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idle_timeout\00", [19 x i8] zeroinitializer }, align 32
@min_idle = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_idle = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 65535000], [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maximum_retry_count\00", [44 x i8] zeroinitializer }, align 32
@min_n2 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_n2 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 31], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"maximum_packet_length\00", [42 x i8] zeroinitializer }, align 32
@min_paclen = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_paclen = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 512], [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@min_proto = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_proto = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dama_slave_timeout\00", [45 x i8] zeroinitializer }, align 32
@min_ds_timeout = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_ds_timeout = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 65535000], [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"ax25_param_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 29, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 161, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 31, i32 15 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"min_ipdefmode\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 12, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"max_ipdefmode\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 12, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 39, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"min_axdefmode\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 13, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"max_axdefmode\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 13, i32 41 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 47, i32 15 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"min_backoff\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 14, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"max_backoff\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 14, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 55, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"min_conmode\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 15, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"max_conmode\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 15, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 63, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"min_window\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 16, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"max_window\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 16, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 71, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"min_ewindow\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 17, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"max_ewindow\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 17, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 79, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"min_t1\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 18, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"max_t1\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 18, i32 29 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 87, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"min_t2\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 19, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"max_t2\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 19, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 95, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"min_t3\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 20, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"max_t3\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 20, i32 25 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 103, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"min_idle\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 21, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [9 x i8] c"max_idle\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 21, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 111, i32 15 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"min_n2\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 22, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"max_n2\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 22, i32 29 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 119, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"min_paclen\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 23, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"max_paclen\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 23, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 127, i32 15 }
@___asan_gen_.132 = private unnamed_addr constant [10 x i8] c"min_proto\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 24, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"max_proto\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 24, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 136, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"min_ds_timeout\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 26, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"max_ds_timeout\00", align 1
@___asan_gen_.145 = private constant [30 x i8] c"../net/ax25/sysctl_net_ax25.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 26, i32 32 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @ax25_param_table, ptr @.str, ptr @.str.1, ptr @min_ipdefmode, ptr @max_ipdefmode, ptr @.str.2, ptr @min_axdefmode, ptr @max_axdefmode, ptr @.str.3, ptr @min_backoff, ptr @max_backoff, ptr @.str.4, ptr @min_conmode, ptr @max_conmode, ptr @.str.5, ptr @min_window, ptr @max_window, ptr @.str.6, ptr @min_ewindow, ptr @max_ewindow, ptr @.str.7, ptr @min_t1, ptr @max_t1, ptr @.str.8, ptr @min_t2, ptr @max_t2, ptr @.str.9, ptr @min_t3, ptr @max_t3, ptr @.str.10, ptr @min_idle, ptr @max_idle, ptr @.str.11, ptr @min_n2, ptr @max_n2, ptr @.str.12, ptr @min_paclen, ptr @max_paclen, ptr @.str.13, ptr @min_proto, ptr @max_proto, ptr @.str.14, ptr @min_ds_timeout, ptr @max_ds_timeout], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_param_table to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_ipdefmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_ipdefmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_axdefmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_axdefmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_backoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_backoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_conmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_conmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_window to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_window to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_ewindow to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_ewindow to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_t1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_t1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_t2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_t2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_t3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_t3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_idle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_idle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_n2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_n2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_paclen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_paclen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_proto to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_proto to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_ds_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_ds_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_register_dev_sysctl(ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca [26 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %path) #4
  %0 = call ptr @memset(ptr %path, i32 255, i32 26)
  %call = tail call ptr @kmemdup(ptr noundef nonnull @ax25_param_table, i32 noundef 540, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 0
  %data = getelementptr %struct.ctl_table, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %data, align 4
  %arrayidx.1 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 1
  %data.1 = getelementptr %struct.ctl_table, ptr %call, i32 1, i32 1
  %2 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx.1, ptr %data.1, align 4
  %arrayidx.2 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 2
  %data.2 = getelementptr %struct.ctl_table, ptr %call, i32 2, i32 1
  %3 = ptrtoint ptr %data.2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.2, ptr %data.2, align 4
  %arrayidx.3 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 3
  %data.3 = getelementptr %struct.ctl_table, ptr %call, i32 3, i32 1
  %4 = ptrtoint ptr %data.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.3, ptr %data.3, align 4
  %arrayidx.4 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 4
  %data.4 = getelementptr %struct.ctl_table, ptr %call, i32 4, i32 1
  %5 = ptrtoint ptr %data.4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.4, ptr %data.4, align 4
  %arrayidx.5 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 5
  %data.5 = getelementptr %struct.ctl_table, ptr %call, i32 5, i32 1
  %6 = ptrtoint ptr %data.5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.5, ptr %data.5, align 4
  %arrayidx.6 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 6
  %data.6 = getelementptr %struct.ctl_table, ptr %call, i32 6, i32 1
  %7 = ptrtoint ptr %data.6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.6, ptr %data.6, align 4
  %arrayidx.7 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 7
  %data.7 = getelementptr %struct.ctl_table, ptr %call, i32 7, i32 1
  %8 = ptrtoint ptr %data.7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.7, ptr %data.7, align 4
  %arrayidx.8 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 8
  %data.8 = getelementptr %struct.ctl_table, ptr %call, i32 8, i32 1
  %9 = ptrtoint ptr %data.8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.8, ptr %data.8, align 4
  %arrayidx.9 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 9
  %data.9 = getelementptr %struct.ctl_table, ptr %call, i32 9, i32 1
  %10 = ptrtoint ptr %data.9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.9, ptr %data.9, align 4
  %arrayidx.10 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 10
  %data.10 = getelementptr %struct.ctl_table, ptr %call, i32 10, i32 1
  %11 = ptrtoint ptr %data.10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.10, ptr %data.10, align 4
  %arrayidx.11 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 11
  %data.11 = getelementptr %struct.ctl_table, ptr %call, i32 11, i32 1
  %12 = ptrtoint ptr %data.11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.11, ptr %data.11, align 4
  %arrayidx.12 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 12
  %data.12 = getelementptr %struct.ctl_table, ptr %call, i32 12, i32 1
  %13 = ptrtoint ptr %data.12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.12, ptr %data.12, align 4
  %arrayidx.13 = getelementptr %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 5, i32 13
  %data.13 = getelementptr %struct.ctl_table, ptr %call, i32 13, i32 1
  %14 = ptrtoint ptr %data.13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.13, ptr %data.13, align 4
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 26, ptr noundef nonnull @.str, ptr noundef %16)
  %call5 = call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull %path, ptr noundef nonnull %call) #4
  %sysheader = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 4
  %17 = ptrtoint ptr %sysheader to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5, ptr %sysheader, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then8, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %path) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_unregister_dev_sysctl(ptr nocapture noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sysheader = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 4
  %0 = ptrtoint ptr %sysheader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysheader, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %sysheader to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sysheader, align 4
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl_table_arg, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %1) #4
  tail call void @kfree(ptr noundef %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ax25/sysctl_net_ax25.c", i32 161, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ax25/sysctl_net_ax25.c", i32 31, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ax25/sysctl_net_ax25.c", i32 39, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ax25/sysctl_net_ax25.c", i32 47, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ax25/sysctl_net_ax25.c", i32 55, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ax25/sysctl_net_ax25.c", i32 63, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ax25/sysctl_net_ax25.c", i32 71, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ax25/sysctl_net_ax25.c", i32 79, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ax25/sysctl_net_ax25.c", i32 87, i32 15}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ax25/sysctl_net_ax25.c", i32 95, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ax25/sysctl_net_ax25.c", i32 103, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ax25/sysctl_net_ax25.c", i32 111, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ax25/sysctl_net_ax25.c", i32 119, i32 15}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ax25/sysctl_net_ax25.c", i32 127, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ax25/sysctl_net_ax25.c", i32 136, i32 15}
!30 = !{ptr @ax25_param_table, !31, !"ax25_param_table", i1 false, i1 false}
!31 = !{!"../net/ax25/sysctl_net_ax25.c", i32 29, i32 31}
!32 = !{ptr @min_ipdefmode, !33, !"min_ipdefmode", i1 false, i1 false}
!33 = !{!"../net/ax25/sysctl_net_ax25.c", i32 12, i32 12}
!34 = !{ptr @max_ipdefmode, !35, !"max_ipdefmode", i1 false, i1 false}
!35 = !{!"../net/ax25/sysctl_net_ax25.c", i32 12, i32 34}
!36 = !{ptr @min_axdefmode, !37, !"min_axdefmode", i1 false, i1 false}
!37 = !{!"../net/ax25/sysctl_net_ax25.c", i32 13, i32 12}
!38 = !{ptr @max_axdefmode, !39, !"max_axdefmode", i1 false, i1 false}
!39 = !{!"../net/ax25/sysctl_net_ax25.c", i32 13, i32 41}
!40 = !{ptr @min_backoff, !41, !"min_backoff", i1 false, i1 false}
!41 = !{!"../net/ax25/sysctl_net_ax25.c", i32 14, i32 12}
!42 = !{ptr @max_backoff, !43, !"max_backoff", i1 false, i1 false}
!43 = !{!"../net/ax25/sysctl_net_ax25.c", i32 14, i32 29}
!44 = !{ptr @min_conmode, !45, !"min_conmode", i1 false, i1 false}
!45 = !{!"../net/ax25/sysctl_net_ax25.c", i32 15, i32 12}
!46 = !{ptr @max_conmode, !47, !"max_conmode", i1 false, i1 false}
!47 = !{!"../net/ax25/sysctl_net_ax25.c", i32 15, i32 29}
!48 = !{ptr @min_window, !49, !"min_window", i1 false, i1 false}
!49 = !{!"../net/ax25/sysctl_net_ax25.c", i32 16, i32 12}
!50 = !{ptr @max_window, !51, !"max_window", i1 false, i1 false}
!51 = !{!"../net/ax25/sysctl_net_ax25.c", i32 16, i32 33}
!52 = !{ptr @min_ewindow, !53, !"min_ewindow", i1 false, i1 false}
!53 = !{!"../net/ax25/sysctl_net_ax25.c", i32 17, i32 12}
!54 = !{ptr @max_ewindow, !55, !"max_ewindow", i1 false, i1 false}
!55 = !{!"../net/ax25/sysctl_net_ax25.c", i32 17, i32 34}
!56 = !{ptr @min_t1, !57, !"min_t1", i1 false, i1 false}
!57 = !{!"../net/ax25/sysctl_net_ax25.c", i32 18, i32 12}
!58 = !{ptr @max_t1, !59, !"max_t1", i1 false, i1 false}
!59 = !{!"../net/ax25/sysctl_net_ax25.c", i32 18, i32 29}
!60 = !{ptr @min_t2, !61, !"min_t2", i1 false, i1 false}
!61 = !{!"../net/ax25/sysctl_net_ax25.c", i32 19, i32 12}
!62 = !{ptr @max_t2, !63, !"max_t2", i1 false, i1 false}
!63 = !{!"../net/ax25/sysctl_net_ax25.c", i32 19, i32 29}
!64 = !{ptr @min_t3, !65, !"min_t3", i1 false, i1 false}
!65 = !{!"../net/ax25/sysctl_net_ax25.c", i32 20, i32 12}
!66 = !{ptr @max_t3, !67, !"max_t3", i1 false, i1 false}
!67 = !{!"../net/ax25/sysctl_net_ax25.c", i32 20, i32 25}
!68 = !{ptr @min_idle, !69, !"min_idle", i1 false, i1 false}
!69 = !{!"../net/ax25/sysctl_net_ax25.c", i32 21, i32 12}
!70 = !{ptr @max_idle, !71, !"max_idle", i1 false, i1 false}
!71 = !{!"../net/ax25/sysctl_net_ax25.c", i32 21, i32 27}
!72 = !{ptr @min_n2, !73, !"min_n2", i1 false, i1 false}
!73 = !{!"../net/ax25/sysctl_net_ax25.c", i32 22, i32 12}
!74 = !{ptr @max_n2, !75, !"max_n2", i1 false, i1 false}
!75 = !{!"../net/ax25/sysctl_net_ax25.c", i32 22, i32 29}
!76 = !{ptr @min_paclen, !77, !"min_paclen", i1 false, i1 false}
!77 = !{!"../net/ax25/sysctl_net_ax25.c", i32 23, i32 12}
!78 = !{ptr @max_paclen, !79, !"max_paclen", i1 false, i1 false}
!79 = !{!"../net/ax25/sysctl_net_ax25.c", i32 23, i32 33}
!80 = !{ptr @min_proto, !81, !"min_proto", i1 false, i1 false}
!81 = !{!"../net/ax25/sysctl_net_ax25.c", i32 24, i32 12}
!82 = !{ptr @max_proto, !83, !"max_proto", i1 false, i1 false}
!83 = !{!"../net/ax25/sysctl_net_ax25.c", i32 24, i32 27}
!84 = !{ptr @min_ds_timeout, !85, !"min_ds_timeout", i1 false, i1 false}
!85 = !{!"../net/ax25/sysctl_net_ax25.c", i32 26, i32 12}
!86 = !{ptr @max_ds_timeout, !87, !"max_ds_timeout", i1 false, i1 false}
!87 = !{!"../net/ax25/sysctl_net_ax25.c", i32 26, i32 32}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
