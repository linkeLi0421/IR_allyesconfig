; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_cubic.c_pt.bc'
source_filename = "../net/ipv4/tcp_cubic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.165 }
%union.anon.165 = type { ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.193, %struct.anon.194, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.119, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.120, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
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
%union.anon.119 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.120 = type { ptr }
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
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.123 }
%union.anon.123 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.193 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.194 = type { i32, i32, i32, i32 }
%struct.bictcp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.195, %struct.anon.196, %struct.anon.197, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32, i64 }
%struct.anon.197 = type { i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.129, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.129 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@__param_str_fast_convergence = internal constant [27 x i8] c"tcp_cubic.fast_convergence\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fast_convergence = internal global i32 1, section ".data..read_mostly", align 4
@__param_fast_convergence = internal constant %struct.kernel_param { ptr @__param_str_fast_convergence, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @fast_convergence } }, section "__param", align 4
@__UNIQUE_ID_fast_convergencetype593 = internal constant [40 x i8] c"tcp_cubic.parmtype=fast_convergence:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fast_convergence594 = internal constant [61 x i8] c"tcp_cubic.parm=fast_convergence:turn on/off fast convergence\00", section ".modinfo", align 1
@__param_str_beta = internal constant [15 x i8] c"tcp_cubic.beta\00", align 1
@beta = internal global i32 717, section ".data..read_mostly", align 4
@__param_beta = internal constant %struct.kernel_param { ptr @__param_str_beta, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @beta } }, section "__param", align 4
@__UNIQUE_ID_betatype595 = internal constant [28 x i8] c"tcp_cubic.parmtype=beta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_beta596 = internal constant [53 x i8] c"tcp_cubic.parm=beta:beta for multiplicative increase\00", section ".modinfo", align 1
@__param_str_initial_ssthresh = internal constant [27 x i8] c"tcp_cubic.initial_ssthresh\00", align 1
@initial_ssthresh = internal global i32 0, section ".data..read_mostly", align 4
@__param_initial_ssthresh = internal constant %struct.kernel_param { ptr @__param_str_initial_ssthresh, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @initial_ssthresh } }, section "__param", align 4
@__UNIQUE_ID_initial_ssthreshtype597 = internal constant [40 x i8] c"tcp_cubic.parmtype=initial_ssthresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_initial_ssthresh598 = internal constant [70 x i8] c"tcp_cubic.parm=initial_ssthresh:initial value of slow start threshold\00", section ".modinfo", align 1
@__param_str_bic_scale = internal constant [20 x i8] c"tcp_cubic.bic_scale\00", align 1
@bic_scale = internal global i32 41, section ".data..read_mostly", align 4
@__param_bic_scale = internal constant %struct.kernel_param { ptr @__param_str_bic_scale, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.165 { ptr @bic_scale } }, section "__param", align 4
@__UNIQUE_ID_bic_scaletype599 = internal constant [33 x i8] c"tcp_cubic.parmtype=bic_scale:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bic_scale600 = internal constant [88 x i8] c"tcp_cubic.parm=bic_scale:scale (scaled by 1024) value for bic function (bic_scale/1024)\00", section ".modinfo", align 1
@__param_str_tcp_friendliness = internal constant [27 x i8] c"tcp_cubic.tcp_friendliness\00", align 1
@tcp_friendliness = internal global i32 1, section ".data..read_mostly", align 4
@__param_tcp_friendliness = internal constant %struct.kernel_param { ptr @__param_str_tcp_friendliness, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @tcp_friendliness } }, section "__param", align 4
@__UNIQUE_ID_tcp_friendlinesstype601 = internal constant [40 x i8] c"tcp_cubic.parmtype=tcp_friendliness:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tcp_friendliness602 = internal constant [61 x i8] c"tcp_cubic.parm=tcp_friendliness:turn on/off tcp friendliness\00", section ".modinfo", align 1
@__param_str_hystart = internal constant [18 x i8] c"tcp_cubic.hystart\00", align 1
@hystart = internal global i32 1, section ".data..read_mostly", align 4
@__param_hystart = internal constant %struct.kernel_param { ptr @__param_str_hystart, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @hystart } }, section "__param", align 4
@__UNIQUE_ID_hystarttype603 = internal constant [31 x i8] c"tcp_cubic.parmtype=hystart:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart604 = internal constant [63 x i8] c"tcp_cubic.parm=hystart:turn on/off hybrid slow start algorithm\00", section ".modinfo", align 1
@__param_str_hystart_detect = internal constant [25 x i8] c"tcp_cubic.hystart_detect\00", align 1
@hystart_detect = internal global i32 3, section ".data..read_mostly", align 4
@__param_hystart_detect = internal constant %struct.kernel_param { ptr @__param_str_hystart_detect, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @hystart_detect } }, section "__param", align 4
@__UNIQUE_ID_hystart_detecttype605 = internal constant [38 x i8] c"tcp_cubic.parmtype=hystart_detect:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_detect606 = internal constant [125 x i8] c"tcp_cubic.parm=hystart_detect:hybrid slow start detection mechanisms 1: packet-train 2: delay 3: both packet-train and delay\00", section ".modinfo", align 1
@__param_str_hystart_low_window = internal constant [29 x i8] c"tcp_cubic.hystart_low_window\00", align 1
@hystart_low_window = internal global i32 16, section ".data..read_mostly", align 4
@__param_hystart_low_window = internal constant %struct.kernel_param { ptr @__param_str_hystart_low_window, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @hystart_low_window } }, section "__param", align 4
@__UNIQUE_ID_hystart_low_windowtype607 = internal constant [42 x i8] c"tcp_cubic.parmtype=hystart_low_window:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_low_window608 = internal constant [73 x i8] c"tcp_cubic.parm=hystart_low_window:lower bound cwnd for hybrid slow start\00", section ".modinfo", align 1
@__param_str_hystart_ack_delta_us = internal constant [31 x i8] c"tcp_cubic.hystart_ack_delta_us\00", align 1
@hystart_ack_delta_us = internal global i32 2000, section ".data..read_mostly", align 4
@__param_hystart_ack_delta_us = internal constant %struct.kernel_param { ptr @__param_str_hystart_ack_delta_us, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.165 { ptr @hystart_ack_delta_us } }, section "__param", align 4
@__UNIQUE_ID_hystart_ack_delta_ustype609 = internal constant [44 x i8] c"tcp_cubic.parmtype=hystart_ack_delta_us:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hystart_ack_delta_us610 = internal constant [83 x i8] c"tcp_cubic.parm=hystart_ack_delta_us:spacing between ack's indicating train (usecs)\00", section ".modinfo", align 1
@cubictcp = internal global %struct.tcp_congestion_ops { ptr @cubictcp_recalc_ssthresh, ptr @cubictcp_cong_avoid, ptr @cubictcp_state, ptr @cubictcp_cwnd_event, ptr null, ptr @cubictcp_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr null, [16 x i8] c"cubic\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @cubictcp_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_cubic__624_550_cubictcp_register6 = internal global ptr @cubictcp_register, section ".initcall6.init", align 4
@__exitcall_cubictcp_unregister = internal global ptr @cubictcp_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author625 = internal constant [47 x i8] c"tcp_cubic.author=Sangtae Ha, Stephen Hemminger\00", section ".modinfo", align 1
@__UNIQUE_ID_file626 = internal constant [34 x i8] c"tcp_cubic.file=net/ipv4/tcp_cubic\00", section ".modinfo", align 1
@__UNIQUE_ID_license627 = internal constant [22 x i8] c"tcp_cubic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description628 = internal constant [32 x i8] c"tcp_cubic.description=CUBIC TCP\00", section ".modinfo", align 1
@__UNIQUE_ID_version629 = internal constant [22 x i8] c"tcp_cubic.version=2.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcp_cubic\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cube_factor = internal unnamed_addr global i64 0, section ".data..read_mostly", align 8
@cube_rtt_scale = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@beta_scale = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@cubic_root.v = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00666vvvv{\81\86\8A\8F\93\97\9C\9D\A1\A4\A8\AA\AD\B0\B3\B5\B9\BB\BE\C0\C2\C5\C7\C8\CA\CC\CE\D1\D3\D5\D7\D9\DB\DD\DE\E0\E1\E3\E5\E7\E8\EA\EC\ED\EF\F0\F2\F4\F5\F6\F8\FA\FB\FC\FE", [32 x i8] zeroinitializer }, align 32
@hystart_update.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hystart_update\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv4/tcp_cubic.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"hystart_ack_train (%u > %u) delay_min %u (+ ack_delay %u) cwnd %u\0A\00", [61 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 556, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 178, i32 18 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [24 x i8] c"../net/ipv4/tcp_cubic.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 414, i32 5 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author625, ptr @__UNIQUE_ID_beta596, ptr @__UNIQUE_ID_betatype595, ptr @__UNIQUE_ID_bic_scale600, ptr @__UNIQUE_ID_bic_scaletype599, ptr @__UNIQUE_ID_description628, ptr @__UNIQUE_ID_fast_convergence594, ptr @__UNIQUE_ID_fast_convergencetype593, ptr @__UNIQUE_ID_file626, ptr @__UNIQUE_ID_hystart604, ptr @__UNIQUE_ID_hystart_ack_delta_us610, ptr @__UNIQUE_ID_hystart_ack_delta_ustype609, ptr @__UNIQUE_ID_hystart_detect606, ptr @__UNIQUE_ID_hystart_detecttype605, ptr @__UNIQUE_ID_hystart_low_window608, ptr @__UNIQUE_ID_hystart_low_windowtype607, ptr @__UNIQUE_ID_hystarttype603, ptr @__UNIQUE_ID_initial_ssthresh598, ptr @__UNIQUE_ID_initial_ssthreshtype597, ptr @__UNIQUE_ID_license627, ptr @__UNIQUE_ID_tcp_friendliness602, ptr @__UNIQUE_ID_tcp_friendlinesstype601, ptr @__UNIQUE_ID_version629, ptr @__exitcall_cubictcp_unregister, ptr @__initcall__kmod_tcp_cubic__624_550_cubictcp_register6, ptr @__modver_attr, ptr @__param_beta, ptr @__param_bic_scale, ptr @__param_fast_convergence, ptr @__param_hystart, ptr @__param_hystart_ack_delta_us, ptr @__param_hystart_detect, ptr @__param_hystart_low_window, ptr @__param_initial_ssthresh, ptr @__param_tcp_friendliness, ptr @cubictcp_unregister, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cubic_root.v, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cubic_root.v to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cubictcp_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @cubictcp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cubictcp_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @beta, align 4
  %add = shl i32 %0, 3
  %mul = add i32 %add, 8192
  %div = sdiv i32 %mul, 3
  %sub = sub i32 1024, %0
  %div1 = sdiv i32 %div, %sub
  store i32 %div1, ptr @beta_scale, align 4
  %1 = load i32, ptr @bic_scale, align 4
  %mul2 = mul i32 %1, 10
  store i32 %mul2, ptr @cube_rtt_scale, align 4
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul2, i64 1099511627776) #12, !srcloc !120
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult1.i, ptr @cube_factor, align 8
  %call187 = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @cubictcp) #9
  ret i32 %call187
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cubictcp_recalc_ssthresh(ptr nocapture noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %epoch_start = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %0 = ptrtoint ptr %epoch_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %epoch_start, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %1 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %snd_cwnd, align 8
  %last_max_cwnd = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %3 = ptrtoint ptr %last_max_cwnd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_max_cwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr @fast_convergence, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load i32, ptr @beta, align 4
  %add = add i32 %6, 1024
  %mul = mul i32 %add, %2
  %div20 = lshr i32 %mul, 11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %div20, %if.then ], [ %2, %land.lhs.true.if.end_crit_edge ], [ %2, %entry.if.end_crit_edge ]
  %7 = ptrtoint ptr %last_max_cwnd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %last_max_cwnd, align 4
  %8 = load i32, ptr @beta, align 4
  %mul7 = mul i32 %8, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3071, i32 %mul7)
  %cmp9 = icmp ugt i32 %mul7, 3071
  %div819 = lshr i32 %mul7, 10
  %cond = select i1 %cmp9, i32 %div819, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cubictcp_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %snd_cwnd.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %0 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_cwnd.i.i, align 8
  %snd_ssthresh.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %2 = ptrtoint ptr %snd_ssthresh.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_ssthresh.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.i = icmp ult i32 %1, %3
  br i1 %cmp.i.i, label %if.then.i, label %tcp_is_cwnd_limited.exit

if.then.i:                                        ; preds = %entry
  %max_packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 53
  %4 = ptrtoint ptr %max_packets_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_packets_out.i, align 4
  %mul.i = shl i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i)
  %cmp.i = icmp ult i32 %1, %mul.i
  br i1 %cmp.i, label %if.then4, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tcp_is_cwnd_limited.exit:                         ; preds = %entry
  %is_cwnd_limited.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 39
  %6 = ptrtoint ptr %is_cwnd_limited.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_cwnd_limited.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.i.not = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.i.not, label %tcp_is_cwnd_limited.exit.cleanup_crit_edge, label %tcp_is_cwnd_limited.exit.if.end8_crit_edge

tcp_is_cwnd_limited.exit.if.end8_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

tcp_is_cwnd_limited.exit.cleanup_crit_edge:       ; preds = %tcp_is_cwnd_limited.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.then.i
  %call5 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.cleanup_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %tcp_is_cwnd_limited.exit.if.end8_crit_edge
  %acked.addr.0 = phi i32 [ %call5, %if.then4.if.end8_crit_edge ], [ %acked, %tcp_is_cwnd_limited.exit.if.end8_crit_edge ]
  %7 = ptrtoint ptr %snd_cwnd.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_cwnd.i.i, align 8
  %ack_cnt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 4
  %9 = ptrtoint ptr %ack_cnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ack_cnt.i, align 4
  %add.i = add i32 %10, %acked.addr.0
  store i32 %add.i, ptr %ack_cnt.i, align 4
  %last_cwnd.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 1
  %11 = ptrtoint ptr %last_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_cwnd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp.i20 = icmp eq i32 %12, %8
  br i1 %cmp.i20, label %land.lhs.true.i, label %if.end8.if.end.i21_crit_edge

if.end8.if.end.i21_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

land.lhs.true.i:                                  ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %last_time.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %14 = ptrtoint ptr %last_time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_time.i, align 4
  %sub.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 4
  br i1 %cmp1.i, label %land.lhs.true.i.bictcp_update.exit_crit_edge, label %land.lhs.true.i.if.end.i21_crit_edge

land.lhs.true.i.if.end.i21_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

land.lhs.true.i.bictcp_update.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bictcp_update.exit

if.end.i21:                                       ; preds = %land.lhs.true.i.if.end.i21_crit_edge, %if.end8.if.end.i21_crit_edge
  %epoch_start.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %16 = ptrtoint ptr %epoch_start.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %epoch_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then11.i, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %if.end.i21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %last_time3.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %19 = ptrtoint ptr %last_time3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_time3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp4.i = icmp eq i32 %18, %20
  br i1 %cmp4.i, label %land.lhs.true2.i.tcp_friendliness.i_crit_edge, label %if.end6.i

land.lhs.true2.i.tcp_friendliness.i_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcp_friendliness.i

if.end6.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %last_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %8, ptr %last_cwnd.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_time3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_time3.i, align 4
  br label %if.end22.i

if.then11.i:                                      ; preds = %if.end.i21
  %24 = ptrtoint ptr %last_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %8, ptr %last_cwnd.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %last_time8460.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 3
  %26 = ptrtoint ptr %last_time8460.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_time8460.i, align 4
  %27 = load volatile i32, ptr @jiffies, align 128
  %28 = ptrtoint ptr %epoch_start.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %epoch_start.i, align 4
  %29 = ptrtoint ptr %ack_cnt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %acked.addr.0, ptr %ack_cnt.i, align 4
  %tcp_cwnd.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 9
  %30 = ptrtoint ptr %tcp_cwnd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %8, ptr %tcp_cwnd.i, align 4
  %last_max_cwnd.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %31 = ptrtoint ptr %last_max_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_max_cwnd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %8)
  %cmp14.not.i = icmp ugt i32 %32, %8
  br i1 %cmp14.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %bic_K.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %33 = ptrtoint ptr %bic_K.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %bic_K.i, align 4
  %bic_origin_point.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %34 = ptrtoint ptr %bic_origin_point.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %8, ptr %bic_origin_point.i, align 4
  br label %if.end22.i

if.else.i:                                        ; preds = %if.then11.i
  %35 = load i64, ptr @cube_factor, align 8
  %sub17.i = sub i32 %32, %8
  %conv.i = zext i32 %sub17.i to i64
  %mul.i22 = mul i64 %35, %conv.i
  %shr.i.i.i = lshr i64 %mul.i22, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %fls64.exit.thread34.i.i

fls64.exit.thread34.i.i:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #9, !range !121
  %add.i.i.i = sub nuw nsw i32 64, %36
  br label %if.end.i457.i

if.end.i.i.i:                                     ; preds = %if.else.i
  %conv1.i.i.i = trunc i64 %mul.i22 to i32
  %37 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #9, !range !121
  %sub.i6.i.i.i = sub nuw nsw i32 32, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv1.i.i.i)
  %cmp.i455.i = icmp ult i32 %conv1.i.i.i, 64
  br i1 %cmp.i455.i, label %if.then.i456.i, label %if.end.i.i.i.if.end.i457.i_crit_edge

if.end.i.i.i.if.end.i457.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i457.i

if.then.i456.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [64 x i8], ptr @cubic_root.v, i32 0, i32 %conv1.i.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %conv1.i.i = zext i8 %39 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, 35
  %shr.i.i = lshr i32 %add.i.i, 6
  br label %cubic_root.exit.i

if.end.i457.i:                                    ; preds = %if.end.i.i.i.if.end.i457.i_crit_edge, %fls64.exit.thread34.i.i
  %retval.0.i37.i.i = phi i32 [ %add.i.i.i, %fls64.exit.thread34.i.i ], [ %sub.i6.i.i.i, %if.end.i.i.i.if.end.i457.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %retval.0.i37.i.i, 84
  %shr2.i.i = lshr i32 %mul.i.i, 8
  %sub.i.i = add nsw i32 %shr2.i.i, -1
  %mul3.i.i = mul nuw nsw i32 %sub.i.i, 3
  %sh_prom.i.i = zext i32 %mul3.i.i to i64
  %shr4.i.i = lshr i64 %mul.i22, %sh_prom.i.i
  %conv5.i.i = trunc i64 %shr4.i.i to i32
  %arrayidx6.i.i = getelementptr [64 x i8], ptr @cubic_root.v, i32 0, i32 %conv5.i.i
  %40 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %41 to i32
  %add8.i.i = add nuw nsw i32 %conv7.i.i, 10
  %shl.i.i = shl nuw nsw i32 %add8.i.i, %sub.i.i
  %shr9.i.i = lshr i32 %shl.i.i, 6
  %mul10.i.i = shl nuw nsw i32 %shr9.i.i, 1
  %conv11.i.i = zext i32 %shr9.i.i to i64
  %sub12.i.i = add nsw i32 %shr9.i.i, -1
  %conv13.i.i = zext i32 %sub12.i.i to i64
  %mul14.i.i = mul nuw nsw i64 %conv13.i.i, %conv11.i.i
  %call15.i.i = tail call i64 @div64_u64(i64 noundef %mul.i22, i64 noundef %mul14.i.i) #9
  %conv16.i.i = trunc i64 %call15.i.i to i32
  %add17.i.i = add i32 %mul10.i.i, %conv16.i.i
  %mul18.i.i = mul i32 %add17.i.i, 341
  %shr19.i.i = lshr i32 %mul18.i.i, 10
  br label %cubic_root.exit.i

cubic_root.exit.i:                                ; preds = %if.end.i457.i, %if.then.i456.i
  %retval.0.i458.i = phi i32 [ %shr.i.i, %if.then.i456.i ], [ %shr19.i.i, %if.end.i457.i ]
  %bic_K18.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %42 = ptrtoint ptr %bic_K18.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i458.i, ptr %bic_K18.i, align 4
  %43 = ptrtoint ptr %last_max_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_max_cwnd.i, align 4
  %bic_origin_point20.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %45 = ptrtoint ptr %bic_origin_point20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %bic_origin_point20.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %cubic_root.exit.i, %if.then15.i, %if.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %47 = ptrtoint ptr %epoch_start.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %epoch_start.i, align 4
  %sub24.i = sub i32 %46, %48
  %conv25.i = sext i32 %sub24.i to i64
  %delay_min.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %49 = ptrtoint ptr %delay_min.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay_min.i, align 4
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %50) #9
  %conv27.i = zext i32 %call3.i.i to i64
  %add28.i = add nsw i64 %conv27.i, %conv25.i
  %shl.i = shl nsw i64 %add28.i, 10
  %51 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %shl.i, i32 0) #12, !srcloc !122
  %asmresult.i.i = extractvalue { i64, i32 } %51, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %51, 1
  %52 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %shl.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !123
  %asmresult10.i.i = extractvalue { i64, i32 } %52, 0
  %t.0.i = lshr i64 %asmresult10.i.i, 6
  %bic_K221.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 5
  %53 = ptrtoint ptr %bic_K221.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bic_K221.i, align 4
  %conv222.i = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %t.0.i, i64 %conv222.i)
  %cmp223.i = icmp ult i64 %t.0.i, %conv222.i
  %sub228.i = sub nsw i64 %conv222.i, %t.0.i
  %sub232.i = sub nsw i64 %t.0.i, %conv222.i
  %offs.0.i = select i1 %cmp223.i, i64 %sub228.i, i64 %sub232.i
  %55 = load i32, ptr @cube_rtt_scale, align 4
  %conv234.i = zext i32 %55 to i64
  %mul235.i = mul i64 %offs.0.i, %conv234.i
  %mul236.i = mul i64 %mul235.i, %offs.0.i
  %mul237.i = mul i64 %mul236.i, %offs.0.i
  %shr238.i = lshr i64 %mul237.i, 40
  %conv239.i = trunc i64 %shr238.i to i32
  %bic_origin_point245.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %56 = ptrtoint ptr %bic_origin_point245.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bic_origin_point245.i, align 4
  %58 = sub nsw i32 0, %conv239.i
  %bic_target.0.p.i = select i1 %cmp223.i, i32 %58, i32 %conv239.i
  %bic_target.0.i = add i32 %bic_target.0.p.i, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %bic_target.0.i, i32 %8)
  %cmp251.i = icmp ugt i32 %bic_target.0.i, %8
  br i1 %cmp251.i, label %if.then253.i, label %if.else256.i

if.then253.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub254.i = sub i32 %bic_target.0.i, %8
  %div255.i = udiv i32 %8, %sub254.i
  br label %if.end259.i

if.else256.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul257.i = mul i32 %8, 100
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.else256.i, %if.then253.i
  %storemerge.i = phi i32 [ %mul257.i, %if.else256.i ], [ %div255.i, %if.then253.i ]
  %last_max_cwnd260.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 1
  %59 = ptrtoint ptr %last_max_cwnd260.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_max_cwnd260.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp261.i = icmp eq i32 %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %storemerge.i)
  %cmp265.i = icmp ugt i32 %storemerge.i, 20
  %or.cond.i = select i1 %cmp261.i, i1 %cmp265.i, i1 false
  %spec.store.select.i = select i1 %or.cond.i, i32 20, i32 %storemerge.i
  %61 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.store.select.i, ptr %icsk_ca_priv.i, align 4
  br label %tcp_friendliness.i

tcp_friendliness.i:                               ; preds = %if.end259.i, %land.lhs.true2.i.tcp_friendliness.i_crit_edge
  %62 = load i32, ptr @tcp_friendliness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool270.not.i = icmp eq i32 %62, 0
  br i1 %tobool270.not.i, label %tcp_friendliness.i.if.end294.i_crit_edge, label %if.then271.i

tcp_friendliness.i.if.end294.i_crit_edge:         ; preds = %tcp_friendliness.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end294.i

if.then271.i:                                     ; preds = %tcp_friendliness.i
  %63 = load i32, ptr @beta_scale, align 4
  %mul272.i = mul i32 %63, %8
  %shr273.i = lshr i32 %mul272.i, 3
  %64 = ptrtoint ptr %ack_cnt.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %ack_cnt.promoted.i = load i32, ptr %ack_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ack_cnt.promoted.i, i32 %shr273.i)
  %cmp275462.i = icmp ugt i32 %ack_cnt.promoted.i, %shr273.i
  br i1 %cmp275462.i, label %while.body.lr.ph.i, label %if.then271.i.while.end.i_crit_edge

if.then271.i.while.end.i_crit_edge:               ; preds = %if.then271.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then271.i
  %tcp_cwnd279.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 9
  %65 = ptrtoint ptr %tcp_cwnd279.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %tcp_cwnd279.promoted.i = load i32, ptr %tcp_cwnd279.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %inc465.i = phi i32 [ %tcp_cwnd279.promoted.i, %while.body.lr.ph.i ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %sub278461463.i = phi i32 [ %ack_cnt.promoted.i, %while.body.lr.ph.i ], [ %sub278.i, %while.body.i.while.body.i_crit_edge ]
  %sub278.i = sub i32 %sub278461463.i, %shr273.i
  %inc.i = add i32 %inc465.i, 1
  %cmp275.i = icmp ugt i32 %sub278.i, %shr273.i
  br i1 %cmp275.i, label %while.body.i.while.body.i_crit_edge, label %while.cond.while.end_crit_edge.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %ack_cnt.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub278.i, ptr %ack_cnt.i, align 4
  %67 = ptrtoint ptr %tcp_cwnd279.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc.i, ptr %tcp_cwnd279.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then271.i.while.end.i_crit_edge
  %tcp_cwnd280.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 9
  %68 = ptrtoint ptr %tcp_cwnd280.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tcp_cwnd280.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %8)
  %cmp281.i = icmp ugt i32 %69, %8
  br i1 %cmp281.i, label %if.then283.i, label %while.end.i.if.end294.i_crit_edge

while.end.i.if.end294.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end294.i

if.then283.i:                                     ; preds = %while.end.i
  %sub285.i = sub i32 %69, %8
  %div286.i = udiv i32 %8, %sub285.i
  %70 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %icsk_ca_priv.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %div286.i)
  %cmp288.i = icmp ugt i32 %71, %div286.i
  br i1 %cmp288.i, label %if.then290.i, label %if.then283.i.if.end294.i_crit_edge

if.then283.i.if.end294.i_crit_edge:               ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end294.i

if.then290.i:                                     ; preds = %if.then283.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div286.i, ptr %icsk_ca_priv.i, align 4
  br label %if.end294.i

if.end294.i:                                      ; preds = %if.then290.i, %if.then283.i.if.end294.i_crit_edge, %while.end.i.if.end294.i_crit_edge, %tcp_friendliness.i.if.end294.i_crit_edge
  %73 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %icsk_ca_priv.i, align 4
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 2) #9
  %76 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %icsk_ca_priv.i, align 4
  br label %bictcp_update.exit

bictcp_update.exit:                               ; preds = %if.end294.i, %land.lhs.true.i.bictcp_update.exit_crit_edge
  %77 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %icsk_ca_priv.i, align 4
  tail call void @tcp_cong_avoid_ai(ptr noundef %sk, i32 noundef %78, i32 noundef %acked.addr.0) #9
  br label %cleanup

cleanup:                                          ; preds = %bictcp_update.exit, %if.then4.cleanup_crit_edge, %tcp_is_cwnd_limited.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cubictcp_state(ptr nocapture noundef %sk, i8 noundef zeroext %new_state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %new_state)
  %cmp = icmp eq i8 %new_state, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = call ptr @memset(ptr %icsk_ca_priv.i, i32 0, i32 40)
  %found.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 12
  %1 = ptrtoint ptr %found.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %found.i, align 1
  %tcp_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %2 = ptrtoint ptr %tcp_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tcp_mstamp.i.i, align 8
  %conv.i.i = trunc i64 %3 to i32
  %last_ack.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 15
  %4 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i.i, ptr %last_ack.i, align 4
  %round_start.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 13
  %5 = ptrtoint ptr %round_start.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i.i, ptr %round_start.i, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %6 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_nxt.i, align 4
  %end_seq.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %8 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %end_seq.i, align 4
  %curr_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %9 = ptrtoint ptr %curr_rtt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %curr_rtt.i, align 4
  %sample_cnt.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 11
  %10 = ptrtoint ptr %sample_cnt.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sample_cnt.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cubictcp_cwnd_event(ptr nocapture noundef %sk, i32 noundef %event) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp = icmp eq i32 %event, 0
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lsndtime = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 19
  %1 = ptrtoint ptr %lsndtime to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lsndtime, align 8
  %sub = sub i32 %0, %2
  %epoch_start = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %3 = ptrtoint ptr %epoch_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %epoch_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, 0
  %or.cond = select i1 %tobool.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %4, %sub
  %sub.i = sub i32 %0, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %spec.store.select = select i1 %cmp.i, i32 %0, i32 %add
  %5 = ptrtoint ptr %epoch_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.store.select, ptr %epoch_start, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cubictcp_acked(ptr noundef %sk, ptr nocapture noundef readonly %sample) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %0 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %epoch_start = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 7
  %2 = ptrtoint ptr %epoch_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %epoch_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 100
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp eq i32 %1, 0
  %spec.store.select = select i1 %cmp7, i32 1, i32 %1
  %delay_min = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %5 = ptrtoint ptr %delay_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %spec.store.select)
  %cmp12 = icmp ugt i32 %6, %spec.store.select
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp12
  br i1 %or.cond, label %if.then13, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %delay_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %delay_min, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end5.if.end15_crit_edge
  %found = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 12
  %8 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %found, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool16.not = icmp eq i8 %9, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end15
  %snd_cwnd.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %10 = ptrtoint ptr %snd_cwnd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_cwnd.i, align 8
  %snd_ssthresh.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %12 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snd_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp ult i32 %11, %13
  br i1 %cmp.i, label %land.lhs.true19, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %14 = load i32, ptr @hystart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %land.lhs.true19.cleanup_crit_edge, label %land.lhs.true21

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %15 = load i32, ptr @hystart_low_window, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp22.not = icmp ult i32 %11, %15
  br i1 %cmp22.not, label %land.lhs.true21.cleanup_crit_edge, label %if.then23

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @hystart_update(ptr noundef %sk, i32 noundef %spec.store.select)
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cubictcp_init(ptr nocapture noundef %sk) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %0 = call ptr @memset(ptr %icsk_ca_priv.i, i32 0, i32 40)
  %found.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 12
  %1 = ptrtoint ptr %found.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %found.i, align 1
  %2 = load i32, ptr @hystart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tcp_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %3 = ptrtoint ptr %tcp_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tcp_mstamp.i.i, align 8
  %conv.i.i = trunc i64 %4 to i32
  %last_ack.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 15
  %5 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i.i, ptr %last_ack.i, align 4
  %round_start.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 13
  %6 = ptrtoint ptr %round_start.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i.i, ptr %round_start.i, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %7 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_nxt.i, align 4
  %end_seq.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %9 = ptrtoint ptr %end_seq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %end_seq.i, align 4
  %curr_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %10 = ptrtoint ptr %curr_rtt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %curr_rtt.i, align 4
  %sample_cnt.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 11
  %11 = ptrtoint ptr %sample_cnt.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sample_cnt.i, align 2
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, ptr @initial_ssthresh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %13 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %snd_ssthresh, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cong_avoid_ai(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hystart_update(ptr noundef %sk, i32 noundef %delay) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %end_seq = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 6
  %0 = ptrtoint ptr %end_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end_seq, align 4
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 16
  %2 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_una, align 4
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tcp_mstamp.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %4 = ptrtoint ptr %tcp_mstamp.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tcp_mstamp.i.i, align 8
  %conv.i.i = trunc i64 %5 to i32
  %last_ack.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 15
  %6 = ptrtoint ptr %last_ack.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i.i, ptr %last_ack.i, align 4
  %round_start.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 13
  %7 = ptrtoint ptr %round_start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i.i, ptr %round_start.i, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %8 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %snd_nxt.i, align 4
  %10 = ptrtoint ptr %end_seq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %end_seq, align 4
  %curr_rtt.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %11 = ptrtoint ptr %curr_rtt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %curr_rtt.i, align 4
  %sample_cnt.i = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 11
  %12 = ptrtoint ptr %sample_cnt.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %sample_cnt.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = load i32, ptr @hystart_detect, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end143_crit_edge, label %if.then3

if.end.if.end143_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then3:                                         ; preds = %if.end
  %tcp_mstamp.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %14 = ptrtoint ptr %tcp_mstamp.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tcp_mstamp.i, align 8
  %conv.i = trunc i64 %15 to i32
  %last_ack = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 15
  %16 = ptrtoint ptr %last_ack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_ack, align 4
  %sub = sub i32 %conv.i, %17
  %18 = load i32, ptr @hystart_ack_delta_us, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %18)
  %cmp.not = icmp sgt i32 %sub, %18
  br i1 %cmp.not, label %if.then3.if.end143_crit_edge, label %if.then5

if.then3.if.end143_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then5:                                         ; preds = %if.then3
  %19 = ptrtoint ptr %last_ack to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %last_ack, align 4
  %delay_min = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %20 = ptrtoint ptr %delay_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay_min, align 4
  %sk_pacing_rate.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 35
  %22 = ptrtoint ptr %sk_pacing_rate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sk_pacing_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then5.hystart_ack_delay.exit_crit_edge, label %if.else174.i.i.i

if.then5.hystart_ack_delay.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %hystart_ack_delay.exit

if.else174.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 262144000000) #12, !srcloc !120
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %24, 1
  %25 = tail call i64 @llvm.umin.i64(i64 %asmresult1.i.i.i.i, i64 1000) #9
  %26 = trunc i64 %25 to i32
  br label %hystart_ack_delay.exit

hystart_ack_delay.exit:                           ; preds = %if.else174.i.i.i, %if.then5.hystart_ack_delay.exit_crit_edge
  %retval.0.i350 = phi i32 [ %26, %if.else174.i.i.i ], [ 0, %if.then5.hystart_ack_delay.exit_crit_edge ]
  %add = add i32 %retval.0.i350, %21
  %sk_pacing_status = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 30
  %27 = ptrtoint ptr %sk_pacing_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_pacing_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp8 = icmp eq i32 %28, 0
  %shr = zext i1 %cmp8 to i32
  %spec.select = lshr i32 %add, %shr
  %round_start = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 13
  %29 = ptrtoint ptr %round_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %round_start, align 4
  %sub11 = sub i32 %conv.i, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %spec.select)
  %cmp12 = icmp ugt i32 %sub11, %spec.select
  br i1 %cmp12, label %if.then13, label %hystart_ack_delay.exit.if.end143_crit_edge

hystart_ack_delay.exit.if.end143_crit_edge:       ; preds = %hystart_ack_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then13:                                        ; preds = %hystart_ack_delay.exit
  %found = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 12
  %31 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %found, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hystart_update.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hystart_update, %if.then18)) #9
          to label %do.body25 [label %if.then18], !srcloc !124

if.then18:                                        ; preds = %if.then13
  %32 = ptrtoint ptr %round_start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %round_start, align 4
  %sub20 = sub i32 %conv.i, %33
  %34 = ptrtoint ptr %delay_min to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %delay_min, align 4
  %36 = ptrtoint ptr %sk_pacing_rate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sk_pacing_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i352 = icmp eq i32 %37, 0
  br i1 %tobool.not.i352, label %if.then18.hystart_ack_delay.exit461_crit_edge, label %if.else174.i.i.i457

if.then18.hystart_ack_delay.exit461_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %hystart_ack_delay.exit461

if.else174.i.i.i457:                              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %37, i64 262144000000) #12, !srcloc !120
  %asmresult1.i.i.i.i456 = extractvalue { i64, i64 } %38, 1
  %39 = tail call i64 @llvm.umin.i64(i64 %asmresult1.i.i.i.i456, i64 1000) #9
  %40 = trunc i64 %39 to i32
  br label %hystart_ack_delay.exit461

hystart_ack_delay.exit461:                        ; preds = %if.else174.i.i.i457, %if.then18.hystart_ack_delay.exit461_crit_edge
  %retval.0.i460 = phi i32 [ %40, %if.else174.i.i.i457 ], [ 0, %if.then18.hystart_ack_delay.exit461_crit_edge ]
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %41 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %snd_cwnd, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hystart_update.__UNIQUE_ID_ddebug618, ptr noundef nonnull @.str.5, i32 noundef %sub20, i32 noundef %spec.select, i32 noundef %35, i32 noundef %retval.0.i460, i32 noundef %42) #9
  br label %do.body25

do.body25:                                        ; preds = %hystart_ack_delay.exit461, %if.then13
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !125
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %44 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %45, i32 0, i32 30, i32 3
  %46 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %47, i32 0, i32 99
  %48 = ptrtoint ptr %arrayidx to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %54, %48
  %55 = inttoptr i32 %add45 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add46 = add i32 %57, 1
  store i32 %add46, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !126
  %and.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool57.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool57.not, label %if.then66, label %do.body25.do.end69_crit_edge, !prof !127

do.body25.do.end69_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end69

if.then66:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body25.do.end69_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #9, !srcloc !128
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !125
  %snd_cwnd93 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %60 = ptrtoint ptr %snd_cwnd93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %snd_cwnd93, align 8
  %62 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skc_net.i, align 4
  %net_statistics102 = getelementptr inbounds %struct.net, ptr %63, i32 0, i32 30, i32 3
  %64 = ptrtoint ptr %net_statistics102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net_statistics102, align 4
  %arrayidx104 = getelementptr [126 x i32], ptr %65, i32 0, i32 100
  %66 = ptrtoint ptr %arrayidx104 to i32
  %67 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu, align 4
  %arrayidx108 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx108, align 4
  %add109 = add i32 %70, %66
  %71 = inttoptr i32 %add109 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add110 = add i32 %73, %61
  store i32 %add110, ptr %71, align 4
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !126
  %and.i.i463 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i463)
  %tobool121.not = icmp eq i32 %and.i.i463, 0
  br i1 %tobool121.not, label %if.then130, label %do.end69.do.end133_crit_edge, !prof !127

do.end69.do.end133_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end133

if.then130:                                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end133

do.end133:                                        ; preds = %if.then130, %do.end69.do.end133_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #9, !srcloc !128
  %75 = ptrtoint ptr %snd_cwnd93 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %snd_cwnd93, align 8
  %snd_ssthresh = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %77 = ptrtoint ptr %snd_ssthresh to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %snd_ssthresh, align 4
  br label %if.end143

if.end143:                                        ; preds = %do.end133, %hystart_ack_delay.exit.if.end143_crit_edge, %if.then3.if.end143_crit_edge, %if.end.if.end143_crit_edge
  %78 = load i32, ptr @hystart_detect, align 4
  %and144 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end307_crit_edge, label %if.then146

if.end143.if.end307_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

if.then146:                                       ; preds = %if.end143
  %curr_rtt = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 7
  %79 = ptrtoint ptr %curr_rtt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %curr_rtt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %delay)
  %cmp147 = icmp ugt i32 %80, %delay
  br i1 %cmp147, label %if.then149, label %if.then146.if.end151_crit_edge

if.then146.if.end151_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then149:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %curr_rtt to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %delay, ptr %curr_rtt, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then149, %if.then146.if.end151_crit_edge
  %sample_cnt = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 11
  %82 = ptrtoint ptr %sample_cnt to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sample_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %83)
  %cmp153 = icmp ult i8 %83, 8
  br i1 %cmp153, label %if.then155, label %if.else

if.then155:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i8 %83, 1
  %84 = ptrtoint ptr %sample_cnt to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %inc, ptr %sample_cnt, align 2
  br label %if.end307

if.else:                                          ; preds = %if.end151
  %85 = ptrtoint ptr %curr_rtt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %curr_rtt, align 4
  %delay_min158 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 3
  %87 = ptrtoint ptr %delay_min158 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay_min158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32007, i32 %88)
  %cmp162 = icmp ugt i32 %88, 32007
  %shr160 = lshr i32 %88, 3
  %89 = tail call i32 @llvm.umin.i32(i32 %shr160, i32 16000)
  %90 = select i1 %cmp162, i32 %89, i32 4000
  %add171 = add i32 %90, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %add171)
  %cmp172 = icmp ugt i32 %86, %add171
  br i1 %cmp172, label %if.then174, label %if.else.if.end307_crit_edge

if.else.if.end307_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end307

if.then174:                                       ; preds = %if.else
  %found175 = getelementptr inbounds %struct.bictcp, ptr %icsk_ca_priv.i, i32 0, i32 12
  %91 = ptrtoint ptr %found175 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %found175, align 1
  %92 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !125
  %skc_net.i464 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %93 = ptrtoint ptr %skc_net.i464 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %skc_net.i464, align 4
  %net_statistics201 = getelementptr inbounds %struct.net, ptr %94, i32 0, i32 30, i32 3
  %95 = ptrtoint ptr %net_statistics201 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %net_statistics201, align 4
  %arrayidx203 = getelementptr [126 x i32], ptr %96, i32 0, i32 101
  %97 = ptrtoint ptr %arrayidx203 to i32
  %98 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i465 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i465 to ptr
  %cpu206 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu206 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu206, align 4
  %arrayidx207 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx207, align 4
  %add208 = add i32 %103, %97
  %104 = inttoptr i32 %add208 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add209 = add i32 %106, 1
  store i32 %add209, ptr %104, align 4
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !126
  %and.i.i466 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i466)
  %tobool220.not = icmp eq i32 %and.i.i466, 0
  br i1 %tobool220.not, label %if.then229, label %if.then174.do.end232_crit_edge, !prof !127

if.then174.do.end232_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end232

if.then229:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end232

do.end232:                                        ; preds = %if.then229, %if.then174.do.end232_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %92) #9, !srcloc !128
  %108 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !125
  %snd_cwnd256 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %109 = ptrtoint ptr %snd_cwnd256 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %snd_cwnd256, align 8
  %111 = ptrtoint ptr %skc_net.i464 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skc_net.i464, align 4
  %net_statistics265 = getelementptr inbounds %struct.net, ptr %112, i32 0, i32 30, i32 3
  %113 = ptrtoint ptr %net_statistics265 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %net_statistics265, align 4
  %arrayidx267 = getelementptr [126 x i32], ptr %114, i32 0, i32 102
  %115 = ptrtoint ptr %arrayidx267 to i32
  %116 = ptrtoint ptr %cpu206 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cpu206, align 4
  %arrayidx271 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx271, align 4
  %add272 = add i32 %119, %115
  %120 = inttoptr i32 %add272 to ptr
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %add273 = add i32 %122, %110
  store i32 %add273, ptr %120, align 4
  %123 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !126
  %and.i.i468 = and i32 %123, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i468)
  %tobool284.not = icmp eq i32 %and.i.i468, 0
  br i1 %tobool284.not, label %if.then293, label %do.end232.do.end296_crit_edge, !prof !127

do.end232.do.end296_crit_edge:                    ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

if.then293:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end296

do.end296:                                        ; preds = %if.then293, %do.end232.do.end296_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %108) #9, !srcloc !128
  %124 = ptrtoint ptr %snd_cwnd256 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %snd_cwnd256, align 8
  %snd_ssthresh304 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %126 = ptrtoint ptr %snd_ssthresh304 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %snd_ssthresh304, align 4
  br label %if.end307

if.end307:                                        ; preds = %do.end296, %if.else.if.end307_crit_edge, %if.then155, %if.end143.if.end307_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !49, !51, !53, !54, !56, !58, !59, !60, !61, !62, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_fast_convergence, !1, !"__param_fast_convergence", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_cubic.c", i32 65, i32 1}
!2 = !{ptr @__UNIQUE_ID_fast_convergencetype593, !1, !"__UNIQUE_ID_fast_convergencetype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fast_convergence594, !4, !"__UNIQUE_ID_fast_convergence594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_cubic.c", i32 66, i32 1}
!5 = !{ptr @__param_beta, !6, !"__param_beta", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_cubic.c", i32 67, i32 1}
!7 = !{ptr @__UNIQUE_ID_betatype595, !6, !"__UNIQUE_ID_betatype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_beta596, !9, !"__UNIQUE_ID_beta596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_cubic.c", i32 68, i32 1}
!10 = !{ptr @__param_initial_ssthresh, !11, !"__param_initial_ssthresh", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_cubic.c", i32 69, i32 1}
!12 = !{ptr @__UNIQUE_ID_initial_ssthreshtype597, !11, !"__UNIQUE_ID_initial_ssthreshtype597", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_initial_ssthresh598, !14, !"__UNIQUE_ID_initial_ssthresh598", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_cubic.c", i32 70, i32 1}
!15 = !{ptr @__param_bic_scale, !16, !"__param_bic_scale", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_cubic.c", i32 71, i32 1}
!17 = !{ptr @__UNIQUE_ID_bic_scaletype599, !16, !"__UNIQUE_ID_bic_scaletype599", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_bic_scale600, !19, !"__UNIQUE_ID_bic_scale600", i1 false, i1 false}
!19 = !{!"../net/ipv4/tcp_cubic.c", i32 72, i32 1}
!20 = !{ptr @__param_tcp_friendliness, !21, !"__param_tcp_friendliness", i1 false, i1 false}
!21 = !{!"../net/ipv4/tcp_cubic.c", i32 73, i32 1}
!22 = !{ptr @__UNIQUE_ID_tcp_friendlinesstype601, !21, !"__UNIQUE_ID_tcp_friendlinesstype601", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_tcp_friendliness602, !24, !"__UNIQUE_ID_tcp_friendliness602", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_cubic.c", i32 74, i32 1}
!25 = !{ptr @__param_hystart, !26, !"__param_hystart", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_cubic.c", i32 75, i32 1}
!27 = !{ptr @__UNIQUE_ID_hystarttype603, !26, !"__UNIQUE_ID_hystarttype603", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_hystart604, !29, !"__UNIQUE_ID_hystart604", i1 false, i1 false}
!29 = !{!"../net/ipv4/tcp_cubic.c", i32 76, i32 1}
!30 = !{ptr @__param_hystart_detect, !31, !"__param_hystart_detect", i1 false, i1 false}
!31 = !{!"../net/ipv4/tcp_cubic.c", i32 77, i32 1}
!32 = !{ptr @__UNIQUE_ID_hystart_detecttype605, !31, !"__UNIQUE_ID_hystart_detecttype605", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_hystart_detect606, !34, !"__UNIQUE_ID_hystart_detect606", i1 false, i1 false}
!34 = !{!"../net/ipv4/tcp_cubic.c", i32 78, i32 1}
!35 = !{ptr @__param_hystart_low_window, !36, !"__param_hystart_low_window", i1 false, i1 false}
!36 = !{!"../net/ipv4/tcp_cubic.c", i32 80, i32 1}
!37 = !{ptr @__UNIQUE_ID_hystart_low_windowtype607, !36, !"__UNIQUE_ID_hystart_low_windowtype607", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_hystart_low_window608, !39, !"__UNIQUE_ID_hystart_low_window608", i1 false, i1 false}
!39 = !{!"../net/ipv4/tcp_cubic.c", i32 81, i32 1}
!40 = !{ptr @__param_hystart_ack_delta_us, !41, !"__param_hystart_ack_delta_us", i1 false, i1 false}
!41 = !{!"../net/ipv4/tcp_cubic.c", i32 82, i32 1}
!42 = !{ptr @__UNIQUE_ID_hystart_ack_delta_ustype609, !41, !"__UNIQUE_ID_hystart_ack_delta_ustype609", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_hystart_ack_delta_us610, !44, !"__UNIQUE_ID_hystart_ack_delta_us610", i1 false, i1 false}
!44 = !{!"../net/ipv4/tcp_cubic.c", i32 83, i32 1}
!45 = !{ptr @__initcall__kmod_tcp_cubic__624_550_cubictcp_register6, !46, !"__initcall__kmod_tcp_cubic__624_550_cubictcp_register6", i1 false, i1 false}
!46 = !{!"../net/ipv4/tcp_cubic.c", i32 550, i32 1}
!47 = !{ptr @__exitcall_cubictcp_unregister, !48, !"__exitcall_cubictcp_unregister", i1 false, i1 false}
!48 = !{!"../net/ipv4/tcp_cubic.c", i32 551, i32 1}
!49 = !{ptr @__UNIQUE_ID_author625, !50, !"__UNIQUE_ID_author625", i1 false, i1 false}
!50 = !{!"../net/ipv4/tcp_cubic.c", i32 553, i32 1}
!51 = !{ptr @__UNIQUE_ID_file626, !52, !"__UNIQUE_ID_file626", i1 false, i1 false}
!52 = !{!"../net/ipv4/tcp_cubic.c", i32 554, i32 1}
!53 = !{ptr @__UNIQUE_ID_license627, !52, !"__UNIQUE_ID_license627", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_description628, !55, !"__UNIQUE_ID_description628", i1 false, i1 false}
!55 = !{!"../net/ipv4/tcp_cubic.c", i32 555, i32 1}
!56 = !{ptr @__UNIQUE_ID_version629, !57, !"__UNIQUE_ID_version629", i1 false, i1 false}
!57 = !{!"../net/ipv4/tcp_cubic.c", i32 556, i32 1}
!58 = !{ptr @.str, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.1, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.2, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__modver_attr, !57, !"__modver_attr", i1 false, i1 false}
!62 = distinct !{null, !63, !"bpf_tcp_ca_kfunc_list", i1 false, i1 false}
!63 = !{!"../include/linux/btf.h", i32 359, i32 33}
!64 = !{ptr @initial_ssthresh, !65, !"initial_ssthresh", i1 false, i1 false}
!65 = !{!"../net/ipv4/tcp_cubic.c", i32 51, i32 12}
!66 = !{ptr @__param_str_fast_convergence, !1, !"__param_str_fast_convergence", i1 false, i1 false}
!67 = !{ptr @fast_convergence, !68, !"fast_convergence", i1 false, i1 false}
!68 = !{!"../net/ipv4/tcp_cubic.c", i32 49, i32 12}
!69 = !{ptr @__param_str_beta, !6, !"__param_str_beta", i1 false, i1 false}
!70 = !{ptr @beta, !71, !"beta", i1 false, i1 false}
!71 = !{!"../net/ipv4/tcp_cubic.c", i32 50, i32 12}
!72 = !{ptr @__param_str_initial_ssthresh, !11, !"__param_str_initial_ssthresh", i1 false, i1 false}
!73 = !{ptr @__param_str_bic_scale, !16, !"__param_str_bic_scale", i1 false, i1 false}
!74 = !{ptr @bic_scale, !75, !"bic_scale", i1 false, i1 false}
!75 = !{!"../net/ipv4/tcp_cubic.c", i32 52, i32 12}
!76 = !{ptr @__param_str_tcp_friendliness, !21, !"__param_str_tcp_friendliness", i1 false, i1 false}
!77 = !{ptr @tcp_friendliness, !78, !"tcp_friendliness", i1 false, i1 false}
!78 = !{!"../net/ipv4/tcp_cubic.c", i32 53, i32 12}
!79 = !{ptr @__param_str_hystart, !26, !"__param_str_hystart", i1 false, i1 false}
!80 = !{ptr @hystart, !81, !"hystart", i1 false, i1 false}
!81 = !{!"../net/ipv4/tcp_cubic.c", i32 55, i32 12}
!82 = !{ptr @__param_str_hystart_detect, !31, !"__param_str_hystart_detect", i1 false, i1 false}
!83 = !{ptr @hystart_detect, !84, !"hystart_detect", i1 false, i1 false}
!84 = !{!"../net/ipv4/tcp_cubic.c", i32 56, i32 12}
!85 = !{ptr @__param_str_hystart_low_window, !36, !"__param_str_hystart_low_window", i1 false, i1 false}
!86 = !{ptr @hystart_low_window, !87, !"hystart_low_window", i1 false, i1 false}
!87 = !{!"../net/ipv4/tcp_cubic.c", i32 57, i32 12}
!88 = !{ptr @__param_str_hystart_ack_delta_us, !41, !"__param_str_hystart_ack_delta_us", i1 false, i1 false}
!89 = !{ptr @hystart_ack_delta_us, !90, !"hystart_ack_delta_us", i1 false, i1 false}
!90 = !{!"../net/ipv4/tcp_cubic.c", i32 58, i32 12}
!91 = distinct !{null, !92, !"tcp_cubic_kfunc_btf_set", i1 false, i1 false}
!92 = !{!"../net/ipv4/tcp_cubic.c", i32 501, i32 8}
!93 = distinct !{null, !94, !"tcp_cubic_kfunc_ids", i1 false, i1 false}
!94 = !{!"../net/ipv4/tcp_cubic.c", i32 488, i32 1}
!95 = !{ptr @cubictcp, !96, !"cubictcp", i1 false, i1 false}
!96 = !{!"../net/ipv4/tcp_cubic.c", i32 476, i32 34}
!97 = !{ptr @cubic_root.v, !98, !"v", i1 false, i1 false}
!98 = !{!"../net/ipv4/tcp_cubic.c", i32 178, i32 18}
!99 = !{ptr @cube_factor, !100, !"cube_factor", i1 false, i1 false}
!100 = !{!"../net/ipv4/tcp_cubic.c", i32 62, i32 12}
!101 = !{ptr @cube_rtt_scale, !102, !"cube_rtt_scale", i1 false, i1 false}
!102 = !{!"../net/ipv4/tcp_cubic.c", i32 60, i32 12}
!103 = !{ptr @beta_scale, !104, !"beta_scale", i1 false, i1 false}
!104 = !{!"../net/ipv4/tcp_cubic.c", i32 61, i32 12}
!105 = !{ptr @.str.3, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/ipv4/tcp_cubic.c", i32 414, i32 5}
!107 = !{ptr @.str.4, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.5, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hystart_update.__UNIQUE_ID_ddebug618, !106, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148529470, i64 2148529750, i64 2148530084, i64 2148530418}
!121 = !{i32 0, i32 33}
!122 = !{i64 1043926, i64 1043953, i64 1043975, i64 1044003}
!123 = !{i64 1044334, i64 1044361, i64 1044394, i64 1044415, i64 1044442, i64 1044468}
!124 = !{i64 2148280362, i64 2148280367, i64 2148280380, i64 2148280424, i64 2148280458, i64 2148280479}
!125 = !{i64 1084365, i64 1084426}
!126 = !{i64 1087097}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 1087382}
