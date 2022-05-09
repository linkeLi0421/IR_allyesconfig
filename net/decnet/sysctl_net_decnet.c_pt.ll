; ModuleID = '/llk/IR_all_yes/net/decnet/sysctl_net_decnet.c_pt.bc'
source_filename = "../net/decnet/sysctl_net_decnet.c"
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@decnet_time_wait = dso_local global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@decnet_dn_count = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@decnet_di_count = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@decnet_dr_count = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@decnet_log_martians = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@decnet_no_fc_max_cwnd = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sysctl_decnet_mem = dso_local global { [3 x i32], [20 x i8] } { [3 x i32] [i32 6144, i32 8192, i32 12288], [20 x i8] zeroinitializer }, align 32
@sysctl_decnet_wmem = dso_local global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4096, i32 16384, i32 131072], [20 x i8] zeroinitializer }, align 32
@sysctl_decnet_rmem = dso_local global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4096, i32 87380, i32 174760], [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"net/decnet\00", [21 x i8] zeroinitializer }, align 32
@dn_table = internal global { [14 x %struct.ctl_table], [104 x i8] } { [14 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr null, i32 7, i16 420, ptr null, ptr @dn_node_address_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @node_name, i32 7, i16 420, ptr null, ptr @proc_dostring, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr null, i32 16, i16 420, ptr null, ptr @dn_def_dev_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @decnet_time_wait, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_decnet_time_wait, ptr @max_decnet_time_wait }, %struct.ctl_table { ptr @.str.5, ptr @decnet_dn_count, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_state_count, ptr @max_state_count }, %struct.ctl_table { ptr @.str.6, ptr @decnet_di_count, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_state_count, ptr @max_state_count }, %struct.ctl_table { ptr @.str.7, ptr @decnet_dr_count, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_state_count, ptr @max_state_count }, %struct.ctl_table { ptr @.str.8, ptr @decnet_dst_gc_interval, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_decnet_dst_gc_interval, ptr @max_decnet_dst_gc_interval }, %struct.ctl_table { ptr @.str.9, ptr @decnet_no_fc_max_cwnd, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_decnet_no_fc_max_cwnd, ptr @max_decnet_no_fc_max_cwnd }, %struct.ctl_table { ptr @.str.10, ptr @sysctl_decnet_mem, i32 12, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.11, ptr @sysctl_decnet_rmem, i32 12, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr @sysctl_decnet_wmem, i32 12, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr @decnet_debug_level, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [104 x i8] zeroinitializer }, align 32
@dn_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@decnet_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"node_address\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_name\00", [22 x i8] zeroinitializer }, align 32
@node_name = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"???\00\00\00\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"default_device\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"time_wait\00", [22 x i8] zeroinitializer }, align 32
@min_decnet_time_wait = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 5], [28 x i8] zeroinitializer }, align 32
@max_decnet_time_wait = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 600], [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dn_count\00", [23 x i8] zeroinitializer }, align 32
@min_state_count = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_state_count = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 12], [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"di_count\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dr_count\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dst_gc_interval\00", [16 x i8] zeroinitializer }, align 32
@decnet_dst_gc_interval = external dso_local global i32, align 4
@min_decnet_dst_gc_interval = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_decnet_dst_gc_interval = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 60], [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no_fc_max_cwnd\00", [17 x i8] zeroinitializer }, align 32
@min_decnet_no_fc_max_cwnd = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_decnet_no_fc_max_cwnd = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 2046], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"decnet_mem\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decnet_rmem\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decnet_wmem\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@decnet_address = external dso_local local_unnamed_addr global i16, align 2
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 10, i64 13, i64 32, i64 58]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 10, i64 13, i64 32, i64 58]
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"decnet_time_wait\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 34, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"decnet_dn_count\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 35, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"decnet_di_count\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 36, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"decnet_dr_count\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 37, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"decnet_log_martians\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 38, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"decnet_no_fc_max_cwnd\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"sysctl_decnet_mem\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"sysctl_decnet_wmem\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 43, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"sysctl_decnet_rmem\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 44, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 346, i32 51 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"dn_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 239, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"dn_table_header\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 58, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"decnet_debug_level\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 33, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 241, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 247, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"node_name\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 56, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 254, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 260, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"min_decnet_time_wait\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 48, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"max_decnet_time_wait\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 49, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 269, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"min_state_count\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 50, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"max_state_count\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 51, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 278, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 287, i32 15 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 296, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant [27 x i8] c"min_decnet_dst_gc_interval\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 52, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"max_decnet_dst_gc_interval\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 53, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 305, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant [26 x i8] c"min_decnet_no_fc_max_cwnd\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 54, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"max_decnet_no_fc_max_cwnd\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 55, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 314, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 321, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 328, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [34 x i8] c"../net/decnet/sysctl_net_decnet.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 335, i32 15 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @decnet_time_wait, ptr @decnet_dn_count, ptr @decnet_di_count, ptr @decnet_dr_count, ptr @decnet_log_martians, ptr @decnet_no_fc_max_cwnd, ptr @sysctl_decnet_mem, ptr @sysctl_decnet_wmem, ptr @sysctl_decnet_rmem, ptr @.str, ptr @dn_table, ptr @dn_table_header, ptr @decnet_debug_level, ptr @.str.1, ptr @.str.2, ptr @node_name, ptr @.str.3, ptr @.str.4, ptr @min_decnet_time_wait, ptr @max_decnet_time_wait, ptr @.str.5, ptr @min_state_count, ptr @max_state_count, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @min_decnet_dst_gc_interval, ptr @max_decnet_dst_gc_interval, ptr @.str.9, ptr @min_decnet_no_fc_max_cwnd, ptr @max_decnet_no_fc_max_cwnd, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_time_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_dn_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_di_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_dr_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_log_martians to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_no_fc_max_cwnd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_decnet_mem to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_decnet_wmem to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_decnet_rmem to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_table to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_decnet_time_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_decnet_time_wait to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_state_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_state_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_decnet_dst_gc_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_decnet_dst_gc_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_decnet_no_fc_max_cwnd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_decnet_no_fc_max_cwnd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_register_sysctl() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str, ptr noundef nonnull @dn_table) #7
  store ptr %call, ptr @dn_table_header, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_unregister_sysctl() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dn_table_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_node_address_handler(ptr nocapture noundef readnone %table, i32 noundef %write, ptr nocapture noundef %buffer, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %addr = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %addr) #7
  %0 = call ptr @memset(ptr %addr, i32 255, i32 9)
  %1 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp ne i64 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool2.not = icmp eq i32 %write, 0
  %or.cond = and i1 %tobool2.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %tobool2.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 8)
  %7 = call ptr @memcpy(ptr %addr, ptr %buffer, i32 %6)
  %arrayidx = getelementptr [9 x i8], ptr %addr, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i, %if.then4
  %str.addr.0.i = phi ptr [ %addr, %if.then4 ], [ %incdec.ptr.i, %sw.epilog.i ]
  %9 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %str.addr.0.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %sw.epilog.i [
    i8 32, label %for.cond.i.sw.bb.i_crit_edge
    i8 10, label %for.cond.i.sw.bb.i_crit_edge72
    i8 13, label %for.cond.i.sw.bb.i_crit_edge73
    i8 58, label %for.cond.i.sw.bb.i_crit_edge74
    i8 0, label %for.cond.i.strip_it.exit_crit_edge
  ]

for.cond.i.strip_it.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strip_it.exit

for.cond.i.sw.bb.i_crit_edge74:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.cond.i.sw.bb.i_crit_edge73:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.cond.i.sw.bb.i_crit_edge72:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.cond.i.sw.bb.i_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.cond.i.sw.bb.i_crit_edge, %for.cond.i.sw.bb.i_crit_edge72, %for.cond.i.sw.bb.i_crit_edge73, %for.cond.i.sw.bb.i_crit_edge74
  %12 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %str.addr.0.i, align 1
  br label %strip_it.exit

sw.epilog.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  br label %for.cond.i

strip_it.exit:                                    ; preds = %sw.bb.i, %for.cond.i.strip_it.exit_crit_edge
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not189.i = icmp eq i8 %14, 0
  br i1 %tobool.not189.i, label %strip_it.exit.cleanup_crit_edge, label %strip_it.exit.land.rhs.i_crit_edge

strip_it.exit.land.rhs.i_crit_edge:               ; preds = %strip_it.exit
  br label %land.rhs.i

strip_it.exit.cleanup_crit_edge:                  ; preds = %strip_it.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %strip_it.exit.land.rhs.i_crit_edge
  %15 = phi i8 [ %19, %while.body.i.land.rhs.i_crit_edge ], [ %14, %strip_it.exit.land.rhs.i_crit_edge ]
  %str.addr.0190.i = phi ptr [ %incdec.ptr.i44, %while.body.i.land.rhs.i_crit_edge ], [ %addr, %strip_it.exit.land.rhs.i_crit_edge ]
  %16 = add i8 %15, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %16)
  %17 = icmp ult i8 %16, 10
  br i1 %17, label %if.end.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i44 = getelementptr i8, ptr %str.addr.0190.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i44 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.i44, align 1
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.rhs.i
  %conv8.i = zext i8 %15 to i16
  %incdec.ptr11.i = getelementptr i8, ptr %str.addr.0190.i, i32 1
  %sub.i = add nsw i16 %conv8.i, -48
  %20 = ptrtoint ptr %incdec.ptr11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr11.i, align 1
  %conv14.i = zext i8 %21 to i16
  %22 = add i8 %21, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %23 = icmp ult i8 %22, 10
  %mul.i = mul nuw nsw i16 %sub.i, 10
  %incdec.ptr23.i = getelementptr i8, ptr %str.addr.0190.i, i32 2
  %sub25.i = add nsw i16 %mul.i, -48
  %add.i = add nsw i16 %sub25.i, %conv14.i
  %str.addr.1.i = select i1 %23, ptr %incdec.ptr23.i, ptr %incdec.ptr11.i
  %area.0.i = select i1 %23, i16 %add.i, i16 %sub.i
  %24 = ptrtoint ptr %str.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %str.addr.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %25)
  %cmp31.not.i = icmp eq i8 %25, 46
  br i1 %cmp31.not.i, label %if.end34.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.i:                                       ; preds = %if.end.i
  %str.addr.1.i.sroa.sel.v = select i1 %23, i32 3, i32 2
  %str.addr.1.i.sroa.sel = getelementptr i8, ptr %str.addr.0190.i, i32 %str.addr.1.i.sroa.sel.v
  %26 = ptrtoint ptr %str.addr.1.i.sroa.sel to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %str.addr.1.i.sroa.sel, align 1
  %28 = add i8 %27, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %if.end43.i, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43.i:                                       ; preds = %if.end34.i
  %conv35.i = zext i8 %27 to i16
  %str.addr.1.i.sroa.sel47.v = select i1 %23, i32 4, i32 3
  %str.addr.1.i.sroa.sel47 = getelementptr i8, ptr %str.addr.0190.i, i32 %str.addr.1.i.sroa.sel47.v
  %sub46.i = add nsw i16 %conv35.i, -48
  %30 = ptrtoint ptr %str.addr.1.i.sroa.sel47 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %str.addr.1.i.sroa.sel47, align 1
  %conv48.i = zext i8 %31 to i16
  %32 = add i8 %31, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %33 = icmp ult i8 %32, 10
  %mul57.i = mul nuw nsw i16 %sub46.i, 10
  %str.addr.1.i.sroa.sel50.v = select i1 %23, i32 5, i32 4
  %str.addr.1.i.sroa.sel50 = getelementptr i8, ptr %str.addr.0190.i, i32 %str.addr.1.i.sroa.sel50.v
  %sub61.i = add nsw i16 %mul57.i, -48
  %add63.i = add nsw i16 %sub61.i, %conv48.i
  %str.addr.2.i = select i1 %33, ptr %str.addr.1.i.sroa.sel50, ptr %str.addr.1.i.sroa.sel47
  %node.0.i = select i1 %33, i16 %add63.i, i16 %sub46.i
  %34 = ptrtoint ptr %str.addr.2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %str.addr.2.i, align 1
  %conv66.i = zext i8 %35 to i16
  %36 = add i8 %35, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %36)
  %37 = icmp ult i8 %36, 10
  %mul75.i = mul nsw i16 %node.0.i, 10
  %sub79.i = add nsw i16 %conv66.i, -48
  %add81.i = add nsw i16 %sub79.i, %mul75.i
  %str.addr.3.idx.i = zext i1 %37 to i32
  %str.addr.3.i = getelementptr i8, ptr %str.addr.2.i, i32 %str.addr.3.idx.i
  %node.1.i = select i1 %37, i16 %add81.i, i16 %node.0.i
  %38 = ptrtoint ptr %str.addr.3.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %str.addr.3.i, align 1
  %conv84.i = zext i8 %39 to i16
  %40 = add i8 %39, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %40)
  %41 = icmp ult i8 %40, 10
  %mul93.i = mul nsw i16 %node.1.i, 10
  %sub97.i = add nsw i16 %conv84.i, -48
  %add99.i = add nsw i16 %sub97.i, %mul93.i
  %node.2.i = select i1 %41, i16 %add99.i, i16 %node.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %node.2.i)
  %cmp103.i = icmp ugt i16 %node.2.i, 1023
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %area.0.i)
  %cmp106.i = icmp ugt i16 %area.0.i, 63
  %or.cond180.i = select i1 %cmp103.i, i1 true, i1 %cmp106.i
  br i1 %or.cond180.i, label %if.end43.i.cleanup_crit_edge, label %if.end109.i

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109.i:                                      ; preds = %if.end43.i
  %str.addr.4.idx.i = zext i1 %41 to i32
  %str.addr.4.i = getelementptr i8, ptr %str.addr.3.i, i32 %str.addr.4.idx.i
  %42 = ptrtoint ptr %str.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %str.addr.4.i, align 1
  %44 = add i8 %43, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %44)
  %45 = icmp ult i8 %44, 10
  %46 = add i8 %43, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %46)
  %47 = icmp ult i8 %46, 26
  %or.cond.i = or i1 %45, %47
  %48 = add i8 %43, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %48)
  %49 = icmp ult i8 %48, 26
  %or.cond186.i = select i1 %or.cond.i, i1 true, i1 %49
  br i1 %or.cond186.i, label %if.end109.i.cleanup_crit_edge, label %if.end9

if.end109.i.cleanup_crit_edge:                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i16 %area.0.i, 10
  %or.i = or i16 %node.2.i, %shl.i
  %50 = tail call i16 @llvm.bswap.i16(i16 %or.i) #7
  tail call void @dn_dev_devices_off() #7
  call void @__asan_store2_noabort(i32 ptrtoint (ptr @decnet_address to i32))
  store i16 %50, ptr @decnet_address, align 2
  tail call void @dn_dev_devices_on() #7
  %conv = zext i32 %6 to i64
  %51 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ppos, align 8
  %add = add i64 %52, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @decnet_address to i32))
  %53 = load i16, ptr @decnet_address, align 2
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %call12 = call ptr @dn_addr2asc(i16 noundef zeroext %54, ptr noundef nonnull %addr) #7
  %call14 = call i32 @strlen(ptr noundef nonnull %addr) #10
  %inc = add i32 %call14, 1
  %arrayidx15 = getelementptr [9 x i8], ptr %addr, i32 0, i32 %call14
  %55 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 10, ptr %arrayidx15, align 1
  %56 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lenp, align 4
  %58 = call i32 @llvm.umin.i32(i32 %inc, i32 %57)
  %59 = call ptr @memcpy(ptr %buffer, ptr %addr, i32 %58)
  %60 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %lenp, align 4
  %conv21 = zext i32 %58 to i64
  %61 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ppos, align 8
  %add22 = add i64 %62, %conv21
  store i64 %add22, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end9, %if.end109.i.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %strip_it.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %if.end10 ], [ 0, %if.then ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end34.i.cleanup_crit_edge ], [ -22, %if.end43.i.cleanup_crit_edge ], [ -22, %if.end109.i.cleanup_crit_edge ], [ -22, %strip_it.exit.cleanup_crit_edge ], [ -22, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_def_dev_handler(ptr nocapture noundef readnone %table, i32 noundef %write, ptr nocapture noundef %buffer, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %devname = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %devname) #7
  %0 = call ptr @memset(ptr %devname, i32 255, i32 17)
  %1 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool1.not = icmp ne i64 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool2.not = icmp eq i32 %write, 0
  %or.cond = and i1 %tobool2.not, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %5 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %tobool2.not, label %if.end19, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp ugt i32 %2, 16
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.end6

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.then4
  %6 = call ptr @memcpy(ptr %devname, ptr %buffer, i32 %2)
  %arrayidx = getelementptr [17 x i8], ptr %devname, i32 0, i32 %2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %sw.epilog.i, %if.end6
  %str.addr.0.i = phi ptr [ %devname, %if.end6 ], [ %incdec.ptr.i, %sw.epilog.i ]
  %8 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %str.addr.0.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %9, label %sw.epilog.i [
    i8 32, label %for.cond.i.sw.bb.i_crit_edge
    i8 10, label %for.cond.i.sw.bb.i_crit_edge97
    i8 13, label %for.cond.i.sw.bb.i_crit_edge98
    i8 58, label %for.cond.i.sw.bb.i_crit_edge99
    i8 0, label %for.cond.i.strip_it.exit_crit_edge
  ]

for.cond.i.strip_it.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %strip_it.exit

for.cond.i.sw.bb.i_crit_edge99:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.cond.i.sw.bb.i_crit_edge98:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.cond.i.sw.bb.i_crit_edge97:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

for.cond.i.sw.bb.i_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.cond.i.sw.bb.i_crit_edge, %for.cond.i.sw.bb.i_crit_edge97, %for.cond.i.sw.bb.i_crit_edge98, %for.cond.i.sw.bb.i_crit_edge99
  %11 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %str.addr.0.i, align 1
  br label %strip_it.exit

sw.epilog.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  br label %for.cond.i

strip_it.exit:                                    ; preds = %sw.bb.i, %for.cond.i.strip_it.exit_crit_edge
  %call = call ptr @dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %devname) #7
  %cmp9 = icmp eq ptr %call, null
  br i1 %cmp9, label %strip_it.exit.cleanup_crit_edge, label %if.end11

strip_it.exit.cleanup_crit_edge:                  ; preds = %strip_it.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %strip_it.exit
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 79
  %12 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dn_ptr, align 4
  %cmp12 = icmp eq ptr %13, null
  br i1 %cmp12, label %do.body1.i, label %if.end14

do.body1.i:                                       ; preds = %if.end11
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !80
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %15 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcpu_refcnt.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add13.i = add i32 %26, -1
  store i32 %add13.i, ptr %24, align 4
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !81
  %and.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !82

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #7, !srcloc !83
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @dn_dev_set_default(ptr noundef nonnull %call, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.body1.i74

do.body1.i74:                                     ; preds = %if.end14
  %28 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !80
  %pcpu_refcnt.i66 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %29 = ptrtoint ptr %pcpu_refcnt.i66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcpu_refcnt.i66, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i67 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i67 to ptr
  %cpu.i68 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i68, align 4
  %arrayidx.i69 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i69, align 4
  %add.i70 = add i32 %37, %31
  %38 = inttoptr i32 %add.i70 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add13.i71 = add i32 %40, -1
  store i32 %add13.i71, ptr %38, align 4
  %41 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !81
  %and.i.i.i72 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool24.not.i73 = icmp eq i32 %and.i.i.i72, 0
  br i1 %tobool24.not.i73, label %if.then28.i75, label %do.body1.i74.dev_put.exit77_crit_edge, !prof !82

do.body1.i74.dev_put.exit77_crit_edge:            ; preds = %do.body1.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit77

if.then28.i75:                                    ; preds = %do.body1.i74
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit77

dev_put.exit77:                                   ; preds = %if.then28.i75, %do.body1.i74.dev_put.exit77_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #7, !srcloc !83
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lenp, align 4
  %conv = zext i32 %43 to i64
  %44 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ppos, align 8
  %add = add i64 %45, %conv
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = tail call ptr @dn_dev_get_default() #7
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %do.body1.i87

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

do.body1.i87:                                     ; preds = %if.end19
  %call27 = call ptr @strcpy(ptr noundef nonnull %devname, ptr noundef nonnull %call20) #10
  %47 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !80
  %pcpu_refcnt.i79 = getelementptr inbounds %struct.net_device, ptr %call20, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i79, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = call i32 @llvm.read_register.i32(metadata !70) #7
  %and.i.i80 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i80 to ptr
  %cpu.i81 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i81, align 4
  %arrayidx.i82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i82, align 4
  %add.i83 = add i32 %56, %50
  %57 = inttoptr i32 %add.i83 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i84 = add i32 %59, -1
  store i32 %add13.i84, ptr %57, align 4
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !81
  %and.i.i.i85 = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i85)
  %tobool24.not.i86 = icmp eq i32 %and.i.i.i85, 0
  br i1 %tobool24.not.i86, label %if.then28.i88, label %do.body1.i87.dev_put.exit90_crit_edge, !prof !82

do.body1.i87.dev_put.exit90_crit_edge:            ; preds = %do.body1.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit90

if.then28.i88:                                    ; preds = %do.body1.i87
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit90

dev_put.exit90:                                   ; preds = %if.then28.i88, %do.body1.i87.dev_put.exit90_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #7, !srcloc !83
  %call29 = call i32 @strlen(ptr noundef nonnull %devname) #10
  %inc = add i32 %call29, 1
  %arrayidx30 = getelementptr [17 x i8], ptr %devname, i32 0, i32 %call29
  %61 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 10, ptr %arrayidx30, align 1
  %62 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lenp, align 4
  %64 = call i32 @llvm.umin.i32(i32 %inc, i32 %63)
  %65 = call ptr @memcpy(ptr %buffer, ptr %devname, i32 %64)
  %66 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %lenp, align 4
  %conv36 = zext i32 %64 to i64
  %67 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %ppos, align 8
  %add37 = add i64 %68, %conv36
  store i64 %add37, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit90, %if.then23, %if.end18, %dev_put.exit77, %dev_put.exit, %strip_it.exit.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %dev_put.exit ], [ -19, %dev_put.exit77 ], [ 0, %if.end18 ], [ 0, %if.then23 ], [ 0, %dev_put.exit90 ], [ 0, %if.then ], [ -7, %if.then4.cleanup_crit_edge ], [ -19, %strip_it.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %devname) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_devices_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_dev_devices_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_addr2asc(i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_dev_set_default(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_dev_get_default() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @decnet_time_wait, !1, !"decnet_time_wait", i1 false, i1 false}
!1 = !{!"../net/decnet/sysctl_net_decnet.c", i32 34, i32 5}
!2 = !{ptr @decnet_dn_count, !3, !"decnet_dn_count", i1 false, i1 false}
!3 = !{!"../net/decnet/sysctl_net_decnet.c", i32 35, i32 5}
!4 = !{ptr @decnet_di_count, !5, !"decnet_di_count", i1 false, i1 false}
!5 = !{!"../net/decnet/sysctl_net_decnet.c", i32 36, i32 5}
!6 = !{ptr @decnet_dr_count, !7, !"decnet_dr_count", i1 false, i1 false}
!7 = !{!"../net/decnet/sysctl_net_decnet.c", i32 37, i32 5}
!8 = !{ptr @decnet_log_martians, !9, !"decnet_log_martians", i1 false, i1 false}
!9 = !{!"../net/decnet/sysctl_net_decnet.c", i32 38, i32 5}
!10 = !{ptr @decnet_no_fc_max_cwnd, !11, !"decnet_no_fc_max_cwnd", i1 false, i1 false}
!11 = !{!"../net/decnet/sysctl_net_decnet.c", i32 39, i32 5}
!12 = !{ptr @sysctl_decnet_mem, !13, !"sysctl_decnet_mem", i1 false, i1 false}
!13 = !{!"../net/decnet/sysctl_net_decnet.c", i32 42, i32 6}
!14 = !{ptr @sysctl_decnet_wmem, !15, !"sysctl_decnet_wmem", i1 false, i1 false}
!15 = !{!"../net/decnet/sysctl_net_decnet.c", i32 43, i32 5}
!16 = !{ptr @sysctl_decnet_rmem, !17, !"sysctl_decnet_rmem", i1 false, i1 false}
!17 = !{!"../net/decnet/sysctl_net_decnet.c", i32 44, i32 5}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/decnet/sysctl_net_decnet.c", i32 346, i32 51}
!20 = !{ptr @decnet_debug_level, !21, !"decnet_debug_level", i1 false, i1 false}
!21 = !{!"../net/decnet/sysctl_net_decnet.c", i32 33, i32 5}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/decnet/sysctl_net_decnet.c", i32 241, i32 15}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/decnet/sysctl_net_decnet.c", i32 247, i32 15}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/decnet/sysctl_net_decnet.c", i32 254, i32 15}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/decnet/sysctl_net_decnet.c", i32 260, i32 15}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/decnet/sysctl_net_decnet.c", i32 269, i32 15}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/decnet/sysctl_net_decnet.c", i32 278, i32 15}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/decnet/sysctl_net_decnet.c", i32 287, i32 15}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/decnet/sysctl_net_decnet.c", i32 296, i32 15}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/decnet/sysctl_net_decnet.c", i32 305, i32 15}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/decnet/sysctl_net_decnet.c", i32 314, i32 15}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/decnet/sysctl_net_decnet.c", i32 321, i32 15}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/decnet/sysctl_net_decnet.c", i32 328, i32 15}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/decnet/sysctl_net_decnet.c", i32 335, i32 15}
!48 = !{ptr @dn_table, !49, !"dn_table", i1 false, i1 false}
!49 = !{!"../net/decnet/sysctl_net_decnet.c", i32 239, i32 25}
!50 = !{ptr @node_name, !51, !"node_name", i1 false, i1 false}
!51 = !{!"../net/decnet/sysctl_net_decnet.c", i32 56, i32 13}
!52 = !{ptr @min_decnet_time_wait, !53, !"min_decnet_time_wait", i1 false, i1 false}
!53 = !{!"../net/decnet/sysctl_net_decnet.c", i32 48, i32 12}
!54 = !{ptr @max_decnet_time_wait, !55, !"max_decnet_time_wait", i1 false, i1 false}
!55 = !{!"../net/decnet/sysctl_net_decnet.c", i32 49, i32 12}
!56 = !{ptr @min_state_count, !57, !"min_state_count", i1 false, i1 false}
!57 = !{!"../net/decnet/sysctl_net_decnet.c", i32 50, i32 12}
!58 = !{ptr @max_state_count, !59, !"max_state_count", i1 false, i1 false}
!59 = !{!"../net/decnet/sysctl_net_decnet.c", i32 51, i32 12}
!60 = !{ptr @min_decnet_dst_gc_interval, !61, !"min_decnet_dst_gc_interval", i1 false, i1 false}
!61 = !{!"../net/decnet/sysctl_net_decnet.c", i32 52, i32 12}
!62 = !{ptr @max_decnet_dst_gc_interval, !63, !"max_decnet_dst_gc_interval", i1 false, i1 false}
!63 = !{!"../net/decnet/sysctl_net_decnet.c", i32 53, i32 12}
!64 = !{ptr @min_decnet_no_fc_max_cwnd, !65, !"min_decnet_no_fc_max_cwnd", i1 false, i1 false}
!65 = !{!"../net/decnet/sysctl_net_decnet.c", i32 54, i32 12}
!66 = !{ptr @max_decnet_no_fc_max_cwnd, !67, !"max_decnet_no_fc_max_cwnd", i1 false, i1 false}
!67 = !{!"../net/decnet/sysctl_net_decnet.c", i32 55, i32 12}
!68 = !{ptr @dn_table_header, !69, !"dn_table_header", i1 false, i1 false}
!69 = !{!"../net/decnet/sysctl_net_decnet.c", i32 58, i32 33}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 1075207, i64 1075268}
!81 = !{i64 1077939}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 1078224}
