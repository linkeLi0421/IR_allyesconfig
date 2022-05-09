; ModuleID = '/llk/IR_all_yes/net/ipv4/ipip.c_pt.bc'
source_filename = "../net/ipv4/ipip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.137 }
%union.anon.137 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xfrm_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.143 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.157 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
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
%struct.icmphdr = type { i8, i8, i16, %union.anon.162 }
%union.anon.162 = type { i32 }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, %struct.ip_tunnel_6rd_parm, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.ip_tunnel_6rd_parm = type { %struct.in6_addr, i32, i16, i16 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.gro_cells = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.158 }
%union.anon.158 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.159, i16, i8, i8, i32, i16, i16 }
%union.anon.159 = type { %struct.anon.161 }
%struct.anon.161 = type { %struct.in6_addr, %struct.in6_addr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_log_ecn_error = internal constant [19 x i8] c"ipip.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.137 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype591 = internal constant [33 x i8] c"ipip.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error592 = internal constant [64 x i8] c"ipip.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@ipip_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.5, i32 180, ptr null, ptr @ipip_tunnel_setup, i8 0, i32 20, ptr @ipip_policy, ptr @ipip_tunnel_validate, ptr @ipip_newlink, ptr @ipip_changelink, ptr @ip_tunnel_dellink, ptr @ipip_get_size, ptr @ipip_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@ipip_handler = internal global %struct.xfrm_tunnel { ptr @ipip_rcv, ptr null, ptr @ipip_err, ptr null, i32 1 }, section ".data..read_mostly", align 4
@ipip_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: can't deregister tunnel\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipip_fini\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv4/ipip.c\00", [16 x i8] zeroinitializer }, align 32
@ipip_fini._entry_ptr = internal global ptr @ipip_fini._entry, section ".printk_index", align 4
@mplsip_handler = internal global %struct.xfrm_tunnel { ptr @mplsip_rcv, ptr null, ptr @ipip_err, ptr null, i32 1 }, section ".data..read_mostly", align 4
@ipip_fini._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipip_fini._entry_ptr.4 = internal global ptr @ipip_fini._entry.3, section ".printk_index", align 4
@ipip_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipip_init_net, ptr null, ptr null, ptr @ipip_exit_batch_net, ptr @ipip_net_id, i32 528 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ipip__593_714_ipip_init6 = internal global ptr @ipip_init, section ".initcall6.init", align 4
@__exitcall_ipip_fini = internal global ptr @ipip_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file594 = internal constant [24 x i8] c"ipip.file=net/ipv4/ipip\00", section ".modinfo", align 1
@__UNIQUE_ID_license595 = internal constant [17 x i8] c"ipip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias596 = internal constant [26 x i8] c"ipip.alias=rtnl-link-ipip\00", section ".modinfo", align 1
@__UNIQUE_ID_alias597 = internal constant [24 x i8] c"ipip.alias=netdev-tunl0\00", section ".modinfo", align 1
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipip\00", [27 x i8] zeroinitializer }, align 32
@ipip_policy = internal constant { [21 x %struct.nla_policy], [56 x i8] } { [21 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ipip_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipip_tunnel_init, ptr @ip_tunnel_uninit, ptr null, ptr null, ptr @ipip_tunnel_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_siocdevprivate, ptr null, ptr @ip_tunnel_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipip_tunnel_ctl, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ip_tunnel_header_ops = external dso_local constant %struct.header_ops, align 4
@ipip_net_id = internal global i32 0, section ".data..read_mostly", align 4
@mplsip_tpi = internal constant { %struct.tnl_ptk_info, [16 x i8] } { %struct.tnl_ptk_info { i16 0, i16 -30649, i32 0, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ipip_tpi = internal constant { %struct.tnl_ptk_info, [16 x i8] } { %struct.tnl_ptk_info { i16 0, i16 2048, i32 0, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tunl0\00", [26 x i8] zeroinitializer }, align 32
@ipip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ipip: IPv4 and MPLS over IPv4 tunneling driver\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipip_init\00", [22 x i8] zeroinitializer }, align 32
@ipip_init._entry_ptr = internal global ptr @ipip_init._entry, section ".printk_index", align 4
@ipip_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: can't register tunnel\0A\00", [35 x i8] zeroinitializer }, align 32
@ipip_init._entry_ptr.17 = internal global ptr @ipip_init._entry.15, section ".printk_index", align 4
@ipip_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipip_init._entry_ptr.19 = internal global ptr @ipip_init._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 137]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34887]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 35313, i64 35315]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 137]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 11]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"log_ecn_error\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 115, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 706, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 709, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"ipip_net_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 655, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 617, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"ipip_policy\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 600, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ipip_netdev_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 346, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"mplsip_tpi\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 206, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"ipip_tpi\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 200, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 45, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 1011, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 647, i32 62 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 666, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 673, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private constant [19 x i8] c"../net/ipv4/ipip.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 679, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias596, ptr @__UNIQUE_ID_alias597, ptr @__UNIQUE_ID_file594, ptr @__UNIQUE_ID_license595, ptr @__UNIQUE_ID_log_ecn_error592, ptr @__UNIQUE_ID_log_ecn_errortype591, ptr @__exitcall_ipip_fini, ptr @__initcall__kmod_ipip__593_714_ipip_init6, ptr @__param_log_ecn_error, ptr @ipip_fini, ptr @ipip_fini._entry, ptr @ipip_fini._entry.3, ptr @ipip_fini._entry_ptr, ptr @ipip_fini._entry_ptr.4, ptr @ipip_init._entry, ptr @ipip_init._entry.15, ptr @ipip_init._entry.18, ptr @ipip_init._entry_ptr, ptr @ipip_init._entry_ptr.17, ptr @ipip_init._entry_ptr.19, ptr @log_ecn_error, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ipip_net_ops, ptr @.str.5, ptr @ipip_policy, ptr @ipip_netdev_ops, ptr @mplsip_tpi, ptr @ipip_tpi, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ecn_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_fini._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_policy to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mplsip_tpi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_tpi to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipip_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipip_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipip_link_ops) #9
  %call = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @mplsip_handler, i16 noundef zeroext 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  tail call void @unregister_pernet_device(ptr noundef nonnull @ipip_net_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @ipip_net_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #12
  br label %xfrm_tunnel_ipip_failed

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @xfrm4_tunnel_register(ptr noundef nonnull @mplsip_handler, i16 noundef zeroext 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #12
  br label %xfrm_tunnel_mplsip_failed

if.end19:                                         ; preds = %if.end10
  %call20 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ipip_link_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %rtnl_link_failed, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rtnl_link_failed:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @mplsip_handler, i16 noundef zeroext 28) #9
  br label %xfrm_tunnel_mplsip_failed

xfrm_tunnel_mplsip_failed:                        ; preds = %rtnl_link_failed, %do.end16
  %err.1 = phi i32 [ %call11, %do.end16 ], [ %call20, %rtnl_link_failed ]
  %call25 = tail call i32 @xfrm4_tunnel_deregister(ptr noundef nonnull @ipip_handler, i16 noundef zeroext 2) #9
  br label %xfrm_tunnel_ipip_failed

xfrm_tunnel_ipip_failed:                          ; preds = %xfrm_tunnel_mplsip_failed, %do.end7
  %err.2 = phi i32 [ %call2, %do.end7 ], [ %err.1, %xfrm_tunnel_mplsip_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ipip_net_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %xfrm_tunnel_ipip_failed, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %err.2, %xfrm_tunnel_ipip_failed ], [ %call20, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipip_tunnel_setup(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipip_netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %1 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ip_tunnel_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 768, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %flags, align 8
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %addr_len, align 1
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %5 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features, align 16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %8, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %or2 = or i64 %6, 26845450345
  store i64 %or2, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %9 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hw_features, align 8
  %or3 = or i64 %10, 26845446249
  store i64 %or3, ptr %hw_features, align 8
  %11 = load i32, ptr @ipip_net_id, align 4
  tail call void @ip_tunnel_setup(ptr noundef %dev, i32 noundef %11) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipip_tunnel_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 4, label %if.end.if.end12_crit_edge
    i8 -119, label %if.end.if.end12_crit_edge17
    i8 0, label %if.end.if.end12_crit_edge18
  ]

if.end.if.end12_crit_edge18:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.if.end12_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge17, %if.end.if.end12_crit_edge18
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  %p = alloca %struct.ip_tunnel_parm, align 4
  %ipencap = alloca %struct.ip_tunnel_encap, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap) #9
  %0 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 3
  %3 = ptrtoint ptr %ipencap to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %ipencap, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %data, i32 15
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i.i, align 2
  %8 = ptrtoint ptr %ipencap to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %ipencap, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %9 = xor i1 %tobool2.not.i, true
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 16
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i43.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i43.i, align 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %0, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %ret.1.off0.i = phi i1 [ true, %if.then8.i ], [ %9, %if.end5.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 17
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %if.end17.i, label %if.end17.i.thread

if.end17.i:                                       ; preds = %if.end11.i
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 18
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %18, null
  br i1 %tobool19.not.i, label %ipip_netlink_encap_parms.exit, label %if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipip_netlink_encap_parms.exit.thread

if.end17.i.thread:                                ; preds = %if.end11.i
  %add.ptr.i.i44.i = getelementptr i8, ptr %16, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i44.i, align 2
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %1, align 4
  %arrayidx18.i27 = getelementptr ptr, ptr %data, i32 18
  %22 = ptrtoint ptr %arrayidx18.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18.i27, align 4
  %tobool19.not.i28 = icmp eq ptr %23, null
  br i1 %tobool19.not.i28, label %if.end17.i.thread.if.then_crit_edge, label %if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipip_netlink_encap_parms.exit.thread

if.end17.i.thread.if.then_crit_edge:              ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ipip_netlink_encap_parms.exit.thread:             ; preds = %if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge, %if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge
  %24 = phi ptr [ %23, %if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge ], [ %18, %if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge ]
  %add.ptr.i.i45.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i45.i, align 2
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %2, align 2
  br label %if.then

ipip_netlink_encap_parms.exit:                    ; preds = %if.end17.i
  br i1 %ret.1.off0.i, label %ipip_netlink_encap_parms.exit.if.then_crit_edge, label %ipip_netlink_encap_parms.exit.if.end.i16_crit_edge

ipip_netlink_encap_parms.exit.if.end.i16_crit_edge: ; preds = %ipip_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i16

ipip_netlink_encap_parms.exit.if.then_crit_edge:  ; preds = %ipip_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ipip_netlink_encap_parms.exit.if.then_crit_edge, %ipip_netlink_encap_parms.exit.thread, %if.end17.i.thread.if.then_crit_edge
  %call2 = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup6_crit_edge, label %if.then.if.end.i16_crit_edge

if.then.if.end.i16_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i16

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup6

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %28 = call ptr @memset(ptr %p, i32 0, i32 52)
  %iph.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %29 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %protocol.i, align 1
  %30 = ptrtoint ptr %iph.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 69, ptr %iph.i, align 4
  %31 = ptrtoint ptr %collect_md to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %collect_md, align 1
  br label %ipip_netlink_parms.exit

if.end.i16:                                       ; preds = %if.then.if.end.i16_crit_edge, %ipip_netlink_encap_parms.exit.if.end.i16_crit_edge
  %collect_md21 = getelementptr i8, ptr %dev, i32 2480
  %32 = call ptr @memset(ptr %p, i32 0, i32 52)
  %iph.i22 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %protocol.i23 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %33 = ptrtoint ptr %protocol.i23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %protocol.i23, align 1
  %34 = ptrtoint ptr %iph.i22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 69, ptr %iph.i22, align 4
  %35 = ptrtoint ptr %collect_md21 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %collect_md21, align 1
  %arrayidx.i15 = getelementptr ptr, ptr %data, i32 1
  %36 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i15, align 4
  %tobool6.not.i = icmp eq ptr %37, null
  br i1 %tobool6.not.i, label %if.end.i16.if.end9.i_crit_edge, label %if.then7.i

if.end.i16.if.end9.i_crit_edge:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i17 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i17, align 4
  %link.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 1
  %40 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %link.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i16.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr ptr, ptr %data, i32 2
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %42, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i108.i = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i108.i, align 4
  %saddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 8
  %45 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %saddr.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %arrayidx17.i = getelementptr ptr, ptr %data, i32 3
  %46 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %47, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then19.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i109.i = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i109.i, align 4
  %daddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %50 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %daddr.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end23.i_crit_edge
  %arrayidx24.i = getelementptr ptr, ptr %data, i32 4
  %51 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %52, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end36.i_crit_edge, label %if.then26.i

if.end23.i.if.end36.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.end23.i
  %add.ptr.i.i110.i = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i110.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i.i110.i, align 1
  %ttl.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %55 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ttl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool32.not.i = icmp eq i8 %54, 0
  br i1 %tobool32.not.i, label %if.then26.i.if.end36.i_crit_edge, label %if.then33.i

if.then26.i.if.end36.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %frag_off.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %56 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 16384, ptr %frag_off.i, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.then26.i.if.end36.i_crit_edge, %if.end23.i.if.end36.i_crit_edge
  %arrayidx37.i = getelementptr ptr, ptr %data, i32 5
  %57 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx37.i, align 4
  %tobool38.not.i = icmp eq ptr %58, null
  br i1 %tobool38.not.i, label %if.end36.i.if.end43.i_crit_edge, label %if.then39.i

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i111.i = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i111.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i.i111.i, align 1
  %tos.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %tos.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end43.i_crit_edge
  %arrayidx44.i = getelementptr ptr, ptr %data, i32 9
  %62 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx44.i, align 4
  %tobool45.not.i = icmp eq ptr %63, null
  br i1 %tobool45.not.i, label %if.end43.i.if.end51.i_crit_edge, label %if.then46.i

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i112.i = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i112.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i.i112.i, align 1
  %66 = ptrtoint ptr %protocol.i23 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %protocol.i23, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end51.i_crit_edge
  %arrayidx52.i = getelementptr ptr, ptr %data, i32 10
  %67 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx52.i, align 4
  %tobool53.not.i = icmp eq ptr %68, null
  br i1 %tobool53.not.i, label %if.end51.i.if.then57.i_crit_edge, label %lor.lhs.false.i

if.end51.i.if.then57.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.i

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %add.ptr.i.i113.i = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i113.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool56.not.i = icmp eq i8 %70, 0
  br i1 %tobool56.not.i, label %lor.lhs.false.i.if.end60.i_crit_edge, label %lor.lhs.false.i.if.then57.i_crit_edge

lor.lhs.false.i.if.then57.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.i

lor.lhs.false.i.if.end60.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then57.i:                                      ; preds = %lor.lhs.false.i.if.then57.i_crit_edge, %if.end51.i.if.then57.i_crit_edge
  %frag_off59.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %71 = ptrtoint ptr %frag_off59.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 16384, ptr %frag_off59.i, align 2
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %lor.lhs.false.i.if.end60.i_crit_edge
  %arrayidx61.i = getelementptr ptr, ptr %data, i32 19
  %72 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx61.i, align 4
  %tobool62.not.i = icmp eq ptr %73, null
  br i1 %tobool62.not.i, label %if.end60.i.if.end64.i_crit_edge, label %if.then63.i

if.end60.i.if.end64.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %collect_md21 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %collect_md21, align 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then63.i, %if.end60.i.if.end64.i_crit_edge
  %arrayidx65.i = getelementptr ptr, ptr %data, i32 20
  %75 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx65.i, align 4
  %tobool66.not.i = icmp eq ptr %76, null
  br i1 %tobool66.not.i, label %if.end64.i.ipip_netlink_parms.exit_crit_edge, label %if.then67.i

if.end64.i.ipip_netlink_parms.exit_crit_edge:     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipip_netlink_parms.exit

if.then67.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i114.i = getelementptr i8, ptr %76, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i114.i, align 4
  br label %ipip_netlink_parms.exit

ipip_netlink_parms.exit:                          ; preds = %if.then67.i, %if.end64.i.ipip_netlink_parms.exit_crit_edge, %if.end4
  %fwmark.0 = phi i32 [ 0, %if.end4 ], [ 0, %if.end64.i.ipip_netlink_parms.exit_crit_edge ], [ %78, %if.then67.i ]
  %call5 = call i32 @ip_tunnel_newlink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %fwmark.0) #9
  br label %cleanup6

cleanup6:                                         ; preds = %ipip_netlink_parms.exit, %if.then.cleanup6_crit_edge
  %retval.1 = phi i32 [ %call5, %ipip_netlink_parms.exit ], [ %call2, %if.then.cleanup6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  %p = alloca %struct.ip_tunnel_parm, align 4
  %ipencap = alloca %struct.ip_tunnel_encap, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap) #9
  %0 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap, i32 0, i32 3
  %fwmark1 = getelementptr i8, ptr %dev, i32 2476
  %3 = ptrtoint ptr %fwmark1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fwmark1, align 4
  %5 = ptrtoint ptr %ipencap to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %ipencap, align 8
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %tobool.not.i, label %ipip_netlink_parms.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %data, i32 15
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i, align 2
  %10 = ptrtoint ptr %ipencap to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %ipencap, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %11 = xor i1 %tobool2.not.i, true
  %arrayidx6.i = getelementptr ptr, ptr %data, i32 16
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i43.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i43.i, align 2
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %0, align 2
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %ret.1.off0.i = phi i1 [ true, %if.then8.i ], [ %11, %if.end5.i.if.end11.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 17
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i, label %if.end17.i, label %if.end17.i.thread

if.end17.i:                                       ; preds = %if.end11.i
  %arrayidx18.i = getelementptr ptr, ptr %data, i32 18
  %19 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i, label %ipip_netlink_encap_parms.exit, label %if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipip_netlink_encap_parms.exit.thread

if.end17.i.thread:                                ; preds = %if.end11.i
  %add.ptr.i.i44.i = getelementptr i8, ptr %18, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i44.i, align 2
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %1, align 4
  %arrayidx18.i46 = getelementptr ptr, ptr %data, i32 18
  %24 = ptrtoint ptr %arrayidx18.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx18.i46, align 4
  %tobool19.not.i47 = icmp eq ptr %25, null
  br i1 %tobool19.not.i47, label %if.end17.i.thread.if.then_crit_edge, label %if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge

if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge: ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipip_netlink_encap_parms.exit.thread

if.end17.i.thread.if.then_crit_edge:              ; preds = %if.end17.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

ipip_netlink_encap_parms.exit.thread:             ; preds = %if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge, %if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge
  %26 = phi ptr [ %25, %if.end17.i.thread.ipip_netlink_encap_parms.exit.thread_crit_edge ], [ %20, %if.end17.i.ipip_netlink_encap_parms.exit.thread_crit_edge ]
  %add.ptr.i.i45.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i45.i, align 2
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %2, align 2
  br label %if.then

ipip_netlink_encap_parms.exit:                    ; preds = %if.end17.i
  br i1 %ret.1.off0.i, label %ipip_netlink_encap_parms.exit.if.then_crit_edge, label %ipip_netlink_encap_parms.exit.if.end.i33_crit_edge

ipip_netlink_encap_parms.exit.if.end.i33_crit_edge: ; preds = %ipip_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i33

ipip_netlink_encap_parms.exit.if.then_crit_edge:  ; preds = %ipip_netlink_encap_parms.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %ipip_netlink_encap_parms.exit.if.then_crit_edge, %ipip_netlink_encap_parms.exit.thread, %if.end17.i.thread.if.then_crit_edge
  %call3 = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup20_crit_edge, label %if.then.if.end.i33_crit_edge

if.then.if.end.i33_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i33

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

ipip_netlink_parms.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %30 = call ptr @memset(ptr %p, i32 0, i32 52)
  %iph.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %31 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %protocol.i, align 1
  %32 = ptrtoint ptr %iph.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 69, ptr %iph.i, align 4
  br label %if.end7

if.end.i33:                                       ; preds = %if.then.if.end.i33_crit_edge, %ipip_netlink_encap_parms.exit.if.end.i33_crit_edge
  %33 = call ptr @memset(ptr %p, i32 0, i32 52)
  %iph.i38 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %protocol.i39 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %34 = ptrtoint ptr %protocol.i39 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %protocol.i39, align 1
  %35 = ptrtoint ptr %iph.i38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 69, ptr %iph.i38, align 4
  %arrayidx.i32 = getelementptr ptr, ptr %data, i32 1
  %36 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i32, align 4
  %tobool6.not.i = icmp eq ptr %37, null
  br i1 %tobool6.not.i, label %if.end.i33.if.end9.i_crit_edge, label %if.then7.i

if.end.i33.if.end9.i_crit_edge:                   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i34 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i34, align 4
  %link.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 1
  %40 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %link.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i33.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr ptr, ptr %data, i32 2
  %41 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i = icmp eq ptr %42, null
  br i1 %tobool11.not.i, label %if.end9.i.if.end16.i_crit_edge, label %if.then12.i

if.end9.i.if.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i108.i = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i108.i, align 4
  %saddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 8
  %45 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %saddr.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end16.i_crit_edge
  %arrayidx17.i = getelementptr ptr, ptr %data, i32 3
  %46 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx17.i, align 4
  %tobool18.not.i = icmp eq ptr %47, null
  br i1 %tobool18.not.i, label %if.end16.i.if.end23.i_crit_edge, label %if.then19.i

if.end16.i.if.end23.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i109.i = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i109.i, align 4
  %daddr.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %50 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %daddr.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end23.i_crit_edge
  %arrayidx24.i = getelementptr ptr, ptr %data, i32 4
  %51 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %52, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end36.i_crit_edge, label %if.then26.i

if.end23.i.if.end36.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.end23.i
  %add.ptr.i.i110.i = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i110.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i.i110.i, align 1
  %ttl.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 5
  %55 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %ttl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool32.not.i = icmp eq i8 %54, 0
  br i1 %tobool32.not.i, label %if.then26.i.if.end36.i_crit_edge, label %if.then33.i

if.then26.i.if.end36.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %frag_off.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %56 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 16384, ptr %frag_off.i, align 2
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.then26.i.if.end36.i_crit_edge, %if.end23.i.if.end36.i_crit_edge
  %arrayidx37.i = getelementptr ptr, ptr %data, i32 5
  %57 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx37.i, align 4
  %tobool38.not.i = icmp eq ptr %58, null
  br i1 %tobool38.not.i, label %if.end36.i.if.end43.i_crit_edge, label %if.then39.i

if.end36.i.if.end43.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i111.i = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i111.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i.i111.i, align 1
  %tos.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %tos.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %if.end36.i.if.end43.i_crit_edge
  %arrayidx44.i = getelementptr ptr, ptr %data, i32 9
  %62 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx44.i, align 4
  %tobool45.not.i = icmp eq ptr %63, null
  br i1 %tobool45.not.i, label %if.end43.i.if.end51.i_crit_edge, label %if.then46.i

if.end43.i.if.end51.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i112.i = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i112.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i.i112.i, align 1
  %66 = ptrtoint ptr %protocol.i39 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %protocol.i39, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end51.i_crit_edge
  %arrayidx52.i = getelementptr ptr, ptr %data, i32 10
  %67 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx52.i, align 4
  %tobool53.not.i = icmp eq ptr %68, null
  br i1 %tobool53.not.i, label %if.end51.i.if.then57.i_crit_edge, label %lor.lhs.false.i

if.end51.i.if.then57.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.i

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %add.ptr.i.i113.i = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i113.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i113.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool56.not.i = icmp eq i8 %70, 0
  br i1 %tobool56.not.i, label %lor.lhs.false.i.if.end60.i_crit_edge, label %lor.lhs.false.i.if.then57.i_crit_edge

lor.lhs.false.i.if.then57.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.i

lor.lhs.false.i.if.end60.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then57.i:                                      ; preds = %lor.lhs.false.i.if.then57.i_crit_edge, %if.end51.i.if.then57.i_crit_edge
  %frag_off59.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %71 = ptrtoint ptr %frag_off59.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 16384, ptr %frag_off59.i, align 2
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then57.i, %lor.lhs.false.i.if.end60.i_crit_edge
  %arrayidx61.i = getelementptr ptr, ptr %data, i32 19
  %72 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx61.i, align 4
  %tobool62.not.i.not = icmp eq ptr %73, null
  %arrayidx65.i = getelementptr ptr, ptr %data, i32 20
  %74 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx65.i, align 4
  %tobool66.not.i = icmp eq ptr %75, null
  br i1 %tobool66.not.i, label %if.end60.i.ipip_netlink_parms.exit_crit_edge, label %if.then67.i

if.end60.i.ipip_netlink_parms.exit_crit_edge:     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipip_netlink_parms.exit

if.then67.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i114.i = getelementptr i8, ptr %75, i32 4
  %76 = ptrtoint ptr %add.ptr.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i.i114.i, align 4
  br label %ipip_netlink_parms.exit

ipip_netlink_parms.exit:                          ; preds = %if.then67.i, %if.end60.i.ipip_netlink_parms.exit_crit_edge
  %fwmark.0 = phi i32 [ %4, %if.end60.i.ipip_netlink_parms.exit_crit_edge ], [ %77, %if.then67.i ]
  br i1 %tobool62.not.i.not, label %ipip_netlink_parms.exit.if.end7_crit_edge, label %ipip_netlink_parms.exit.cleanup20_crit_edge

ipip_netlink_parms.exit.cleanup20_crit_edge:      ; preds = %ipip_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

ipip_netlink_parms.exit.if.end7_crit_edge:        ; preds = %ipip_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %ipip_netlink_parms.exit.if.end7_crit_edge, %ipip_netlink_parms.exit.thread
  %fwmark.044 = phi i32 [ %4, %ipip_netlink_parms.exit.thread ], [ %fwmark.0, %ipip_netlink_parms.exit.if.end7_crit_edge ]
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags, align 8
  %and = and i32 %79, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %daddr15 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 9
  %80 = ptrtoint ptr %daddr15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %daddr15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool16.not = icmp eq i32 %81, 0
  br i1 %tobool8.not, label %land.lhs.true13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  br i1 %tobool16.not, label %land.lhs.true.cleanup20_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true.cleanup20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

land.lhs.true13:                                  ; preds = %if.end7
  br i1 %tobool16.not, label %land.lhs.true13.if.end18_crit_edge, label %land.lhs.true13.cleanup20_crit_edge

land.lhs.true13.cleanup20_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

land.lhs.true13.if.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true13.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge
  %call19 = call i32 @ip_tunnel_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %fwmark.044) #9
  br label %cleanup20

cleanup20:                                        ; preds = %if.end18, %land.lhs.true13.cleanup20_crit_edge, %land.lhs.true.cleanup20_crit_edge, %ipip_netlink_parms.exit.cleanup20_crit_edge, %if.then.cleanup20_crit_edge
  %retval.1 = phi i32 [ %call19, %if.end18 ], [ %call3, %if.then.cleanup20_crit_edge ], [ -22, %ipip_netlink_parms.exit.cleanup20_crit_edge ], [ -22, %land.lhs.true13.cleanup20_crit_edge ], [ -22, %land.lhs.true.cleanup20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_dellink(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipip_get_size(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 100
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %tmp.i96 = alloca i16, align 2
  %tmp.i94 = alloca i16, align 2
  %tmp.i92 = alloca i16, align 2
  %tmp.i90 = alloca i16, align 2
  %tmp.i88 = alloca i32, align 4
  %tmp.i86 = alloca i8, align 1
  %tmp.i84 = alloca i8, align 1
  %tmp.i82 = alloca i8, align 1
  %tmp.i80 = alloca i8, align 1
  %tmp.i.i78 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr i8, ptr %dev, i32 2380
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %3 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %saddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i78) #9
  %8 = ptrtoint ptr %tmp.i.i78 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i.i78, align 4
  %call.i.i79 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i78) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool7.not = icmp eq i32 %call.i.i79, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %ttl = getelementptr i8, ptr %dev, i32 2404
  %9 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ttl, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i80) #9
  %11 = ptrtoint ptr %tmp.i80 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i80, align 1
  %call.i81 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i80) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool11.not = icmp eq i32 %call.i81, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.nla_put_failure_crit_edge

lor.lhs.false8.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %tos = getelementptr i8, ptr %dev, i32 2397
  %12 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tos, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i82) #9
  %14 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i82, align 1
  %call.i83 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i82) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool15.not = icmp eq i32 %call.i83, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false12.nla_put_failure_crit_edge

lor.lhs.false12.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %protocol = getelementptr i8, ptr %dev, i32 2405
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i84) #9
  %17 = ptrtoint ptr %tmp.i84 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i84, align 1
  %call.i85 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i84) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool19.not = icmp eq i32 %call.i85, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false16.nla_put_failure_crit_edge

lor.lhs.false16.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %frag_off = getelementptr i8, ptr %dev, i32 2402
  %18 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_off, align 2
  %20 = lshr i16 %19, 14
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i86) #9
  %23 = ptrtoint ptr %tmp.i86 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tmp.i86, align 1
  %call.i87 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i86) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool26.not = icmp eq i32 %call.i87, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %lor.lhs.false20.nla_put_failure_crit_edge

lor.lhs.false20.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false27:                                  ; preds = %lor.lhs.false20
  %fwmark = getelementptr i8, ptr %dev, i32 2476
  %24 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i88) #9
  %26 = ptrtoint ptr %tmp.i88 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i88, align 4
  %call.i89 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i88) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool29.not = icmp eq i32 %call.i89, 0
  br i1 %tobool29.not, label %if.end, label %lor.lhs.false27.nla_put_failure_crit_edge

lor.lhs.false27.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end:                                           ; preds = %lor.lhs.false27
  %encap = getelementptr i8, ptr %dev, i32 2428
  %27 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %encap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i90) #9
  %29 = ptrtoint ptr %tmp.i90 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %tmp.i90, align 2
  %call.i91 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i90) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool31.not = icmp eq i32 %call.i91, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false32:                                  ; preds = %if.end
  %sport = getelementptr i8, ptr %dev, i32 2432
  %30 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sport, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i92) #9
  %32 = ptrtoint ptr %tmp.i92 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %tmp.i92, align 2
  %call.i93 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i92) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool35.not = icmp eq i32 %call.i93, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %lor.lhs.false32.nla_put_failure_crit_edge

lor.lhs.false32.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %dport = getelementptr i8, ptr %dev, i32 2434
  %33 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dport, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i94) #9
  %35 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %tmp.i94, align 2
  %call.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 2, ptr noundef nonnull %tmp.i94) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool39.not = icmp eq i32 %call.i95, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %lor.lhs.false36.nla_put_failure_crit_edge

lor.lhs.false36.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %flags = getelementptr i8, ptr %dev, i32 2430
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i96) #9
  %38 = ptrtoint ptr %tmp.i96 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %tmp.i96, align 2
  %call.i97 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %tmp.i96) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool43.not = icmp eq i32 %call.i97, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false40.nla_put_failure_crit_edge

lor.lhs.false40.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end45:                                         ; preds = %lor.lhs.false40
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %39 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %collect_md, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool46.not = icmp eq i8 %40, 0
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.then47

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.end45
  %call.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool49.not = icmp eq i32 %call.i98, 0
  br i1 %tobool49.not, label %if.then47.cleanup_crit_edge, label %if.then47.nla_put_failure_crit_edge

if.then47.nla_put_failure_crit_edge:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then47.nla_put_failure_crit_edge, %lor.lhs.false40.nla_put_failure_crit_edge, %lor.lhs.false36.nla_put_failure_crit_edge, %lor.lhs.false32.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %lor.lhs.false27.nla_put_failure_crit_edge, %lor.lhs.false20.nla_put_failure_crit_edge, %lor.lhs.false16.nla_put_failure_crit_edge, %lor.lhs.false12.nla_put_failure_crit_edge, %lor.lhs.false8.nla_put_failure_crit_edge, %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.then47.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.then47.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_get_link_net(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_tunnel_init(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr i8, ptr %dev, i32 2408
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %saddr, i32 noundef 4) #9
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr, align 4
  %2 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %broadcast, align 4
  %tun_hlen = getelementptr i8, ptr %dev, i32 2344
  %3 = ptrtoint ptr %tun_hlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tun_hlen, align 4
  %encap_hlen = getelementptr i8, ptr %dev, i32 2420
  %4 = ptrtoint ptr %encap_hlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encap_hlen, align 4
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %6 = ptrtoint ptr %hlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %hlen, align 4
  %call4 = tail call i32 @ip_tunnel_init(ptr noundef %dev) #9
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_uninit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iph = getelementptr i8, ptr %dev, i32 2396
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %switch.selectcmp.i = icmp eq i16 %1, 2048
  %switch.select.i = select i1 %switch.selectcmp.i, i32 20, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %1)
  %switch.selectcmp3.i = icmp eq i16 %1, -31011
  %switch.select4.i = select i1 %switch.selectcmp3.i, i32 40, i32 %switch.select.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %switch.select4.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.tx_error_crit_edge, label %pskb_inet_may_pull.exit, !prof !86

if.end.i.i.i.tx_error_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #9
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.tx_error_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

pskb_inet_may_pull.exit.tx_error_crit_edge:       ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol.i, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %13, label %if.end.tx_error_crit_edge [
    i16 2048, label %if.end.sw.epilog_crit_edge
    i16 -30649, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.tx_error_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %ipproto.0 = phi i8 [ -119, %sw.bb2 ], [ 4, %if.end.sw.epilog_crit_edge ]
  %protocol3 = getelementptr i8, ptr %dev, i32 2405
  %15 = ptrtoint ptr %protocol3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %ipproto.0)
  %cmp.not = icmp eq i8 %16, %ipproto.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp9.not = icmp eq i8 %16, 0
  %or.cond = or i1 %cmp.not, %cmp9.not
  br i1 %or.cond, label %if.end12, label %sw.epilog.tx_error_crit_edge

sw.epilog.tx_error_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error

if.end12:                                         ; preds = %sw.epilog
  %call13 = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end12.tx_error_crit_edge

if.end12.tx_error_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error

if.end15:                                         ; preds = %if.end12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %ipproto.0, ptr %17, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %19 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4194304
  store i32 %bf.set.i, ptr %inner_protocol_type.i, align 2
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %20 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %collect_md, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ip_md_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext %ipproto.0, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %iph, i8 noundef zeroext %ipproto.0) #9
  br label %cleanup

tx_error:                                         ; preds = %if.end12.tx_error_crit_edge, %sw.epilog.tx_error_crit_edge, %if.end.tx_error_crit_edge, %pskb_inet_may_pull.exit.tx_error_crit_edge, %if.end.i.i.i.tx_error_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %22 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %tx_error, %if.else, %if.then17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_get_iflink(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %cmd, label %entry.if.end16_crit_edge [
    i32 35313, label %entry.if.then_crit_edge
    i32 35315, label %entry.if.then_crit_edge29
  ]

entry.if.then_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge29
  %iph = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %1 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %iph, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp2.not = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp2.not, label %lor.lhs.false4, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false4:                                   ; preds = %if.then
  %protocol = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %3, label %lor.lhs.false4.return_crit_edge [
    i8 0, label %lor.lhs.false4.lor.lhs.false6_crit_edge
    i8 4, label %lor.lhs.false4.lor.lhs.false6_crit_edge30
    i8 -119, label %lor.lhs.false4.lor.lhs.false6_crit_edge31
  ]

lor.lhs.false4.lor.lhs.false6_crit_edge31:        ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false6

lor.lhs.false4.lor.lhs.false6_crit_edge30:        ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false6

lor.lhs.false4.lor.lhs.false6_crit_edge:          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false6

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false4.lor.lhs.false6_crit_edge, %lor.lhs.false4.lor.lhs.false6_crit_edge30, %lor.lhs.false4.lor.lhs.false6_crit_edge31
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp10.not = icmp eq i8 %bf.clear, 5
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false6.return_crit_edge

lor.lhs.false6.return_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %frag_off = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %5 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %frag_off, align 2
  %7 = and i16 %6, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %lor.lhs.false12.if.end16_crit_edge, label %lor.lhs.false12.return_crit_edge

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false12.if.end16_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %lor.lhs.false12.if.end16_crit_edge, %entry.if.end16_crit_edge
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %8 = call ptr @memset(ptr %i_flags, i32 0, i32 12)
  %call17 = tail call i32 @ip_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #9
  br label %return

return:                                           ; preds = %if.end16, %lor.lhs.false12.return_crit_edge, %lor.lhs.false6.return_crit_edge, %lor.lhs.false4.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -22, %lor.lhs.false12.return_crit_edge ], [ -22, %lor.lhs.false6.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %lor.lhs.false4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_md_tunnel_xmit(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_ctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_newlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_changelink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_rcv(ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ipip_tunnel_rcv(ptr noundef %skb, i8 noundef zeroext 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_err(ptr noundef %skb, i32 noundef %info) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr @ipip_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i, align 4
  %code5 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %code5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %code5, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 8
  %22 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saddr, align 4
  %call7 = tail call ptr @ip_tunnel_lookup(ptr noundef %call1, i32 noundef %19, i16 noundef zeroext 128, i32 noundef %21, i32 noundef %23, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %24 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %13, label %if.end.out_crit_edge [
    i8 3, label %sw.bb
    i8 11, label %sw.bb9
    i8 5, label %if.then23
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %if.end
  %25 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %15, label %sw.bb.if.end27_crit_edge [
    i8 5, label %sw.bb.out_crit_edge
    i8 4, label %if.then19
  ]

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not = icmp eq i8 %15, 0
  br i1 %cmp.not, label %sw.bb9.if.end27_crit_edge, label %sw.bb9.out_crit_edge

sw.bb9.out_crit_edge:                             ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb9.if.end27_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %link = getelementptr inbounds %struct.ip_tunnel, ptr %call7, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 6
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol, align 1
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %4, i32 noundef %info, i32 noundef %27, i8 noundef zeroext %29) #9
  br label %out

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %link25 = getelementptr inbounds %struct.ip_tunnel, ptr %call7, i32 0, i32 15, i32 1
  %30 = ptrtoint ptr %link25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %link25, align 4
  %protocol26 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 6
  %32 = ptrtoint ptr %protocol26 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %protocol26, align 1
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %4, i32 noundef %31, i8 noundef zeroext %33) #9
  br label %out

if.end27:                                         ; preds = %sw.bb9.if.end27_crit_edge, %sw.bb.if.end27_crit_edge
  %daddr30 = getelementptr inbounds %struct.ip_tunnel, ptr %call7, i32 0, i32 15, i32 6, i32 9
  %34 = ptrtoint ptr %daddr30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %daddr30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp31 = icmp eq i32 %35, 0
  br i1 %cmp31, label %if.end27.out_crit_edge, label %if.end34

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end34:                                         ; preds = %if.end27
  %ttl = getelementptr inbounds %struct.ip_tunnel, ptr %call7, i32 0, i32 15, i32 6, i32 5
  %36 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp38 = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %13)
  %cmp41 = icmp eq i8 %13, 11
  %or.cond75 = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond75, label %if.end34.out_crit_edge, label %if.end44

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end44:                                         ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %err_time = getelementptr inbounds %struct.ip_tunnel, ptr %call7, i32 0, i32 5
  %39 = ptrtoint ptr %err_time to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err_time, align 4
  %add.neg = add i32 %38, -3000
  %sub = sub i32 %add.neg, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp45 = icmp slt i32 %sub, 0
  %err_count = getelementptr inbounds %struct.ip_tunnel, ptr %call7, i32 0, i32 6
  br i1 %cmp45, label %if.then47, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err_count, align 4
  %inc = add i32 %42, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end44.if.end49_crit_edge
  %.sink = phi i32 [ %inc, %if.then47 ], [ 1, %if.end44.if.end49_crit_edge ]
  %43 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %err_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %45 = ptrtoint ptr %err_time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %err_time, align 4
  br label %out

out:                                              ; preds = %if.end49, %if.end34.out_crit_edge, %if.end27.out_crit_edge, %if.then23, %if.then19, %sw.bb9.out_crit_edge, %sw.bb.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.then19 ], [ 0, %if.then23 ], [ 0, %if.end49 ], [ 0, %sw.bb9.out_crit_edge ], [ 0, %sw.bb.out_crit_edge ], [ -2, %entry.out_crit_edge ], [ -2, %if.end27.out_crit_edge ], [ 0, %if.end34.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipip_tunnel_rcv(ptr noundef %skb, i8 noundef zeroext %ipproto) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr @ipip_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr, align 4
  %call3 = tail call ptr @ip_tunnel_lookup(ptr noundef %call1, i32 noundef %13, i16 noundef zeroext 128, i32 noundef %15, i32 noundef %17, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup37_crit_edge, label %if.then

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 15, i32 6, i32 6
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %ipproto)
  %cmp.not = icmp eq i8 %19, %ipproto
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp11.not = icmp eq i8 %19, 0
  %or.cond = or i1 %cmp.not, %cmp11.not
  br i1 %or.cond, label %if.end, label %if.then.drop_crit_edge

if.then.drop_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 8
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 127
  %22 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %policy_default.i.i.i.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 46, i32 23
  %24 = ptrtoint ptr %policy_default.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %policy_default.i.i.i.i, align 16
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.i.i.i.i = icmp eq i8 %26, 0
  br i1 %tobool1.i.i.i.i, label %if.then5.i.i.i, label %if.else.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end
  %policy_count.i.i.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 46, i32 13
  %27 = ptrtoint ptr %policy_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %policy_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true8.i.i.i, label %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge

if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.then5.i.i.i
  %active_extensions.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %29 = ptrtoint ptr %active_extensions.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %active_extensions.i.i.i.i.i, align 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool10.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool10.not.i.i.i, label %land.lhs.true8.i.i.i.if.end17_crit_edge, label %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge

land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i.i

land.lhs.true8.i.i.i.if.end17_crit_edge:          ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true8.i.i.i.lor.lhs.false.i.i.i_crit_edge, %if.then5.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, !prof !86

land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exitthread-pre-split.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exitthread-pre-split.i.i.i

skb_dst.exitthread-pre-split.i.i.i:               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exitthread-pre-split.i.i.i_crit_edge
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i.i.i = load i32, ptr %32, align 8
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %skb_dst.exitthread-pre-split.i.i.i, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge
  %36 = phi i32 [ %.pr.i.i.i, %skb_dst.exitthread-pre-split.i.i.i ], [ %34, %lor.lhs.false.i.i.i.skb_dst.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %tobool12.not.i.i.i = icmp ult i32 %36, 2
  br i1 %tobool12.not.i.i.i, label %skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge, label %land.lhs.true13.i.i.i

skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm4_policy_check.exit

land.lhs.true13.i.i.i:                            ; preds = %skb_dst.exit.i.i.i
  %and.i2.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge, label %land.lhs.true.i6.i.i.i

land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit12.i.i.i

land.lhs.true.i6.i.i.i:                           ; preds = %land.lhs.true13.i.i.i
  %call.i4.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i.i)
  %tobool1.not.i5.i.i.i = icmp eq i32 %call.i4.i.i.i, 0
  br i1 %tobool1.not.i5.i.i.i, label %land.rhs.i9.i.i.i, label %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge

land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit12.i.i.i

land.rhs.i9.i.i.i:                                ; preds = %land.lhs.true.i6.i.i.i
  %call2.i7.i.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7.i.i.i)
  %tobool3.not.i8.i.i.i = icmp eq i32 %call2.i7.i.i.i, 0
  br i1 %tobool3.not.i8.i.i.i, label %do.end.i10.i.i.i, label %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, !prof !86

land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge: ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit12.i.i.i

do.end.i10.i.i.i:                                 ; preds = %land.rhs.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit12.i.i.i

skb_dst.exit12.i.i.i:                             ; preds = %do.end.i10.i.i.i, %land.rhs.i9.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true.i6.i.i.i.skb_dst.exit12.i.i.i_crit_edge, %land.lhs.true13.i.i.i.skb_dst.exit12.i.i.i_crit_edge
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %32, align 8
  %and25.i11.i.i.i = and i32 %38, -2
  %39 = inttoptr i32 %and25.i11.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i.i, align 4
  %42 = and i16 %41, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool16.not.i.i.i = icmp eq i16 %42, 0
  br i1 %tobool16.not.i.i.i, label %skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge, label %skb_dst.exit12.i.i.i.if.end17_crit_edge

skb_dst.exit12.i.i.i.if.end17_crit_edge:          ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm4_policy_check.exit

if.else.i.i.i:                                    ; preds = %if.end
  %43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %and.i13.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge, label %land.lhs.true.i17.i.i.i

if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit23.i.i.i

land.lhs.true.i17.i.i.i:                          ; preds = %if.else.i.i.i
  %call.i15.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i.i.i)
  %tobool1.not.i16.i.i.i = icmp eq i32 %call.i15.i.i.i, 0
  br i1 %tobool1.not.i16.i.i.i, label %land.rhs.i20.i.i.i, label %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge

land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit23thread-pre-split.i.i.i

land.rhs.i20.i.i.i:                               ; preds = %land.lhs.true.i17.i.i.i
  %call2.i18.i.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18.i.i.i)
  %tobool3.not.i19.i.i.i = icmp eq i32 %call2.i18.i.i.i, 0
  br i1 %tobool3.not.i19.i.i.i, label %do.end.i21.i.i.i, label %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, !prof !86

land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge: ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit23thread-pre-split.i.i.i

do.end.i21.i.i.i:                                 ; preds = %land.rhs.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit23thread-pre-split.i.i.i

skb_dst.exit23thread-pre-split.i.i.i:             ; preds = %do.end.i21.i.i.i, %land.rhs.i20.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge, %land.lhs.true.i17.i.i.i.skb_dst.exit23thread-pre-split.i.i.i_crit_edge
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr35.i.i.i = load i32, ptr %43, align 8
  br label %skb_dst.exit23.i.i.i

skb_dst.exit23.i.i.i:                             ; preds = %skb_dst.exit23thread-pre-split.i.i.i, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge
  %47 = phi i32 [ %.pr35.i.i.i, %skb_dst.exit23thread-pre-split.i.i.i ], [ %45, %if.else.i.i.i.skb_dst.exit23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %tobool21.not.i.i.i = icmp ult i32 %47, 2
  br i1 %tobool21.not.i.i.i, label %skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge, label %land.lhs.true22.i.i.i

skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm4_policy_check.exit

land.lhs.true22.i.i.i:                            ; preds = %skb_dst.exit23.i.i.i
  %and.i24.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i.i)
  %tobool.not.i25.i.i.i = icmp eq i32 %and.i24.i.i.i, 0
  br i1 %tobool.not.i25.i.i.i, label %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge, label %land.lhs.true.i28.i.i.i

land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit34.i.i.i

land.lhs.true.i28.i.i.i:                          ; preds = %land.lhs.true22.i.i.i
  %call.i26.i.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool1.not.i27.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool1.not.i27.i.i.i, label %land.rhs.i31.i.i.i, label %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge

land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.lhs.true.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit34.i.i.i

land.rhs.i31.i.i.i:                               ; preds = %land.lhs.true.i28.i.i.i
  %call2.i29.i.i.i = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29.i.i.i)
  %tobool3.not.i30.i.i.i = icmp eq i32 %call2.i29.i.i.i, 0
  br i1 %tobool3.not.i30.i.i.i, label %do.end.i32.i.i.i, label %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, !prof !86

land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge: ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst.exit34.i.i.i

do.end.i32.i.i.i:                                 ; preds = %land.rhs.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst.exit34.i.i.i

skb_dst.exit34.i.i.i:                             ; preds = %do.end.i32.i.i.i, %land.rhs.i31.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true.i28.i.i.i.skb_dst.exit34.i.i.i_crit_edge, %land.lhs.true22.i.i.i.skb_dst.exit34.i.i.i_crit_edge
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %43, align 8
  %and25.i33.i.i.i = and i32 %49, -2
  %50 = inttoptr i32 %and25.i33.i.i.i to ptr
  %flags24.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %flags24.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags24.i.i.i, align 4
  %53 = and i16 %52, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool27.not.i.i.i = icmp eq i16 %53, 0
  br i1 %tobool27.not.i.i.i, label %skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge, label %skb_dst.exit34.i.i.i.if.end17_crit_edge

skb_dst.exit34.i.i.i.if.end17_crit_edge:          ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge: ; preds = %skb_dst.exit34.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm4_policy_check.exit

xfrm4_policy_check.exit:                          ; preds = %skb_dst.exit34.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit23.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit12.i.i.i.xfrm4_policy_check.exit_crit_edge, %skb_dst.exit.i.i.i.xfrm4_policy_check.exit_crit_edge
  %call30.i.i.i = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %skb, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.i.i.i.not = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.i.i.i.not, label %xfrm4_policy_check.exit.drop_crit_edge, label %xfrm4_policy_check.exit.if.end17_crit_edge

xfrm4_policy_check.exit.if.end17_crit_edge:       ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

xfrm4_policy_check.exit.drop_crit_edge:           ; preds = %xfrm4_policy_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end17:                                         ; preds = %xfrm4_policy_check.exit.if.end17_crit_edge, %skb_dst.exit34.i.i.i.if.end17_crit_edge, %skb_dst.exit12.i.i.i.if.end17_crit_edge, %land.lhs.true8.i.i.i.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %ipproto)
  %cmp19 = icmp eq i8 %ipproto, -119
  %mplsip_tpi.ipip_tpi = select i1 %cmp19, ptr @mplsip_tpi, ptr @ipip_tpi
  %54 = select i1 %cmp19, i16 -30649, i16 2048
  %call.i = tail call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef 0, i16 noundef zeroext %54, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end17.drop_crit_edge

if.end17.drop_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end26:                                         ; preds = %if.end17
  %collect_md = getelementptr inbounds %struct.ip_tunnel, ptr %call3, i32 0, i32 26
  %55 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %collect_md, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool27.not = icmp eq i8 %56, 0
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  %57 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i, align 8
  %59 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %60 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %61 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %daddr.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %tos.i, align 1
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ttl.i, align 4
  %call.i.i.i = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then28.cleanup37_crit_edge, label %ip_tun_rx_dst.exit

if.then28.cleanup37_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

ip_tun_rx_dst.exit:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %options_len.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 2
  %69 = ptrtoint ptr %options_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %options_len.i.i.i, align 8
  %mode.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 3
  %70 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %mode.i.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %u.i.i, align 8
  %u.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %62, ptr %u.i.i.i, align 8
  %dst.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %64, ptr %dst.i.i.i, align 4
  %add.ptr.i.i1.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %74 = call ptr @memset(ptr %add.ptr.i.i1.i, i32 0, i32 24)
  %tos3.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %75 = ptrtoint ptr %tos3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %66, ptr %tos3.i.i.i, align 2
  %ttl4.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %76 = ptrtoint ptr %ttl4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %68, ptr %ttl4.i.i.i, align 1
  %label5.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %tun_flags6.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %tun_flags6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %tun_flags6.i.i.i, align 8
  %78 = call ptr @memset(ptr %label5.i.i.i, i32 0, i32 12)
  br label %if.end33

if.end33:                                         ; preds = %ip_tun_rx_dst.exit, %if.end26.if.end33_crit_edge
  %tun_dst.0 = phi ptr [ %call.i.i.i, %ip_tun_rx_dst.exit ], [ null, %if.end26.if.end33_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %81 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %82 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %83 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %84 = load i8, ptr @log_ecn_error, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool34 = icmp ne i8 %84, 0
  %call35 = tail call i32 @ip_tunnel_rcv(ptr noundef nonnull %call3, ptr noundef %skb, ptr noundef nonnull %mplsip_tpi.ipip_tpi, ptr noundef %tun_dst.0, i1 noundef zeroext %tobool34) #9
  br label %cleanup37

drop:                                             ; preds = %if.end17.drop_crit_edge, %xfrm4_policy_check.exit.drop_crit_edge, %if.then.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup37

cleanup37:                                        ; preds = %drop, %if.end33, %if.then28.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.1 = phi i32 [ 0, %drop ], [ -1, %entry.cleanup37_crit_edge ], [ %call35, %if.end33 ], [ 0, %if.then28.cleanup37_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.7) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %8 = tail call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mplsip_rcv(ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ipip_tunnel_rcv(ptr noundef %skb, i8 noundef zeroext -119)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipip_init_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipip_net_id, align 4
  %call = tail call i32 @ip_tunnel_init_net(ptr noundef %net, i32 noundef %0, ptr noundef nonnull @ipip_link_ops, ptr noundef nonnull @.str.12) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipip_exit_batch_net(ptr noundef %list_net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipip_net_id, align 4
  tail call void @ip_tunnel_delete_nets(ptr noundef %list_net, i32 noundef %0, ptr noundef nonnull @ipip_link_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_init_net(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_delete_nets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm4_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !16, !18, !20, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__param_log_ecn_error, !1, !"__param_log_ecn_error", i1 false, i1 false}
!1 = !{!"../net/ipv4/ipip.c", i32 116, i32 1}
!2 = !{ptr @__UNIQUE_ID_log_ecn_errortype591, !1, !"__UNIQUE_ID_log_ecn_errortype591", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log_ecn_error592, !4, !"__UNIQUE_ID_log_ecn_error592", i1 false, i1 false}
!4 = !{!"../net/ipv4/ipip.c", i32 117, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/ipv4/ipip.c", i32 706, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ipip_fini._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ipip_fini._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @ipip_fini._entry.3, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../net/ipv4/ipip.c", i32 709, i32 3}
!13 = !{ptr @ipip_fini._entry_ptr.4, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_ipip__593_714_ipip_init6, !15, !"__initcall__kmod_ipip__593_714_ipip_init6", i1 false, i1 false}
!15 = !{!"../net/ipv4/ipip.c", i32 714, i32 1}
!16 = !{ptr @__exitcall_ipip_fini, !17, !"__exitcall_ipip_fini", i1 false, i1 false}
!17 = !{!"../net/ipv4/ipip.c", i32 715, i32 1}
!18 = !{ptr @__UNIQUE_ID_file594, !19, !"__UNIQUE_ID_file594", i1 false, i1 false}
!19 = !{!"../net/ipv4/ipip.c", i32 716, i32 1}
!20 = !{ptr @__UNIQUE_ID_license595, !19, !"__UNIQUE_ID_license595", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias596, !22, !"__UNIQUE_ID_alias596", i1 false, i1 false}
!22 = !{!"../net/ipv4/ipip.c", i32 717, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias597, !24, !"__UNIQUE_ID_alias597", i1 false, i1 false}
!24 = !{!"../net/ipv4/ipip.c", i32 718, i32 1}
!25 = !{ptr @__param_str_log_ecn_error, !1, !"__param_str_log_ecn_error", i1 false, i1 false}
!26 = !{ptr @log_ecn_error, !27, !"log_ecn_error", i1 false, i1 false}
!27 = !{!"../net/ipv4/ipip.c", i32 115, i32 13}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv4/ipip.c", i32 617, i32 11}
!30 = !{ptr @ipip_link_ops, !31, !"ipip_link_ops", i1 false, i1 false}
!31 = !{!"../net/ipv4/ipip.c", i32 616, i32 29}
!32 = !{ptr @ipip_netdev_ops, !33, !"ipip_netdev_ops", i1 false, i1 false}
!33 = !{!"../net/ipv4/ipip.c", i32 346, i32 36}
!34 = !{ptr @ipip_net_id, !35, !"ipip_net_id", i1 false, i1 false}
!35 = !{!"../net/ipv4/ipip.c", i32 119, i32 21}
!36 = !{ptr @ipip_policy, !37, !"ipip_policy", i1 false, i1 false}
!37 = !{!"../net/ipv4/ipip.c", i32 600, i32 32}
!38 = !{ptr @ipip_handler, !39, !"ipip_handler", i1 false, i1 false}
!39 = !{!"../net/ipv4/ipip.c", i32 631, i32 27}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!53 = !{ptr @mplsip_tpi, !54, !"mplsip_tpi", i1 false, i1 false}
!54 = !{!"../net/ipv4/ipip.c", i32 206, i32 34}
!55 = !{ptr @ipip_tpi, !56, !"ipip_tpi", i1 false, i1 false}
!56 = !{!"../net/ipv4/ipip.c", i32 200, i32 34}
!57 = !{ptr @mplsip_handler, !58, !"mplsip_handler", i1 false, i1 false}
!58 = !{!"../net/ipv4/ipip.c", i32 638, i32 27}
!59 = !{ptr @ipip_net_ops, !60, !"ipip_net_ops", i1 false, i1 false}
!60 = !{!"../net/ipv4/ipip.c", i32 655, i32 33}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv4/ipip.c", i32 647, i32 62}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ipv4/ipip.c", i32 666, i32 2}
!65 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ipip_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ipip_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ipv4/ipip.c", i32 673, i32 3}
!70 = !{ptr @ipip_init._entry.15, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ipip_init._entry_ptr.17, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ipip_init._entry.18, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../net/ipv4/ipip.c", i32 679, i32 3}
!74 = !{ptr @ipip_init._entry_ptr.19, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 2149401535}
!88 = !{i64 2149401801}
