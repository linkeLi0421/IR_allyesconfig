; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_cdg.c_pt.bc'
source_filename = "../net/ipv4/tcp_cdg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.cdg = type { %struct.cdg_minmax, %struct.cdg_minmax, ptr, %struct.cdg_minmax, i8, i8, i8, i8, i32, i32, i16, i16, i32, i32, i32 }
%struct.cdg_minmax = type { %union.anon.189 }
%union.anon.189 = type { i64 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.196, %struct.anon.197, %struct.anon.198, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.196 = type { i32, i32, i64 }
%struct.anon.197 = type { i32, i32, i64 }
%struct.anon.198 = type { i32, i32 }
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
%struct.hlist_head = type { ptr }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.190 = type { i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }

@__param_str_window = internal constant [15 x i8] c"tcp_cdg.window\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@window = internal global i32 8, section ".data..read_mostly", align 4
@__param_window = internal constant %struct.kernel_param { ptr @__param_str_window, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.164 { ptr @window } }, section "__param", align 4
@__UNIQUE_ID_windowtype593 = internal constant [28 x i8] c"tcp_cdg.parmtype=window:int\00", section ".modinfo", align 1
@__UNIQUE_ID_window594 = internal constant [63 x i8] c"tcp_cdg.parm=window:gradient window size (power of two <= 256)\00", section ".modinfo", align 1
@__param_str_backoff_beta = internal constant [21 x i8] c"tcp_cdg.backoff_beta\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@backoff_beta = internal global i32 724, section ".data..read_mostly", align 4
@__param_backoff_beta = internal constant %struct.kernel_param { ptr @__param_str_backoff_beta, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @backoff_beta } }, section "__param", align 4
@__UNIQUE_ID_backoff_betatype595 = internal constant [35 x i8] c"tcp_cdg.parmtype=backoff_beta:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_backoff_beta596 = internal constant [48 x i8] c"tcp_cdg.parm=backoff_beta:backoff beta (0-1024)\00", section ".modinfo", align 1
@__param_str_backoff_factor = internal constant [23 x i8] c"tcp_cdg.backoff_factor\00", align 1
@backoff_factor = internal global i32 42, section ".data..read_mostly", align 4
@__param_backoff_factor = internal constant %struct.kernel_param { ptr @__param_str_backoff_factor, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @backoff_factor } }, section "__param", align 4
@__UNIQUE_ID_backoff_factortype597 = internal constant [37 x i8] c"tcp_cdg.parmtype=backoff_factor:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_backoff_factor598 = internal constant [61 x i8] c"tcp_cdg.parm=backoff_factor:backoff probability scale factor\00", section ".modinfo", align 1
@__param_str_hystart_detect = internal constant [23 x i8] c"tcp_cdg.hystart_detect\00", align 1
@hystart_detect = internal global i32 3, section ".data..read_mostly", align 4
@__param_hystart_detect = internal constant %struct.kernel_param { ptr @__param_str_hystart_detect, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @hystart_detect } }, section "__param", align 4
@__UNIQUE_ID_hystart_detecttype599 = internal constant [37 x i8] c"tcp_cdg.parmtype=hystart_detect:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_detect600 = internal constant [107 x i8] c"tcp_cdg.parm=hystart_detect:use Hybrid Slow start (0: disabled, 1: ACK train, 2: delay threshold, 3: both)\00", section ".modinfo", align 1
@__param_str_use_ineff = internal constant [18 x i8] c"tcp_cdg.use_ineff\00", align 1
@use_ineff = internal global i32 5, section ".data..read_mostly", align 4
@__param_use_ineff = internal constant %struct.kernel_param { ptr @__param_str_use_ineff, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @use_ineff } }, section "__param", align 4
@__UNIQUE_ID_use_inefftype601 = internal constant [32 x i8] c"tcp_cdg.parmtype=use_ineff:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_use_ineff602 = internal constant [69 x i8] c"tcp_cdg.parm=use_ineff:use ineffectual backoff detection (threshold)\00", section ".modinfo", align 1
@__param_str_use_shadow = internal constant [19 x i8] c"tcp_cdg.use_shadow\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_shadow = internal global i8 1, section ".data..read_mostly", align 1
@__param_use_shadow = internal constant %struct.kernel_param { ptr @__param_str_use_shadow, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @use_shadow } }, section "__param", align 4
@__UNIQUE_ID_use_shadowtype603 = internal constant [33 x i8] c"tcp_cdg.parmtype=use_shadow:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_shadow604 = internal constant [52 x i8] c"tcp_cdg.parm=use_shadow:use shadow window heuristic\00", section ".modinfo", align 1
@__param_str_use_tolerance = internal constant [22 x i8] c"tcp_cdg.use_tolerance\00", align 1
@use_tolerance = internal global i8 0, section ".data..read_mostly", align 1
@__param_use_tolerance = internal constant %struct.kernel_param { ptr @__param_str_use_tolerance, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @use_tolerance } }, section "__param", align 4
@__UNIQUE_ID_use_tolerancetype605 = internal constant [36 x i8] c"tcp_cdg.parmtype=use_tolerance:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_tolerance606 = internal constant [56 x i8] c"tcp_cdg.parm=use_tolerance:use loss tolerance heuristic\00", section ".modinfo", align 1
@tcp_cdg = internal global %struct.tcp_congestion_ops { ptr @tcp_cdg_ssthresh, ptr @tcp_cdg_cong_avoid, ptr null, ptr @tcp_cdg_cwnd_event, ptr null, ptr @tcp_cdg_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"cdg\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_cdg_init, ptr @tcp_cdg_release, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_cdg__638_422_tcp_cdg_register6 = internal global ptr @tcp_cdg_register, section ".initcall6.init", align 4
@__exitcall_tcp_cdg_unregister = internal global ptr @tcp_cdg_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author639 = internal constant [39 x i8] c"tcp_cdg.author=Kenneth Klette Jonassen\00", section ".modinfo", align 1
@__UNIQUE_ID_file640 = internal constant [30 x i8] c"tcp_cdg.file=net/ipv4/tcp_cdg\00", section ".modinfo", align 1
@__UNIQUE_ID_license641 = internal constant [20 x i8] c"tcp_cdg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description642 = internal constant [28 x i8] c"tcp_cdg.description=TCP CDG\00", section ".modinfo", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nexp_u32.v = internal constant { [17 x i16], [62 x i8] } { [17 x i16] [i16 -1, i16 -18, i16 -35, i16 -68, i16 -135, i16 -269, i16 -535, i16 -1066, i16 -2114, i16 -4158, i16 -8052, i16 -15113, i16 -26741, i16 22965, i16 8047, i16 987, i16 14], [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@___asan_gen_.4 = private constant [22 x i8] c"../net/ipv4/tcp_cdg.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 105, i32 19 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author639, ptr @__UNIQUE_ID_backoff_beta596, ptr @__UNIQUE_ID_backoff_betatype595, ptr @__UNIQUE_ID_backoff_factor598, ptr @__UNIQUE_ID_backoff_factortype597, ptr @__UNIQUE_ID_description642, ptr @__UNIQUE_ID_file640, ptr @__UNIQUE_ID_hystart_detect600, ptr @__UNIQUE_ID_hystart_detecttype599, ptr @__UNIQUE_ID_license641, ptr @__UNIQUE_ID_use_ineff602, ptr @__UNIQUE_ID_use_inefftype601, ptr @__UNIQUE_ID_use_shadow604, ptr @__UNIQUE_ID_use_shadowtype603, ptr @__UNIQUE_ID_use_tolerance606, ptr @__UNIQUE_ID_use_tolerancetype605, ptr @__UNIQUE_ID_window594, ptr @__UNIQUE_ID_windowtype593, ptr @__exitcall_tcp_cdg_unregister, ptr @__initcall__kmod_tcp_cdg__638_422_tcp_cdg_register6, ptr @__param_backoff_beta, ptr @__param_backoff_factor, ptr @__param_hystart_detect, ptr @__param_use_ineff, ptr @__param_use_shadow, ptr @__param_use_tolerance, ptr @__param_window, ptr @tcp_cdg_unregister, ptr @nexp_u32.v], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nexp_u32.v to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_cdg_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_cdg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_cdg_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @backoff_beta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %0)
  %cmp = icmp ugt i32 %0, 1024
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @window, align 4
  %2 = add i32 %1, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %2)
  %3 = icmp ult i32 %2, -256
  br i1 %3, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i32 @llvm.ctpop.i32(i32 %1) #9, !range !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp1.i = icmp ult i32 %4, 2
  br i1 %cmp1.i, label %do.end, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_cdg) #9
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -34, %lor.lhs.false.return_crit_edge ], [ -34, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcp_cdg_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %state = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end19_crit_edge [
    i8 3, label %if.then
    i8 1, label %land.lhs.true
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %3 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %snd_cwnd, align 8
  %5 = load i32, ptr @backoff_beta, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 1024)
  %mul = mul i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul)
  %cmp6 = icmp ult i32 %mul, 2048
  %shr = lshr i32 %mul, 10
  %cond11 = select i1 %cmp6, i32 2, i32 %shr
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %7 = load i8, ptr @use_tolerance, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end19_crit_edge, label %if.then17

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %snd_cwnd18 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %8 = ptrtoint ptr %snd_cwnd18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_cwnd18, align 8
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  %shadow_wnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %10 = ptrtoint ptr %shadow_wnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shadow_wnd, align 8
  %shr20 = lshr i32 %11, 1
  %snd_cwnd21 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %12 = ptrtoint ptr %snd_cwnd21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_cwnd21, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %shr20, i32 %13)
  %15 = ptrtoint ptr %shadow_wnd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %shadow_wnd, align 8
  %16 = load i8, ptr @use_shadow, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool30.not = icmp eq i8 %16, 0
  br i1 %tobool30.not, label %if.end49, label %if.then31

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %shr41 = lshr i32 %13, 1
  %17 = tail call i32 @llvm.umax.i32(i32 %14, i32 %shr41)
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 2)
  br label %cleanup

if.end49:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp53 = icmp ult i32 %13, 4
  %shr51 = lshr i32 %13, 1
  %cond58 = select i1 %cmp53, i32 2, i32 %shr51
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then31, %if.then17, %if.then
  %retval.0 = phi i32 [ %cond11, %if.then ], [ %9, %if.then17 ], [ %18, %if.then31 ], [ %cond58, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_cdg_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd.i, align 8
  %snd_ssthresh.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %2 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, ptr @hystart_detect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %delay_min.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %5 = ptrtoint ptr %delay_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_min.i, align 8
  %7 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i74 = icmp eq i32 %6, 0
  br i1 %cmp.i74, label %cond.end11.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.smin.i32(i32 %6, i32 %8) #9
  %cond12.ph.i = select i1 %cmp2.i, i32 %6, i32 %9
  %10 = ptrtoint ptr %delay_min.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond12.ph.i, ptr %delay_min.i, align 8
  br label %if.end.i

cond.end11.i:                                     ; preds = %if.then
  %11 = ptrtoint ptr %delay_min.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %delay_min.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15.i = icmp eq i32 %8, 0
  br i1 %cmp15.i, label %cond.end11.i.if.end_crit_edge, label %cond.end11.i.if.end.i_crit_edge

cond.end11.i.if.end.i_crit_edge:                  ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

cond.end11.i.if.end_crit_edge:                    ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %cond.end11.i.if.end.i_crit_edge, %cond.false.i
  %cond12374.i = phi i32 [ %cond12.ph.i, %cond.false.i ], [ %8, %cond.end11.i.if.end.i_crit_edge ]
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end153.i_crit_edge, label %if.then16.i

if.end.i.if.end153.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.i

if.then16.i:                                      ; preds = %if.end.i
  %tcp_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %12 = ptrtoint ptr %tcp_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tcp_mstamp.i, align 8
  %conv.i = trunc i64 %13 to i32
  %last_ack.i = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 13
  %14 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17.i = icmp eq i32 %15, 0
  br i1 %cmp17.i, label %if.then16.i.if.then20.i_crit_edge, label %if.then.i.i

if.then16.i.if.then20.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

if.then.i.i:                                      ; preds = %if.then16.i
  %max_packets_out.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %16 = ptrtoint ptr %max_packets_out.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_packets_out.i.i, align 4
  %mul.i.i = shl i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i.i)
  %cmp.i.i = icmp ult i32 %1, %mul.i.i
  br i1 %cmp.i.i, label %if.else.i, label %if.then.i.i.if.then20.i_crit_edge

if.then.i.i.if.then20.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

if.then20.i:                                      ; preds = %if.then.i.i.if.then20.i_crit_edge, %if.then16.i.if.then20.i_crit_edge
  %18 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %last_ack.i, align 4
  %round_start.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %19 = ptrtoint ptr %round_start.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %round_start.i, align 8
  br label %if.end153.i

if.else.i:                                        ; preds = %if.then.i.i
  %add.neg.i = sub i32 -3000, %15
  %sub.i.i = add i32 %add.neg.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i362.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i362.i, label %if.then24.i, label %if.else.i.if.end153.i_crit_edge

if.else.i.if.end153.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %cond12374.i)
  %cmp27.i = icmp ugt i32 %cond12374.i, 251
  %div361.i = lshr i32 %cond12374.i, 1
  %cond32.i = select i1 %cmp27.i, i32 %div361.i, i32 125
  %20 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %last_ack.i, align 4
  %round_start34.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %21 = ptrtoint ptr %round_start34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %round_start34.i, align 8
  %add35.i = sub i32 %cond32.i, %conv.i
  %sub.i363.i = add i32 %add35.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i363.i)
  %cmp.i364.i = icmp slt i32 %sub.i363.i, 0
  br i1 %cmp.i364.i, label %do.body38.i, label %if.then24.i.if.end153.i_crit_edge

if.then24.i.if.end153.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.i

do.body38.i:                                      ; preds = %if.then24.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 30, i32 3
  %26 = ptrtoint ptr %net_statistics.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_statistics.i, align 4
  %arrayidx.i = getelementptr [126 x i32], ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %arrayidx.i to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx56.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx56.i, align 4
  %add57.i = add i32 %34, %28
  %35 = inttoptr i32 %add57.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add58.i = add i32 %37, 1
  store i32 %add58.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !84
  %and.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool69.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool69.not.i, label %if.then73.i, label %do.body38.i.do.end76.i_crit_edge, !prof !85

do.body38.i.do.end76.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76.i

if.then73.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end76.i

do.end76.i:                                       ; preds = %if.then73.i, %do.body38.i.do.end76.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #9, !srcloc !86
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %40 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %snd_cwnd.i, align 8
  %42 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skc_net.i.i, align 4
  %net_statistics108.i = getelementptr inbounds %struct.net, ptr %43, i32 0, i32 30, i32 3
  %44 = ptrtoint ptr %net_statistics108.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net_statistics108.i, align 4
  %arrayidx110.i = getelementptr [126 x i32], ptr %45, i32 0, i32 100
  %46 = ptrtoint ptr %arrayidx110.i to i32
  %47 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cpu.i, align 4
  %arrayidx114.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx114.i, align 4
  %add115.i = add i32 %50, %46
  %51 = inttoptr i32 %add115.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %add116.i = add i32 %53, %41
  store i32 %add116.i, ptr %51, align 4
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !84
  %and.i.i366.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i366.i)
  %tobool127.not.i = icmp eq i32 %and.i.i366.i, 0
  br i1 %tobool127.not.i, label %if.then136.i, label %do.end76.i.do.end139.i_crit_edge, !prof !85

do.end76.i.do.end139.i_crit_edge:                 ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end139.i

if.then136.i:                                     ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end139.i

do.end139.i:                                      ; preds = %if.then136.i, %do.end76.i.do.end139.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #9, !srcloc !86
  %55 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %snd_cwnd.i, align 8
  %57 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %snd_ssthresh.i, align 4
  br label %if.end

if.end153.i:                                      ; preds = %if.then24.i.if.end153.i_crit_edge, %if.else.i.if.end153.i_crit_edge, %if.then20.i, %if.end.i.if.end153.i_crit_edge
  %and154.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154.i)
  %tobool155.not.i = icmp eq i32 %and154.i, 0
  br i1 %tobool155.not.i, label %if.end153.i.if.end_crit_edge, label %if.then156.i

if.end153.i.if.end_crit_edge:                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then156.i:                                     ; preds = %if.end153.i
  %sample_cnt.i = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 11
  %58 = ptrtoint ptr %sample_cnt.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sample_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %59)
  %cmp158.i = icmp ult i16 %59, 8
  br i1 %cmp158.i, label %if.then160.i, label %if.else162.i

if.then160.i:                                     ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw nsw i16 %59, 1
  %60 = ptrtoint ptr %sample_cnt.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %inc.i, ptr %sample_cnt.i, align 2
  br label %if.end

if.else162.i:                                     ; preds = %if.then156.i
  %div165360.i = lshr i32 %cond12374.i, 3
  %add166.i = add i32 %div165360.i, %cond12374.i
  %61 = tail call i32 @llvm.umax.i32(i32 %add166.i, i32 125) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %61)
  %cmp176.i = icmp sgt i32 %8, %61
  br i1 %cmp176.i, label %do.body180.i, label %if.else162.i.if.end_crit_edge

if.else162.i.if.end_crit_edge:                    ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body180.i:                                     ; preds = %if.else162.i
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %skc_net.i367.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %63 = ptrtoint ptr %skc_net.i367.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skc_net.i367.i, align 4
  %net_statistics204.i = getelementptr inbounds %struct.net, ptr %64, i32 0, i32 30, i32 3
  %65 = ptrtoint ptr %net_statistics204.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net_statistics204.i, align 4
  %arrayidx206.i = getelementptr [126 x i32], ptr %66, i32 0, i32 101
  %67 = ptrtoint ptr %arrayidx206.i to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !71) #9
  %and.i368.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i368.i to ptr
  %cpu209.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu209.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu209.i, align 4
  %arrayidx210.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx210.i, align 4
  %add211.i = add i32 %73, %67
  %74 = inttoptr i32 %add211.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add212.i = add i32 %76, 1
  store i32 %add212.i, ptr %74, align 4
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !84
  %and.i.i369.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i369.i)
  %tobool223.not.i = icmp eq i32 %and.i.i369.i, 0
  br i1 %tobool223.not.i, label %if.then232.i, label %do.body180.i.do.end235.i_crit_edge, !prof !85

do.body180.i.do.end235.i_crit_edge:               ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end235.i

if.then232.i:                                     ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end235.i

do.end235.i:                                      ; preds = %if.then232.i, %do.body180.i.do.end235.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #9, !srcloc !86
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !83
  %79 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %snd_cwnd.i, align 8
  %81 = ptrtoint ptr %skc_net.i367.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %skc_net.i367.i, align 4
  %net_statistics268.i = getelementptr inbounds %struct.net, ptr %82, i32 0, i32 30, i32 3
  %83 = ptrtoint ptr %net_statistics268.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net_statistics268.i, align 4
  %arrayidx270.i = getelementptr [126 x i32], ptr %84, i32 0, i32 102
  %85 = ptrtoint ptr %arrayidx270.i to i32
  %86 = ptrtoint ptr %cpu209.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu209.i, align 4
  %arrayidx274.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx274.i, align 4
  %add275.i = add i32 %89, %85
  %90 = inttoptr i32 %add275.i to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %add276.i = add i32 %92, %80
  store i32 %add276.i, ptr %90, align 4
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !84
  %and.i.i371.i = and i32 %93, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i371.i)
  %tobool287.not.i = icmp eq i32 %and.i.i371.i, 0
  br i1 %tobool287.not.i, label %if.then296.i, label %do.end235.i.do.end299.i_crit_edge, !prof !85

do.end235.i.do.end299.i_crit_edge:                ; preds = %do.end235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end299.i

if.then296.i:                                     ; preds = %do.end235.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end299.i

do.end299.i:                                      ; preds = %if.then296.i, %do.end235.i.do.end299.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #9, !srcloc !86
  %94 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %snd_cwnd.i, align 8
  %96 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %snd_ssthresh.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.end299.i, %if.else162.i.if.end_crit_edge, %if.then160.i, %if.end153.i.if.end_crit_edge, %do.end139.i, %cond.end11.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rtt_seq = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 8
  %97 = ptrtoint ptr %rtt_seq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rtt_seq, align 4
  %sub.i = sub i32 %98, %ack
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i75 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i75, label %land.lhs.true4, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true4:                                   ; preds = %if.end
  %99 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %icsk_ca_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %tobool5.not = icmp eq i64 %100, 0
  br i1 %tobool5.not, label %land.lhs.true4.if.end19_crit_edge, label %if.then6

land.lhs.true4.if.end19_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then6:                                         ; preds = %land.lhs.true4
  %rtt_prev = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %101 = ptrtoint ptr %rtt_prev to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %rtt_prev, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool7.not = icmp eq i64 %102, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then8

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then6
  %103 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %icsk_ca_priv.i, align 8
  %105 = ptrtoint ptr %rtt_prev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rtt_prev, align 8
  %sub.i76 = sub i32 %104, %106
  %max.i = getelementptr inbounds %struct.anon.190, ptr %icsk_ca_priv.i, i32 0, i32 1
  %107 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max.i, align 4
  %max4.i = getelementptr inbounds %struct.anon.190, ptr %rtt_prev, i32 0, i32 1
  %109 = ptrtoint ptr %max4.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max4.i, align 4
  %sub5.i = sub i32 %108, %110
  %gradients.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %111 = ptrtoint ptr %gradients.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %gradients.i, align 8
  %tobool.not.i77 = icmp eq ptr %112, null
  br i1 %tobool.not.i77, label %if.then8.if.end.i82_crit_edge, label %if.then.i

if.then8.if.end.i82_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i82

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %tail.i = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 5
  %113 = ptrtoint ptr %tail.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %tail.i, align 1
  %idxprom.i = zext i8 %114 to i32
  %arrayidx.i78 = getelementptr %struct.cdg_minmax, ptr %112, i32 %idxprom.i
  %115 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i78, align 8
  %sub8.i = sub i32 %sub.i76, %116
  %gsum.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %117 = ptrtoint ptr %gsum.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %gsum.i, align 8
  %add.i = add i32 %sub8.i, %118
  store i32 %add.i, ptr %gsum.i, align 8
  %max14.i = getelementptr inbounds %struct.anon.190, ptr %arrayidx.i78, i32 0, i32 1
  %119 = ptrtoint ptr %max14.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %max14.i, align 4
  %sub15.i = sub i32 %sub5.i, %120
  %max17.i = getelementptr inbounds %struct.anon.190, ptr %gsum.i, i32 0, i32 1
  %121 = ptrtoint ptr %max17.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max17.i, align 4
  %add18.i = add i32 %sub15.i, %122
  store i32 %add18.i, ptr %max17.i, align 4
  store i32 %sub.i76, ptr %arrayidx.i78, align 8
  %123 = ptrtoint ptr %gradients.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gradients.i, align 8
  %125 = load i8, ptr %tail.i, align 1
  %idxprom26.i = zext i8 %125 to i32
  %arrayidx27.i = getelementptr %struct.cdg_minmax, ptr %124, i32 %idxprom26.i
  %max28.i = getelementptr inbounds %struct.anon.190, ptr %arrayidx27.i, i32 0, i32 1
  %126 = ptrtoint ptr %max28.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %sub5.i, ptr %max28.i, align 4
  %127 = load i8, ptr %tail.i, align 1
  %conv.i79 = zext i8 %127 to i32
  %add30.i = add nuw nsw i32 %conv.i79, 1
  %128 = load i32, ptr @window, align 4
  %sub31.i = add i32 %128, 255
  %and.i80 = and i32 %add30.i, %sub31.i
  %conv32.i = trunc i32 %and.i80 to i8
  store i8 %conv32.i, ptr %tail.i, align 1
  %129 = load i32, ptr %gsum.i, align 8
  %130 = load i32, ptr %max17.i, align 4
  br label %if.end.i82

if.end.i82:                                       ; preds = %if.then.i, %if.then8.if.end.i82_crit_edge
  %gmax.0.i = phi i32 [ %130, %if.then.i ], [ %sub5.i, %if.then8.if.end.i82_crit_edge ]
  %gmin.0.i = phi i32 [ %129, %if.then.i ], [ %sub.i76, %if.then8.if.end.i82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gmin.0.i)
  %cmp.i81 = icmp sgt i32 %gmin.0.i, 0
  %gmin.0.gmax.0.i = select i1 %cmp.i81, i32 %gmin.0.i, i32 %gmax.0.i
  %gfilled.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %131 = ptrtoint ptr %gfilled.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %gfilled.i, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool39.not.i = icmp eq i8 %132, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end.i82.if.end58.i_crit_edge

if.end.i82.if.end58.i_crit_edge:                  ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then40.i:                                      ; preds = %if.end.i82
  %133 = ptrtoint ptr %gradients.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %gradients.i, align 8
  %tobool42.not.i = icmp eq ptr %134, null
  br i1 %tobool42.not.i, label %land.lhs.true.i, label %if.then40.i.if.else.i83_crit_edge

if.then40.i.if.else.i83_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i83

land.lhs.true.i:                                  ; preds = %if.then40.i
  %135 = load i32, ptr @window, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp43.i = icmp sgt i32 %135, 1
  br i1 %cmp43.i, label %if.then45.i, label %land.lhs.true.i.if.else.i83_crit_edge

land.lhs.true.i.if.else.i83_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i83

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %135, %gmin.0.gmax.0.i
  br label %if.end58.i

if.else.i83:                                      ; preds = %land.lhs.true.i.if.else.i83_crit_edge, %if.then40.i.if.else.i83_crit_edge
  %tail46.i = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 5
  %136 = ptrtoint ptr %tail46.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %tail46.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp48.i = icmp eq i8 %137, 0
  br i1 %cmp48.i, label %if.then50.i, label %if.else52.i

if.then50.i:                                      ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %gfilled.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %gfilled.i, align 8
  br label %if.end58.i

if.else52.i:                                      ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #11
  %conv47.i = zext i8 %137 to i32
  %139 = load i32, ptr @window, align 4
  %mul53.i = mul i32 %139, %gmin.0.gmax.0.i
  %div.i = sdiv i32 %mul53.i, %conv47.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else52.i, %if.then50.i, %if.then45.i, %if.end.i82.if.end58.i_crit_edge
  %grad.0.i = phi i32 [ %gmin.0.gmax.0.i, %if.end.i82.if.end58.i_crit_edge ], [ %gmin.0.gmax.0.i, %if.then50.i ], [ %div.i, %if.else52.i ], [ %mul.i, %if.then45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %gmin.0.i)
  %cmp59.i = icmp slt i32 %gmin.0.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %gmax.0.i)
  %cmp61.i = icmp slt i32 %gmax.0.i, -31
  %or.cond.i = select i1 %cmp59.i, i1 true, i1 %cmp61.i
  br i1 %or.cond.i, label %if.then63.i, label %if.end58.i.if.end64.i_crit_edge

if.end58.i.if.end64.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then63.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %backoff_cnt.i = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 10
  %140 = ptrtoint ptr %backoff_cnt.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %backoff_cnt.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then63.i, %if.end58.i.if.end64.i_crit_edge
  %141 = load i8, ptr @use_tolerance, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool65.not.i = icmp eq i8 %141, 0
  br i1 %tobool65.not.i, label %if.end64.i.if.end10_crit_edge, label %if.then66.i

if.end64.i.if.end10_crit_edge:                    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then66.i:                                      ; preds = %if.end64.i
  %cond82.in.v.i = select i1 %cmp.i81, i32 32, i32 -32
  %cond82.in.i = add i32 %cond82.in.v.i, %gmin.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gmax.0.i)
  %cmp86.i = icmp sgt i32 %gmax.0.i, 0
  %cond101.in.v.i = select i1 %cmp86.i, i32 32, i32 -32
  %cond101.in.i = add i32 %cond101.in.v.i, %gmax.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cond82.in.i)
  %cmp102.i = icmp sgt i32 %cond82.in.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %cond101.in.i)
  %cmp105.i = icmp slt i32 %cond101.in.i, 64
  %or.cond177.i = select i1 %cmp102.i, i1 %cmp105.i, i1 false
  br i1 %or.cond177.i, label %if.then66.i.if.end121.sink.split.i_crit_edge, label %if.else108.i

if.then66.i.if.end121.sink.split.i_crit_edge:     ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.sink.split.i

if.else108.i:                                     ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cond101.in.i)
  %cmp112.i = icmp sgt i32 %cond101.in.i, 63
  %or.cond178.i = select i1 %cmp102.i, i1 %cmp112.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %cond101.in.i)
  %cmp115.i = icmp slt i32 %cond101.in.i, -63
  %or.cond179.i = select i1 %or.cond178.i, i1 true, i1 %cmp115.i
  br i1 %or.cond179.i, label %if.else108.i.if.end121.sink.split.i_crit_edge, label %if.else108.i.if.end10_crit_edge

if.else108.i.if.end10_crit_edge:                  ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else108.i.if.end121.sink.split.i_crit_edge:    ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121.sink.split.i

if.end121.sink.split.i:                           ; preds = %if.else108.i.if.end121.sink.split.i_crit_edge, %if.then66.i.if.end121.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.then66.i.if.end121.sink.split.i_crit_edge ], [ 1, %if.else108.i.if.end121.sink.split.i_crit_edge ]
  %state.i = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 6
  %142 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %.sink.i, ptr %state.i, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.end121.sink.split.i, %if.else108.i.if.end10_crit_edge, %if.end64.i.if.end10_crit_edge, %if.then6.if.end10_crit_edge
  %grad.0 = phi i32 [ 0, %if.then6.if.end10_crit_edge ], [ %grad.0.i, %if.end64.i.if.end10_crit_edge ], [ %grad.0.i, %if.else108.i.if.end10_crit_edge ], [ %grad.0.i, %if.end121.sink.split.i ]
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %143 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %snd_nxt, align 4
  %145 = ptrtoint ptr %rtt_seq to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %rtt_seq, align 4
  %146 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %icsk_ca_priv.i, align 8
  %148 = ptrtoint ptr %rtt_prev to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %rtt_prev, align 8
  store i64 0, ptr %icsk_ca_priv.i, align 8
  %last_ack = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 13
  %149 = ptrtoint ptr %last_ack to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %last_ack, align 4
  %sample_cnt = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 11
  %150 = ptrtoint ptr %sample_cnt to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %sample_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %grad.0)
  %cmp = icmp sgt i32 %grad.0, 0
  br i1 %cmp, label %land.lhs.true15, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true15:                                  ; preds = %if.end10
  %call2.i = tail call i32 @prandom_u32() #9
  %151 = load i32, ptr @backoff_factor, align 4
  %mul.i85 = mul i32 %151, %grad.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %mul.i85)
  %cmp.i.i86 = icmp ugt i32 %mul.i85, 16777215
  br i1 %cmp.i.i86, label %land.lhs.true15.nexp_u32.exit.i_crit_edge, label %if.end.i.i

land.lhs.true15.nexp_u32.exit.i_crit_edge:        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %nexp_u32.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true15
  %and.i.i87 = and i32 %mul.i85, 255
  %mul.neg.i.i = mul nsw i32 %and.i.i87, -4294
  %sub.i.i88 = add nsw i32 %mul.neg.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %mul.i85)
  %tobool.not18.i.i = icmp ult i32 %mul.i85, 256
  br i1 %tobool.not18.i.i, label %if.end.i.i.nexp_u32.exit.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.nexp_u32.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nexp_u32.exit.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %shr.i.i = lshr i32 %mul.i85, 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.021.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.body.preheader.i.i ]
  %res.020.i.i = phi i32 [ %conv8.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %sub.i.i88, %for.body.preheader.i.i ]
  %msb.019.i.i = phi i32 [ %shr9.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %shr.i.i, %for.body.preheader.i.i ]
  %and1.i.i = and i32 %msb.019.i.i, 1
  %sub2.i.i = sub nsw i32 0, %and1.i.i
  %and3.i.i = and i32 %i.021.i.i, %sub2.i.i
  %arrayidx.i.i = getelementptr [17 x i16], ptr @nexp_u32.v, i32 0, i32 %and3.i.i
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %153 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 1
  %conv4.i.i = zext i32 %res.020.i.i to i64
  %conv5.i.i = zext i32 %add.i.i to i64
  %mul6.i.i = mul nuw nsw i64 %conv5.i.i, %conv4.i.i
  %shr7.i.i = lshr i64 %mul6.i.i, 16
  %conv8.i.i = trunc i64 %shr7.i.i to i32
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %shr9.i.i = lshr i32 %msb.019.i.i, 1
  %tobool.not.i.i = icmp ult i32 %msb.019.i.i, 2
  br i1 %tobool.not.i.i, label %nexp_u32.exit.i.loopexit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

nexp_u32.exit.i.loopexit:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv8.i.i.le = trunc i64 %shr7.i.i to i32
  br label %nexp_u32.exit.i

nexp_u32.exit.i:                                  ; preds = %nexp_u32.exit.i.loopexit, %if.end.i.i.nexp_u32.exit.i_crit_edge, %land.lhs.true15.nexp_u32.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %land.lhs.true15.nexp_u32.exit.i_crit_edge ], [ %sub.i.i88, %if.end.i.i.nexp_u32.exit.i_crit_edge ], [ %conv8.i.i.le, %nexp_u32.exit.i.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %retval.0.i.i)
  %cmp.not.i = icmp ugt i32 %call2.i, %retval.0.i.i
  br i1 %cmp.not.i, label %if.end.i90, label %nexp_u32.exit.i.if.end19_crit_edge

nexp_u32.exit.i.if.end19_crit_edge:               ; preds = %nexp_u32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.i90:                                       ; preds = %nexp_u32.exit.i
  %154 = load i32, ptr @use_ineff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i89 = icmp eq i32 %154, 0
  br i1 %tobool.not.i89, label %if.end.i90.tcp_cdg_backoff.exit_crit_edge, label %if.then4.i

if.end.i90.tcp_cdg_backoff.exit_crit_edge:        ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_cdg_backoff.exit

if.then4.i:                                       ; preds = %if.end.i90
  %backoff_cnt.i91 = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 10
  %155 = ptrtoint ptr %backoff_cnt.i91 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %backoff_cnt.i91, align 4
  %inc.i92 = add i16 %156, 1
  store i16 %inc.i92, ptr %backoff_cnt.i91, align 4
  %conv.i93 = zext i16 %inc.i92 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %conv.i93)
  %cmp6.i = icmp ult i32 %154, %conv.i93
  br i1 %cmp6.i, label %if.then4.i.if.end19_crit_edge, label %if.then4.i.tcp_cdg_backoff.exit_crit_edge

if.then4.i.tcp_cdg_backoff.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_cdg_backoff.exit

if.then4.i.if.end19_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

tcp_cdg_backoff.exit:                             ; preds = %if.then4.i.tcp_cdg_backoff.exit_crit_edge, %if.end.i90.tcp_cdg_backoff.exit_crit_edge
  %shadow_wnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %157 = ptrtoint ptr %shadow_wnd.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %shadow_wnd.i, align 8
  %159 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %snd_cwnd.i, align 8
  %161 = tail call i32 @llvm.umax.i32(i32 %158, i32 %160) #9
  %162 = ptrtoint ptr %shadow_wnd.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %shadow_wnd.i, align 8
  %state.i95 = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 6
  %163 = ptrtoint ptr %state.i95 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 3, ptr %state.i95, align 2
  tail call void @tcp_enter_cwr(ptr noundef %sk) #9
  br label %cleanup36

if.end19:                                         ; preds = %if.then4.i.if.end19_crit_edge, %nexp_u32.exit.i.if.end19_crit_edge, %if.end10.if.end19_crit_edge, %land.lhs.true4.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %164 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %snd_cwnd.i, align 8
  %166 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %snd_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp.i.i96 = icmp ult i32 %165, %167
  br i1 %cmp.i.i96, label %if.then.i99, label %tcp_is_cwnd_limited.exit

if.then.i99:                                      ; preds = %if.end19
  %max_packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %168 = ptrtoint ptr %max_packets_out.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %max_packets_out.i, align 4
  %mul.i97 = shl i32 %169, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %mul.i97)
  %cmp.i98 = icmp ult i32 %165, %mul.i97
  br i1 %cmp.i98, label %if.then.i99.if.end24_crit_edge, label %if.then.i99.if.then21_crit_edge

if.then.i99.if.then21_crit_edge:                  ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then.i99.if.end24_crit_edge:                   ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

tcp_is_cwnd_limited.exit:                         ; preds = %if.end19
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %170 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.if.then21_crit_edge, label %tcp_is_cwnd_limited.exit.if.end24_crit_edge

tcp_is_cwnd_limited.exit.if.end24_crit_edge:      ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

tcp_is_cwnd_limited.exit.if.then21_crit_edge:     ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %tcp_is_cwnd_limited.exit.if.then21_crit_edge, %if.then.i99.if.then21_crit_edge
  %shadow_wnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %171 = ptrtoint ptr %shadow_wnd to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %shadow_wnd, align 8
  %173 = tail call i32 @llvm.umin.i32(i32 %172, i32 %165)
  %174 = ptrtoint ptr %shadow_wnd to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %shadow_wnd, align 8
  br label %cleanup36

if.end24:                                         ; preds = %tcp_is_cwnd_limited.exit.if.end24_crit_edge, %if.then.i99.if.end24_crit_edge
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #9
  %175 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %snd_cwnd.i, align 8
  %sub = sub i32 %176, %165
  %shadow_wnd27 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %177 = ptrtoint ptr %shadow_wnd27 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %shadow_wnd27, align 8
  %add = add i32 %sub, %178
  %179 = tail call i32 @llvm.umax.i32(i32 %178, i32 %add)
  %180 = ptrtoint ptr %shadow_wnd27 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %shadow_wnd27, align 8
  br label %cleanup36

cleanup36:                                        ; preds = %if.end24, %if.then21, %tcp_cdg_backoff.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_cdg_cwnd_event(ptr nocapture noundef %sk, i32 noundef %ev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %ev, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %gradients2 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %1 = ptrtoint ptr %gradients2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gradients2, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load i32, ptr @window, align 4
  %mul = shl i32 %3, 3
  %4 = call ptr @memset(ptr %2, i32 0, i32 %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %5 = call ptr @memset(ptr %icsk_ca_priv.i, i32 0, i32 64)
  %6 = ptrtoint ptr %gradients2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %2, ptr %gradients2, align 8
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %7 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_nxt, align 4
  %rtt_seq = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 8
  %9 = ptrtoint ptr %rtt_seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rtt_seq, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %10 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_cwnd, align 8
  %shadow_wnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %12 = ptrtoint ptr %shadow_wnd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %shadow_wnd, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 6
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %state, align 2
  %snd_nxt5 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %14 = ptrtoint ptr %snd_nxt5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_nxt5, align 4
  %rtt_seq6 = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 8
  %16 = ptrtoint ptr %rtt_seq6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rtt_seq6, align 4
  %rtt_prev = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %17 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %icsk_ca_priv.i, align 8
  %19 = ptrtoint ptr %rtt_prev to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rtt_prev, align 8
  store i64 0, ptr %icsk_ca_priv.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tcp_cdg_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %0 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sacked_out = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %2 = ptrtoint ptr %sacked_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sacked_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %5, label %land.lhs.true15 [
    i32 1, label %land.lhs.true
    i32 0, label %if.then3.if.end24_crit_edge
  ]

if.then3.if.end24_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true:                                    ; preds = %if.then3
  %delack = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 7
  %7 = ptrtoint ptr %delack to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %delack, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end24_crit_edge, label %if.then5

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %icsk_ca_priv.i, align 8
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  %12 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %icsk_ca_priv.i, align 8
  %dec = add i8 %8, -1
  %13 = ptrtoint ptr %delack to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %dec, ptr %delack, align 1
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.then3
  %delack16 = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 7
  %14 = ptrtoint ptr %delack16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %delack16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp18 = icmp ult i8 %15, 5
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.if.end24_crit_edge

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i8 %15, 1
  %16 = ptrtoint ptr %delack16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %inc, ptr %delack16, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true15.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.then3.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %17 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %icsk_ca_priv.i, align 8
  %19 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29 = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp33 = icmp eq i32 %20, 0
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %20)
  %spec.select = select i1 %cmp33, i32 %18, i32 %21
  %cond47 = select i1 %cmp29, i32 %20, i32 %spec.select
  %22 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond47, ptr %icsk_ca_priv.i, align 8
  %max = getelementptr inbounds %struct.anon.190, ptr %icsk_ca_priv.i, i32 0, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max, align 4
  %25 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rtt_us, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %24, i32 %26)
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_cdg_init(ptr nocapture noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @window, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 8) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.then.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !85

if.then.kcalloc.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 10496) #12
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.then.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.then.kcalloc.exit_crit_edge ]
  %gradients = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %4 = ptrtoint ptr %gradients to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %retval.0.i.i, ptr %gradients, align 8
  br label %if.end

if.end:                                           ; preds = %kcalloc.exit, %entry.if.end_crit_edge
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %5 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %snd_nxt, align 4
  %rtt_seq = getelementptr inbounds %struct.cdg, ptr %icsk_ca_priv.i, i32 0, i32 8
  %7 = ptrtoint ptr %rtt_seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rtt_seq, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %8 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_cwnd, align 8
  %shadow_wnd = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 5
  %10 = ptrtoint ptr %shadow_wnd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %shadow_wnd, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_cdg_release(ptr nocapture noundef readonly %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gradients = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %0 = ptrtoint ptr %gradients to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gradients, align 8
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_cwr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_window, !1, !"__param_window", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_cdg.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_windowtype593, !1, !"__UNIQUE_ID_windowtype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_window594, !4, !"__UNIQUE_ID_window594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_cdg.c", i32 47, i32 1}
!5 = !{ptr @__param_backoff_beta, !6, !"__param_backoff_beta", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_cdg.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_backoff_betatype595, !6, !"__UNIQUE_ID_backoff_betatype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_backoff_beta596, !9, !"__UNIQUE_ID_backoff_beta596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_cdg.c", i32 49, i32 1}
!10 = !{ptr @__param_backoff_factor, !11, !"__param_backoff_factor", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_cdg.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_backoff_factortype597, !11, !"__UNIQUE_ID_backoff_factortype597", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_backoff_factor598, !14, !"__UNIQUE_ID_backoff_factor598", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_cdg.c", i32 51, i32 1}
!15 = !{ptr @__param_hystart_detect, !16, !"__param_hystart_detect", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_cdg.c", i32 52, i32 1}
!17 = !{ptr @__UNIQUE_ID_hystart_detecttype599, !16, !"__UNIQUE_ID_hystart_detecttype599", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_hystart_detect600, !19, !"__UNIQUE_ID_hystart_detect600", i1 false, i1 false}
!19 = !{!"../net/ipv4/tcp_cdg.c", i32 53, i32 1}
!20 = !{ptr @__param_use_ineff, !21, !"__param_use_ineff", i1 false, i1 false}
!21 = !{!"../net/ipv4/tcp_cdg.c", i32 55, i32 1}
!22 = !{ptr @__UNIQUE_ID_use_inefftype601, !21, !"__UNIQUE_ID_use_inefftype601", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_use_ineff602, !24, !"__UNIQUE_ID_use_ineff602", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_cdg.c", i32 56, i32 1}
!25 = !{ptr @__param_use_shadow, !26, !"__param_use_shadow", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_cdg.c", i32 57, i32 1}
!27 = !{ptr @__UNIQUE_ID_use_shadowtype603, !26, !"__UNIQUE_ID_use_shadowtype603", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_use_shadow604, !29, !"__UNIQUE_ID_use_shadow604", i1 false, i1 false}
!29 = !{!"../net/ipv4/tcp_cdg.c", i32 58, i32 1}
!30 = !{ptr @__param_use_tolerance, !31, !"__param_use_tolerance", i1 false, i1 false}
!31 = !{!"../net/ipv4/tcp_cdg.c", i32 59, i32 1}
!32 = !{ptr @__UNIQUE_ID_use_tolerancetype605, !31, !"__UNIQUE_ID_use_tolerancetype605", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_use_tolerance606, !34, !"__UNIQUE_ID_use_tolerance606", i1 false, i1 false}
!34 = !{!"../net/ipv4/tcp_cdg.c", i32 60, i32 1}
!35 = !{ptr @__initcall__kmod_tcp_cdg__638_422_tcp_cdg_register6, !36, !"__initcall__kmod_tcp_cdg__638_422_tcp_cdg_register6", i1 false, i1 false}
!36 = !{!"../net/ipv4/tcp_cdg.c", i32 422, i32 1}
!37 = !{ptr @__exitcall_tcp_cdg_unregister, !38, !"__exitcall_tcp_cdg_unregister", i1 false, i1 false}
!38 = !{!"../net/ipv4/tcp_cdg.c", i32 423, i32 1}
!39 = !{ptr @__UNIQUE_ID_author639, !40, !"__UNIQUE_ID_author639", i1 false, i1 false}
!40 = !{!"../net/ipv4/tcp_cdg.c", i32 424, i32 1}
!41 = !{ptr @__UNIQUE_ID_file640, !42, !"__UNIQUE_ID_file640", i1 false, i1 false}
!42 = !{!"../net/ipv4/tcp_cdg.c", i32 425, i32 1}
!43 = !{ptr @__UNIQUE_ID_license641, !42, !"__UNIQUE_ID_license641", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_description642, !45, !"__UNIQUE_ID_description642", i1 false, i1 false}
!45 = !{!"../net/ipv4/tcp_cdg.c", i32 426, i32 1}
!46 = !{ptr @use_tolerance, !47, !"use_tolerance", i1 false, i1 false}
!47 = !{!"../net/ipv4/tcp_cdg.c", i32 44, i32 13}
!48 = !{ptr @__param_str_window, !1, !"__param_str_window", i1 false, i1 false}
!49 = !{ptr @window, !50, !"window", i1 false, i1 false}
!50 = !{!"../net/ipv4/tcp_cdg.c", i32 38, i32 12}
!51 = !{ptr @__param_str_backoff_beta, !6, !"__param_str_backoff_beta", i1 false, i1 false}
!52 = !{ptr @backoff_beta, !53, !"backoff_beta", i1 false, i1 false}
!53 = !{!"../net/ipv4/tcp_cdg.c", i32 39, i32 21}
!54 = !{ptr @__param_str_backoff_factor, !11, !"__param_str_backoff_factor", i1 false, i1 false}
!55 = !{ptr @backoff_factor, !56, !"backoff_factor", i1 false, i1 false}
!56 = !{!"../net/ipv4/tcp_cdg.c", i32 40, i32 21}
!57 = !{ptr @__param_str_hystart_detect, !16, !"__param_str_hystart_detect", i1 false, i1 false}
!58 = !{ptr @hystart_detect, !59, !"hystart_detect", i1 false, i1 false}
!59 = !{!"../net/ipv4/tcp_cdg.c", i32 41, i32 21}
!60 = !{ptr @__param_str_use_ineff, !21, !"__param_str_use_ineff", i1 false, i1 false}
!61 = !{ptr @use_ineff, !62, !"use_ineff", i1 false, i1 false}
!62 = !{!"../net/ipv4/tcp_cdg.c", i32 42, i32 21}
!63 = !{ptr @__param_str_use_shadow, !26, !"__param_str_use_shadow", i1 false, i1 false}
!64 = !{ptr @use_shadow, !65, !"use_shadow", i1 false, i1 false}
!65 = !{!"../net/ipv4/tcp_cdg.c", i32 43, i32 13}
!66 = !{ptr @__param_str_use_tolerance, !31, !"__param_str_use_tolerance", i1 false, i1 false}
!67 = !{ptr @tcp_cdg, !68, !"tcp_cdg", i1 false, i1 false}
!68 = !{!"../net/ipv4/tcp_cdg.c", i32 393, i32 34}
!69 = !{ptr @nexp_u32.v, !70, !"v", i1 false, i1 false}
!70 = !{!"../net/ipv4/tcp_cdg.c", i32 105, i32 19}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i32 0, i32 33}
!82 = !{i8 0, i8 2}
!83 = !{i64 611611, i64 611672}
!84 = !{i64 614343}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 614628}
