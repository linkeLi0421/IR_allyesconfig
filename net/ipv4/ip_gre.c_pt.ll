; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_gre.c_pt.bc'
source_filename = "../net/ipv4/ip_gre.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gretap_fb_dev_create\22, \22a\22\09"
module asm "\09.weak\09__crc_gretap_fb_dev_create\09\09\09\09"
module asm "\09.long\09__crc_gretap_fb_dev_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gretap_fb_dev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22gretap_fb_dev_create\22\09\09\09\09\09"
module asm "__kstrtabns_gretap_fb_dev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.137 }
%union.anon.137 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gre_protocol = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_tunnel_encap = type { i16, i16, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.143, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.158 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.159, i16, i8, i8, i32, i16, i16 }
%union.anon.159 = type { %struct.anon.161 }
%struct.anon.161 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.162 }
%union.anon.162 = type { %struct.ip_tunnel_info }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.gre_base_hdr = type { i16, i16 }
%struct.anon.60 = type { i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.erspan_metadata = type { i32, %union.anon.163 }
%union.anon.163 = type { %struct.erspan_md2 }
%struct.erspan_md2 = type { i32, i16, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.erspan_base_hdr = type { i32 }
%struct.tnl_ptk_info = type { i16, i16, i32, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.97, i32, %struct.list_head, ptr }
%union.anon.97 = type { %struct.in6_addr }
%struct.ip_tunnel = type { ptr, %struct.hlist_node, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i16, %struct.dst_cache, %struct.ip_tunnel_parm, i32, i32, i32, %struct.ip_tunnel_encap, %struct.ip_tunnel_6rd_parm, ptr, i32, i32, %struct.gro_cells, i32, i8, i8 }
%struct.ip_tunnel_6rd_parm = type { %struct.in6_addr, i32, i16, i16 }
%struct.gro_cells = type { ptr }
%struct.icmphdr = type { i8, i8, i16, %union.anon.165 }
%union.anon.165 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@__param_str_log_ecn_error = internal constant [21 x i8] c"ip_gre.log_ecn_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@log_ecn_error = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_log_ecn_error = internal constant %struct.kernel_param { ptr @__param_str_log_ecn_error, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.137 { ptr @log_ecn_error } }, section "__param", align 4
@__UNIQUE_ID_log_ecn_errortype595 = internal constant [35 x i8] c"ip_gre.parmtype=log_ecn_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_log_ecn_error596 = internal constant [66 x i8] c"ip_gre.parm=log_ecn_error:Log packets received with corrupted ECN\00", section ".modinfo", align 1
@ipgre_tap_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 180, ptr null, ptr @ipgre_tap_setup, i8 0, i32 24, ptr @ipgre_policy, ptr @ipgre_tap_validate, ptr @ipgre_newlink, ptr @ipgre_changelink, ptr @ip_tunnel_dellink, ptr @ipgre_get_size, ptr @ipgre_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@__kstrtab_gretap_fb_dev_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_gretap_fb_dev_create = external dso_local constant [0 x i8], align 1
@__ksymtab_gretap_fb_dev_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gretap_fb_dev_create to i32), ptr @__kstrtab_gretap_fb_dev_create, ptr @__kstrtabns_gretap_fb_dev_create }, section "___ksymtab_gpl+gretap_fb_dev_create", align 4
@ipgre_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.2, i32 180, ptr null, ptr @ipgre_tunnel_setup, i8 0, i32 24, ptr @ipgre_policy, ptr @ipgre_tunnel_validate, ptr @ipgre_newlink, ptr @ipgre_changelink, ptr @ip_tunnel_dellink, ptr @ipgre_get_size, ptr @ipgre_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@erspan_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str.5, i32 180, ptr null, ptr @erspan_setup, i8 0, i32 24, ptr @ipgre_policy, ptr @erspan_validate, ptr @erspan_newlink, ptr @erspan_changelink, ptr @ip_tunnel_dellink, ptr @ipgre_get_size, ptr @ipgre_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_link_net, ptr null, ptr null }, section ".data..read_mostly", align 4
@ipgre_protocol = internal constant { %struct.gre_protocol, [24 x i8] } { %struct.gre_protocol { ptr @gre_rcv, ptr @gre_err }, [24 x i8] zeroinitializer }, align 32
@ipgre_tap_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipgre_tap_init_net, ptr null, ptr null, ptr @ipgre_tap_exit_batch_net, ptr @gre_tap_net_id, i32 528 }, [32 x i8] zeroinitializer }, align 32
@ipgre_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipgre_init_net, ptr null, ptr null, ptr @ipgre_exit_batch_net, ptr @ipgre_net_id, i32 528 }, [32 x i8] zeroinitializer }, align 32
@erspan_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @erspan_init_net, ptr null, ptr null, ptr @erspan_exit_batch_net, ptr @erspan_net_id, i32 528 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_gre__599_1783_ipgre_init6 = internal global ptr @ipgre_init, section ".initcall6.init", align 4
@__exitcall_ipgre_fini = internal global ptr @ipgre_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file600 = internal constant [28 x i8] c"ip_gre.file=net/ipv4/ip_gre\00", section ".modinfo", align 1
@__UNIQUE_ID_license601 = internal constant [19 x i8] c"ip_gre.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias602 = internal constant [27 x i8] c"ip_gre.alias=rtnl-link-gre\00", section ".modinfo", align 1
@__UNIQUE_ID_alias603 = internal constant [30 x i8] c"ip_gre.alias=rtnl-link-gretap\00", section ".modinfo", align 1
@__UNIQUE_ID_alias604 = internal constant [30 x i8] c"ip_gre.alias=rtnl-link-erspan\00", section ".modinfo", align 1
@__UNIQUE_ID_alias605 = internal constant [25 x i8] c"ip_gre.alias=netdev-gre0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias606 = internal constant [28 x i8] c"ip_gre.alias=netdev-gretap0\00", section ".modinfo", align 1
@__UNIQUE_ID_alias607 = internal constant [28 x i8] c"ip_gre.alias=netdev-erspan0\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@ipgre_policy = internal constant { [25 x %struct.nla_policy], [56 x i8] } { [25 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@gre_tap_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @gre_tap_init, ptr @ip_tunnel_uninit, ptr null, ptr null, ptr @gre_tap_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr @gre_fill_metadata_dst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gre_tap_net_id = internal global i32 0, section ".data..read_mostly", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gre\00", [28 x i8] zeroinitializer }, align 32
@ipgre_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @ipgre_tunnel_init, ptr @ip_tunnel_uninit, ptr @ipgre_open, ptr @ipgre_close, ptr @ipgre_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_siocdevprivate, ptr null, ptr @ip_tunnel_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipgre_tunnel_ctl, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipgre_net_id = internal global i32 0, section ".data..read_mostly", align 4
@ipgre_header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @ipgre_header, ptr @ipgre_header_parse, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__in_dev_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"erspan\00", [25 x i8] zeroinitializer }, align 32
@erspan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @erspan_tunnel_init, ptr @ip_tunnel_uninit, ptr null, ptr null, ptr @erspan_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_get_iflink, ptr @gre_fill_metadata_dst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@erspan_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gretap0\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"erspan0\00", [24 x i8] zeroinitializer }, align 32
@ipgre_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ip_gre: GRE over IPv4 tunneling driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipgre_init\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ipv4/ip_gre.c\00", [46 x i8] zeroinitializer }, align 32
@ipgre_init._entry_ptr = internal global ptr @ipgre_init._entry, section ".printk_index", align 4
@ipgre_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.15, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ip_gre: %s: can't add protocol\0A\00", [62 x i8] zeroinitializer }, align 32
@ipgre_init._entry_ptr.18 = internal global ptr @ipgre_init._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 35313, i64 35315]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 8939, i64 35006]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 8939, i64 25944, i64 35006]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"log_ecn_error\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 105, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ipgre_protocol\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1017, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"ipgre_tap_net_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1694, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"ipgre_net_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1032, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"erspan_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1712, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1610, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"ipgre_policy\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1570, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"gre_tap_netdev_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1282, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 1011, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1595, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"ipgre_netdev_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 924, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"ipgre_header_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 878, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 249, i32 9 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 809, i32 40 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"erspan_netdev_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1315, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 45, i32 7 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 695, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 723, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1686, i32 65 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1704, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1723, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [21 x i8] c"../net/ipv4/ip_gre.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1739, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias602, ptr @__UNIQUE_ID_alias603, ptr @__UNIQUE_ID_alias604, ptr @__UNIQUE_ID_alias605, ptr @__UNIQUE_ID_alias606, ptr @__UNIQUE_ID_alias607, ptr @__UNIQUE_ID_file600, ptr @__UNIQUE_ID_license601, ptr @__UNIQUE_ID_log_ecn_error596, ptr @__UNIQUE_ID_log_ecn_errortype595, ptr @__exitcall_ipgre_fini, ptr @__initcall__kmod_ip_gre__599_1783_ipgre_init6, ptr @__ksymtab_gretap_fb_dev_create, ptr @__param_log_ecn_error, ptr @ipgre_fini, ptr @ipgre_init._entry, ptr @ipgre_init._entry.16, ptr @ipgre_init._entry_ptr, ptr @ipgre_init._entry_ptr.18, ptr @log_ecn_error, ptr @ipgre_protocol, ptr @ipgre_tap_net_ops, ptr @ipgre_net_ops, ptr @erspan_net_ops, ptr @.str, ptr @ipgre_policy, ptr @gre_tap_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @ipgre_netdev_ops, ptr @ipgre_header_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @erspan_netdev_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_ecn_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_protocol to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_tap_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erspan_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_policy to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gre_tap_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erspan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipgre_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gretap_fb_dev_create(ptr noundef %net, ptr noundef %name, i8 noundef zeroext %name_assign_type) #0 align 64 {
entry:
  %p.i = alloca %struct.ip_tunnel_parm, align 4
  %tb = alloca [59 x ptr], align 4
  %list_kill = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %tb) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list_kill) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %list_kill, i32 0, i32 1
  %1 = ptrtoint ptr %list_kill to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_kill, ptr %list_kill, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list_kill, ptr %0, align 4
  %3 = call ptr @memset(ptr %tb, i32 0, i32 236)
  %call = call ptr @rtnl_create_link(ptr noundef %net, ptr noundef %name, i8 noundef zeroext %name_assign_type, ptr noundef nonnull @ipgre_tap_ops, ptr noundef nonnull %tb, ptr noundef null) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %ipgre_newlink.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

ipgre_newlink.exit:                               ; preds = %entry
  %collect_md = getelementptr i8, ptr %call, i32 2480
  %4 = ptrtoint ptr %collect_md to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %collect_md, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p.i) #14
  %5 = call ptr @memset(ptr %p.i, i32 0, i32 52)
  %protocol.i = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p.i, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 47, ptr %protocol.i, align 1
  %call4.i = call i32 @ip_tunnel_newlink(ptr noundef %call, ptr noundef nonnull %tb, ptr noundef nonnull %p.i, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %ipgre_newlink.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @free_netdev(ptr noundef %call) #14
  %7 = inttoptr i32 %call4.i to ptr
  br label %cleanup

if.end7:                                          ; preds = %ipgre_newlink.exit
  %call8 = call i32 @__ip_tunnel_change_mtu(ptr noundef %call, i32 noundef 65535, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end10:                                         ; preds = %if.end7
  %call11 = call i32 @rtnl_configure_link(ptr noundef %call, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.out_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %if.end10.out_crit_edge, %if.end7.out_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.out_crit_edge ], [ %call11, %if.end10.out_crit_edge ]
  call void @ip_tunnel_dellink(ptr noundef %call, ptr noundef nonnull %list_kill) #14
  call void @unregister_netdevice_many(ptr noundef nonnull %list_kill) #14
  %8 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end10.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then5 ], [ %8, %out ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list_kill) #14
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %tb) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_create_link(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %ipencap.i = alloca %struct.ip_tunnel_encap, align 8
  %p = alloca %struct.ip_tunnel_parm, align 4
  %fwmark = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #14
  %0 = call ptr @memset(ptr %p, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwmark) #14
  %1 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap.i) #14
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 3
  %5 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %ipencap.i, align 8
  %tobool.not.i.i = icmp eq ptr %data, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr ptr, ptr %data, i32 14
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %10 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %ipencap.i, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %11 = xor i1 %tobool2.not.i.i, true
  %arrayidx6.i.i = getelementptr ptr, ptr %data, i32 15
  %12 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i43.i.i, align 2
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %2, align 2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end11.i.i_crit_edge
  %ret.1.off0.i.i = phi i1 [ true, %if.then8.i.i ], [ %11, %if.end5.i.i.if.end11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr ptr, ptr %data, i32 16
  %17 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i.i, label %if.end17.i.i, label %if.end17.i.thread.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx18.i.i = getelementptr ptr, ptr %data, i32 17
  %19 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i.i, label %ipgre_netlink_encap_parms.exit.i, label %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i:                              ; preds = %if.end11.i.i
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %18, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %3, align 4
  %arrayidx18.i12.i = getelementptr ptr, ptr %data, i32 17
  %24 = ptrtoint ptr %arrayidx18.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx18.i12.i, align 4
  %tobool19.not.i13.i = icmp eq ptr %25, null
  br i1 %tobool19.not.i13.i, label %if.end17.i.thread.i.if.then.i_crit_edge, label %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i.if.then.i_crit_edge:          ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ipgre_netlink_encap_parms.exit.thread.i:          ; preds = %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge
  %26 = phi ptr [ %25, %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ], [ %20, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ]
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i45.i.i, align 2
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %4, align 2
  br label %if.then.i

ipgre_netlink_encap_parms.exit.i:                 ; preds = %if.end17.i.i
  br i1 %ret.1.off0.i.i, label %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, label %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge

ipgre_netlink_encap_parms.exit.i.if.end_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, %ipgre_netlink_encap_parms.exit.thread.i, %if.end17.i.thread.i.if.then.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %call2.i = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i.i, ptr noundef nonnull %ipencap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ipgre_newlink_encap_setup.exit, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_newlink_encap_setup.exit:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  %call1 = call fastcc i32 @ipgre_netlink_parms(ptr noundef %dev, ptr noundef %data, ptr noundef nonnull %p, ptr noundef nonnull %fwmark)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fwmark, align 4
  %call4 = call i32 @ip_tunnel_newlink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %31) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %ipgre_newlink_encap_setup.exit
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call2.i, %ipgre_newlink_encap_setup.exit ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwmark) #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_tunnel_change_mtu(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_configure_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_dellink(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipgre_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipgre_tap_ops) #14
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipgre_link_ops) #14
  tail call void @rtnl_link_unregister(ptr noundef nonnull @erspan_link_ops) #14
  %call = tail call i32 @gre_del_protocol(ptr noundef nonnull @ipgre_protocol, i8 noundef zeroext 0) #14
  tail call void @unregister_pernet_device(ptr noundef nonnull @ipgre_tap_net_ops) #14
  tail call void @unregister_pernet_device(ptr noundef nonnull @ipgre_net_ops) #14
  tail call void @unregister_pernet_device(ptr noundef nonnull @erspan_net_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gre_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #17
  %call1 = tail call i32 @register_pernet_device(ptr noundef nonnull @ipgre_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_pernet_device(ptr noundef nonnull @ipgre_tap_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.pnet_tap_failed_crit_edge, label %if.end5

if.end.pnet_tap_failed_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pnet_tap_failed

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @register_pernet_device(ptr noundef nonnull @erspan_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.pnet_erspan_failed_crit_edge, label %if.end9

if.end5.pnet_erspan_failed_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %pnet_erspan_failed

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @gre_add_protocol(ptr noundef nonnull @ipgre_protocol, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14) #17
  br label %add_proto_failed

if.end18:                                         ; preds = %if.end9
  %call19 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ipgre_link_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.rtnl_link_failed_crit_edge, label %if.end22

if.end18.rtnl_link_failed_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rtnl_link_failed

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @rtnl_link_register(ptr noundef nonnull @ipgre_tap_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.tap_ops_failed_crit_edge, label %if.end26

if.end22.tap_ops_failed_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %tap_ops_failed

if.end26:                                         ; preds = %if.end22
  %call27 = tail call i32 @rtnl_link_register(ptr noundef nonnull @erspan_link_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %erspan_link_failed, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

erspan_link_failed:                               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipgre_tap_ops) #14
  br label %tap_ops_failed

tap_ops_failed:                                   ; preds = %erspan_link_failed, %if.end22.tap_ops_failed_crit_edge
  %err.0 = phi i32 [ %call23, %if.end22.tap_ops_failed_crit_edge ], [ %call27, %erspan_link_failed ]
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipgre_link_ops) #14
  br label %rtnl_link_failed

rtnl_link_failed:                                 ; preds = %tap_ops_failed, %if.end18.rtnl_link_failed_crit_edge
  %err.1 = phi i32 [ %call19, %if.end18.rtnl_link_failed_crit_edge ], [ %err.0, %tap_ops_failed ]
  %call31 = tail call i32 @gre_del_protocol(ptr noundef nonnull @ipgre_protocol, i8 noundef zeroext 0) #14
  br label %add_proto_failed

add_proto_failed:                                 ; preds = %rtnl_link_failed, %do.end15
  %err.2 = phi i32 [ %call10, %do.end15 ], [ %err.1, %rtnl_link_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @erspan_net_ops) #14
  br label %pnet_erspan_failed

pnet_erspan_failed:                               ; preds = %add_proto_failed, %if.end5.pnet_erspan_failed_crit_edge
  %err.3 = phi i32 [ %call6, %if.end5.pnet_erspan_failed_crit_edge ], [ %err.2, %add_proto_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ipgre_tap_net_ops) #14
  br label %pnet_tap_failed

pnet_tap_failed:                                  ; preds = %pnet_erspan_failed, %if.end.pnet_tap_failed_crit_edge
  %err.4 = phi i32 [ %call2, %if.end.pnet_tap_failed_crit_edge ], [ %err.3, %pnet_erspan_failed ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ipgre_net_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %pnet_tap_failed, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %pnet_tap_failed ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipgre_tap_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #14
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gre_tap_netdev_ops, ptr %netdev_ops, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, -34817
  %or = or i64 %and, 32768
  store i64 %or, ptr %priv_flags, align 16
  %4 = load i32, ptr @gre_tap_net_id, align 4
  tail call void @ip_tunnel_setup(ptr noundef %dev, i32 noundef %4) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipgre_tap_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %data, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %arrayidx12 = getelementptr ptr, ptr %data, i32 7
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end11.if.end.i_crit_edge, label %if.then14

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then14:                                        ; preds = %if.end11
  %add.ptr.i29 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %daddr.0.copyload = load i32, ptr %add.ptr.i29, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %daddr.0.copyload)
  %tobool17.not = icmp eq i32 %daddr.0.copyload, 0
  br i1 %tobool17.not, label %if.then14.cleanup_crit_edge, label %if.then14.if.end.i_crit_edge

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then14.if.end.i_crit_edge, %if.end11.if.end.i_crit_edge
  %arrayidx.i = getelementptr ptr, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i, align 2
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %flags.0.i = phi i16 [ %15, %if.then2.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %arrayidx7.i = getelementptr ptr, ptr %data, i32 3
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end16.i_crit_edge, label %if.then9.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i44.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i44.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i44.i, align 2
  %or1443.i = or i16 %19, %flags.0.i
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end16.i_crit_edge
  %flags.1.i = phi i16 [ %or1443.i, %if.then9.i ], [ %flags.0.i, %if.end6.i.if.end16.i_crit_edge ]
  %20 = and i16 %flags.1.i, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool18.not.i = icmp eq i16 %20, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.cleanup_crit_edge

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %arrayidx21.i = getelementptr ptr, ptr %data, i32 18
  %21 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %22, null
  br i1 %tobool22.not.i, label %if.end20.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %arrayidx23.i = getelementptr ptr, ptr %data, i32 14
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.not.i = icmp eq ptr %24, null
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true25.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

land.lhs.true25.i:                                ; preds = %land.lhs.true.i
  %add.ptr.i.i45.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i45.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.i = icmp eq i16 %26, 0
  br i1 %cmp.not.i, label %land.lhs.true25.i.if.end31.i_crit_edge, label %land.lhs.true25.i.cleanup_crit_edge

land.lhs.true25.i.cleanup_crit_edge:              ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true25.i.if.end31.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true25.i.if.end31.i_crit_edge, %land.lhs.true.i.if.end31.i_crit_edge, %if.end20.i.if.end31.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end31.i, %land.lhs.true25.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ], [ 0, %if.end31.i ], [ -22, %if.end16.i.cleanup_crit_edge ], [ -22, %land.lhs.true25.i.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %ipencap.i = alloca %struct.ip_tunnel_encap, align 8
  %fwmark = alloca i32, align 4
  %p = alloca %struct.ip_tunnel_parm, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwmark) #14
  %fwmark1 = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %fwmark1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwmark1, align 4
  %2 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #14
  %3 = call ptr @memset(ptr %p, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap.i) #14
  %4 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 3
  %7 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %ipencap.i, align 8
  %tobool.not.i.i = icmp eq ptr %data, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr ptr, ptr %data, i32 14
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %12 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ipencap.i, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %13 = xor i1 %tobool2.not.i.i, true
  %arrayidx6.i.i = getelementptr ptr, ptr %data, i32 15
  %14 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i43.i.i, align 2
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %4, align 2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end11.i.i_crit_edge
  %ret.1.off0.i.i = phi i1 [ true, %if.then8.i.i ], [ %13, %if.end5.i.i.if.end11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr ptr, ptr %data, i32 16
  %19 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %20, null
  br i1 %tobool13.not.i.i, label %if.end17.i.i, label %if.end17.i.thread.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx18.i.i = getelementptr ptr, ptr %data, i32 17
  %21 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %22, null
  br i1 %tobool19.not.i.i, label %ipgre_netlink_encap_parms.exit.i, label %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i:                              ; preds = %if.end11.i.i
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %20, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %5, align 4
  %arrayidx18.i12.i = getelementptr ptr, ptr %data, i32 17
  %26 = ptrtoint ptr %arrayidx18.i12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18.i12.i, align 4
  %tobool19.not.i13.i = icmp eq ptr %27, null
  br i1 %tobool19.not.i13.i, label %if.end17.i.thread.i.if.then.i_crit_edge, label %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i.if.then.i_crit_edge:          ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ipgre_netlink_encap_parms.exit.thread.i:          ; preds = %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge
  %28 = phi ptr [ %27, %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ], [ %22, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ]
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i45.i.i, align 2
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %6, align 2
  br label %if.then.i

ipgre_netlink_encap_parms.exit.i:                 ; preds = %if.end17.i.i
  br i1 %ret.1.off0.i.i, label %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, label %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge

ipgre_netlink_encap_parms.exit.i.if.end_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, %ipgre_netlink_encap_parms.exit.thread.i, %if.end17.i.thread.i.if.then.i_crit_edge
  %call2.i = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ipgre_newlink_encap_setup.exit, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_newlink_encap_setup.exit:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  %call3 = call fastcc i32 @ipgre_netlink_parms(ptr noundef %dev, ptr noundef %data, ptr noundef nonnull %p, ptr noundef nonnull %fwmark)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %32 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fwmark, align 4
  %call6 = call i32 @ip_tunnel_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %34 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %i_flags, align 4
  %i_flags10 = getelementptr i8, ptr %dev, i32 2384
  %36 = ptrtoint ptr %i_flags10 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %i_flags10, align 4
  %o_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 3
  %37 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %o_flags, align 2
  %o_flags12 = getelementptr i8, ptr %dev, i32 2386
  %39 = ptrtoint ptr %o_flags12 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %o_flags12, align 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %41, null
  call fastcc void @ipgre_link_update(ptr noundef %dev, i1 noundef zeroext %tobool13.not)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ipgre_newlink_encap_setup.exit
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call2.i, %ipgre_newlink_encap_setup.exit ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwmark) #14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipgre_get_size(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 164
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_fill_info(ptr noundef %skb, ptr noundef readonly %dev) #0 align 64 {
entry:
  %tmp.i203 = alloca i8, align 1
  %tmp.i201 = alloca i16, align 2
  %tmp.i199 = alloca i16, align 2
  %tmp.i197 = alloca i16, align 2
  %tmp.i195 = alloca i16, align 2
  %tmp.i193 = alloca i32, align 4
  %tmp.i191 = alloca i8, align 1
  %tmp.i189 = alloca i8, align 1
  %tmp.i187 = alloca i8, align 1
  %tmp.i.i185 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i183 = alloca i32, align 4
  %tmp.i181 = alloca i32, align 4
  %tmp.i179 = alloca i16, align 2
  %tmp.i169 = alloca i16, align 2
  %tmp.i167 = alloca i32, align 4
  %tmp.i165 = alloca i16, align 2
  %tmp.i163 = alloca i8, align 1
  %tmp.i161 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %o_flags1 = getelementptr i8, ptr %dev, i32 2386
  %0 = ptrtoint ptr %o_flags1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %o_flags1, align 2
  %erspan_ver = getelementptr i8, ptr %dev, i32 2352
  %2 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %erspan_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.not = icmp eq i8 %3, 0
  br i1 %cmp5.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %4 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %collect_md, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = or i16 %1, 4
  %spec.select = select i1 %tobool.not, i16 %6, i16 %1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then.if.end_crit_edge
  %o_flags.0 = phi i16 [ %1, %if.then.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #14
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 1, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end14:                                         ; preds = %if.end
  %8 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %erspan_ver, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %if.end14.if.end39_crit_edge [
    i8 1, label %if.then19
    i8 2, label %if.then28
  ]

if.end14.if.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then19:                                        ; preds = %if.end14
  %index = getelementptr i8, ptr %dev, i32 2348
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i161) #14
  %13 = ptrtoint ptr %tmp.i161 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i161, align 4
  %call.i162 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i161) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i161) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool21.not = icmp eq i32 %call.i162, 0
  br i1 %tobool21.not, label %if.then19.if.end39_crit_edge, label %if.then19.nla_put_failure_crit_edge

if.then19.nla_put_failure_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.then19.if.end39_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then28:                                        ; preds = %if.end14
  %dir = getelementptr i8, ptr %dev, i32 2353
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dir, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i163) #14
  %16 = ptrtoint ptr %tmp.i163 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i163, align 1
  %call.i164 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 1, ptr noundef nonnull %tmp.i163) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i163) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool30.not = icmp eq i32 %call.i164, 0
  br i1 %tobool30.not, label %if.end32, label %if.then28.nla_put_failure_crit_edge

if.then28.nla_put_failure_crit_edge:              ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end32:                                         ; preds = %if.then28
  %hwid = getelementptr i8, ptr %dev, i32 2354
  %17 = ptrtoint ptr %hwid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hwid, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i165) #14
  %19 = ptrtoint ptr %tmp.i165 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %tmp.i165, align 2
  %call.i166 = call i32 @nla_put(ptr noundef %skb, i32 noundef 24, i32 noundef 2, ptr noundef nonnull %tmp.i165) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i165) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool34.not = icmp eq i32 %call.i166, 0
  br i1 %tobool34.not, label %if.end32.if.end39_crit_edge, label %if.end32.nla_put_failure_crit_edge

if.end32.nla_put_failure_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end39:                                         ; preds = %if.end32.if.end39_crit_edge, %if.then19.if.end39_crit_edge, %if.end14.if.end39_crit_edge, %entry.if.end39_crit_edge
  %o_flags.1 = phi i16 [ %o_flags.0, %if.then19.if.end39_crit_edge ], [ %o_flags.0, %if.end32.if.end39_crit_edge ], [ %1, %entry.if.end39_crit_edge ], [ %o_flags.0, %if.end14.if.end39_crit_edge ]
  %link = getelementptr i8, ptr %dev, i32 2380
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i167) #14
  %22 = ptrtoint ptr %tmp.i167 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i167, align 4
  %call.i168 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i167) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i167) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool41.not = icmp eq i32 %call.i168, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.end39.nla_put_failure_crit_edge

if.end39.nla_put_failure_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end39
  %i_flags = getelementptr i8, ptr %dev, i32 2384
  %23 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_flags, align 4
  %conv.i = zext i16 %24 to i32
  %rev65.i = call i16 @llvm.bitreverse.i16(i16 %24) #14
  %25 = and i16 %rev65.i, -2048
  %and36.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %26 = or i16 %25, 1792
  %flags.5.i = select i1 %tobool37.not.i, i16 %25, i16 %26
  %and44.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %27 = or i16 %flags.5.i, 7
  %flags.6.i = select i1 %tobool45.not.i, i16 %flags.5.i, i16 %27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i169) #14
  %28 = ptrtoint ptr %tmp.i169 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %flags.6.i, ptr %tmp.i169, align 2
  %call.i170 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i169) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i169) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool44.not = icmp eq i32 %call.i170, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %conv.i171 = zext i16 %o_flags.1 to i32
  %rev65.i172 = call i16 @llvm.bitreverse.i16(i16 %o_flags.1) #14
  %29 = and i16 %rev65.i172, -2048
  %and36.i173 = and i32 %conv.i171, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i173)
  %tobool37.not.i174 = icmp eq i32 %and36.i173, 0
  %30 = or i16 %29, 1792
  %flags.5.i175 = select i1 %tobool37.not.i174, i16 %29, i16 %30
  %and44.i176 = and i32 %conv.i171, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i176)
  %tobool45.not.i177 = icmp eq i32 %and44.i176, 0
  %31 = or i16 %flags.5.i175, 7
  %flags.6.i178 = select i1 %tobool45.not.i177, i16 %flags.5.i175, i16 %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i179) #14
  %32 = ptrtoint ptr %tmp.i179 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %flags.6.i178, ptr %tmp.i179, align 2
  %call.i180 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i179) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i179) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool48.not = icmp eq i32 %call.i180, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false45.nla_put_failure_crit_edge

lor.lhs.false45.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %i_key = getelementptr i8, ptr %dev, i32 2388
  %33 = ptrtoint ptr %i_key to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i181) #14
  %35 = ptrtoint ptr %tmp.i181 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i181, align 4
  %call.i182 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i181) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i181) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool51.not = icmp eq i32 %call.i182, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false49.nla_put_failure_crit_edge

lor.lhs.false49.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %36 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %o_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i183) #14
  %38 = ptrtoint ptr %tmp.i183 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i183, align 4
  %call.i184 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i183) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i183) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool54.not = icmp eq i32 %call.i184, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %lor.lhs.false52.nla_put_failure_crit_edge

lor.lhs.false52.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %39 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %41 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool57.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool57.not, label %lor.lhs.false58, label %lor.lhs.false55.nla_put_failure_crit_edge

lor.lhs.false55.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %42 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i185) #14
  %44 = ptrtoint ptr %tmp.i.i185 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i.i185, align 4
  %call.i.i186 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i185) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i185) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i186)
  %tobool61.not = icmp eq i32 %call.i.i186, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %lor.lhs.false58.nla_put_failure_crit_edge

lor.lhs.false58.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %ttl = getelementptr i8, ptr %dev, i32 2404
  %45 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ttl, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i187) #14
  %47 = ptrtoint ptr %tmp.i187 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %tmp.i187, align 1
  %call.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i187) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i187) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool65.not = icmp eq i32 %call.i188, 0
  br i1 %tobool65.not, label %lor.lhs.false66, label %lor.lhs.false62.nla_put_failure_crit_edge

lor.lhs.false62.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false66:                                  ; preds = %lor.lhs.false62
  %tos = getelementptr i8, ptr %dev, i32 2397
  %48 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tos, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i189) #14
  %50 = ptrtoint ptr %tmp.i189 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %tmp.i189, align 1
  %call.i190 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 1, ptr noundef nonnull %tmp.i189) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i189) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool69.not = icmp eq i32 %call.i190, 0
  br i1 %tobool69.not, label %lor.lhs.false70, label %lor.lhs.false66.nla_put_failure_crit_edge

lor.lhs.false66.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %frag_off = getelementptr i8, ptr %dev, i32 2402
  %51 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %frag_off, align 2
  %53 = lshr i16 %52, 14
  %54 = trunc i16 %53 to i8
  %55 = and i8 %54, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i191) #14
  %56 = ptrtoint ptr %tmp.i191 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %tmp.i191, align 1
  %call.i192 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i191) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i191) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool77.not = icmp eq i32 %call.i192, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %lor.lhs.false70.nla_put_failure_crit_edge

lor.lhs.false70.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false78:                                  ; preds = %lor.lhs.false70
  %fwmark = getelementptr i8, ptr %dev, i32 2476
  %57 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i193) #14
  %59 = ptrtoint ptr %tmp.i193 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i193, align 4
  %call.i194 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i193) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i193) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool80.not = icmp eq i32 %call.i194, 0
  br i1 %tobool80.not, label %if.end82, label %lor.lhs.false78.nla_put_failure_crit_edge

lor.lhs.false78.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end82:                                         ; preds = %lor.lhs.false78
  %encap = getelementptr i8, ptr %dev, i32 2428
  %60 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %encap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i195) #14
  %62 = ptrtoint ptr %tmp.i195 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %tmp.i195, align 2
  %call.i196 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i195) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i195) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool84.not = icmp eq i32 %call.i196, 0
  br i1 %tobool84.not, label %lor.lhs.false85, label %if.end82.nla_put_failure_crit_edge

if.end82.nla_put_failure_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false85:                                  ; preds = %if.end82
  %sport = getelementptr i8, ptr %dev, i32 2432
  %63 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sport, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i197) #14
  %65 = ptrtoint ptr %tmp.i197 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %tmp.i197, align 2
  %call.i198 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %tmp.i197) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i197) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool88.not = icmp eq i32 %call.i198, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false85.nla_put_failure_crit_edge

lor.lhs.false85.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %dport = getelementptr i8, ptr %dev, i32 2434
  %66 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %dport, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i199) #14
  %68 = ptrtoint ptr %tmp.i199 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %tmp.i199, align 2
  %call.i200 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 2, ptr noundef nonnull %tmp.i199) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i199) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool92.not = icmp eq i32 %call.i200, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %lor.lhs.false89.nla_put_failure_crit_edge

lor.lhs.false89.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

lor.lhs.false93:                                  ; preds = %lor.lhs.false89
  %flags = getelementptr i8, ptr %dev, i32 2430
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i201) #14
  %71 = ptrtoint ptr %tmp.i201 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %tmp.i201, align 2
  %call.i202 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 2, ptr noundef nonnull %tmp.i201) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i201) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %tobool96.not = icmp eq i32 %call.i202, 0
  br i1 %tobool96.not, label %if.end98, label %lor.lhs.false93.nla_put_failure_crit_edge

lor.lhs.false93.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end98:                                         ; preds = %lor.lhs.false93
  %ignore_df = getelementptr i8, ptr %dev, i32 2481
  %72 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ignore_df, align 1, !range !106
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i203) #14
  %74 = ptrtoint ptr %tmp.i203 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %tmp.i203, align 1
  %call.i204 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 1, ptr noundef nonnull %tmp.i203) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i203) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool102.not = icmp eq i32 %call.i204, 0
  br i1 %tobool102.not, label %if.end104, label %if.end98.nla_put_failure_crit_edge

if.end98.nla_put_failure_crit_edge:               ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end104:                                        ; preds = %if.end98
  %collect_md105 = getelementptr i8, ptr %dev, i32 2480
  %75 = ptrtoint ptr %collect_md105 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %collect_md105, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool106.not = icmp eq i8 %76, 0
  br i1 %tobool106.not, label %if.end104.cleanup_crit_edge, label %if.then107

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then107:                                       ; preds = %if.end104
  %call.i205 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool109.not = icmp eq i32 %call.i205, 0
  br i1 %tobool109.not, label %if.then107.cleanup_crit_edge, label %if.then107.nla_put_failure_crit_edge

if.then107.nla_put_failure_crit_edge:             ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then107.nla_put_failure_crit_edge, %if.end98.nla_put_failure_crit_edge, %lor.lhs.false93.nla_put_failure_crit_edge, %lor.lhs.false89.nla_put_failure_crit_edge, %lor.lhs.false85.nla_put_failure_crit_edge, %if.end82.nla_put_failure_crit_edge, %lor.lhs.false78.nla_put_failure_crit_edge, %lor.lhs.false70.nla_put_failure_crit_edge, %lor.lhs.false66.nla_put_failure_crit_edge, %lor.lhs.false62.nla_put_failure_crit_edge, %lor.lhs.false58.nla_put_failure_crit_edge, %lor.lhs.false55.nla_put_failure_crit_edge, %lor.lhs.false52.nla_put_failure_crit_edge, %lor.lhs.false49.nla_put_failure_crit_edge, %lor.lhs.false45.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.end39.nla_put_failure_crit_edge, %if.end32.nla_put_failure_crit_edge, %if.then28.nla_put_failure_crit_edge, %if.then19.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.then107.cleanup_crit_edge, %if.end104.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.then107.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_get_link_net(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_tap_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %o_flags.i = getelementptr i8, ptr %dev, i32 2386
  %0 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %o_flags.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %and2.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %add5.i.i = add nuw nsw i32 %spec.select.i.i, 4
  %addend.1.i.i = select i1 %tobool3.not.i.i, i32 %spec.select.i.i, i32 %add5.i.i
  %and8.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %add11.i.i = add nuw nsw i32 %addend.1.i.i, 4
  %addend.2.i.i = select i1 %tobool9.not.i.i, i32 %addend.1.i.i, i32 %add11.i.i
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addend.2.i.i, ptr %tun_hlen.i, align 4
  %protocol.i = getelementptr i8, ptr %dev, i32 2405
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 47, ptr %protocol.i, align 1
  %encap_hlen.i = getelementptr i8, ptr %dev, i32 2420
  %4 = ptrtoint ptr %encap_hlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encap_hlen.i, align 4
  %add.i = add i32 %addend.2.i.i, %5
  %hlen.i = getelementptr i8, ptr %dev, i32 2424
  %6 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %hlen.i, align 4
  %7 = trunc i32 %add.i to i16
  %conv.i = add i16 %7, 20
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %needed_headroom.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i, align 16
  %or.i = or i64 %10, 105
  store i64 %or.i, ptr %features.i, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %11 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw_features.i, align 8
  %or6.i = or i64 %12, 105
  store i64 %or6.i, ptr %hw_features.i, align 8
  br i1 %tobool9.not.i.i, label %if.then.i, label %entry.__gre_tunnel_init.exit_crit_edge

entry.__gre_tunnel_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__gre_tunnel_init.exit

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not.i.i, label %if.then.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then17.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %encap.i = getelementptr i8, ptr %dev, i32 2428
  %13 = ptrtoint ptr %encap.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then17.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.then.i.if.then17.i_crit_edge
  %or19.i = or i64 %10, 26845446249
  %15 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or19.i, ptr %features.i, align 16
  %or21.i = or i64 %12, 26845446249
  %16 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or21.i, ptr %hw_features.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %lor.lhs.false.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features.i, align 16
  %or23.i = or i64 %18, 4096
  store i64 %or23.i, ptr %features.i, align 16
  br label %__gre_tunnel_init.exit

__gre_tunnel_init.exit:                           ; preds = %if.end.i, %entry.__gre_tunnel_init.exit_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %19 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %priv_flags, align 16
  %or = and i64 %20, -163873
  %and.i = or i64 %or, 32768
  store i64 %and.i, ptr %priv_flags, align 16
  %call = tail call i32 @ip_tunnel_init(ptr noundef %dev) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_uninit(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_tap_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.free_skb_crit_edge, label %pskb_inet_may_pull.exit, !prof !107

if.end.i.i.i.free_skb_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #14
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.free_skb_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

pskb_inet_may_pull.exit.free_skb_crit_edge:       ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %12 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %collect_md, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @gre_fb_xmit(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext 25944)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %14 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %o_flags, align 2
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool4.not = icmp eq i16 %16, 0
  %cond.i = select i1 %tobool4.not, i32 64, i32 128
  %call.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.free_skb_crit_edge

if.end3.free_skb_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.end9:                                          ; preds = %if.end3
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %17 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %needed_headroom, align 8
  %conv10 = zext i16 %18 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %19 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end9.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end9.skb_header_cloned.exit.i_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #14
  %22 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %23, 65535
  %shr.i.i = ashr i32 %23, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end9.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end9.skb_header_cloned.exit.i_crit_edge ]
  %24 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i, align 4
  %26 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i28 = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i.i29 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i.i30 = sub i32 %sub.ptr.lhs.cast.i.i.i28, %sub.ptr.rhs.cast.i.i.i29
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i30, i32 %conv10)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i30, %conv10
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end14_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end14_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %conv10, i32 %sub.ptr.sub.i.i.i30) #14
  %add.i.i31 = add nuw nsw i32 %28, 127
  %and.i4.i = and i32 %add.i.i31, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool12.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool12.not, label %skb_cow_head.exit.if.end14_crit_edge, label %skb_cow_head.exit.free_skb_crit_edge

skb_cow_head.exit.free_skb_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

skb_cow_head.exit.if.end14_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %skb_cow_head.exit.if.end14_crit_edge, %skb_header_cloned.exit.i.if.end14_crit_edge
  %iph = getelementptr i8, ptr %dev, i32 2396
  %29 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %o_flags, align 2
  %31 = and i16 %30, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %if.end14.__gre_xmit.exit_crit_edge, label %if.then.i

if.end14.__gre_xmit.exit_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %__gre_xmit.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %o_seqno.i = getelementptr i8, ptr %dev, i32 2340
  %32 = ptrtoint ptr %o_seqno.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %o_seqno.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %o_seqno.i, align 4
  br label %__gre_xmit.exit

__gre_xmit.exit:                                  ; preds = %if.then.i, %if.end14.__gre_xmit.exit_crit_edge
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2344
  %34 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tun_hlen.i, align 4
  %o_key.i = getelementptr i8, ptr %dev, i32 2392
  %36 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %o_key.i, align 4
  %o_seqno4.i = getelementptr i8, ptr %dev, i32 2340
  %38 = ptrtoint ptr %o_seqno4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %o_seqno4.i, align 4
  tail call fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %35, i16 noundef zeroext %30, i16 noundef zeroext 25944, i32 noundef %37, i32 noundef %39) #14
  %protocol.i32 = getelementptr i8, ptr %dev, i32 2405
  %40 = ptrtoint ptr %protocol.i32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %protocol.i32, align 1
  tail call void @ip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %iph, i8 noundef zeroext %41) #14
  br label %cleanup

free_skb:                                         ; preds = %skb_cow_head.exit.free_skb_crit_edge, %if.end3.free_skb_crit_edge, %pskb_inet_may_pull.exit.free_skb_crit_edge, %if.end.i.i.i.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %42 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %__gre_xmit.exit, %if.then2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_get_iflink(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_fill_metadata_dst(ptr nocapture noundef readonly %dev, ptr noundef %skb) #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #14
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %u = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 1
  %dst = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst, align 4
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %u, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call, align 8
  %conv.i = trunc i64 %8 to i32
  %tos = getelementptr inbounds %struct.ip_tunnel_key, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tos, align 2
  %11 = and i8 %10, -4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %16 = and i16 %bf.load.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %if.then.i, label %if.end.skb_get_hash.exit_crit_edge

if.end.skb_get_hash.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_get_hash.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__skb_get_hash(ptr noundef %skb) #14
  br label %skb_get_hash.exit

skb_get_hash.exit:                                ; preds = %if.then.i, %if.end.skb_get_hash.exit_crit_edge
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %18 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hash.i, align 4
  %daddr1.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %20 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %21 = ptrtoint ptr %daddr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %4, ptr %daddr1.i, align 4
  %saddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %22 = ptrtoint ptr %saddr2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %6, ptr %saddr2.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %23 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %11, ptr %flowic_tos.i, align 4
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %24 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 47, ptr %flowic_proto.i, align 2
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %25 = ptrtoint ptr %uli.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %uli.i, align 8
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %26 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %14, ptr %flowic_mark.i, align 8
  %flowic_multipath_hash.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %27 = ptrtoint ptr %flowic_multipath_hash.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %flowic_multipath_hash.i, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %28 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nd_net.i, align 4
  %call.i = call ptr @ip_route_output_flow(ptr noundef %29, ptr noundef nonnull %fl4, ptr noundef null) #14
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %skb_get_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end14:                                         ; preds = %skb_get_hash.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @dst_release(ptr noundef %call.i) #14
  %31 = ptrtoint ptr %saddr2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saddr2.i, align 8
  %33 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %u, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then12 ], [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gre_fb_xmit(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.err_free_skb_crit_edge, label %lor.lhs.false, !prof !107

entry.err_free_skb_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb

lor.lhs.false:                                    ; preds = %entry
  %mode = getelementptr inbounds %struct.ip_tunnel_info, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 1
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %3 = icmp eq i8 %2, 1
  br i1 %3, label %if.end, label %lor.lhs.false.err_free_skb_crit_edge, !prof !108

lor.lhs.false.err_free_skb_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb

if.end:                                           ; preds = %lor.lhs.false
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tun_flags, align 8
  %conv.i = zext i16 %5 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i60 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i60, i32 4, i32 8
  %and2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %add5.i = add nuw nsw i32 %spec.select.i, 4
  %addend.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %add5.i
  %and8.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %add11.i = add nuw nsw i32 %addend.1.i, 4
  %addend.2.i = select i1 %tobool9.not.i, i32 %addend.1.i, i32 %add11.i
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %needed_headroom, align 8
  %conv10 = zext i16 %7 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end.skb_header_cloned.exit.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %12, 65535
  %shr.i.i = ashr i32 %12, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv10)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv10
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end14_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end14_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %conv10, i32 %sub.ptr.sub.i.i.i) #14
  %add.i.i = add nuw nsw i32 %17, 127
  %and.i4.i = and i32 %add.i.i, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool12.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool12.not, label %skb_cow_head.exit.if.end14_crit_edge, label %skb_cow_head.exit.err_free_skb_crit_edge

skb_cow_head.exit.err_free_skb_crit_edge:         ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb

skb_cow_head.exit.if.end14_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %skb_cow_head.exit.if.end14_crit_edge, %skb_header_cloned.exit.i.if.end14_crit_edge
  %18 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tun_flags, align 8
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool19.not = icmp eq i16 %20, 0
  %cond.i = select i1 %tobool19.not, i32 64, i32 128
  %call.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.end14.err_free_skb_crit_edge

if.end14.err_free_skb_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb

if.end27:                                         ; preds = %if.end14
  %21 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tun_flags, align 8
  %23 = and i16 %22, 13
  %24 = ptrtoint ptr %call1 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %call1, align 8
  %conv.i61 = trunc i64 %25 to i32
  %26 = and i16 %22, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool37.not = icmp eq i16 %26, 0
  br i1 %tobool37.not, label %if.end27.cond.end_crit_edge, label %cond.true

if.end27.cond.end_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %o_seqno = getelementptr i8, ptr %dev, i32 2340
  %27 = ptrtoint ptr %o_seqno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %o_seqno, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %o_seqno, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end27.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end27.cond.end_crit_edge ]
  tail call fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %addend.2.i, i16 noundef zeroext %23, i16 noundef zeroext %proto, i32 noundef %conv.i61, i32 noundef %cond)
  tail call void @ip_md_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 47, i32 noundef %addend.2.i) #14
  br label %cleanup

err_free_skb:                                     ; preds = %if.end14.err_free_skb_crit_edge, %skb_cow_head.exit.err_free_skb_crit_edge, %lor.lhs.false.err_free_skb_crit_edge, %entry.err_free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %29 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_dropped, align 4
  %inc38 = add i32 %30, 1
  store i32 %inc38, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_skb, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_tunnel_info(ptr nocapture noundef readonly %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

entry.skb_dst.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !107

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %entry.skb_dst.exit.i_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i, label %skb_dst.exit.i.if.end_crit_edge, label %land.lhs.true.i

skb_dst.exit.i.if.end_crit_edge:                  ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %skb_dst.exit.i
  %5 = inttoptr i32 %and25.i.i to ptr
  %flags.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 4
  %8 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not.i = icmp eq i16 %8, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %type = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %u = getelementptr inbounds %struct.metadata_dst, ptr %5, i32 0, i32 2
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %skb_dst.exit.i.if.end_crit_edge
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i29

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.lhs.true.i29:                                ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i28 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i28, label %land.rhs.i, label %land.lhs.true.i29.skb_dst.exit_crit_edge

land.lhs.true.i29.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i29
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !107

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i29.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool2.not = icmp eq i32 %and25.i, 0
  br i1 %tobool2.not, label %skb_dst.exit.cleanup_crit_edge, label %land.lhs.true3

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true3:                                   ; preds = %skb_dst.exit
  %13 = inttoptr i32 %and25.i to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lwtstate, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true5

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %17, label %land.lhs.true5.cleanup_crit_edge [
    i16 2, label %land.lhs.true5.if.then15_crit_edge
    i16 4, label %land.lhs.true5.if.then15_crit_edge33
  ]

land.lhs.true5.if.then15_crit_edge33:             ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

land.lhs.true5.if.then15_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true5.if.then15_crit_edge, %land.lhs.true5.if.then15_crit_edge33
  %data.i = getelementptr inbounds %struct.lwtunnel_state, ptr %15, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %u, %if.then ], [ %data.i, %if.then15 ], [ null, %land.lhs.true5.cleanup_crit_edge ], [ null, %land.lhs.true3.cleanup_crit_edge ], [ null, %skb_dst.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %hdr_len, i16 noundef zeroext %flags, i16 noundef zeroext %proto, i32 noundef %key, i32 noundef %seq) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %hdr_len) #14
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %proto, ptr %0, align 8
  %inner_protocol_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %inner_protocol_type.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %inner_protocol_type.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -4194305
  store i32 %bf.clear.i, ptr %inner_protocol_type.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %conv.i58 = zext i16 %flags to i32
  %rev65.i = tail call i16 @llvm.bitreverse.i16(i16 %flags) #14
  %8 = and i16 %rev65.i, -2048
  %and36.i = and i32 %conv.i58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %9 = or i16 %8, 1792
  %flags.5.i = select i1 %tobool37.not.i, i16 %8, i16 %9
  %and44.i = and i32 %conv.i58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %10 = or i16 %flags.5.i, 7
  %flags.6.i = select i1 %tobool45.not.i, i16 %flags.5.i, i16 %10
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %flags.6.i, ptr %4, align 1
  %protocol = getelementptr inbounds %struct.gre_base_hdr, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %proto, ptr %protocol, align 1
  %and = and i32 %conv.i58, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 %hdr_len
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 -4
  %and5 = and i32 %conv.i58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %seq, ptr %add.ptr3, align 4
  %incdec.ptr = getelementptr i32, ptr %add.ptr3, i32 -1
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %ptr.0 = phi ptr [ %incdec.ptr, %if.then7 ], [ %add.ptr3, %if.then.if.end_crit_edge ]
  %and9 = and i32 %conv.i58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %key, ptr %ptr.0, align 4
  %incdec.ptr12 = getelementptr i32, ptr %ptr.0, i32 -1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %ptr.1 = phi ptr [ %incdec.ptr12, %if.then11 ], [ %ptr.0, %if.end.if.end13_crit_edge ]
  %and15 = and i32 %conv.i58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end33_crit_edge, label %land.lhs.true

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gso_type, align 8
  %and18 = and i32 %18, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then20:                                        ; preds = %land.lhs.true
  %19 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ptr.1, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %ip_summed, align 8
  %21 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %21)
  %cmp = icmp eq i16 %21, 1536
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 8
  %conv.i8.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i8.i
  %27 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i, align 2
  %conv.i10.i = zext i16 %28 to i32
  %add.ptr.i11.i = getelementptr i8, ptr %23, i32 %conv.i10.i
  %csum_offset.i = getelementptr inbounds %struct.anon.60, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %csum_offset.i, align 2
  %conv.i59 = zext i16 %30 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i59
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i, align 2
  %conv.i.i = zext i16 %32 to i32
  %neg.i = xor i32 %conv.i.i, -1
  %sub.ptr.lhs.cast.i60 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i61 = ptrtoint ptr %add.ptr.i11.i to i32
  %sub.ptr.sub.i62 = sub i32 %sub.ptr.lhs.cast.i60, %sub.ptr.rhs.cast.i61
  %call3.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i11.i, i32 noundef %sub.ptr.sub.i62, i32 noundef %neg.i) #14
  %33 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call3.i) #18, !srcloc !109
  %neg.i63 = xor i32 %33, -1
  %shr.i = lshr i32 %neg.i63, 16
  %conv.i64 = trunc i32 %shr.i to i16
  %34 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i64, ptr %ptr.1, align 2
  br label %if.end33

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set = or i16 %bf.load, 1536
  %35 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bf.set, ptr %ip_summed, align 8
  %36 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i, align 2
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %37, ptr %38, align 8
  %csum_offset = getelementptr inbounds %struct.anon.60, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 4, ptr %csum_offset, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then23, %land.lhs.true.if.end33_crit_edge, %if.end13.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_md_tunnel_xmit(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iptunnel_handle_offloads(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_xmit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipgre_tunnel_validate(ptr nocapture noundef readnone %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %flags.0 = phi i16 [ %3, %if.then2 ], [ 0, %if.end.if.end6_crit_edge ]
  %arrayidx7 = getelementptr ptr, ptr %data, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.if.end16_crit_edge, label %if.then9

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i44 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i44 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i44, align 2
  %or1443 = or i16 %7, %flags.0
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end6.if.end16_crit_edge
  %flags.1 = phi i16 [ %or1443, %if.then9 ], [ %flags.0, %if.end6.if.end16_crit_edge ]
  %8 = and i16 %flags.1, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool18.not = icmp eq i16 %8, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %arrayidx21 = getelementptr ptr, ptr %data, i32 18
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.end20.if.end31_crit_edge, label %land.lhs.true

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end20
  %arrayidx23 = getelementptr ptr, ptr %data, i32 14
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %12, null
  br i1 %tobool24.not, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true25

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true25:                                  ; preds = %land.lhs.true
  %add.ptr.i.i45 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i45 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  br i1 %cmp.not, label %land.lhs.true25.if.end31_crit_edge, label %land.lhs.true25.cleanup_crit_edge

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true25.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %land.lhs.true25.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %land.lhs.true25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ipgre_netlink_parms(ptr nocapture noundef %dev, ptr noundef readonly %data, ptr nocapture noundef %parms, ptr nocapture noundef writeonly %fwmark) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %parms, i32 0, i32 52)
  %protocol = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 6
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 47, ptr %protocol, align 1
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %link = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 1
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %link, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %arrayidx6 = getelementptr ptr, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i1 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i1, align 2
  %conv.i = zext i16 %10 to i32
  %and.lobit.i = lshr i16 %10, 15
  %and4.i = lshr i16 %10, 13
  %11 = and i16 %and4.i, 2
  %12 = or i16 %11, %and.lobit.i
  %and12.i = lshr i16 %10, 11
  %13 = and i16 %and12.i, 4
  %14 = or i16 %12, %13
  %and20.i = lshr i16 %10, 9
  %15 = and i16 %and20.i, 8
  %16 = or i16 %14, %15
  %and28.i = lshr i16 %10, 7
  %17 = and i16 %and28.i, 16
  %18 = or i16 %16, %17
  %and36.i = and i32 %conv.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %19 = or i16 %18, 32
  %tflags.5.i = select i1 %tobool37.not.i, i16 %18, i16 %19
  %and44.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %20 = or i16 %tflags.5.i, 64
  %tflags.6.i = select i1 %tobool45.not.i, i16 %tflags.5.i, i16 %20
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 2
  %21 = ptrtoint ptr %i_flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %tflags.6.i, ptr %i_flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5.if.end12_crit_edge
  %arrayidx13 = getelementptr ptr, ptr %data, i32 3
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i2 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i2, align 2
  %conv.i3 = zext i16 %25 to i32
  %and.lobit.i4 = lshr i16 %25, 15
  %and4.i5 = lshr i16 %25, 13
  %26 = and i16 %and4.i5, 2
  %27 = or i16 %26, %and.lobit.i4
  %and12.i6 = lshr i16 %25, 11
  %28 = and i16 %and12.i6, 4
  %29 = or i16 %27, %28
  %and20.i7 = lshr i16 %25, 9
  %30 = and i16 %and20.i7, 8
  %31 = or i16 %29, %30
  %and28.i8 = lshr i16 %25, 7
  %32 = and i16 %and28.i8, 16
  %33 = or i16 %31, %32
  %and36.i9 = and i32 %conv.i3, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i9)
  %tobool37.not.i10 = icmp eq i32 %and36.i9, 0
  %34 = or i16 %33, 32
  %tflags.5.i11 = select i1 %tobool37.not.i10, i16 %33, i16 %34
  %and44.i12 = and i32 %conv.i3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i12)
  %tobool45.not.i13 = icmp eq i32 %and44.i12, 0
  %35 = or i16 %tflags.5.i11, 64
  %tflags.6.i14 = select i1 %tobool45.not.i13, i16 %tflags.5.i11, i16 %35
  %o_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 3
  %36 = ptrtoint ptr %o_flags to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %tflags.6.i14, ptr %o_flags, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %arrayidx20 = getelementptr ptr, ptr %data, i32 4
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %38, null
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i15 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i15, align 4
  %i_key = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 4
  %41 = ptrtoint ptr %i_key to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %i_key, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %arrayidx26 = getelementptr ptr, ptr %data, i32 5
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %43, null
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i16 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i16, align 4
  %o_key = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 5
  %46 = ptrtoint ptr %o_key to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %o_key, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %arrayidx32 = getelementptr ptr, ptr %data, i32 6
  %47 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %48, null
  br i1 %tobool33.not, label %if.end31.if.end38_crit_edge, label %if.then34

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i17 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i17, align 4
  %saddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 8
  %51 = ptrtoint ptr %saddr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %saddr, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end31.if.end38_crit_edge
  %arrayidx39 = getelementptr ptr, ptr %data, i32 7
  %52 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %53, null
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i18 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i18, align 4
  %daddr = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 9
  %56 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %daddr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  %arrayidx46 = getelementptr ptr, ptr %data, i32 8
  %57 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %58, null
  br i1 %tobool47.not, label %if.end45.if.end52_crit_edge, label %if.then48

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i19 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i19 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i.i19, align 1
  %ttl = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 5
  %61 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %ttl, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end45.if.end52_crit_edge
  %arrayidx53 = getelementptr ptr, ptr %data, i32 9
  %62 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %63, null
  br i1 %tobool54.not, label %if.end52.if.end59_crit_edge, label %if.then55

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i20 = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i.i20, align 1
  %tos = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %tos, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end52.if.end59_crit_edge
  %arrayidx60 = getelementptr ptr, ptr %data, i32 10
  %67 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq ptr %68, null
  br i1 %tobool61.not, label %if.end59.if.then65_crit_edge, label %lor.lhs.false

if.end59.if.then65_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.end59
  %add.ptr.i.i21 = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i21 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool64.not = icmp eq i8 %70, 0
  br i1 %tobool64.not, label %lor.lhs.false.if.end70_crit_edge, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

lor.lhs.false.if.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then65:                                        ; preds = %lor.lhs.false.if.then65_crit_edge, %if.end59.if.then65_crit_edge
  %ignore_df = getelementptr i8, ptr %dev, i32 2481
  %71 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ignore_df, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool66.not = icmp eq i8 %72, 0
  br i1 %tobool66.not, label %if.end68, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end68:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  %frag_off = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 4
  %73 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 16384, ptr %frag_off, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %lor.lhs.false.if.end70_crit_edge
  %arrayidx71 = getelementptr ptr, ptr %data, i32 18
  %74 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %75, null
  br i1 %tobool72.not, label %if.end70.if.end79_crit_edge, label %if.then73

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then73:                                        ; preds = %if.end70
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %76 = ptrtoint ptr %collect_md to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %collect_md, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 778, i16 %78)
  %cmp = icmp eq i16 %78, 778
  br i1 %cmp, label %if.then76, label %if.then73.if.end79_crit_edge

if.then73.if.end79_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  %79 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -2, ptr %type, align 16
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.then73.if.end79_crit_edge, %if.end70.if.end79_crit_edge
  %arrayidx80 = getelementptr ptr, ptr %data, i32 19
  %80 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %81, null
  br i1 %tobool81.not, label %if.end79.if.end98_crit_edge, label %if.then82

if.end79.if.end98_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then82:                                        ; preds = %if.end79
  %add.ptr.i.i22 = getelementptr i8, ptr %81, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %add.ptr.i.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool86.not = icmp eq i8 %83, 0
  br i1 %tobool86.not, label %if.then82.if.end92_crit_edge, label %land.lhs.true

if.then82.if.end92_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

land.lhs.true:                                    ; preds = %if.then82
  %frag_off88 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %parms, i32 0, i32 6, i32 4
  %84 = ptrtoint ptr %frag_off88 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %frag_off88, align 2
  %86 = and i16 %85, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool90.not = icmp eq i16 %86, 0
  br i1 %tobool90.not, label %land.lhs.true.if.end92_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true.if.end92_crit_edge, %if.then82.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool95 = icmp ne i8 %83, 0
  %ignore_df97 = getelementptr i8, ptr %dev, i32 2481
  %frombool = zext i1 %tobool95 to i8
  %87 = ptrtoint ptr %ignore_df97 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool, ptr %ignore_df97, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.end92, %if.end79.if.end98_crit_edge
  %arrayidx99 = getelementptr ptr, ptr %data, i32 20
  %88 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx99, align 4
  %tobool100.not = icmp eq ptr %89, null
  br i1 %tobool100.not, label %if.end98.cleanup_crit_edge, label %if.then101

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i24 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i24 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i24, align 4
  %92 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %fwmark, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %if.end98.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then65.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then101 ], [ 0, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_changelink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @ipgre_link_update(ptr nocapture noundef %dev, i1 noundef zeroext %set_mtu) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tun_hlen = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %tun_hlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tun_hlen, align 4
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %2 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %o_flags, align 2
  %conv.i = zext i16 %3 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 4, i32 8
  %and2.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %add5.i = add nuw nsw i32 %spec.select.i, 4
  %addend.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %add5.i
  %and8.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %add11.i = add nuw nsw i32 %addend.1.i, 4
  %addend.2.i = select i1 %tobool9.not.i, i32 %addend.1.i, i32 %add11.i
  %4 = ptrtoint ptr %tun_hlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %addend.2.i, ptr %tun_hlen, align 4
  %sub = sub i32 %addend.2.i, %1
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %5 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hlen, align 4
  %add = add i32 %sub, %6
  store i32 %add, ptr %hlen, align 4
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %7 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header_ops, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len, align 2
  %11 = trunc i32 %sub to i16
  %conv6 = add i16 %10, %11
  store i16 %conv6, ptr %hard_header_len, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %needed_headroom, align 8
  %14 = trunc i32 %sub to i16
  %conv9 = add i16 %13, %14
  store i16 %conv9, ptr %needed_headroom, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 %set_mtu, label %if.then11, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu, align 4
  %sub12 = sub i32 %16, %sub
  %17 = tail call i32 @llvm.smax.i32(i32 %sub12, i32 68)
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mtu, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  br i1 %tobool9.not.i, label %if.then20, label %if.else39

if.then20:                                        ; preds = %if.end15
  br i1 %tobool.not.i, label %if.then20.if.then29_crit_edge, label %lor.lhs.false

if.then20.if.then29_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.then20
  %encap = getelementptr i8, ptr %dev, i32 2428
  %19 = ptrtoint ptr %encap to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %encap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp27 = icmp eq i16 %20, 0
  br i1 %cmp27, label %lor.lhs.false.if.then29_crit_edge, label %if.else31

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.then20.if.then29_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %features, align 16
  %or = or i64 %22, 26845446144
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %23 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %hw_features, align 8
  %or30 = or i64 %24, 26845446144
  store i64 %or30, ptr %hw_features, align 8
  br label %if.end36

if.else31:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %features32 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %25 = ptrtoint ptr %features32 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %features32, align 16
  %and33 = and i64 %26, -26845446145
  store i64 %and33, ptr %features32, align 16
  %hw_features34 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %27 = ptrtoint ptr %hw_features34 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %hw_features34, align 8
  %and35 = and i64 %28, -26845446145
  store i64 %and35, ptr %hw_features34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then29
  %features37 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %29 = ptrtoint ptr %features37 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features37, align 16
  %or38 = or i64 %30, 4096
  store i64 %or38, ptr %features37, align 16
  br label %if.end44

if.else39:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %hw_features40 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %31 = ptrtoint ptr %hw_features40 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %hw_features40, align 8
  %and41 = and i64 %32, -26845446145
  store i64 %and41, ptr %hw_features40, align 8
  %features42 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %33 = ptrtoint ptr %features42 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features42, align 16
  %and43 = and i64 %34, -26845450241
  store i64 %and43, ptr %features42, align 16
  br label %if.end44

if.end44:                                         ; preds = %if.else39, %if.end36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_encap_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_newlink(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipgre_tunnel_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ipgre_netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 778, ptr %type, align 16
  %2 = load i32, ptr @ipgre_net_id, align 4
  tail call void @ip_tunnel_setup(ptr noundef %dev, i32 noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_tunnel_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %o_flags.i = getelementptr i8, ptr %dev, i32 2386
  %0 = ptrtoint ptr %o_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %o_flags.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 4, i32 8
  %and2.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %add5.i.i = add nuw nsw i32 %spec.select.i.i, 4
  %addend.1.i.i = select i1 %tobool3.not.i.i, i32 %spec.select.i.i, i32 %add5.i.i
  %and8.i.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  %add11.i.i = add nuw nsw i32 %addend.1.i.i, 4
  %addend.2.i.i = select i1 %tobool9.not.i.i, i32 %addend.1.i.i, i32 %add11.i.i
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %addend.2.i.i, ptr %tun_hlen.i, align 4
  %protocol.i = getelementptr i8, ptr %dev, i32 2405
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 47, ptr %protocol.i, align 1
  %encap_hlen.i = getelementptr i8, ptr %dev, i32 2420
  %4 = ptrtoint ptr %encap_hlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encap_hlen.i, align 4
  %add.i = add i32 %addend.2.i.i, %5
  %hlen.i = getelementptr i8, ptr %dev, i32 2424
  %6 = ptrtoint ptr %hlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %hlen.i, align 4
  %7 = trunc i32 %add.i to i16
  %conv.i = add i16 %7, 20
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %needed_headroom.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i, align 16
  %or.i = or i64 %10, 105
  store i64 %or.i, ptr %features.i, align 16
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %11 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw_features.i, align 8
  %or6.i = or i64 %12, 105
  store i64 %or6.i, ptr %hw_features.i, align 8
  br i1 %tobool9.not.i.i, label %if.then.i, label %entry.__gre_tunnel_init.exit_crit_edge

entry.__gre_tunnel_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__gre_tunnel_init.exit

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not.i.i, label %if.then.i.if.then17.i_crit_edge, label %lor.lhs.false.i

if.then.i.if.then17.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %encap.i = getelementptr i8, ptr %dev, i32 2428
  %13 = ptrtoint ptr %encap.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %encap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then17.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %if.then.i.if.then17.i_crit_edge
  %or19.i = or i64 %10, 26845446249
  %15 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %or19.i, ptr %features.i, align 16
  %or21.i = or i64 %12, 26845446249
  %16 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or21.i, ptr %hw_features.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %lor.lhs.false.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %features.i, align 16
  %or23.i = or i64 %18, 4096
  store i64 %or23.i, ptr %features.i, align 16
  br label %__gre_tunnel_init.exit

__gre_tunnel_init.exit:                           ; preds = %if.end.i, %entry.__gre_tunnel_init.exit_crit_edge
  %saddr = getelementptr i8, ptr %dev, i32 2408
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %saddr, i32 noundef 4) #14
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %19 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %daddr, align 4
  %21 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %broadcast, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %flags, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %23 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %24, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %25 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %__gre_tunnel_init.exit.if.else_crit_edge, label %land.lhs.true

__gre_tunnel_init.exit.if.else_crit_edge:         ; preds = %__gre_tunnel_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %__gre_tunnel_init.exit
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %26 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %collect_md, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not = icmp eq i8 %27, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %and.i47 = and i32 %20, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i47)
  %cmp.i48 = icmp eq i32 %and.i47, -536870912
  br i1 %cmp.i48, label %if.then6, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then6:                                         ; preds = %if.then
  %28 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not = icmp eq i32 %29, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.end

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %flags, align 8
  br label %if.end22.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %__gre_tunnel_init.exit.if.else_crit_edge
  %collect_md12 = getelementptr i8, ptr %dev, i32 2480
  %31 = ptrtoint ptr %collect_md12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %collect_md12, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool13.not = icmp eq i8 %32, 0
  br i1 %tobool13.not, label %if.else.if.end22.sink.split_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.else.if.end22.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else.if.end22.sink.split_crit_edge, %if.end
  %header_ops15 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %33 = ptrtoint ptr %header_ops15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ipgre_header_ops, ptr %header_ops15, align 4
  %34 = ptrtoint ptr %hlen.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hlen.i, align 4
  %36 = trunc i32 %35 to i16
  %conv18 = add i16 %36, 20
  %hard_header_len19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %37 = ptrtoint ptr %hard_header_len19 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv18, ptr %hard_header_len19, align 2
  %38 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %needed_headroom.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %call23 = tail call i32 @ip_tunnel_init(ptr noundef %dev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -22, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_open(ptr nocapture noundef %dev) #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr, align 4
  %and.i = and i32 %1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.then, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup25

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #14
  %net = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %saddr = getelementptr i8, ptr %dev, i32 2408
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saddr, align 4
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %6 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %o_key, align 4
  %tos = getelementptr i8, ptr %dev, i32 2397
  %8 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tos, align 1
  %10 = and i8 %9, 30
  %link = getelementptr i8, ptr %dev, i32 2380
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link, align 4
  %13 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %14 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %fl4, align 8
  %daddr1.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %15 = ptrtoint ptr %daddr1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %1, ptr %daddr1.i, align 4
  %saddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %16 = ptrtoint ptr %saddr2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %saddr2.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %17 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %10, ptr %flowic_tos.i, align 4
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %18 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 47, ptr %flowic_proto.i, align 2
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %19 = ptrtoint ptr %uli.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %uli.i, align 8
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %3, ptr noundef nonnull %fl4, ptr noundef null) #14
  %cmp.i39 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i.i, align 4
  call void @dst_release(ptr noundef %call.i.i) #14
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i, label %if.end.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true.i

if.end.__in_dev_get_rtnl.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rtnl.exit

__in_dev_get_rtnl.exit:                           ; preds = %if.then.i, %land.lhs.true2.i.__in_dev_get_rtnl.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rtnl.exit_crit_edge, %if.end.__in_dev_get_rtnl.exit_crit_edge
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 78
  %22 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ip_ptr.i, align 32
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %__in_dev_get_rtnl.exit.cleanup_crit_edge, label %if.end18

__in_dev_get_rtnl.exit.cleanup_crit_edge:         ; preds = %__in_dev_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %__in_dev_get_rtnl.exit
  %ifindex = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 17
  %24 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex, align 4
  %mlink = getelementptr i8, ptr %dev, i32 2416
  %26 = ptrtoint ptr %mlink to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mlink, align 4
  %call.i40 = call zeroext i1 @lockdep_rtnl_is_held() #14
  br i1 %call.i40, label %if.end18.__in_dev_get_rtnl.exit48_crit_edge, label %land.lhs.true.i43

if.end18.__in_dev_get_rtnl.exit48_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit48

land.lhs.true.i43:                                ; preds = %if.end18
  %call1.i41 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.__in_dev_get_rtnl.exit48_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.__in_dev_get_rtnl.exit48_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit48

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @__in_dev_get_rtnl.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.__in_dev_get_rtnl.exit48_crit_edge, label %if.then.i46

land.lhs.true2.i45.__in_dev_get_rtnl.exit48_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rtnl.exit48

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rtnl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 249, ptr noundef nonnull @.str.4) #14
  br label %__in_dev_get_rtnl.exit48

__in_dev_get_rtnl.exit48:                         ; preds = %if.then.i46, %land.lhs.true2.i45.__in_dev_get_rtnl.exit48_crit_edge, %land.lhs.true.i43.__in_dev_get_rtnl.exit48_crit_edge, %if.end18.__in_dev_get_rtnl.exit48_crit_edge
  %27 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ip_ptr.i, align 32
  %29 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %daddr, align 4
  call void @ip_mc_inc_group(ptr noundef %28, i32 noundef %30) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #14
  br label %cleanup25

cleanup:                                          ; preds = %__in_dev_get_rtnl.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #14
  br label %cleanup25

cleanup25:                                        ; preds = %cleanup, %__in_dev_get_rtnl.exit48, %entry.cleanup25_crit_edge
  %retval.1 = phi i32 [ -99, %cleanup ], [ 0, %__in_dev_get_rtnl.exit48 ], [ 0, %entry.cleanup25_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %daddr = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %daddr, align 4
  %and.i = and i32 %1, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %mlink = getelementptr i8, ptr %dev, i32 2416
  %2 = ptrtoint ptr %mlink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mlink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %net = getelementptr i8, ptr %dev, i32 2324
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %call3 = tail call ptr @inetdev_by_index(ptr noundef %5, i32 noundef %3) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.if.end9_crit_edge, label %if.then5

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr, align 4
  tail call void @__ip_mc_dec_group(ptr noundef nonnull %call3, i32 noundef %7, i32 noundef 3264) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.free_skb_crit_edge, label %pskb_inet_may_pull.exit, !prof !107

if.end.i.i.i.free_skb_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #14
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.free_skb_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

pskb_inet_may_pull.exit.free_skb_crit_edge:       ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %12 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %collect_md, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i, align 8
  tail call fastcc void @gre_fb_xmit(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %15)
  br label %cleanup28

if.end3:                                          ; preds = %if.end
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %16 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %header_ops, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %18 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hlen, align 4
  %add = add i32 %19, 20
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %20 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then5.if.end9_crit_edge, label %skb_header_cloned.exit.i

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

skb_header_cloned.exit.i:                         ; preds = %if.then5
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #14
  %23 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %24, 65535
  %shr.i.i = ashr i32 %24, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.if.end9_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end9_crit_edge:       ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool7.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool7.not, label %skb_cow_head.exit.if.end9_crit_edge, label %skb_cow_head.exit.free_skb_crit_edge

skb_cow_head.exit.free_skb_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

skb_cow_head.exit.if.end9_crit_edge:              ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %skb_cow_head.exit.if.end9_crit_edge, %skb_header_cloned.exit.i.if.end9_crit_edge, %if.then5.if.end9_crit_edge
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %27 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %29 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %30 to i32
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %conv.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %add, %sub.ptr.sub.i
  br i1 %cmp, label %if.end9.free_skb_crit_edge, label %cleanup

if.end9.free_skb_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

cleanup:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #14
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %33 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i57 = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i58 = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i59 = sub i32 %sub.ptr.lhs.cast.i57, %sub.ptr.rhs.cast.i58
  %conv.i = trunc i32 %sub.ptr.sub.i59 to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %mac_header.i, align 2
  br label %if.end18

if.else:                                          ; preds = %if.end3
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %36 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %needed_headroom, align 8
  %conv = zext i16 %37 to i32
  %cloned.i.i60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %38 = ptrtoint ptr %cloned.i.i60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.i61 = load i8, ptr %cloned.i.i60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i61)
  %tobool.not.i.i62 = icmp sgt i8 %bf.load.i.i61, -1
  br i1 %tobool.not.i.i62, label %if.else.skb_header_cloned.exit.i77_crit_edge, label %if.end.i.i70

if.else.skb_header_cloned.exit.i77_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i77

if.end.i.i70:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i.i63, align 4
  %dataref1.i.i64 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 10
  %call.i.i.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i64, i32 noundef 4) #14
  %41 = ptrtoint ptr %dataref1.i.i64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %dataref1.i.i64, align 4
  %and.i.i66 = and i32 %42, 65535
  %shr.i.i67 = ashr i32 %42, 16
  %sub.i.i68 = sub nsw i32 %and.i.i66, %shr.i.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i68)
  %cmp.i.not.i69 = icmp eq i32 %sub.i.i68, 1
  br label %skb_header_cloned.exit.i77

skb_header_cloned.exit.i77:                       ; preds = %if.end.i.i70, %if.else.skb_header_cloned.exit.i77_crit_edge
  %retval.0.i.i71 = phi i1 [ %cmp.i.not.i69, %if.end.i.i70 ], [ true, %if.else.skb_header_cloned.exit.i77_crit_edge ]
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %45 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i74 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i.i.i75 = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i.i76 = sub i32 %sub.ptr.lhs.cast.i.i.i74, %sub.ptr.rhs.cast.i.i.i75
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i76, i32 %conv)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i76, %conv
  %or.cond.i.i = and i1 %retval.0.i.i71, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i77.if.end17_crit_edge, label %skb_cow_head.exit82

skb_header_cloned.exit.i77.if.end17_crit_edge:    ; preds = %skb_header_cloned.exit.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

skb_cow_head.exit82:                              ; preds = %skb_header_cloned.exit.i77
  %47 = tail call i32 @llvm.usub.sat.i32(i32 %conv, i32 %sub.ptr.sub.i.i.i76) #14
  %add.i.i78 = add nuw nsw i32 %47, 127
  %and.i4.i = and i32 %add.i.i78, 130944
  %call4.i.i79 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i79)
  %tobool15.not = icmp eq i32 %call4.i.i79, 0
  br i1 %tobool15.not, label %skb_cow_head.exit82.if.end17_crit_edge, label %skb_cow_head.exit82.free_skb_crit_edge

skb_cow_head.exit82.free_skb_crit_edge:           ; preds = %skb_cow_head.exit82
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

skb_cow_head.exit82.if.end17_crit_edge:           ; preds = %skb_cow_head.exit82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %skb_cow_head.exit82.if.end17_crit_edge, %skb_header_cloned.exit.i77.if.end17_crit_edge
  %iph = getelementptr i8, ptr %dev, i32 2396
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %cleanup
  %tnl_params.1 = phi ptr [ %26, %cleanup ], [ %iph, %if.end17 ]
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %48 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %o_flags, align 2
  %50 = and i16 %49, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool21.not = icmp eq i16 %50, 0
  %cond.i = select i1 %tobool21.not, i32 64, i32 128
  %call.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not = icmp eq i32 %call.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end18.free_skb_crit_edge

if.end18.free_skb_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.end26:                                         ; preds = %if.end18
  %51 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %protocol.i, align 8
  %53 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %o_flags, align 2
  %55 = and i16 %54, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i = icmp eq i16 %55, 0
  br i1 %tobool.not.i, label %if.end26.__gre_xmit.exit_crit_edge, label %if.then.i

if.end26.__gre_xmit.exit_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %__gre_xmit.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %o_seqno.i = getelementptr i8, ptr %dev, i32 2340
  %56 = ptrtoint ptr %o_seqno.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %o_seqno.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %o_seqno.i, align 4
  br label %__gre_xmit.exit

__gre_xmit.exit:                                  ; preds = %if.then.i, %if.end26.__gre_xmit.exit_crit_edge
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2344
  %58 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tun_hlen.i, align 4
  %o_key.i = getelementptr i8, ptr %dev, i32 2392
  %60 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %o_key.i, align 4
  %o_seqno4.i = getelementptr i8, ptr %dev, i32 2340
  %62 = ptrtoint ptr %o_seqno4.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %o_seqno4.i, align 4
  tail call fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %59, i16 noundef zeroext %54, i16 noundef zeroext %52, i32 noundef %61, i32 noundef %63) #14
  %protocol.i83 = getelementptr inbounds %struct.iphdr, ptr %tnl_params.1, i32 0, i32 6
  %64 = ptrtoint ptr %protocol.i83 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %protocol.i83, align 1
  tail call void @ip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %tnl_params.1, i8 noundef zeroext %65) #14
  br label %cleanup28

free_skb:                                         ; preds = %if.end18.free_skb_crit_edge, %skb_cow_head.exit82.free_skb_crit_edge, %if.end9.free_skb_crit_edge, %skb_cow_head.exit.free_skb_crit_edge, %pskb_inet_may_pull.exit.free_skb_crit_edge, %if.end.i.i.i.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %66 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %free_skb, %__gre_xmit.exit, %if.then2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_siocdevprivate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %entry.if.end24_crit_edge [
    i32 35313, label %entry.if.then_crit_edge
    i32 35315, label %entry.if.then_crit_edge104
  ]

entry.if.then_crit_edge104:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge104
  %iph = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6
  %1 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %iph, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp2.not = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp2.not, label %lor.lhs.false4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.then
  %protocol = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp7.not = icmp eq i8 %3, 47
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp13.not = icmp eq i8 %bf.clear, 5
  %or.cond = select i1 %cmp7.not, i1 %cmp13.not, i1 false
  br i1 %or.cond, label %lor.lhs.false15, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false4
  %frag_off = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %frag_off, align 2
  %6 = and i16 %5, -16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %lor.lhs.false18, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_flags, align 4
  %o_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %o_flags, align 2
  %or78 = or i16 %10, %8
  %11 = and i16 %or78, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool22.not = icmp eq i16 %11, 0
  br i1 %tobool22.not, label %lor.lhs.false18.if.end24_crit_edge, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false18.if.end24_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false18.if.end24_crit_edge, %entry.if.end24_crit_edge
  %i_flags25 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %12 = ptrtoint ptr %i_flags25 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_flags25, align 4
  %conv.i = zext i16 %13 to i32
  %and.lobit.i = lshr i16 %13, 15
  %and4.i = lshr i16 %13, 13
  %14 = and i16 %and4.i, 2
  %15 = or i16 %14, %and.lobit.i
  %and12.i = lshr i16 %13, 11
  %16 = and i16 %and12.i, 4
  %17 = or i16 %15, %16
  %and20.i = lshr i16 %13, 9
  %18 = and i16 %and20.i, 8
  %19 = or i16 %17, %18
  %and28.i = lshr i16 %13, 7
  %20 = and i16 %and28.i, 16
  %21 = or i16 %19, %20
  %and36.i = and i32 %conv.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %22 = or i16 %21, 32
  %tflags.5.i = select i1 %tobool37.not.i, i16 %21, i16 %22
  %and44.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %23 = or i16 %tflags.5.i, 64
  %tflags.6.i = select i1 %tobool45.not.i, i16 %tflags.5.i, i16 %23
  %24 = ptrtoint ptr %i_flags25 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %tflags.6.i, ptr %i_flags25, align 4
  %o_flags27 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 3
  %25 = ptrtoint ptr %o_flags27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %o_flags27, align 2
  %conv.i79 = zext i16 %26 to i32
  %and.lobit.i80 = lshr i16 %26, 15
  %and4.i81 = lshr i16 %26, 13
  %27 = and i16 %and4.i81, 2
  %28 = or i16 %27, %and.lobit.i80
  %and12.i82 = lshr i16 %26, 11
  %29 = and i16 %and12.i82, 4
  %30 = or i16 %28, %29
  %and20.i83 = lshr i16 %26, 9
  %31 = and i16 %and20.i83, 8
  %32 = or i16 %30, %31
  %and28.i84 = lshr i16 %26, 7
  %33 = and i16 %and28.i84, 16
  %34 = or i16 %32, %33
  %and36.i85 = and i32 %conv.i79, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i85)
  %tobool37.not.i86 = icmp eq i32 %and36.i85, 0
  %35 = or i16 %34, 32
  %tflags.5.i87 = select i1 %tobool37.not.i86, i16 %34, i16 %35
  %and44.i88 = and i32 %conv.i79, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i88)
  %tobool45.not.i89 = icmp eq i32 %and44.i88, 0
  %36 = or i16 %tflags.5.i87, 64
  %tflags.6.i90 = select i1 %tobool45.not.i89, i16 %tflags.5.i87, i16 %36
  %37 = ptrtoint ptr %o_flags27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %tflags.6.i90, ptr %o_flags27, align 2
  %call30 = tail call i32 @ip_tunnel_ctl(ptr noundef %dev, ptr noundef %p, i32 noundef %cmd) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 35315, i32 %cmd)
  %cmp34 = icmp eq i32 %cmd, 35315
  br i1 %cmp34, label %if.then36, label %if.end33.if.end47_crit_edge

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then36:                                        ; preds = %if.end33
  %38 = ptrtoint ptr %i_flags25 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %i_flags25, align 4
  %i_flags39 = getelementptr i8, ptr %dev, i32 2384
  %40 = ptrtoint ptr %i_flags39 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %i_flags39, align 4
  %41 = ptrtoint ptr %o_flags27 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %o_flags27, align 2
  %o_flags42 = getelementptr i8, ptr %dev, i32 2386
  %43 = ptrtoint ptr %o_flags42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %o_flags42, align 2
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 136
  %44 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rtnl_link_ops, align 4
  %kind = getelementptr inbounds %struct.rtnl_link_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kind, align 4
  %call43 = tail call i32 @strcmp(ptr noundef %47, ptr noundef nonnull dereferenceable(7) @.str.5) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then36.if.end47_crit_edge, label %if.then45

if.then36.if.end47_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ipgre_link_update(ptr noundef %dev, i1 noundef zeroext true)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then36.if.end47_crit_edge, %if.end33.if.end47_crit_edge
  %48 = ptrtoint ptr %i_flags25 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %i_flags25, align 4
  %conv.i91 = zext i16 %49 to i32
  %rev65.i = tail call i16 @llvm.bitreverse.i16(i16 %49) #14
  %50 = and i16 %rev65.i, -2048
  %and36.i92 = and i32 %conv.i91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i92)
  %tobool37.not.i93 = icmp eq i32 %and36.i92, 0
  %51 = or i16 %50, 1792
  %flags.5.i = select i1 %tobool37.not.i93, i16 %50, i16 %51
  %and44.i94 = and i32 %conv.i91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i94)
  %tobool45.not.i95 = icmp eq i32 %and44.i94, 0
  %52 = or i16 %flags.5.i, 7
  %flags.6.i = select i1 %tobool45.not.i95, i16 %flags.5.i, i16 %52
  %53 = ptrtoint ptr %i_flags25 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %flags.6.i, ptr %i_flags25, align 4
  %54 = ptrtoint ptr %o_flags27 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %o_flags27, align 2
  %conv.i96 = zext i16 %55 to i32
  %rev65.i97 = tail call i16 @llvm.bitreverse.i16(i16 %55) #14
  %56 = and i16 %rev65.i97, -2048
  %and36.i98 = and i32 %conv.i96, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i98)
  %tobool37.not.i99 = icmp eq i32 %and36.i98, 0
  %57 = or i16 %56, 1792
  %flags.5.i100 = select i1 %tobool37.not.i99, i16 %56, i16 %57
  %and44.i101 = and i32 %conv.i96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i101)
  %tobool45.not.i102 = icmp eq i32 %and44.i101, 0
  %58 = or i16 %flags.5.i100, 7
  %flags.6.i103 = select i1 %tobool45.not.i102, i16 %flags.5.i100, i16 %58
  %59 = ptrtoint ptr %o_flags27 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %flags.6.i103, ptr %o_flags27, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end24.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %lor.lhs.false18.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %call30, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_header(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %0 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hlen, align 4
  %add = add i32 %1, 20
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add) #14
  %add.ptr = getelementptr %struct.iphdr, ptr %call1, i32 1
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %2 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %o_flags, align 2
  %conv.i = zext i16 %3 to i32
  %rev65.i = tail call i16 @llvm.bitreverse.i16(i16 %3) #14
  %4 = and i16 %rev65.i, -2048
  %and36.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %5 = or i16 %4, 1792
  %flags.5.i = select i1 %tobool37.not.i, i16 %4, i16 %5
  %and44.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %6 = or i16 %flags.5.i, 7
  %flags.6.i = select i1 %tobool45.not.i, i16 %flags.5.i, i16 %6
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %flags.6.i, ptr %add.ptr, align 1
  %protocol = getelementptr %struct.iphdr, ptr %call1, i32 1, i32 2
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %type, ptr %protocol, align 1
  %iph4 = getelementptr i8, ptr %dev, i32 2396
  %9 = call ptr @memcpy(ptr %call1, ptr %iph4, i32 20)
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %saddr5 = getelementptr inbounds %struct.iphdr, ptr %call1, i32 0, i32 8
  %10 = ptrtoint ptr %saddr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %saddr, align 1
  %12 = ptrtoint ptr %saddr5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %saddr5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool6.not = icmp eq ptr %daddr, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %daddr8 = getelementptr inbounds %struct.iphdr, ptr %call1, i32 0, i32 9
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %daddr, align 1
  %15 = ptrtoint ptr %daddr8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %daddr8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %daddr10 = getelementptr inbounds %struct.iphdr, ptr %call1, i32 0, i32 9
  %16 = ptrtoint ptr %daddr10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hlen, align 4
  %add14 = add i32 %19, 20
  %sub = sub i32 -20, %19
  %retval.0 = select i1 %tobool11.not, i32 %sub, i32 %add14
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipgre_header_parse(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %haddr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 8
  %4 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saddr, align 4
  %6 = ptrtoint ptr %haddr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %haddr, align 1
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_mc_inc_group(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inetdev_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_mc_dec_group(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_ctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erspan_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #14
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_mtu, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @erspan_netdev_ops, ptr %netdev_ops, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, -34817
  %or = or i64 %and, 32768
  store i64 %or, ptr %priv_flags, align 16
  %4 = load i32, ptr @erspan_net_id, align 4
  tail call void @ip_tunnel_setup(ptr noundef %dev, i32 noundef %4) #14
  %erspan_ver = getelementptr i8, ptr %dev, i32 2352
  %5 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %erspan_ver, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @erspan_validate(ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.if.end11.i_crit_edge, label %if.then.i

if.end.if.end11.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then.i:                                        ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 10
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %or.i.i.i = or i32 %5, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.cleanup_crit_edge, label %is_valid_ether_addr.exit.i.if.end11.i_crit_edge

is_valid_ether_addr.exit.i.if.end11.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

is_valid_ether_addr.exit.i.cleanup_crit_edge:     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i:                                       ; preds = %is_valid_ether_addr.exit.i.if.end11.i_crit_edge, %if.end.if.end11.i_crit_edge
  %arrayidx12.i = getelementptr ptr, ptr %data, i32 7
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12.i, align 4
  %tobool13.not.i = icmp eq ptr %10, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end.i.i_crit_edge, label %if.then14.i

if.end11.i.if.end.i.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then14.i:                                      ; preds = %if.end11.i
  %add.ptr.i29.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %daddr.0.copyload.i = load i32, ptr %add.ptr.i29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %daddr.0.copyload.i)
  %tobool17.not.i = icmp eq i32 %daddr.0.copyload.i, 0
  br i1 %tobool17.not.i, label %if.then14.i.cleanup_crit_edge, label %if.then14.i.if.end.i.i_crit_edge

if.then14.i.if.end.i.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then14.i.if.end.i.i_crit_edge, %if.end11.i.if.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr ptr, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i.i.i, align 2
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end6.i.i_crit_edge
  %flags.0.i.i = phi i16 [ %15, %if.then2.i.i ], [ 0, %if.end.i.i.if.end6.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr ptr, ptr %data, i32 3
  %16 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %17, null
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end16.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %or1443.i.i = or i16 %19, %flags.0.i.i
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end16.i.i_crit_edge
  %flags.1.i.i = phi i16 [ %or1443.i.i, %if.then9.i.i ], [ %flags.0.i.i, %if.end6.i.i.if.end16.i.i_crit_edge ]
  %20 = and i16 %flags.1.i.i, 16391
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool18.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end16.i.i.cleanup_crit_edge

if.end16.i.i.cleanup_crit_edge:                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %arrayidx21.i.i = getelementptr ptr, ptr %data, i32 18
  %21 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %22, null
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end3_crit_edge, label %land.lhs.true.i.i

if.end20.i.i.if.end3_crit_edge:                   ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true.i.i:                                ; preds = %if.end20.i.i
  %arrayidx23.i.i = getelementptr ptr, ptr %data, i32 14
  %23 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx23.i.i, align 4
  %tobool24.not.i.i = icmp eq ptr %24, null
  br i1 %tobool24.not.i.i, label %land.lhs.true.i.i.if.end3_crit_edge, label %land.lhs.true25.i.i

land.lhs.true.i.i.if.end3_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

land.lhs.true25.i.i:                              ; preds = %land.lhs.true.i.i
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i45.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.not.i.i = icmp eq i16 %26, 0
  br i1 %cmp.not.i.i, label %land.lhs.true25.i.i.if.end3_crit_edge, label %land.lhs.true25.i.i.cleanup_crit_edge

land.lhs.true25.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true25.i.i.if.end3_crit_edge:            ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true25.i.i.if.end3_crit_edge, %land.lhs.true.i.i.if.end3_crit_edge, %if.end20.i.i.if.end3_crit_edge
  %arrayidx = getelementptr ptr, ptr %data, i32 22
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %28, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %land.lhs.true

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %add.ptr.i.i75 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i75 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp = icmp eq i8 %30, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %31 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx7.i.i, align 4
  %tobool11.not = icmp eq ptr %32, null
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i76 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i76 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i76, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end9.if.end18_crit_edge
  %flags.0 = phi i16 [ %34, %if.then12 ], [ 0, %if.end9.if.end18_crit_edge ]
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool20.not = icmp eq ptr %36, null
  br i1 %tobool20.not, label %if.end18.if.end28_crit_edge, label %if.then21

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i77 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i77, align 2
  %or2674 = or i16 %38, %flags.0
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end18.if.end28_crit_edge
  %flags.1 = phi i16 [ %or2674, %if.then21 ], [ %flags.0, %if.end18.if.end28_crit_edge ]
  %39 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx21.i.i, align 4
  %tobool30.not = icmp ne ptr %40, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 12288, i16 %flags.1)
  %cmp33.not = icmp eq i16 %flags.1, 12288
  %or.cond = select i1 %tobool30.not, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %if.end36, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %arrayidx37 = getelementptr ptr, ptr %data, i32 4
  %41 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %42, null
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %land.lhs.true39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

land.lhs.true39:                                  ; preds = %if.end36
  %add.ptr.i.i78 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %44)
  %tobool42.not = icmp ult i32 %44, 1024
  br i1 %tobool42.not, label %land.lhs.true39.if.end44_crit_edge, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true39.if.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true39.if.end44_crit_edge, %if.end36.if.end44_crit_edge
  %arrayidx45 = getelementptr ptr, ptr %data, i32 5
  %45 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %46, null
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %land.lhs.true47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

land.lhs.true47:                                  ; preds = %if.end44
  %add.ptr.i.i79 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %48)
  %tobool51.not = icmp ult i32 %48, 1024
  br i1 %tobool51.not, label %land.lhs.true47.if.end53_crit_edge, label %land.lhs.true47.cleanup_crit_edge

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true47.if.end53_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true47.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true39.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true25.i.i.cleanup_crit_edge, %if.end16.i.i.cleanup_crit_edge, %if.then14.i.cleanup_crit_edge, %is_valid_ether_addr.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %land.lhs.true39.cleanup_crit_edge ], [ -22, %land.lhs.true47.cleanup_crit_edge ], [ -99, %if.end.i.cleanup_crit_edge ], [ -22, %land.lhs.true25.i.i.cleanup_crit_edge ], [ -22, %if.end16.i.i.cleanup_crit_edge ], [ -22, %if.then14.i.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.i.cleanup_crit_edge ], [ -22, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erspan_newlink(ptr nocapture noundef readnone %src_net, ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %ipencap.i = alloca %struct.ip_tunnel_encap, align 8
  %p = alloca %struct.ip_tunnel_parm, align 4
  %fwmark = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #14
  %0 = call ptr @memset(ptr %p, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwmark) #14
  %1 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap.i) #14
  %2 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 3
  %5 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %ipencap.i, align 8
  %tobool.not.i.i = icmp eq ptr %data, null
  br i1 %tobool.not.i.i, label %if.end.thread, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr ptr, ptr %data, i32 14
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %10 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %ipencap.i, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %11 = xor i1 %tobool2.not.i.i, true
  %arrayidx6.i.i = getelementptr ptr, ptr %data, i32 15
  %12 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %13, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i43.i.i, align 2
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %2, align 2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end11.i.i_crit_edge
  %ret.1.off0.i.i = phi i1 [ true, %if.then8.i.i ], [ %11, %if.end5.i.i.if.end11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr ptr, ptr %data, i32 16
  %17 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %18, null
  br i1 %tobool13.not.i.i, label %if.end17.i.i, label %if.end17.i.thread.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx18.i.i = getelementptr ptr, ptr %data, i32 17
  %19 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i.i, label %ipgre_netlink_encap_parms.exit.i, label %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i:                              ; preds = %if.end11.i.i
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %18, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %3, align 4
  %arrayidx18.i12.i = getelementptr ptr, ptr %data, i32 17
  %24 = ptrtoint ptr %arrayidx18.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx18.i12.i, align 4
  %tobool19.not.i13.i = icmp eq ptr %25, null
  br i1 %tobool19.not.i13.i, label %if.end17.i.thread.i.if.then.i_crit_edge, label %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i.if.then.i_crit_edge:          ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ipgre_netlink_encap_parms.exit.thread.i:          ; preds = %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge
  %26 = phi ptr [ %25, %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ], [ %20, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ]
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i45.i.i, align 2
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %4, align 2
  br label %if.then.i

ipgre_netlink_encap_parms.exit.i:                 ; preds = %if.end17.i.i
  br i1 %ret.1.off0.i.i, label %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, label %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge

ipgre_netlink_encap_parms.exit.i.if.end_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, %ipgre_netlink_encap_parms.exit.thread.i, %if.end17.i.thread.i.if.then.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %call2.i = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i.i, ptr noundef nonnull %ipencap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ipgre_newlink_encap_setup.exit, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_newlink_encap_setup.exit:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  %call1.i = call fastcc i32 @ipgre_netlink_parms(ptr noundef %dev, ptr noundef nonnull %data, ptr noundef nonnull %p, ptr noundef nonnull %fwmark) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  %call1.i18 = call fastcc i32 @ipgre_netlink_parms(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %p, ptr noundef nonnull %fwmark) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %if.end.thread.if.end4_crit_edge, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.thread.if.end4_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4.i:                                        ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %data, i32 22
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %31, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end13.i_crit_edge, label %if.then6.i

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end4.i
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i.i, align 1
  %erspan_ver.i = getelementptr i8, ptr %dev, i32 2352
  %34 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %erspan_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i15 = icmp ugt i8 %33, 2
  br i1 %cmp.i15, label %if.then6.i.cleanup_crit_edge, label %if.then6.i.if.end13.i_crit_edge

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13.i:                                       ; preds = %if.then6.i.if.end13.i_crit_edge, %if.end4.i.if.end13.i_crit_edge
  %erspan_ver14.i = getelementptr i8, ptr %dev, i32 2352
  %35 = ptrtoint ptr %erspan_ver14.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %erspan_ver14.i, align 4
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %36, label %if.end13.i.if.end4_crit_edge [
    i8 1, label %if.then18.i
    i8 2, label %if.then33.i
  ]

if.end13.i.if.end4_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then18.i:                                      ; preds = %if.end13.i
  %arrayidx19.i = getelementptr ptr, ptr %data, i32 21
  %38 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %39, null
  br i1 %tobool20.not.i, label %if.then18.i.if.end4_crit_edge, label %if.then21.i

if.then18.i.if.end4_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then21.i:                                      ; preds = %if.then18.i
  %add.ptr.i.i1.i = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i1.i, align 4
  %index.i = getelementptr i8, ptr %dev, i32 2348
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %41)
  %tobool25.not.i = icmp ult i32 %41, 1048576
  br i1 %tobool25.not.i, label %if.then21.i.if.end4_crit_edge, label %if.then21.i.cleanup_crit_edge

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21.i.if.end4_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then33.i:                                      ; preds = %if.end13.i
  %arrayidx34.i = getelementptr ptr, ptr %data, i32 23
  %43 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx34.i, align 4
  %tobool35.not.i = icmp eq ptr %44, null
  br i1 %tobool35.not.i, label %if.then33.i.if.end45.i_crit_edge, label %if.then36.i

if.then33.i.if.end45.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.then33.i
  %add.ptr.i.i2.i = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i2.i, align 1
  %dir.i = getelementptr i8, ptr %dev, i32 2353
  %47 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %tobool42.not.i = icmp ult i8 %46, 2
  br i1 %tobool42.not.i, label %if.then36.i.if.end45.i_crit_edge, label %if.then36.i.cleanup_crit_edge

if.then36.i.cleanup_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36.i.if.end45.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then36.i.if.end45.i_crit_edge, %if.then33.i.if.end45.i_crit_edge
  %arrayidx46.i = getelementptr ptr, ptr %data, i32 24
  %48 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx46.i, align 4
  %tobool47.not.i = icmp eq ptr %49, null
  br i1 %tobool47.not.i, label %if.end45.i.if.end4_crit_edge, label %if.then48.i

if.end45.i.if.end4_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then48.i:                                      ; preds = %if.end45.i
  %add.ptr.i.i3.i = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i.i3.i, align 2
  %hwid.i = getelementptr i8, ptr %dev, i32 2354
  %52 = ptrtoint ptr %hwid.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %hwid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %51)
  %tobool54.not.i = icmp ult i16 %51, 64
  br i1 %tobool54.not.i, label %if.then48.i.if.end4_crit_edge, label %if.then48.i.cleanup_crit_edge

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then48.i.if.end4_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %if.then48.i.if.end4_crit_edge, %if.end45.i.if.end4_crit_edge, %if.then21.i.if.end4_crit_edge, %if.then18.i.if.end4_crit_edge, %if.end13.i.if.end4_crit_edge, %if.end.thread.if.end4_crit_edge
  %53 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fwmark, align 4
  %call5 = call i32 @ip_tunnel_newlink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %54) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then48.i.cleanup_crit_edge, %if.then36.i.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ipgre_newlink_encap_setup.exit
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call2.i, %ipgre_newlink_encap_setup.exit ], [ %call1.i18, %if.end.thread.cleanup_crit_edge ], [ -22, %if.then48.i.cleanup_crit_edge ], [ -22, %if.then36.i.cleanup_crit_edge ], [ -22, %if.then21.i.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ %call1.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwmark) #14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erspan_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef %data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %ipencap.i = alloca %struct.ip_tunnel_encap, align 8
  %fwmark = alloca i32, align 4
  %p = alloca %struct.ip_tunnel_parm, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwmark) #14
  %fwmark1 = getelementptr i8, ptr %dev, i32 2476
  %0 = ptrtoint ptr %fwmark1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwmark1, align 4
  %2 = ptrtoint ptr %fwmark to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fwmark, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %p) #14
  %3 = call ptr @memset(ptr %p, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipencap.i) #14
  %4 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ip_tunnel_encap, ptr %ipencap.i, i32 0, i32 3
  %7 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %ipencap.i, align 8
  %tobool.not.i.i = icmp eq ptr %data, null
  br i1 %tobool.not.i.i, label %if.end.thread, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr ptr, ptr %data, i32 14
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %12 = ptrtoint ptr %ipencap.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ipencap.i, align 8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  %13 = xor i1 %tobool2.not.i.i, true
  %arrayidx6.i.i = getelementptr ptr, ptr %data, i32 15
  %14 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end5.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i43.i.i, align 2
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %4, align 2
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end5.i.i.if.end11.i.i_crit_edge
  %ret.1.off0.i.i = phi i1 [ true, %if.then8.i.i ], [ %13, %if.end5.i.i.if.end11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr ptr, ptr %data, i32 16
  %19 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %20, null
  br i1 %tobool13.not.i.i, label %if.end17.i.i, label %if.end17.i.thread.i

if.end17.i.i:                                     ; preds = %if.end11.i.i
  %arrayidx18.i.i = getelementptr ptr, ptr %data, i32 17
  %21 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %22, null
  br i1 %tobool19.not.i.i, label %ipgre_netlink_encap_parms.exit.i, label %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i:                              ; preds = %if.end11.i.i
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %20, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i44.i.i, align 2
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %5, align 4
  %arrayidx18.i12.i = getelementptr ptr, ptr %data, i32 17
  %26 = ptrtoint ptr %arrayidx18.i12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18.i12.i, align 4
  %tobool19.not.i13.i = icmp eq ptr %27, null
  br i1 %tobool19.not.i13.i, label %if.end17.i.thread.i.if.then.i_crit_edge, label %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge

if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge: ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_netlink_encap_parms.exit.thread.i

if.end17.i.thread.i.if.then.i_crit_edge:          ; preds = %if.end17.i.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

ipgre_netlink_encap_parms.exit.thread.i:          ; preds = %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge
  %28 = phi ptr [ %27, %if.end17.i.thread.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ], [ %22, %if.end17.i.i.ipgre_netlink_encap_parms.exit.thread.i_crit_edge ]
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i45.i.i, align 2
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %6, align 2
  br label %if.then.i

ipgre_netlink_encap_parms.exit.i:                 ; preds = %if.end17.i.i
  br i1 %ret.1.off0.i.i, label %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, label %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge

ipgre_netlink_encap_parms.exit.i.if.end_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge: ; preds = %ipgre_netlink_encap_parms.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %ipgre_netlink_encap_parms.exit.i.if.then.i_crit_edge, %ipgre_netlink_encap_parms.exit.thread.i, %if.end17.i.thread.i.if.then.i_crit_edge
  %call2.i = call i32 @ip_tunnel_encap_setup(ptr noundef %add.ptr.i, ptr noundef nonnull %ipencap.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %ipgre_newlink_encap_setup.exit, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ipgre_newlink_encap_setup.exit:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %ipgre_netlink_encap_parms.exit.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  %call1.i = call fastcc i32 @ipgre_netlink_parms(ptr noundef %dev, ptr noundef nonnull %data, ptr noundef nonnull %p, ptr noundef nonnull %fwmark) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.erspan_netlink_parms.exit_crit_edge

if.end.erspan_netlink_parms.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %erspan_netlink_parms.exit

if.end.thread:                                    ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipencap.i) #14
  %call1.i31 = call fastcc i32 @ipgre_netlink_parms(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %p, ptr noundef nonnull %fwmark) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %if.end.thread.if.end5_crit_edge, label %if.end.thread.erspan_netlink_parms.exit_crit_edge

if.end.thread.erspan_netlink_parms.exit_crit_edge: ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %erspan_netlink_parms.exit

if.end.thread.if.end5_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.end4.i:                                        ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %data, i32 22
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %33, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end13.i_crit_edge, label %if.then6.i

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end4.i
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i.i, align 1
  %erspan_ver.i = getelementptr i8, ptr %dev, i32 2352
  %36 = ptrtoint ptr %erspan_ver.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %erspan_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp.i28 = icmp ugt i8 %35, 2
  br i1 %cmp.i28, label %if.then6.i.cleanup_crit_edge, label %if.then6.i.if.end13.i_crit_edge

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13.i:                                       ; preds = %if.then6.i.if.end13.i_crit_edge, %if.end4.i.if.end13.i_crit_edge
  %erspan_ver14.i = getelementptr i8, ptr %dev, i32 2352
  %37 = ptrtoint ptr %erspan_ver14.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %erspan_ver14.i, align 4
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %38, label %if.end13.i.if.end5_crit_edge [
    i8 1, label %if.then18.i
    i8 2, label %if.then33.i
  ]

if.end13.i.if.end5_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then18.i:                                      ; preds = %if.end13.i
  %arrayidx19.i = getelementptr ptr, ptr %data, i32 21
  %40 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx19.i, align 4
  %tobool20.not.i = icmp eq ptr %41, null
  br i1 %tobool20.not.i, label %if.then18.i.if.end5_crit_edge, label %if.then21.i

if.then18.i.if.end5_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then21.i:                                      ; preds = %if.then18.i
  %add.ptr.i.i1.i = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i1.i, align 4
  %index.i = getelementptr i8, ptr %dev, i32 2348
  %44 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %43)
  %tobool25.not.i = icmp ult i32 %43, 1048576
  br i1 %tobool25.not.i, label %if.then21.i.if.end5_crit_edge, label %if.then21.i.cleanup_crit_edge

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21.i.if.end5_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then33.i:                                      ; preds = %if.end13.i
  %arrayidx34.i = getelementptr ptr, ptr %data, i32 23
  %45 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx34.i, align 4
  %tobool35.not.i = icmp eq ptr %46, null
  br i1 %tobool35.not.i, label %if.then33.i.if.end45.i_crit_edge, label %if.then36.i

if.then33.i.if.end45.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.then33.i
  %add.ptr.i.i2.i = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add.ptr.i.i2.i, align 1
  %dir.i = getelementptr i8, ptr %dev, i32 2353
  %49 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %tobool42.not.i = icmp ult i8 %48, 2
  br i1 %tobool42.not.i, label %if.then36.i.if.end45.i_crit_edge, label %if.then36.i.cleanup_crit_edge

if.then36.i.cleanup_crit_edge:                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36.i.if.end45.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then36.i.if.end45.i_crit_edge, %if.then33.i.if.end45.i_crit_edge
  %arrayidx46.i = getelementptr ptr, ptr %data, i32 24
  %50 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx46.i, align 4
  %tobool47.not.i = icmp eq ptr %51, null
  br i1 %tobool47.not.i, label %if.end45.i.if.end5_crit_edge, label %if.then48.i

if.end45.i.if.end5_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then48.i:                                      ; preds = %if.end45.i
  %add.ptr.i.i3.i = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i.i3.i, align 2
  %hwid.i = getelementptr i8, ptr %dev, i32 2354
  %54 = ptrtoint ptr %hwid.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %hwid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %53)
  %tobool54.not.i = icmp ult i16 %53, 64
  br i1 %tobool54.not.i, label %if.then48.i.if.end5_crit_edge, label %if.then48.i.cleanup_crit_edge

if.then48.i.cleanup_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then48.i.if.end5_crit_edge:                    ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

erspan_netlink_parms.exit:                        ; preds = %if.end.thread.erspan_netlink_parms.exit_crit_edge, %if.end.erspan_netlink_parms.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.erspan_netlink_parms.exit_crit_edge ], [ %call1.i31, %if.end.thread.erspan_netlink_parms.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %erspan_netlink_parms.exit.cleanup_crit_edge, label %erspan_netlink_parms.exit.if.end5_crit_edge

erspan_netlink_parms.exit.if.end5_crit_edge:      ; preds = %erspan_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

erspan_netlink_parms.exit.cleanup_crit_edge:      ; preds = %erspan_netlink_parms.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %erspan_netlink_parms.exit.if.end5_crit_edge, %if.then48.i.if.end5_crit_edge, %if.end45.i.if.end5_crit_edge, %if.then21.i.if.end5_crit_edge, %if.then18.i.if.end5_crit_edge, %if.end13.i.if.end5_crit_edge, %if.end.thread.if.end5_crit_edge
  %55 = ptrtoint ptr %fwmark to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fwmark, align 4
  %call6 = call i32 @ip_tunnel_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %p, i32 noundef %56) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %i_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 2
  %57 = ptrtoint ptr %i_flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %i_flags, align 4
  %i_flags10 = getelementptr i8, ptr %dev, i32 2384
  %59 = ptrtoint ptr %i_flags10 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %i_flags10, align 4
  %o_flags = getelementptr inbounds %struct.ip_tunnel_parm, ptr %p, i32 0, i32 3
  %60 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %o_flags, align 2
  %o_flags12 = getelementptr i8, ptr %dev, i32 2386
  %62 = ptrtoint ptr %o_flags12 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %o_flags12, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %erspan_netlink_parms.exit.cleanup_crit_edge, %if.then48.i.cleanup_crit_edge, %if.then36.i.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %ipgre_newlink_encap_setup.exit
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call2.i, %ipgre_newlink_encap_setup.exit ], [ %retval.0.i, %erspan_netlink_parms.exit.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ -22, %if.then21.i.cleanup_crit_edge ], [ -22, %if.then36.i.cleanup_crit_edge ], [ -22, %if.then48.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %p) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwmark) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erspan_tunnel_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %erspan_ver = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %erspan_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %spec.select = select i1 %cmp, i32 4, i32 8
  %2 = getelementptr i8, ptr %dev, i32 2344
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %protocol = getelementptr i8, ptr %dev, i32 2405
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 47, ptr %protocol, align 1
  %encap_hlen = getelementptr i8, ptr %dev, i32 2420
  %5 = ptrtoint ptr %encap_hlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encap_hlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1.i = icmp eq i8 %1, 1
  %add.i = select i1 %cmp1.i, i32 8, i32 12
  %retval.0.i = select i1 %cmp, i32 0, i32 %add.i
  %add = add nuw nsw i32 %spec.select, %retval.0.i
  %add7 = add i32 %add, %6
  %hlen = getelementptr i8, ptr %dev, i32 2424
  %7 = ptrtoint ptr %hlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add7, ptr %hlen, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features, align 16
  %or = or i64 %9, 105
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %10 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hw_features, align 8
  %or8 = or i64 %11, 105
  store i64 %or8, ptr %hw_features, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags, align 16
  %or9 = and i64 %13, -163873
  %and.i = or i64 %or9, 32768
  store i64 %and.i, ptr %priv_flags, align 16
  %call10 = tail call i32 @ip_tunnel_init(ptr noundef %dev) #14
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erspan_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
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
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %entry.if.end_crit_edge, !prof !107

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.free_skb_crit_edge, label %pskb_inet_may_pull.exit, !prof !107

if.end.i.i.i.free_skb_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

pskb_inet_may_pull.exit:                          ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #14
  %cmp14.i.i.i.not = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.i.i.not, label %pskb_inet_may_pull.exit.free_skb_crit_edge, label %pskb_inet_may_pull.exit.if.end_crit_edge

pskb_inet_may_pull.exit.if.end_crit_edge:         ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

pskb_inet_may_pull.exit.free_skb_crit_edge:       ; preds = %pskb_inet_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.end:                                           ; preds = %pskb_inet_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %collect_md = getelementptr i8, ptr %dev, i32 2480
  %12 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %collect_md, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %call1.i = tail call fastcc ptr @skb_tunnel_info(ptr noundef %skb) #14
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then2.err_free_skb.i_crit_edge, label %lor.lhs.false.i, !prof !107

if.then2.err_free_skb.i_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

lor.lhs.false.i:                                  ; preds = %if.then2
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call1.i, i32 0, i32 3
  %14 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mode.i, align 1
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %if.end.i, label %lor.lhs.false.i.err_free_skb.i_crit_edge, !prof !108

lor.lhs.false.i.err_free_skb.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %call1.i, i32 0, i32 2
  %18 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tun_flags.i, align 8
  %20 = and i16 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool12.not.i = icmp eq i16 %20, 0
  br i1 %tobool12.not.i, label %if.end.i.err_free_skb.i_crit_edge, label %if.end14.i

if.end.i.err_free_skb.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

if.end14.i:                                       ; preds = %if.end.i
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %call1.i, i32 0, i32 2
  %21 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %options_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %22)
  %cmp16.i = icmp ult i8 %22, 12
  br i1 %cmp16.i, label %if.end14.i.err_free_skb.i_crit_edge, label %if.end19.i

if.end14.i.err_free_skb.i_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

if.end19.i:                                       ; preds = %if.end14.i
  %add.ptr.i145.i = getelementptr %struct.ip_tunnel_info, ptr %call1.i, i32 1
  %23 = ptrtoint ptr %add.ptr.i145.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i145.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp1.i.i = icmp eq i32 %24, 1
  %add.i.op.i = select i1 %cmp1.i.i, i32 16, i32 20
  %add.i = select i1 %cmp.i.i, i32 8, i32 %add.i.op.i
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %25 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %needed_headroom.i, align 8
  %conv23.i = zext i16 %26 to i32
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %27 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end19.i.skb_header_cloned.exit.i.i_crit_edge, label %if.end.i.i.i85

if.end19.i.skb_header_cloned.exit.i.i_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i.i

if.end.i.i.i85:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #14
  %30 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %31, 65535
  %shr.i.i.i = ashr i32 %31, 16
  %sub.i.i.i84 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i84)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i84, 1
  br label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i.i.i85, %if.end19.i.skb_header_cloned.exit.i.i_crit_edge
  %retval.0.i.i.i86 = phi i1 [ %cmp.i.not.i.i, %if.end.i.i.i85 ], [ true, %if.end19.i.skb_header_cloned.exit.i.i_crit_edge ]
  %32 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i, align 4
  %34 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %conv23.i)
  %tobool.not.i3.i.i = icmp uge i32 %sub.ptr.sub.i.i.i.i, %conv23.i
  %or.cond.i.i.i = and i1 %retval.0.i.i.i86, %tobool.not.i3.i.i
  br i1 %or.cond.i.i.i, label %skb_header_cloned.exit.i.i.if.end27.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end27.i_crit_edge:  ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %conv23.i, i32 %sub.ptr.sub.i.i.i.i) #14
  %add.i.i.i = add nuw nsw i32 %36, 127
  %and.i4.i.i = and i32 %add.i.i.i, 130944
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool25.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool25.not.i, label %skb_cow_head.exit.i.if.end27.i_crit_edge, label %skb_cow_head.exit.i.err_free_skb.i_crit_edge

skb_cow_head.exit.i.err_free_skb.i_crit_edge:     ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

skb_cow_head.exit.i.if.end27.i_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.end27.i:                                       ; preds = %skb_cow_head.exit.i.if.end27.i_crit_edge, %skb_header_cloned.exit.i.i.if.end27.i_crit_edge
  %call.i.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool29.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.i.err_free_skb.i_crit_edge

if.end27.i.err_free_skb.i_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

if.end31.i:                                       ; preds = %if.end27.i
  %37 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i.i.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %39 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %41 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hard_header_len.i, align 2
  %conv32.i = zext i16 %42 to i32
  %add33.i = add i32 %40, %conv32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add33.i)
  %cmp34.i = icmp ugt i32 %38, %add33.i
  br i1 %cmp34.i, label %if.then36.i, label %if.end31.i.if.end42.i_crit_edge

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42.i

if.then36.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @pskb_trim(ptr noundef %skb, i32 noundef %add33.i) #14
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then36.i, %if.end31.i.if.end42.i_crit_edge
  %43 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i.i.i, align 8
  %45 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i = zext i16 %46 to i32
  %add.ptr.i146.i = getelementptr i8, ptr %44, i32 %conv.i.i
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %47 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mac_header.i.i, align 2
  %conv.i148.i = zext i16 %48 to i32
  %add.ptr.i149.i = getelementptr i8, ptr %44, i32 %conv.i148.i
  %49 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %50)
  %cmp46.i = icmp eq i16 %50, 2048
  br i1 %cmp46.i, label %if.end54.thread.i, label %if.end54.i

if.end54.thread.i:                                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i146.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i149.i to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i146.i, i32 0, i32 2
  %51 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tot_len.i, align 2
  %conv49.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i.i.i, align 4
  %sub.i = add i32 %sub.ptr.sub.neg.i, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv49.i)
  %cmp51.i = icmp ult i32 %sub.i, %conv49.i
  %spec.select.i = select i1 %cmp51.i, i1 true, i1 %cmp34.i
  %transport_header.i171.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  br label %if.end72.i

if.end54.i:                                       ; preds = %if.end42.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %50)
  %cmp62.i = icmp eq i16 %50, -31011
  br i1 %cmp62.i, label %land.lhs.true64.i, label %if.end54.i.if.end72.i_crit_edge

if.end54.i.if.end72.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72.i

land.lhs.true64.i:                                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i.i, align 2
  %conv.i151.i = zext i16 %56 to i32
  %add.ptr.i152.i = getelementptr i8, ptr %44, i32 %conv.i151.i
  %sub.ptr.lhs.cast57.i = ptrtoint ptr %add.ptr.i152.i to i32
  %sub.ptr.rhs.cast58.i = ptrtoint ptr %add.ptr.i149.i to i32
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i146.i, i32 0, i32 2
  %57 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %payload_len.i, align 4
  %conv66.i = zext i16 %58 to i32
  %59 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i.i.i, align 4
  %sub.ptr.sub59.neg.i = add i32 %60, %sub.ptr.rhs.cast58.i
  %sub68.i = sub i32 %sub.ptr.sub59.neg.i, %sub.ptr.lhs.cast57.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub68.i, i32 %conv66.i)
  %cmp69.i = icmp ult i32 %sub68.i, %conv66.i
  %spec.select144.i = select i1 %cmp69.i, i1 true, i1 %cmp34.i
  br label %if.end72.i

if.end72.i:                                       ; preds = %land.lhs.true64.i, %if.end54.i.if.end72.i_crit_edge, %if.end54.thread.i
  %transport_header.i175.i = phi ptr [ %transport_header.i.i, %if.end54.i.if.end72.i_crit_edge ], [ %transport_header.i.i, %land.lhs.true64.i ], [ %transport_header.i171.i, %if.end54.thread.i ]
  %truncate.2.off0.i = phi i1 [ %cmp34.i, %if.end54.i.if.end72.i_crit_edge ], [ %spec.select144.i, %land.lhs.true64.i ], [ %spec.select.i, %if.end54.thread.i ]
  %61 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %24, label %if.end72.i.err_free_skb.i_crit_edge [
    i32 1, label %if.then75.i
    i32 2, label %if.then80.i
  ]

if.end72.i.err_free_skb.i_crit_edge:              ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skb.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %call1.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %call1.i, align 8
  %conv.i161.i = trunc i64 %63 to i32
  %u.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i145.i, i32 0, i32 1
  %64 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %u.i, align 4
  tail call fastcc void @erspan_build_header(ptr noundef %skb, i32 noundef %conv.i161.i, i32 noundef %65, i1 noundef zeroext %truncate.2.off0.i) #14
  br label %if.end90.i

if.then80.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %call1.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %call1.i, align 8
  %conv.i162.i = trunc i64 %67 to i32
  %dir.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i145.i, i32 0, i32 1, i32 0, i32 2
  %68 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i = load i16, ptr %dir.i, align 2
  %69 = trunc i16 %bf.load.i to i8
  %70 = lshr i8 %69, 3
  %bf.cast.i = and i8 %70, 1
  %71 = lshr i16 %bf.load.i, 4
  %conv86.i = and i16 %71, 63
  tail call fastcc void @erspan_build_header_v2(ptr noundef %skb, i32 noundef %conv.i162.i, i8 noundef zeroext %bf.cast.i, i16 noundef zeroext %conv86.i, i1 noundef zeroext %truncate.2.off0.i) #14
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then80.i, %if.then75.i
  %proto.0.i = phi i16 [ -30530, %if.then75.i ], [ 8939, %if.then80.i ]
  %o_seqno.i = getelementptr i8, ptr %dev, i32 2340
  %72 = ptrtoint ptr %o_seqno.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %o_seqno.i, align 4
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %o_seqno.i, align 4
  %call.i163.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #14
  %74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %proto.0.i, ptr %74, align 8
  %inner_protocol_type.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %76 = ptrtoint ptr %inner_protocol_type.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load.i.i164.i = load i32, ptr %inner_protocol_type.i.i.i, align 2
  %bf.clear.i.i.i = and i32 %bf.load.i.i164.i, -4194305
  store i32 %bf.clear.i.i.i, ptr %inner_protocol_type.i.i.i, align 2
  %77 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i.i.i, align 4
  %79 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i89 = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i.i.i90 = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i.i91 = sub i32 %sub.ptr.lhs.cast.i.i.i89, %sub.ptr.rhs.cast.i.i.i90
  %conv.i.i166.i = trunc i32 %sub.ptr.sub.i.i.i91 to i16
  %81 = ptrtoint ptr %transport_header.i175.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i.i166.i, ptr %transport_header.i175.i, align 2
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 4096, ptr %78, align 1
  %protocol.i.i = getelementptr inbounds %struct.gre_base_hdr, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %proto.0.i, ptr %protocol.i.i, align 1
  %add.ptr3.i.i = getelementptr i8, ptr %78, i32 4
  %84 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %73, ptr %add.ptr3.i.i, align 4
  tail call void @ip_md_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 47, i32 noundef %add.i) #14
  br label %cleanup

err_free_skb.i:                                   ; preds = %if.end72.i.err_free_skb.i_crit_edge, %if.end27.i.err_free_skb.i_crit_edge, %skb_cow_head.exit.i.err_free_skb.i_crit_edge, %if.end14.i.err_free_skb.i_crit_edge, %if.end.i.err_free_skb.i_crit_edge, %lor.lhs.false.i.err_free_skb.i_crit_edge, %if.then2.err_free_skb.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %85 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_dropped.i, align 4
  %inc91.i = add i32 %86, 1
  store i32 %inc91.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call i32 @iptunnel_handle_offloads(ptr noundef %skb, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.free_skb_crit_edge

if.end3.free_skb_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.end7:                                          ; preds = %if.end3
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %87 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %needed_headroom, align 8
  %conv = zext i16 %88 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %89 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end7.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

if.end7.skb_header_cloned.exit.i_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %90 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #14
  %92 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %93, 65535
  %shr.i.i = ashr i32 %93, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %if.end7.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %if.end7.skb_header_cloned.exit.i_crit_edge ]
  %94 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i.i, align 4
  %96 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i93 = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i.i.i94 = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i.i.i95 = sub i32 %sub.ptr.lhs.cast.i.i.i93, %sub.ptr.rhs.cast.i.i.i94
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i95, i32 %conv)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i95, %conv
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end11_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end11_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %98 = tail call i32 @llvm.usub.sat.i32(i32 %conv, i32 %sub.ptr.sub.i.i.i95) #14
  %add.i.i96 = add nuw nsw i32 %98, 127
  %and.i4.i = and i32 %add.i.i96, 130944
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool9.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool9.not, label %skb_cow_head.exit.if.end11_crit_edge, label %skb_cow_head.exit.free_skb_crit_edge

skb_cow_head.exit.free_skb_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

skb_cow_head.exit.if.end11_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %skb_cow_head.exit.if.end11_crit_edge, %skb_header_cloned.exit.i.if.end11_crit_edge
  %99 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i.i.i.i, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %101 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %103 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %hard_header_len, align 2
  %conv12 = zext i16 %104 to i32
  %add = add i32 %102, %conv12
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %add)
  %cmp = icmp ugt i32 %100, %add
  br i1 %cmp, label %if.then14, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @pskb_trim(ptr noundef %skb, i32 noundef %add)
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end11.if.end20_crit_edge
  %erspan_ver = getelementptr i8, ptr %dev, i32 2352
  %105 = ptrtoint ptr %erspan_ver to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %erspan_ver, align 4
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %106, label %if.end20.free_skb_crit_edge [
    i8 0, label %if.then24
    i8 1, label %if.then31
    i8 2, label %if.then39
  ]

if.end20.free_skb_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_skb

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %o_flags = getelementptr i8, ptr %dev, i32 2386
  %108 = ptrtoint ptr %o_flags to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %o_flags, align 2
  %110 = and i16 %109, -9
  store i16 %110, ptr %o_flags, align 2
  br label %if.end46

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %o_key = getelementptr i8, ptr %dev, i32 2392
  %111 = ptrtoint ptr %o_key to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %o_key, align 4
  %index = getelementptr i8, ptr %dev, i32 2348
  %113 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %index, align 4
  tail call fastcc void @erspan_build_header(ptr noundef %skb, i32 noundef %112, i32 noundef %114, i1 noundef zeroext %cmp)
  br label %if.end46

if.then39:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %o_key41 = getelementptr i8, ptr %dev, i32 2392
  %115 = ptrtoint ptr %o_key41 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %o_key41, align 4
  %dir = getelementptr i8, ptr %dev, i32 2353
  %117 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dir, align 1
  %hwid = getelementptr i8, ptr %dev, i32 2354
  %119 = ptrtoint ptr %hwid to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %hwid, align 2
  tail call fastcc void @erspan_build_header_v2(ptr noundef %skb, i32 noundef %116, i8 noundef zeroext %118, i16 noundef zeroext %120, i1 noundef zeroext %cmp)
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.then31, %if.then24
  %proto.0 = phi i16 [ -30530, %if.then24 ], [ -30530, %if.then31 ], [ 8939, %if.then39 ]
  %o_flags48 = getelementptr i8, ptr %dev, i32 2386
  %121 = ptrtoint ptr %o_flags48 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %o_flags48, align 2
  %123 = and i16 %122, -5
  store i16 %123, ptr %o_flags48, align 2
  %iph = getelementptr i8, ptr %dev, i32 2396
  %124 = and i16 %122, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool.not.i97 = icmp eq i16 %124, 0
  br i1 %tobool.not.i97, label %if.end46.__gre_xmit.exit_crit_edge, label %if.then.i

if.end46.__gre_xmit.exit_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %__gre_xmit.exit

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %o_seqno.i98 = getelementptr i8, ptr %dev, i32 2340
  %125 = ptrtoint ptr %o_seqno.i98 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %o_seqno.i98, align 4
  %inc.i99 = add i32 %126, 1
  store i32 %inc.i99, ptr %o_seqno.i98, align 4
  br label %__gre_xmit.exit

__gre_xmit.exit:                                  ; preds = %if.then.i, %if.end46.__gre_xmit.exit_crit_edge
  %tun_hlen.i = getelementptr i8, ptr %dev, i32 2344
  %127 = ptrtoint ptr %tun_hlen.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tun_hlen.i, align 4
  %o_key.i = getelementptr i8, ptr %dev, i32 2392
  %129 = ptrtoint ptr %o_key.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %o_key.i, align 4
  %o_seqno4.i = getelementptr i8, ptr %dev, i32 2340
  %131 = ptrtoint ptr %o_seqno4.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %o_seqno4.i, align 4
  tail call fastcc void @gre_build_header(ptr noundef %skb, i32 noundef %128, i16 noundef zeroext %123, i16 noundef zeroext %proto.0, i32 noundef %130, i32 noundef %132) #14
  %protocol.i100 = getelementptr i8, ptr %dev, i32 2405
  %133 = ptrtoint ptr %protocol.i100 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %protocol.i100, align 1
  tail call void @ip_tunnel_xmit(ptr noundef %skb, ptr noundef %dev, ptr noundef %iph, i8 noundef zeroext %134) #14
  br label %cleanup

free_skb:                                         ; preds = %if.end20.free_skb_crit_edge, %skb_cow_head.exit.free_skb_crit_edge, %if.end3.free_skb_crit_edge, %pskb_inet_may_pull.exit.free_skb_crit_edge, %if.end.i.i.i.free_skb_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %135 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %136, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %__gre_xmit.exit, %err_free_skb.i, %if.end90.i
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pskb_trim(ptr noundef %skb, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp = icmp ugt i32 %1, %len
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %len) #14
  br label %cond.end

__skb_trim.exit.i:                                ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %len1, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 %len
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %__skb_trim.exit.i, %if.then.i, %entry.cond.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erspan_build_header(ptr noundef %skb, i32 noundef %id, i32 noundef %index, i1 noundef zeroext %truncate) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %tos2 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %tos2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos2, align 1
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %9)
  %cmp = icmp eq i16 %9, -32512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tci = getelementptr i8, ptr %1, i32 14
  %10 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tci, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enc_type.0 = phi i32 [ 6144, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %vlan_tci.0 = phi i16 [ %11, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #14
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = lshr i8 %7, 5
  %bf.value = zext i8 %14 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 13
  %bf.set18 = or i32 %enc_type.0, %bf.shl
  %bf.shl30 = select i1 %truncate, i32 1024, i32 0
  %bf.set24 = or i32 %bf.set18, %bf.shl30
  %15 = and i16 %vlan_tci.0, 255
  %bf.value.i = zext i16 %15 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 16
  %bf.clear.i = or i32 %bf.shl.i, %bf.set24
  %16 = lshr i16 %vlan_tci.0, 8
  %17 = and i16 %16, 15
  %bf.value6.i = zext i16 %17 to i32
  %bf.shl7.i = shl nuw nsw i32 %bf.value6.i, 24
  %bf.set9.i = or i32 %bf.clear.i, %bf.shl7.i
  %bf.set12.i = and i32 %id, 1023
  %bf.clear.i2 = or i32 %bf.set9.i, %bf.set12.i
  %bf.set8.i = or i32 %bf.clear.i2, 268435456
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %bf.set8.i, ptr %13, align 1
  %add.ptr35 = getelementptr %struct.erspan_base_hdr, ptr %13, i32 1
  %and = and i32 %index, 1048575
  %19 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %add.ptr35, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erspan_build_header_v2(ptr noundef %skb, i32 noundef %id, i8 noundef zeroext %direction, i16 noundef zeroext %hwid, i1 noundef zeroext %truncate) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %tos2 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %tos2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos2, align 1
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %9)
  %cmp = icmp eq i16 %9, -32512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tci = getelementptr i8, ptr %1, i32 14
  %10 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tci, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vlan_tci.0 = phi i16 [ %11, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %13)
  %cmp.i = icmp ult i32 %13, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %13)
  %cmp2.i = icmp ugt i32 %13, 1514
  %call12 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #14
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %16, align 1
  %18 = lshr i8 %7, 5
  %bf.value = zext i8 %18 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 13
  %19 = select i1 %cmp2.i, i32 4096, i32 0
  %bf.value21 = select i1 %cmp.i, i32 2048, i32 %19
  %bf.set19 = or i32 %bf.value21, %bf.shl
  %bf.shl30 = select i1 %truncate, i32 1024, i32 0
  %20 = and i16 %vlan_tci.0, 255
  %bf.value.i = zext i16 %20 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 16
  %bf.set32 = or i32 %bf.set19, %bf.shl30
  %bf.clear.i = or i32 %bf.set32, %bf.shl.i
  %21 = lshr i16 %vlan_tci.0, 8
  %22 = and i16 %21, 15
  %bf.value6.i = zext i16 %22 to i32
  %bf.shl7.i = shl nuw nsw i32 %bf.value6.i, 24
  %bf.set9.i = or i32 %bf.clear.i, %bf.shl7.i
  %bf.set12.i = and i32 %id, 1023
  %bf.clear.i2 = or i32 %bf.set9.i, %bf.set12.i
  %bf.set8.i = or i32 %bf.clear.i2, 536870912
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %bf.set8.i, ptr %15, align 1
  %add.ptr35 = getelementptr %struct.erspan_base_hdr, ptr %15, i32 1
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %cmp8.i.i = icmp slt i64 %call.i.i, 0
  %24 = tail call i64 @llvm.abs.i64(i64 %call.i.i, i1 false) #14
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %24, i32 0) #18, !srcloc !110
  %asmresult.i.i.i = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %24, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #18, !srcloc !111
  %asmresult10.i.i.i = extractvalue { i64, i32 } %26, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 16
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv.i = trunc i64 %cond213.i.i to i32
  %27 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %add.ptr35, align 4
  %sgt38 = getelementptr %struct.erspan_base_hdr, ptr %15, i32 2
  %28 = ptrtoint ptr %sgt38 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %sgt38, align 4
  %p = getelementptr inbounds %struct.erspan_md2, ptr %add.ptr35, i32 0, i32 2
  %29 = shl i8 %direction, 3
  %conv61 = trunc i16 %hwid to i8
  %30 = shl i8 %conv61, 4
  %31 = and i8 %29, 8
  %bf.clear.i68 = or i8 %30, %31
  %bf.clear.i6 = zext i8 %bf.clear.i68 to i16
  %32 = lshr i8 %conv61, 4
  %33 = and i8 %32, 3
  %bf.value7.i = zext i8 %33 to i16
  %bf.shl8.i = shl nuw nsw i16 %bf.value7.i, 8
  %bf.set.i7 = or i16 %bf.shl8.i, %bf.clear.i6
  %bf.set10.i = or i16 %bf.set.i7, -32768
  %34 = ptrtoint ptr %p to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.set10.i, ptr %p, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gre_rcv(ptr noundef %skb) #0 align 64 {
entry:
  %tpi = alloca %struct.tnl_ptk_info, align 4
  %csum_err = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tpi) #14
  %0 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 2
  %2 = call ptr @memset(ptr %tpi, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %csum_err) #14
  %3 = ptrtoint ptr %csum_err to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %csum_err, align 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daddr, align 4
  %and.i = and i32 %9, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.then.skb_rtable.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !107

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1013, i32 noundef 9, ptr noundef null) #14
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.then.skb_rtable.exit_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %and25.i.i = and i32 %14, -2
  %15 = inttoptr i32 %and25.i.i to ptr
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i38 = icmp eq i8 %17, 0
  br i1 %cmp.i38, label %skb_rtable.exit.drop_crit_edge, label %skb_rtable.exit.if.end5_crit_edge

skb_rtable.exit.if.end5_crit_edge:                ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

skb_rtable.exit.drop_crit_edge:                   ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

if.end5:                                          ; preds = %skb_rtable.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = call i32 @gre_parse_header(ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef nonnull %csum_err, i16 noundef zeroext 2048, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.drop_crit_edge, label %if.end8

if.end5.drop_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %drop

if.end8:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %0, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %19, label %if.end22 [
    i16 -30530, label %if.end8.if.then16_crit_edge
    i16 8939, label %if.end8.if.then16_crit_edge47
  ]

if.end8.if.then16_crit_edge47:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.end8.if.then16_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.then16:                                        ; preds = %if.end8.if.then16_crit_edge, %if.end8.if.then16_crit_edge47
  %21 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 127
  %24 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nd_net.i.i, align 4
  %26 = load i32, ptr @erspan_net_id, align 4
  %call1.i = call fastcc ptr @net_generic(ptr noundef %25, i32 noundef %26) #14
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 8
  %29 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call6)
  %cmp.i.i = icmp eq i32 %call6, 4
  br i1 %cmp.i.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %if.then16
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %21, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex.i, align 4
  %35 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tpi, align 4
  %37 = or i16 %36, 128
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %daddr.i, align 4
  %call5.i = call ptr @ip_tunnel_lookup(ptr noundef %call1.i, i32 noundef %34, i16 noundef zeroext %37, i32 noundef %39, i32 noundef %41, i32 noundef 0) #14
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %if.end.i.out_crit_edge, label %if.end.i.if.end20.i_crit_edge

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.thread.i:                                  ; preds = %if.then16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %call6
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load.i = load i32, ptr %add.ptr.i, align 1
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %21, align 8
  %ifindex7.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %ifindex7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ifindex7.i, align 4
  %49 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tpi, align 4
  %51 = or i16 %50, 4
  %saddr12.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %saddr12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %saddr12.i, align 4
  %daddr13.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %54 = ptrtoint ptr %daddr13.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %daddr13.i, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 4
  %call14.i = call ptr @ip_tunnel_lookup(ptr noundef %call1.i, i32 noundef %48, i16 noundef zeroext %51, i32 noundef %53, i32 noundef %55, i32 noundef %57) #14
  %tobool.not127.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not127.i, label %if.end.thread.i.out_crit_edge, label %if.else18.i

if.end.thread.i.out_crit_edge:                    ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.else18.i:                                      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %bf.lshr.i = lshr i32 %bf.load.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load.i)
  %cmp.i116.i = icmp ult i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.lshr.i)
  %cmp1.i.i = icmp eq i32 %bf.lshr.i, 1
  %add.i.i = select i1 %cmp1.i.i, i32 8, i32 12
  %retval.0.i.i = select i1 %cmp.i116.i, i32 0, i32 %add.i.i
  %add.i = add nuw i32 %retval.0.i.i, %call6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else18.i, %if.end.i.if.end20.i_crit_edge
  %tunnel.0128135.i = phi ptr [ %call14.i, %if.else18.i ], [ %call5.i, %if.end.i.if.end20.i_crit_edge ]
  %ver.0129133.i = phi i32 [ %bf.lshr.i, %if.else18.i ], [ 0, %if.end.i.if.end20.i_crit_edge ]
  %len.0.i = phi i32 [ %add.i, %if.else18.i ], [ 4, %if.end.i.if.end20.i_crit_edge ]
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %60 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %59, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %len.0.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end20.i.if.end26.i_crit_edge, !prof !107

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

if.end.i.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %len.0.i)
  %cmp3.i.i = icmp ult i32 %59, %len.0.i
  br i1 %cmp3.i.i, label %if.end.i.i.out_crit_edge, label %pskb_may_pull.exit.i, !prof !107

if.end.i.i.out_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %len.0.i, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #14
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.out_crit_edge, label %pskb_may_pull.exit.i.if.end26.i_crit_edge, !prof !107

pskb_may_pull.exit.i.if.end26.i_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i

pskb_may_pull.exit.i.out_crit_edge:               ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end26.i:                                       ; preds = %pskb_may_pull.exit.i.if.end26.i_crit_edge, %if.end20.i.if.end26.i_crit_edge
  %call27.i = call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %len.0.i, i16 noundef zeroext 25944, i1 noundef zeroext false, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp.i39 = icmp slt i32 %call27.i, 0
  br i1 %cmp.i39, label %drop.i, label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i
  %collect_md.i = getelementptr inbounds %struct.ip_tunnel, ptr %tunnel.0128135.i, i32 0, i32 26
  %62 = ptrtoint ptr %collect_md.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %collect_md.i, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool31.not.i = icmp eq i8 %63, 0
  br i1 %tobool31.not.i, label %if.end30.i.if.end64.i_crit_edge, label %if.then32.i

if.end30.i.if.end64.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i

if.then32.i:                                      ; preds = %if.end30.i
  %64 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tpi, align 4
  %66 = or i16 %65, 4
  store i16 %66, ptr %tpi, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %1, align 4
  %69 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i, align 8
  %71 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i.i = zext i16 %72 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %70, i32 %conv.i.i.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %73 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %75 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %daddr.i.i, align 4
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tos.i.i, align 1
  %ttl.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ttl.i.i, align 4
  %call.i.i.i.i = call ptr @metadata_dst_alloc(i8 noundef zeroext 12, i32 noundef 0, i32 noundef 2592) #14
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then32.i.out_crit_edge, label %if.end44.i

if.then32.i.out_crit_edge:                        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end44.i:                                       ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i40 = zext i32 %68 to i64
  %options_len.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 2
  %81 = ptrtoint ptr %options_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %options_len.i.i.i.i, align 8
  %mode.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 3
  %82 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %mode.i.i.i.i, align 1
  %u.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv.i.i40, ptr %u.i.i.i, align 8
  %u.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %84 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %74, ptr %u.i.i.i.i, align 8
  %dst.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %dst.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %76, ptr %dst.i.i.i.i, align 4
  %add.ptr.i.i6.i.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %86 = call ptr @memset(ptr %add.ptr.i.i6.i.i, i32 0, i32 24)
  %tos3.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %87 = ptrtoint ptr %tos3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %78, ptr %tos3.i.i.i.i, align 2
  %ttl4.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %88 = ptrtoint ptr %ttl4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %80, ptr %ttl4.i.i.i.i, align 1
  %label5.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %89 = ptrtoint ptr %label5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %label5.i.i.i.i, align 4
  %tun_flags6.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %90 = ptrtoint ptr %tun_flags6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %66, ptr %tun_flags6.i.i.i.i, align 8
  %tp_src7.i.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %91 = ptrtoint ptr %tp_src7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %tp_src7.i.i.i.i, align 8
  %92 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %94 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %transport_header.i.i, align 2
  %conv.i119.i = zext i16 %95 to i32
  %add.ptr47.i = getelementptr i8, ptr %93, i32 %conv.i119.i
  %add.ptr48.i = getelementptr i8, ptr %add.ptr47.i, i32 %call6
  %add.ptr49.i = getelementptr i8, ptr %add.ptr48.i, i32 4
  %add.ptr.i122.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i.i, i32 1
  %96 = ptrtoint ptr %add.ptr.i122.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %ver.0129133.i, ptr %add.ptr.i122.i, align 4
  %u51.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i.i, i32 1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ver.0129133.i)
  %cmp52.i = icmp eq i32 %ver.0129133.i, 1
  %cond.i = select i1 %cmp52.i, i32 4, i32 8
  %97 = call ptr @memcpy(ptr %u51.i, ptr %add.ptr49.i, i32 %cond.i)
  %98 = or i16 %65, 16388
  %99 = ptrtoint ptr %tun_flags6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %tun_flags6.i.i.i.i, align 8
  %100 = ptrtoint ptr %options_len.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 12, ptr %options_len.i.i.i.i, align 8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end44.i, %if.end30.i.if.end64.i_crit_edge
  %tun_dst.0.i = phi ptr [ null, %if.end30.i.if.end64.i_crit_edge ], [ %call.i.i.i.i, %if.end44.i ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %101 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data.i.i, align 4
  %103 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %104 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i124.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %105 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i124.i, ptr %mac_header.i.i, align 2
  %106 = load i8, ptr @log_ecn_error, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool65.i = icmp ne i8 %106, 0
  %call66.i = call i32 @ip_tunnel_rcv(ptr noundef nonnull %tunnel.0128135.i, ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef %tun_dst.0.i, i1 noundef zeroext %tobool65.i) #14
  br label %cleanup

drop.i:                                           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  %107 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %nd_net.i.i41 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 127
  %110 = ptrtoint ptr %nd_net.i.i41 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nd_net.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %19)
  %cmp.i42 = icmp eq i16 %19, 25944
  %gre_tap_net_id.val.i = load i32, ptr @gre_tap_net_id, align 4
  %ipgre_net_id.val.i = load i32, ptr @ipgre_net_id, align 4
  %112 = select i1 %cmp.i42, i32 %gre_tap_net_id.val.i, i32 %ipgre_net_id.val.i
  %call3.i = call fastcc ptr @net_generic(ptr noundef %111, i32 noundef %112) #14
  %call4.i = call fastcc i32 @__ipgre_rcv(ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef %call3.i, i32 noundef %call6, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 2
  br i1 %cmp5.i, label %land.lhs.true.i, label %if.end22.ipgre_rcv.exit_crit_edge

if.end22.ipgre_rcv.exit_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %ipgre_rcv.exit

land.lhs.true.i:                                  ; preds = %if.end22
  %113 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %114)
  %cmp9.i = icmp eq i16 %114, 25944
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %115 = load i32, ptr @ipgre_net_id, align 4
  %call12.i = call fastcc ptr @net_generic(ptr noundef %111, i32 noundef %115) #14
  %call13.i = call fastcc i32 @__ipgre_rcv(ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef %call12.i, i32 noundef %call6, i1 noundef zeroext true) #14
  br label %ipgre_rcv.exit

ipgre_rcv.exit:                                   ; preds = %if.then11.i, %if.end22.ipgre_rcv.exit_crit_edge
  %res.0.i = phi i32 [ %call13.i, %if.then11.i ], [ %call4.i, %if.end22.ipgre_rcv.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %cmp24 = icmp eq i32 %res.0.i, 0
  br i1 %cmp24, label %ipgre_rcv.exit.cleanup_crit_edge, label %ipgre_rcv.exit.out_crit_edge

ipgre_rcv.exit.out_crit_edge:                     ; preds = %ipgre_rcv.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

ipgre_rcv.exit.cleanup_crit_edge:                 ; preds = %ipgre_rcv.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out:                                              ; preds = %ipgre_rcv.exit.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.then32.i.out_crit_edge, %pskb_may_pull.exit.i.out_crit_edge, %if.end.i.i.out_crit_edge, %if.end.thread.i.out_crit_edge, %if.end.i.out_crit_edge
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 3, i32 noundef 0, ptr noundef %opt.i) #14
  br label %drop

drop:                                             ; preds = %out, %if.end5.drop_crit_edge, %skb_rtable.exit.drop_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %drop, %ipgre_rcv.exit.cleanup_crit_edge, %drop.i, %if.end64.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %csum_err) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tpi) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gre_err(ptr noundef %skb, i32 noundef %info) #0 align 64 {
entry:
  %tpi = alloca %struct.tnl_ptk_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 4
  %code3 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %code3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code3, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tpi) #14
  %10 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 1
  %11 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 2
  %12 = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 4
  %13 = call ptr @memset(ptr %tpi, i32 255, i32 16)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %15 = and i8 %bf.clear, 60
  %mul = zext i8 %15 to i32
  %call6 = call i32 @gre_parse_header(ptr noundef %skb, ptr noundef nonnull %tpi, ptr noundef null, i16 noundef zeroext 2048, i32 noundef %mul) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp8 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp10 = icmp eq i8 %9, 4
  %or.cond = select i1 %cmp8, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %19 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 17
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %20, i32 noundef %info, i32 noundef %22, i8 noundef zeroext 47) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp15 = icmp eq i8 %7, 5
  %23 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %nd_net.i41 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 127
  %26 = ptrtoint ptr %nd_net.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nd_net.i41, align 4
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %ifindex19 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 17
  %28 = ptrtoint ptr %ifindex19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex19, align 4
  call void @ipv4_redirect(ptr noundef %skb, ptr noundef %27, i32 noundef %29, i8 noundef zeroext 47) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %30 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i, align 8
  %32 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i = zext i16 %33 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %conv.i.i.i
  %34 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i.i, align 4
  %conv.i = zext i8 %35 to i32
  %code4.i = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %code4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %code4.i, align 1
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %10, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %39, label %if.else19.i [
    i16 25944, label %if.end20.if.end21.i_crit_edge
    i16 -30530, label %if.end20.if.then17.i_crit_edge
    i16 8939, label %if.end20.if.then17.i_crit_edge42
  ]

if.end20.if.then17.i_crit_edge42:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

if.end20.if.then17.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i

if.end20.if.end21.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end20.if.then17.i_crit_edge, %if.end20.if.then17.i_crit_edge42
  br label %if.end21.i

if.else19.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else19.i, %if.then17.i, %if.end20.if.end21.i_crit_edge
  %erspan_net_id.sink.i = phi ptr [ @erspan_net_id, %if.then17.i ], [ @ipgre_net_id, %if.else19.i ], [ @gre_tap_net_id, %if.end20.if.end21.i_crit_edge ]
  %41 = ptrtoint ptr %erspan_net_id.sink.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %erspan_net_id.sink.i, align 4
  %call18.i = call fastcc ptr @net_generic(ptr noundef %27, i32 noundef %42) #14
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %head.i.i, align 8
  %45 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i7.i = zext i16 %46 to i32
  %add.ptr.i.i8.i = getelementptr i8, ptr %44, i32 %conv.i.i7.i
  %add.ptr.i = getelementptr %struct.icmphdr, ptr %add.ptr.i.i8.i, i32 1
  %47 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %23, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 17
  %49 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ifindex.i, align 4
  %51 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tpi, align 4
  %daddr.i = getelementptr %struct.icmphdr, ptr %add.ptr.i.i8.i, i32 3
  %53 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %daddr.i, align 4
  %saddr.i = getelementptr %struct.icmphdr, ptr %add.ptr.i.i8.i, i32 2, i32 3
  %55 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %saddr.i, align 4
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %11, align 4
  %call23.i = call ptr @ip_tunnel_lookup(ptr noundef %call18.i, i32 noundef %50, i16 noundef zeroext %52, i32 noundef %54, i32 noundef %56, i32 noundef %58) #14
  %tobool.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool.not.i, label %if.end21.i.cleanup_crit_edge, label %if.end25.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25.i:                                       ; preds = %if.end21.i
  %59 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %35, label %if.end25.i.cleanup_crit_edge [
    i8 5, label %if.end25.i.sw.epilog36.i_crit_edge
    i8 3, label %sw.bb26.i
    i8 11, label %sw.bb29.i
  ]

if.end25.i.sw.epilog36.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog36.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb26.i:                                        ; preds = %if.end25.i
  %60 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %37, label %sw.bb26.i.sw.epilog36.i_crit_edge [
    i8 5, label %sw.bb26.i.cleanup_crit_edge
    i8 3, label %sw.bb26.i.cleanup_crit_edge43
  ]

sw.bb26.i.cleanup_crit_edge43:                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb26.i.cleanup_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb26.i.sw.epilog36.i_crit_edge:                ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog36.i

sw.bb29.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp30.not.i = icmp eq i8 %37, 0
  br i1 %cmp30.not.i, label %if.end33.i, label %sw.bb29.i.cleanup_crit_edge

sw.bb29.i.cleanup_crit_edge:                      ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %63 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i11.i = zext i16 %64 to i32
  %add.ptr.i.i12.i = getelementptr i8, ptr %62, i32 %conv.i.i11.i
  %un.i = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i12.i, i32 0, i32 3
  %arrayidx.i = getelementptr [4 x i8], ptr %un.i, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %conv35.i = zext i8 %66 to i32
  %mul.i = shl nuw nsw i32 %conv35.i, 2
  br label %sw.epilog36.i

sw.epilog36.i:                                    ; preds = %if.end33.i, %sw.bb26.i.sw.epilog36.i_crit_edge, %if.end25.i.sw.epilog36.i_crit_edge
  %data_len.0.i = phi i32 [ %mul.i, %if.end33.i ], [ 0, %sw.bb26.i.sw.epilog36.i_crit_edge ], [ 0, %if.end25.i.sw.epilog36.i_crit_edge ]
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %68)
  %cmp39.i = icmp eq i16 %68, -31011
  br i1 %cmp39.i, label %land.lhs.true.i, label %sw.epilog36.i.if.end46.i_crit_edge

sw.epilog36.i.if.end46.i_crit_edge:               ; preds = %sw.epilog36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

land.lhs.true.i:                                  ; preds = %sw.epilog36.i
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %70 = and i8 %bf.clear.i, 60
  %mul42.i = zext i8 %70 to i32
  %71 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %12, align 4
  %add.i = add i32 %72, %mul42.i
  %call43.i = call i32 @ip6_err_gen_icmpv6_unreach(ptr noundef %skb, i32 noundef %add.i, i32 noundef %conv.i, i32 noundef %data_len.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end46.i_crit_edge

land.lhs.true.i.if.end46.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end46.i:                                       ; preds = %land.lhs.true.i.if.end46.i_crit_edge, %sw.epilog36.i.if.end46.i_crit_edge
  %daddr48.i = getelementptr inbounds %struct.ip_tunnel, ptr %call23.i, i32 0, i32 15, i32 6, i32 9
  %73 = ptrtoint ptr %daddr48.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %daddr48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp49.i = icmp eq i32 %74, 0
  %and.i.i = and i32 %74, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  %or.cond13.i = or i1 %cmp49.i, %cmp.i.i
  br i1 %or.cond13.i, label %if.end46.i.cleanup_crit_edge, label %if.end58.i

if.end46.i.cleanup_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end58.i:                                       ; preds = %if.end46.i
  %ttl.i = getelementptr inbounds %struct.ip_tunnel, ptr %call23.i, i32 0, i32 15, i32 6, i32 5
  %75 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ttl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp62.i = icmp eq i8 %76, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %35)
  %cmp65.i = icmp eq i8 %35, 11
  %or.cond.i = select i1 %cmp62.i, i1 %cmp65.i, i1 false
  br i1 %or.cond.i, label %if.end58.i.cleanup_crit_edge, label %if.end68.i

if.end58.i.cleanup_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end68.i:                                       ; preds = %if.end58.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %err_time.i = getelementptr inbounds %struct.ip_tunnel, ptr %call23.i, i32 0, i32 5
  %78 = ptrtoint ptr %err_time.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err_time.i, align 4
  %add69.neg.i = add i32 %77, -3000
  %sub.i = sub i32 %add69.neg.i, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp70.i = icmp slt i32 %sub.i, 0
  %err_count.i = getelementptr inbounds %struct.ip_tunnel, ptr %call23.i, i32 0, i32 6
  br i1 %cmp70.i, label %if.then72.i, label %if.end68.i.if.end75.i_crit_edge

if.end68.i.if.end75.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

if.then72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %err_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %err_count.i, align 4
  %inc.i = add i32 %81, 1
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %if.end68.i.if.end75.i_crit_edge
  %.sink.i = phi i32 [ %inc.i, %if.then72.i ], [ 1, %if.end68.i.if.end75.i_crit_edge ]
  %82 = ptrtoint ptr %err_count.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i, ptr %err_count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %84 = ptrtoint ptr %err_time.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %err_time.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75.i, %if.end58.i.cleanup_crit_edge, %if.end46.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb29.i.cleanup_crit_edge, %sw.bb26.i.cleanup_crit_edge, %sw.bb26.i.cleanup_crit_edge43, %if.end25.i.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.then17, %if.then12, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tpi) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gre_parse_header(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !112
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.7) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !96) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_tunnel_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iptunnel_pull_header(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ipgre_rcv(ptr noundef %skb, ptr noundef %tpi, ptr noundef %itn, i32 noundef %hdr_len, i1 noundef zeroext %raw_proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %4 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifindex, align 4
  %9 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tpi, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %daddr, align 4
  %key = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 2
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key, align 4
  %call1 = tail call ptr @ip_tunnel_lookup(ptr noundef %itn, i32 noundef %8, i16 noundef zeroext %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %if.then

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup29

if.then:                                          ; preds = %entry
  %proto = getelementptr inbounds %struct.tnl_ptk_info, ptr %tpi, i32 0, i32 1
  %17 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %proto, align 2
  %call3 = tail call i32 @__iptunnel_pull_header(ptr noundef %skb, i32 noundef %hdr_len, i16 noundef zeroext %18, i1 noundef zeroext %raw_proto, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %drop, label %if.end

if.end:                                           ; preds = %if.then
  %dev = getelementptr inbounds %struct.ip_tunnel, ptr %call1, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %header_ops = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 49
  %21 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %header_ops, align 4
  %cmp5 = icmp eq ptr %22, @ipgre_header_ops
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %conv.i.sink = phi i16 [ %24, %if.then6 ], [ %conv.i, %if.else ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.sink, ptr %29, align 2
  %collect_md = getelementptr inbounds %struct.ip_tunnel, ptr %call1, i32 0, i32 26
  %31 = ptrtoint ptr %collect_md to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %collect_md, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not = icmp eq i8 %32, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end7.if.then12_crit_edge

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end7
  %daddr10 = getelementptr inbounds %struct.ip_tunnel, ptr %call1, i32 0, i32 15, i32 6, i32 9
  %33 = ptrtoint ptr %daddr10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp11 = icmp eq i32 %34, 0
  br i1 %cmp11, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false.if.end23_crit_edge

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  %35 = ptrtoint ptr %tpi to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tpi, align 4
  %37 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key, align 4
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %41 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %42 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %daddr.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tos.i, align 1
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ttl.i, align 4
  %call.i.i.i = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 2592) #14
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then12.cleanup29_crit_edge, label %ip_tun_rx_dst.exit

if.then12.cleanup29_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup29

ip_tun_rx_dst.exit:                               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i53 = zext i32 %38 to i64
  %51 = and i16 %36, 5
  %options_len.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %options_len.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %options_len.i.i.i, align 8
  %mode.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 3
  %53 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %mode.i.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv.i53, ptr %u.i.i, align 8
  %u.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %44, ptr %u.i.i.i, align 8
  %dst.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %dst.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %46, ptr %dst.i.i.i, align 4
  %add.ptr.i.i6.i = getelementptr %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %57 = call ptr @memset(ptr %add.ptr.i.i6.i, i32 0, i32 24)
  %tos3.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %58 = ptrtoint ptr %tos3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %48, ptr %tos3.i.i.i, align 2
  %ttl4.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %59 = ptrtoint ptr %ttl4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %50, ptr %ttl4.i.i.i, align 1
  %label5.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %60 = ptrtoint ptr %label5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %label5.i.i.i, align 4
  %tun_flags6.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %61 = ptrtoint ptr %tun_flags6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %51, ptr %tun_flags6.i.i.i, align 8
  %tp_src7.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %62 = ptrtoint ptr %tp_src7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %tp_src7.i.i.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %ip_tun_rx_dst.exit, %lor.lhs.false.if.end23_crit_edge
  %tun_dst.0 = phi ptr [ %call.i.i.i, %ip_tun_rx_dst.exit ], [ null, %lor.lhs.false.if.end23_crit_edge ]
  %63 = load i8, ptr @log_ecn_error, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool24 = icmp ne i8 %63, 0
  %call25 = tail call i32 @ip_tunnel_rcv(ptr noundef nonnull %call1, ptr noundef %skb, ptr noundef %tpi, ptr noundef %tun_dst.0, i1 noundef zeroext %tobool24) #14
  br label %cleanup29

drop:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup29

cleanup29:                                        ; preds = %drop, %if.end23, %if.then12.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.2 = phi i32 [ 0, %drop ], [ 2, %entry.cleanup29_crit_edge ], [ 0, %if.end23 ], [ 1, %if.then12.cleanup29_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_err_gen_icmpv6_unreach(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_tap_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gre_tap_net_id, align 4
  %call = tail call i32 @ip_tunnel_init_net(ptr noundef %net, i32 noundef %0, ptr noundef nonnull @ipgre_tap_ops, ptr noundef nonnull @.str.11) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipgre_tap_exit_batch_net(ptr noundef %list_net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gre_tap_net_id, align 4
  tail call void @ip_tunnel_delete_nets(ptr noundef %list_net, i32 noundef %0, ptr noundef nonnull @ipgre_tap_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_tunnel_init_net(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_tunnel_delete_nets(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipgre_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipgre_net_id, align 4
  %call = tail call i32 @ip_tunnel_init_net(ptr noundef %net, i32 noundef %0, ptr noundef nonnull @ipgre_link_ops, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipgre_exit_batch_net(ptr noundef %list_net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipgre_net_id, align 4
  tail call void @ip_tunnel_delete_nets(ptr noundef %list_net, i32 noundef %0, ptr noundef nonnull @ipgre_link_ops) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erspan_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @erspan_net_id, align 4
  %call = tail call i32 @ip_tunnel_init_net(ptr noundef %net, i32 noundef %0, ptr noundef nonnull @erspan_link_ops, ptr noundef nonnull @.str.12) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erspan_exit_batch_net(ptr noundef %net_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @erspan_net_id, align 4
  tail call void @ip_tunnel_delete_nets(ptr noundef %net_list, i32 noundef %0, ptr noundef nonnull @erspan_link_ops) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gre_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !89, !90, !91, !92, !94, !95}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__param_log_ecn_error, !1, !"__param_log_ecn_error", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_gre.c", i32 106, i32 1}
!2 = !{ptr @__UNIQUE_ID_log_ecn_errortype595, !1, !"__UNIQUE_ID_log_ecn_errortype595", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_log_ecn_error596, !4, !"__UNIQUE_ID_log_ecn_error596", i1 false, i1 false}
!4 = !{!"../net/ipv4/ip_gre.c", i32 107, i32 1}
!5 = !{ptr @__ksymtab_gretap_fb_dev_create, !6, !"__ksymtab_gretap_fb_dev_create", i1 false, i1 false}
!6 = !{!"../net/ipv4/ip_gre.c", i32 1682, i32 1}
!7 = !{ptr @__initcall__kmod_ip_gre__599_1783_ipgre_init6, !8, !"__initcall__kmod_ip_gre__599_1783_ipgre_init6", i1 false, i1 false}
!8 = !{!"../net/ipv4/ip_gre.c", i32 1783, i32 1}
!9 = !{ptr @__exitcall_ipgre_fini, !10, !"__exitcall_ipgre_fini", i1 false, i1 false}
!10 = !{!"../net/ipv4/ip_gre.c", i32 1784, i32 1}
!11 = !{ptr @__UNIQUE_ID_file600, !12, !"__UNIQUE_ID_file600", i1 false, i1 false}
!12 = !{!"../net/ipv4/ip_gre.c", i32 1785, i32 1}
!13 = !{ptr @__UNIQUE_ID_license601, !12, !"__UNIQUE_ID_license601", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias602, !15, !"__UNIQUE_ID_alias602", i1 false, i1 false}
!15 = !{!"../net/ipv4/ip_gre.c", i32 1786, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias603, !17, !"__UNIQUE_ID_alias603", i1 false, i1 false}
!17 = !{!"../net/ipv4/ip_gre.c", i32 1787, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias604, !19, !"__UNIQUE_ID_alias604", i1 false, i1 false}
!19 = !{!"../net/ipv4/ip_gre.c", i32 1788, i32 1}
!20 = !{ptr @__UNIQUE_ID_alias605, !21, !"__UNIQUE_ID_alias605", i1 false, i1 false}
!21 = !{!"../net/ipv4/ip_gre.c", i32 1789, i32 1}
!22 = !{ptr @__UNIQUE_ID_alias606, !23, !"__UNIQUE_ID_alias606", i1 false, i1 false}
!23 = !{!"../net/ipv4/ip_gre.c", i32 1790, i32 1}
!24 = !{ptr @__UNIQUE_ID_alias607, !25, !"__UNIQUE_ID_alias607", i1 false, i1 false}
!25 = !{!"../net/ipv4/ip_gre.c", i32 1791, i32 1}
!26 = !{ptr @__param_str_log_ecn_error, !1, !"__param_str_log_ecn_error", i1 false, i1 false}
!27 = !{ptr @log_ecn_error, !28, !"log_ecn_error", i1 false, i1 false}
!28 = !{!"../net/ipv4/ip_gre.c", i32 105, i32 13}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/ipv4/ip_gre.c", i32 1610, i32 11}
!31 = !{ptr @ipgre_tap_ops, !32, !"ipgre_tap_ops", i1 false, i1 false}
!32 = !{!"../net/ipv4/ip_gre.c", i32 1609, i32 29}
!33 = !{ptr @gre_tap_netdev_ops, !34, !"gre_tap_netdev_ops", i1 false, i1 false}
!34 = !{!"../net/ipv4/ip_gre.c", i32 1282, i32 36}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!37 = !{ptr @gre_tap_net_id, !38, !"gre_tap_net_id", i1 false, i1 false}
!38 = !{!"../net/ipv4/ip_gre.c", i32 118, i32 21}
!39 = !{ptr @ipgre_policy, !40, !"ipgre_policy", i1 false, i1 false}
!40 = !{!"../net/ipv4/ip_gre.c", i32 1570, i32 32}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv4/ip_gre.c", i32 1595, i32 11}
!43 = !{ptr @ipgre_link_ops, !44, !"ipgre_link_ops", i1 false, i1 false}
!44 = !{!"../net/ipv4/ip_gre.c", i32 1594, i32 29}
!45 = !{ptr @ipgre_netdev_ops, !46, !"ipgre_netdev_ops", i1 false, i1 false}
!46 = !{!"../net/ipv4/ip_gre.c", i32 924, i32 36}
!47 = !{ptr @ipgre_header_ops, !48, !"ipgre_header_ops", i1 false, i1 false}
!48 = !{!"../net/ipv4/ip_gre.c", i32 878, i32 32}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/inetdevice.h", i32 249, i32 9}
!51 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv4/ip_gre.c", i32 809, i32 40}
!55 = !{ptr @ipgre_net_id, !56, !"ipgre_net_id", i1 false, i1 false}
!56 = !{!"../net/ipv4/ip_gre.c", i32 117, i32 21}
!57 = !{ptr @erspan_link_ops, !58, !"erspan_link_ops", i1 false, i1 false}
!58 = !{!"../net/ipv4/ip_gre.c", i32 1624, i32 29}
!59 = !{ptr @erspan_netdev_ops, !60, !"erspan_netdev_ops", i1 false, i1 false}
!60 = !{!"../net/ipv4/ip_gre.c", i32 1315, i32 36}
!61 = !{ptr @erspan_net_id, !62, !"erspan_net_id", i1 false, i1 false}
!62 = !{!"../net/ipv4/ip_gre.c", i32 119, i32 21}
!63 = !{ptr @ipgre_protocol, !64, !"ipgre_protocol", i1 false, i1 false}
!64 = !{!"../net/ipv4/ip_gre.c", i32 1017, i32 34}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!67 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!71 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!75 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ipgre_tap_net_ops, !77, !"ipgre_tap_net_ops", i1 false, i1 false}
!77 = !{!"../net/ipv4/ip_gre.c", i32 1694, i32 33}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ipv4/ip_gre.c", i32 1686, i32 65}
!80 = !{ptr @ipgre_net_ops, !81, !"ipgre_net_ops", i1 false, i1 false}
!81 = !{!"../net/ipv4/ip_gre.c", i32 1032, i32 33}
!82 = !{ptr @erspan_net_ops, !83, !"erspan_net_ops", i1 false, i1 false}
!83 = !{!"../net/ipv4/ip_gre.c", i32 1712, i32 33}
!84 = !{ptr @.str.12, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/ipv4/ip_gre.c", i32 1704, i32 25}
!86 = !{ptr @.str.13, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/ipv4/ip_gre.c", i32 1723, i32 2}
!88 = !{ptr @.str.14, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ipgre_init._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @ipgre_init._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.17, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/ipv4/ip_gre.c", i32 1739, i32 3}
!94 = !{ptr @ipgre_init._entry.16, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ipgre_init._entry_ptr.18, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!"branch_weights", i32 4000000, i32 4001}
!109 = !{i64 6616763}
!110 = !{i64 784225, i64 784252, i64 784274, i64 784302}
!111 = !{i64 784633, i64 784660, i64 784693, i64 784714, i64 784741, i64 784767}
!112 = !{i64 2149429433}
!113 = !{i64 2149429699}
