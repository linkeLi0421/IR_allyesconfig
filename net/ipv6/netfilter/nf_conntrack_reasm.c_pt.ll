; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/nf_conntrack_reasm.c_pt.bc'
source_filename = "../net/ipv6/netfilter/nf_conntrack_reasm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_ct_frag6_gather\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_frag6_gather\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_frag6_gather\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_frag6_gather:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_frag6_gather\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_frag6_gather:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_frags = type { i32, ptr, ptr, ptr, ptr, ptr, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.183, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.183 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.frag_hdr = type { i8, i8, i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nft_ct_frag6_pernet = type { ptr, ptr }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.182, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, ptr, ptr, i64, i32, i32, i8, i16, ptr, %struct.callback_head }
%struct.rhash_head = type { ptr }
%union.anon.182 = type { %struct.frag_v6_compare_key }
%struct.callback_head = type { ptr, ptr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.frag_queue = type { %struct.inet_frag_queue, i32, i16, i8 }
%struct.fqdir = type { i32, i32, i32, i32, ptr, ptr, i8, [103 x i8], %struct.rhashtable, [28 x i8], %struct.atomic_t, %struct.work_struct, %struct.llist_node, [76 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@nf_ct_frag6_gather.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nf_defrag_ipv6\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_ct_frag6_gather\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"net/ipv6/netfilter/nf_conntrack_reasm.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"payload len = 0\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IPv6-nf: payload len = 0\0A\00", [38 x i8] zeroinitializer }, align 32
@nf_ct_frag6_gather.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Drop incomplete fragment\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IPv6-nf: Drop incomplete fragment\0A\00", [61 x i8] zeroinitializer }, align 32
@nf_ct_frag6_gather.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't find and can't create new queue\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IPv6-nf: Can't find and can't create new queue\0A\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_nf_ct_frag6_gather = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_frag6_gather = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_frag6_gather = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_frag6_gather to i32), ptr @__kstrtab_nf_ct_frag6_gather, ptr @__kstrtabns_nf_ct_frag6_gather }, section "___ksymtab_gpl+nf_ct_frag6_gather", align 4
@nf_frags = internal global { %struct.inet_frags, [48 x i8] } zeroinitializer, align 32
@nf_frags_cache_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nf-frags\00", [23 x i8] zeroinitializer }, align 32
@nfct_rhash_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 0, i16 0, i16 0, i32 0, i16 0, i8 1, ptr @ip6frag_key_hashfn, ptr @ip6frag_obj_hashfn, ptr @ip6frag_obj_cmpfn }, [36 x i8] zeroinitializer }, align 32
@nf_ct_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nf_ct_net_init, ptr @nf_ct_net_pre_exit, ptr @nf_ct_net_exit, ptr null, ptr @nf_frag_pernet_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@find_prev_fhdr.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"find_prev_fhdr\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"next header is none\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IPv6-nf: next header is none\0A\00", [34 x i8] zeroinitializer }, align 32
@find_prev_fhdr.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"too short\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IPv6-nf: too short\0A\00", [44 x i8] zeroinitializer }, align 32
@nf_frag_pernet_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_ct_frag6_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Already completed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IPv6-nf: Already completed\0A\00", [36 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"offset is too large.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IPv6-nf: offset is too large.\0A\00", [33 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"already received last fragment\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IPv6-nf: already received last fragment\0A\00", [55 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.26, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"end of fragment not rounded to 8 bytes.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"IPv6-nf: end of fragment not rounded to 8 bytes.\0A\00", [46 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.28, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"last packet already reached.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IPv6-nf: last packet already reached.\0A\00", [57 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.30, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"queue: message is too short.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IPv6-nf: queue: message is too short.\0A\00", [57 x i8] zeroinitializer }, align 32
@nf_ct_frag6_queue.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.32, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Can't trim\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IPv6-nf: Can't trim\0A\00", [43 x i8] zeroinitializer }, align 32
@ip_frag_ecn_table = external dso_local local_unnamed_addr constant [16 x i8], align 1
@nf_ct_frag6_reasm.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_ct_frag6_reasm\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nf_ct_frag6_reasm: payload len = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IPv6-nf: nf_ct_frag6_reasm: payload len = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nf_ct_frag6_sysctl_table = internal global { [4 x %struct.ctl_table], [48 x i8] } { [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.40, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.41, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/netfilter\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nf_conntrack_frag6_timeout\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nf_conntrack_frag6_low_thresh\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nf_conntrack_frag6_high_thresh\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 58]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 449, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 460, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 475, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"nf_frags\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 37, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"nf_frags_cache_name\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 34, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"nfct_rhash_params\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 535, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"nf_ct_net_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 527, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 405, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 409, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 45, i32 7 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 695, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 723, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 176, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 187, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 207, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 220, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 227, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 239, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 243, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 333, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 313, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 271, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [25 x i8] c"nf_ct_frag6_sysctl_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 46, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 91, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 48, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 54, i32 15 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [43 x i8] c"../net/ipv6/netfilter/nf_conntrack_reasm.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 60, i32 15 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab_nf_ct_frag6_gather, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nf_frags, ptr @nf_frags_cache_name, ptr @nfct_rhash_params, ptr @nf_ct_net_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @nf_ct_frag6_sysctl_table, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_frags to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_frags_cache_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfct_rhash_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_frag6_sysctl_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_frag6_gather(ptr noundef %net, ptr noundef %skb, i32 noundef %user) #0 align 64 {
entry:
  %key.i = alloca %struct.frag_v6_compare_key, align 4
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  %fhoff = alloca i32, align 4
  %nhoff = alloca i32, align 4
  %prevhdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %0 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %transport_header, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fhoff) #12
  %2 = ptrtoint ptr %fhoff to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fhoff, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nhoff) #12
  %3 = ptrtoint ptr %nhoff to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nhoff, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prevhdr) #12
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
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %payload_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp = icmp eq i16 %9, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_gather.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_gather, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !108

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_gather.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call fastcc i32 @find_prev_fhdr(ptr noundef %skb, ptr noundef nonnull %prevhdr, ptr noundef nonnull %nhoff, ptr noundef nonnull %fhoff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %fhoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fhoff, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #12
  %12 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 44, ptr %nexthdr.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #12
  %13 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !107
  %call.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef %11, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.ipv6frag_thdr_truncated.exit.thread_crit_edge, label %lor.lhs.false.i

if.end11.ipv6frag_thdr_truncated.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipv6frag_thdr_truncated.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end11
  %14 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %15)
  %tobool.not.i = icmp ult i16 %15, 8
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.ipv6frag_thdr_truncated.exit.thread_crit_edge

lor.lhs.false.i.ipv6frag_thdr_truncated.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipv6frag_thdr_truncated.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nexthdr.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %sw.default.i [
    i8 6, label %if.end.i.ipv6frag_thdr_truncated.exit_crit_edge
    i8 17, label %sw.bb2.i
    i8 58, label %sw.bb4.i
  ]

if.end.i.ipv6frag_thdr_truncated.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipv6frag_thdr_truncated.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipv6frag_thdr_truncated.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipv6frag_thdr_truncated.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ipv6frag_thdr_truncated.exit

ipv6frag_thdr_truncated.exit.thread:              ; preds = %lor.lhs.false.i.ipv6frag_thdr_truncated.exit.thread_crit_edge, %if.end11.ipv6frag_thdr_truncated.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #12
  br label %if.end30

ipv6frag_thdr_truncated.exit:                     ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %if.end.i.ipv6frag_thdr_truncated.exit_crit_edge
  %.sink.i = phi i32 [ 1, %sw.default.i ], [ 8, %sw.bb4.i ], [ 8, %sw.bb2.i ], [ 20, %if.end.i.ipv6frag_thdr_truncated.exit_crit_edge ]
  %add6.i = add nuw i32 %.sink.i, %call.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %20)
  %cmp7.i = icmp ugt i32 %add6.i, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #12
  br i1 %cmp7.i, label %do.body14, label %ipv6frag_thdr_truncated.exit.if.end30_crit_edge

ipv6frag_thdr_truncated.exit.if.end30_crit_edge:  ; preds = %ipv6frag_thdr_truncated.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body14:                                        ; preds = %ipv6frag_thdr_truncated.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_gather.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_gather, %if.then26)) #12
          to label %cleanup [label %if.then26], !srcloc !108

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_gather.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end30:                                         ; preds = %ipv6frag_thdr_truncated.exit.if.end30_crit_edge, %ipv6frag_thdr_truncated.exit.thread
  %add = add i32 %11, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i100, label %if.end30.if.end33_crit_edge, !prof !109

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end.i100:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %add)
  %cmp3.i = icmp ult i32 %22, %add
  br i1 %cmp3.i, label %if.end.i100.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !109

if.end.i100.cleanup_crit_edge:                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i100
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end33_crit_edge

pskb_may_pull.exit.if.end33_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %pskb_may_pull.exit.if.end33_crit_edge, %if.end30.if.end33_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i103 = trunc i32 %sub.ptr.sub.i.i to i16
  %29 = trunc i32 %11 to i16
  %conv1.i = add i16 %conv.i.i103, %29
  %30 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv1.i, ptr %transport_header, align 2
  %31 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i106 = zext i16 %32 to i32
  %add.ptr.i.i107 = getelementptr i8, ptr %28, i32 %conv.i.i106
  %conv.i = zext i16 %conv1.i to i32
  %add.ptr.i = getelementptr i8, ptr %28, i32 %conv.i
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i108 = icmp eq ptr %34, null
  br i1 %tobool.not.i108, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void %34(ptr noundef %skb) #12
  %35 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %destructor.i, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %36, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end33
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !110

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #12, !srcloc !111
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %add.ptr.i, i32 0, i32 3
  %41 = ptrtoint ptr %identification to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %identification, align 4
  %43 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %tobool36.not = icmp eq ptr %45, null
  br i1 %tobool36.not, label %skb_orphan.exit.cond.end_crit_edge, label %cond.true

skb_orphan.exit.cond.end_crit_edge:               ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %skb_orphan.exit.cond.end_crit_edge
  %cond = phi i32 [ %47, %cond.true ], [ 0, %skb_orphan.exit.cond.end_crit_edge ]
  %call.i110 = call fastcc ptr @nf_frag_pernet(ptr noundef %net) #12
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %key.i) #12
  %saddr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i107, i32 0, i32 5
  %48 = call ptr @memcpy(ptr %key.i, ptr %saddr1.i, i32 16)
  %daddr.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 1
  %daddr2.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i107, i32 0, i32 6
  %49 = call ptr @memcpy(ptr %daddr.i, ptr %daddr2.i, i32 16)
  %user3.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 2
  %50 = ptrtoint ptr %user3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %user, ptr %user3.i, align 4
  %id4.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 3
  %51 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %42, ptr %id4.i, align 4
  %iif5.i = getelementptr inbounds %struct.frag_v6_compare_key, ptr %key.i, i32 0, i32 4
  %52 = ptrtoint ptr %iif5.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond, ptr %iif5.i, align 4
  %fqdir.i = getelementptr inbounds %struct.nft_ct_frag6_pernet, ptr %call.i110, i32 0, i32 1
  %53 = ptrtoint ptr %fqdir.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fqdir.i, align 4
  %call6.i = call ptr @inet_frag_find(ptr noundef %54, ptr noundef nonnull %key.i) #12
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %key.i) #12
  %cmp38 = icmp eq ptr %call6.i, null
  br i1 %cmp38, label %do.body41, label %if.end57

do.body41:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_gather.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_gather, %if.then53)) #12
          to label %cleanup [label %if.then53], !srcloc !108

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_gather.__UNIQUE_ID_ddebug631, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end57:                                         ; preds = %cond.end
  %lock = getelementptr inbounds %struct.inet_frag_queue, ptr %call6.i, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %55 = ptrtoint ptr %nhoff to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nhoff, align 4
  %call58 = call fastcc i32 @nf_ct_frag6_queue(ptr noundef nonnull %call6.i, ptr noundef %skb, ptr noundef %add.ptr.i, i32 noundef %56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %call58)
  %cmp59 = icmp eq i32 %call58, -71
  br i1 %cmp59, label %if.then61, label %if.end57.if.end63_crit_edge

if.end57.if.end63_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %1, ptr %transport_header, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end57.if.end63_crit_edge
  %ret.0 = phi i32 [ 0, %if.then61 ], [ %call58, %if.end57.if.end63_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %refcnt.i = getelementptr inbounds %struct.inet_frag_queue, ptr %call6.i, i32 0, i32 4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !113
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i111, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !110

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %cleanup

if.then.i111:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  call void @inet_frag_destroy(ptr noundef nonnull %call6.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i111, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then53, %do.body41, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i100.cleanup_crit_edge, %if.then26, %do.body14, %if.end6.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.then26 ], [ -12, %pskb_may_pull.exit.cleanup_crit_edge ], [ -12, %if.then53 ], [ 0, %do.body ], [ 0, %do.body14 ], [ -12, %do.body41 ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i111 ], [ -12, %if.end.i100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prevhdr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhoff) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fhoff) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_prev_fhdr(ptr noundef %skb, ptr nocapture noundef writeonly %prevhdrp, ptr nocapture noundef writeonly %prevhoff, ptr nocapture noundef writeonly %fhoff) unnamed_addr #0 align 64 {
entry:
  %hdr = alloca %struct.ipv6_opt_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #14
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
  %nexthdr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %nexthdr1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nexthdr1, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv = add i32 %sub.ptr.sub.i, 6
  %add3 = add i32 %sub.ptr.sub.i, 40
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len4, align 4
  %sub = sub i32 %9, %add3
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %5)
  %cmp.not122 = icmp eq i8 %5, 44
  br i1 %cmp.not122, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %10 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %hdr, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %nexthdr.0125 = phi i8 [ %5, %while.body.lr.ph ], [ %16, %if.end47.while.body_crit_edge ]
  %start.0124 = phi i32 [ %add3, %while.body.lr.ph ], [ %add63, %if.end47.while.body_crit_edge ]
  %len.0123 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub62, %if.end47.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdr) #12
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %hdr, align 1, !annotation !107
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %10, align 1, !annotation !107
  %call7 = call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %nexthdr.0125) #12
  br i1 %call7, label %if.end, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %nexthdr.0125)
  %cmp9 = icmp eq i8 %nexthdr.0125, 59
  br i1 %cmp9, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_prev_fhdr.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_prev_fhdr, %if.then15)) #12
          to label %cleanup [label %if.then15], !srcloc !108

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_prev_fhdr.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.11) #12
  br label %cleanup.thread

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.0123)
  %cmp18 = icmp slt i32 %len.0123, 2
  br i1 %cmp18, label %do.body21, label %if.end37

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_prev_fhdr.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_prev_fhdr, %if.then33)) #12
          to label %cleanup [label %if.then33], !srcloc !108

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_prev_fhdr.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.13) #12
  br label %cleanup.thread

if.end37:                                         ; preds = %if.end17
  %call38 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %start.0124, ptr noundef nonnull %hdr, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %do.body41

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/netfilter/nf_conntrack_reasm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 413, 0\0A.popsection", ""() #12, !srcloc !115
  unreachable

if.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %nexthdr.0125)
  %cmp49 = icmp eq i8 %nexthdr.0125, 51
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %10, align 1
  %conv53 = zext i8 %14 to i32
  %. = select i1 %cmp49, i32 2, i32 3
  %add57 = shl nuw nsw i32 %conv53, %.
  %hdrlen.0 = add nuw nsw i32 %add57, 8
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hdr, align 1
  %sub62 = sub nsw i32 %len.0123, %hdrlen.0
  %add63 = add i32 %hdrlen.0, %start.0124
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr) #12
  %cmp.not = icmp eq i8 %16, 44
  br i1 %cmp.not, label %if.end47.while.end_crit_edge, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.thread:                                   ; preds = %if.then33, %if.then15, %while.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr) #12
  br label %cleanup70

cleanup:                                          ; preds = %do.body21, %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdr) #12
  br label %cleanup70

while.end:                                        ; preds = %if.end47.while.end_crit_edge, %entry.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %sub, %entry.while.end_crit_edge ], [ %sub62, %if.end47.while.end_crit_edge ]
  %prevhdr.0.lcssa = phi i8 [ 41, %entry.while.end_crit_edge ], [ %nexthdr.0125, %if.end47.while.end_crit_edge ]
  %start.0.lcssa = phi i32 [ %add3, %entry.while.end_crit_edge ], [ %add63, %if.end47.while.end_crit_edge ]
  %prev_nhoff.0.lcssa = phi i32 [ %conv, %entry.while.end_crit_edge ], [ %start.0124, %if.end47.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa)
  %cmp65 = icmp slt i32 %len.0.lcssa, 0
  br i1 %cmp65, label %while.end.cleanup70_crit_edge, label %if.end68

while.end.cleanup70_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end68:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %prevhdrp to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %prevhdr.0.lcssa, ptr %prevhdrp, align 1
  %conv69 = and i32 %prev_nhoff.0.lcssa, 255
  %18 = ptrtoint ptr %prevhoff to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv69, ptr %prevhoff, align 4
  %19 = ptrtoint ptr %fhoff to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %start.0.lcssa, ptr %fhoff, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %if.end68, %while.end.cleanup70_crit_edge, %cleanup, %cleanup.thread
  %retval.2 = phi i32 [ -1, %cleanup ], [ 0, %if.end68 ], [ -1, %while.end.cleanup70_crit_edge ], [ -1, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_ct_frag6_queue(ptr noundef %fq, ptr noundef %skb, ptr noundef %fhdr, i32 noundef %nhoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 11
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then4)) #12
          to label %err250 [label %if.then4], !srcloc !108

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.21) #12
  br label %err250

if.end5:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i347 = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i347
  %payload_len7 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %payload_len7 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %payload_len7, align 4
  %conv8 = zext i16 %8 to i32
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %fhdr, i32 0, i32 2
  %9 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %frag_off, align 2
  %11 = and i16 %10, -8
  %and10 = zext i16 %11 to i32
  %add.ptr = getelementptr %struct.frag_hdr, ptr %fhdr, i32 1
  %add.ptr12 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr12 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %conv8
  %add = add i32 %sub, %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp = icmp ugt i32 %add, 65535
  br i1 %cmp, label %do.body15, label %if.end31

do.body15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then27)) #12
          to label %cleanup [label %if.then27], !srcloc !108

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug621, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %14 = trunc i16 %13 to i8
  %15 = lshr i8 %14, 4
  %16 = and i8 %15, 3
  %shl.i = shl nuw nsw i8 1, %16
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %ip_summed, align 8
  %18 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %18)
  %cmp35 = icmp eq i16 %18, 1024
  br i1 %cmp35, label %if.then37, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %sub.ptr.rhs.cast41 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub42 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast41
  %call43 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i, i32 noundef %sub.ptr.sub42, i32 noundef 0) #12
  %neg.i = xor i32 %call43, -1
  %add.i.i = add i32 %21, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add1.i.i, ptr %19, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.end31.if.end45_crit_edge
  %23 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_off, align 2
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool49.not = icmp eq i16 %25, 0
  br i1 %tobool49.not, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end45
  %len = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp52 = icmp slt i32 %add, %27
  br i1 %cmp52, label %if.then50.do.body64_crit_edge, label %lor.lhs.false

if.then50.do.body64_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

lor.lhs.false:                                    ; preds = %if.then50
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %flags, align 8
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool58.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp61.not = icmp eq i32 %add, %27
  %or.cond = select i1 %tobool58.not, i1 true, i1 %cmp61.not
  br i1 %or.cond, label %if.end80, label %lor.lhs.false.do.body64_crit_edge

lor.lhs.false.do.body64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body64

do.body64:                                        ; preds = %lor.lhs.false.do.body64_crit_edge, %if.then50.do.body64_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then76)) #12
          to label %err250 [label %if.then76], !srcloc !108

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.25) #12
  br label %err250

if.end80:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %31 = or i8 %29, 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %flags, align 8
  br label %if.end139.sink.split

if.else:                                          ; preds = %if.end45
  %and87 = and i32 %add, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end107, label %do.body90

do.body90:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then102)) #12
          to label %do.end105 [label %if.then102], !srcloc !108

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.27) #12
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body90
  tail call void @inet_frag_kill(ptr noundef %fq) #12
  br label %cleanup

if.end107:                                        ; preds = %if.else
  %len109 = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %33 = ptrtoint ptr %len109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len109, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %34)
  %cmp110 = icmp sgt i32 %add, %34
  br i1 %cmp110, label %if.then112, label %if.end107.if.end139_crit_edge

if.end107.if.end139_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then112:                                       ; preds = %if.end107
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 8
  %37 = and i8 %36, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool117.not = icmp eq i8 %37, 0
  br i1 %tobool117.not, label %if.then112.if.end139.sink.split_crit_edge, label %do.body119

if.then112.if.end139.sink.split_crit_edge:        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.sink.split

do.body119:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then131)) #12
          to label %err250 [label %if.then131], !srcloc !108

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.29) #12
  br label %err250

if.end139.sink.split:                             ; preds = %if.then112.if.end139.sink.split_crit_edge, %if.end80
  %len109.sink = phi ptr [ %len, %if.end80 ], [ %len109, %if.then112.if.end139.sink.split_crit_edge ]
  %38 = ptrtoint ptr %len109.sink to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %len109.sink, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %if.end107.if.end139_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp140 = icmp eq i32 %sub, 0
  br i1 %cmp140, label %if.end139.err250_crit_edge, label %if.end143

if.end139.err250_crit_edge:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %err250

if.end143:                                        ; preds = %if.end139
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %sub.ptr.rhs.cast146 = ptrtoint ptr %40 to i32
  %sub.ptr.sub147 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast146
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %sub.ptr.sub147)
  %cmp.i = icmp ult i32 %42, %sub.ptr.sub147
  br i1 %cmp.i, label %if.end143.do.body151_crit_edge, label %cond.false.i, !prof !109

if.end143.do.body151_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

cond.false.i:                                     ; preds = %if.end143
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %42, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub147, i32 %sub.i.i.i)
  %cmp.i.i356 = icmp ugt i32 %sub.ptr.sub147, %sub.i.i.i
  br i1 %cmp.i.i356, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub i32 %sub.ptr.sub147, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.do.body151_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pskb_pull.exit

land.lhs.true.i.i.do.body151_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %45 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i, align 4
  %sub4.i.i = sub i32 %46, %sub.ptr.sub147
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %add.ptr.i.i357 = getelementptr i8, ptr %48, i32 %sub.ptr.sub147
  store ptr %add.ptr.i.i357, ptr %data, align 4
  %tobool149.not = icmp eq ptr %add.ptr.i.i357, null
  br i1 %tobool149.not, label %pskb_pull.exit.do.body151_crit_edge, label %if.end167

pskb_pull.exit.do.body151_crit_edge:              ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body151

do.body151:                                       ; preds = %pskb_pull.exit.do.body151_crit_edge, %land.lhs.true.i.i.do.body151_crit_edge, %if.end143.do.body151_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then163)) #12
          to label %err250 [label %if.then163], !srcloc !108

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.31) #12
  br label %err250

if.end167:                                        ; preds = %pskb_pull.exit
  %49 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub)
  %cmp.not.i = icmp ugt i32 %50, %sub
  br i1 %cmp.not.i, label %pskb_trim_rcsum.exit, label %if.end167.if.end188_crit_edge, !prof !109

if.end167.if.end188_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

pskb_trim_rcsum.exit:                             ; preds = %if.end167
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool170.not = icmp eq i32 %call.i, 0
  br i1 %tobool170.not, label %pskb_trim_rcsum.exit.if.end188_crit_edge, label %do.body172

pskb_trim_rcsum.exit.if.end188_crit_edge:         ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.body172:                                       ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_queue, %if.then184)) #12
          to label %err250 [label %if.then184], !srcloc !108

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_queue.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.33) #12
  br label %err250

if.end188:                                        ; preds = %pskb_trim_rcsum.exit.if.end188_crit_edge, %if.end167.if.end188_crit_edge
  %51 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 6
  %54 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fragments_tail, align 4
  %call191 = tail call i32 @inet_frag_queue_insert(ptr noundef %fq, ptr noundef %skb, i32 noundef %and10, i32 noundef %add) #12
  %56 = zext i32 %call191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call191, label %insert_error [
    i32 0, label %if.end198
    i32 1, label %if.then196
  ]

if.then196:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end198:                                        ; preds = %if.end188
  %tobool199.not = icmp eq ptr %53, null
  br i1 %tobool199.not, label %if.end198.if.end201_crit_edge, label %if.then200

if.end198.if.end201_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end201

if.then200:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  %ifindex = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 17
  %57 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ifindex, align 4
  %iif = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 1
  %59 = ptrtoint ptr %iif to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %iif, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then200, %if.end198.if.end201_crit_edge
  %60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %60, align 8
  %stamp = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 8
  %63 = ptrtoint ptr %stamp to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %stamp, align 8
  %64 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len1.i, align 4
  %meat = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 10
  %66 = ptrtoint ptr %meat to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %meat, align 4
  %add205 = add i32 %67, %65
  store i32 %add205, ptr %meat, align 4
  %ecn207 = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 3
  %68 = ptrtoint ptr %ecn207 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ecn207, align 2
  %or209328 = or i8 %69, %shl.i
  store i8 %or209328, ptr %ecn207, align 2
  %max_size = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 12
  %70 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %max_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %71)
  %cmp213 = icmp ugt i16 %8, %71
  br i1 %cmp213, label %if.then215, label %if.end201.if.end219_crit_edge

if.end201.if.end219_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219

if.then215:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %max_size to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %8, ptr %max_size, align 2
  br label %if.end219

if.end219:                                        ; preds = %if.then215, %if.end201.if.end219_crit_edge
  %fqdir = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 13
  %73 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fqdir, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %75 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %truesize, align 8
  %mem.i = getelementptr inbounds %struct.fqdir, ptr %74, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mem.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mem.i, i32 1, i32 3, i32 1) #12
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mem.i, ptr %mem.i, i32 %76, ptr elementtype(i32) %mem.i) #12, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp221 = icmp eq i16 %11, 0
  br i1 %cmp221, label %if.then223, label %if.end230thread-pre-split

if.then223:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  %conv224 = trunc i32 %nhoff to i16
  %nhoffset = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 2
  %78 = ptrtoint ptr %nhoffset to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv224, ptr %nhoffset, align 4
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags, align 8
  %81 = or i8 %80, 1
  store i8 %81, ptr %flags, align 8
  br label %if.end230

if.end230thread-pre-split:                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %82)
  %.pr = load i8, ptr %flags, align 8
  br label %if.end230

if.end230:                                        ; preds = %if.end230thread-pre-split, %if.then223
  %83 = phi i8 [ %.pr, %if.end230thread-pre-split ], [ %81, %if.then223 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %cmp234 = icmp eq i8 %83, 3
  br i1 %cmp234, label %land.lhs.true236, label %if.end230.if.end248_crit_edge

if.end230.if.end248_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

land.lhs.true236:                                 ; preds = %if.end230
  %84 = ptrtoint ptr %meat to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %meat, align 4
  %len240 = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %86 = ptrtoint ptr %len240 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len240, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp241 = icmp eq i32 %85, %87
  br i1 %cmp241, label %if.then243, label %land.lhs.true236.if.end248_crit_edge

land.lhs.true236.if.end248_crit_edge:             ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end248

if.then243:                                       ; preds = %land.lhs.true236
  call void @__sanitizer_cov_trace_pc() #14
  %88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  store i32 0, ptr %88, align 8
  %call245 = tail call fastcc i32 @nf_ct_frag6_reasm(ptr noundef %fq, ptr noundef %skb, ptr noundef %55, ptr noundef %53)
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool247.not = icmp eq i32 %call245, 0
  %cond = select i1 %tobool247.not, i32 0, i32 -115
  br label %cleanup

if.end248:                                        ; preds = %land.lhs.true236.if.end248_crit_edge, %if.end230.if.end248_crit_edge
  %92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i, label %if.end248.cleanup_crit_edge, label %if.then.i

if.end248.cleanup_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end248
  %and.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i360 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i360, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i = and i32 %94, -2
  %95 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %95) #12
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %92, align 8
  br label %cleanup

insert_error:                                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @inet_frag_kill(ptr noundef %fq) #12
  br label %err250

err250:                                           ; preds = %insert_error, %if.then184, %do.body172, %if.then163, %do.body151, %if.end139.err250_crit_edge, %if.then131, %do.body119, %if.then76, %do.body64, %if.then4, %do.body
  %97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i362 = icmp eq i32 %99, 0
  br i1 %tobool.not.i362, label %err250.cleanup_crit_edge, label %if.then.i365

err250.cleanup_crit_edge:                         ; preds = %err250
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i365:                                     ; preds = %err250
  %and.i.i363 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i363)
  %tobool.not.i.i364 = icmp eq i32 %and.i.i363, 0
  br i1 %tobool.not.i.i364, label %if.then.i.i367, label %if.then.i365.refdst_drop.exit.i368_crit_edge

if.then.i365.refdst_drop.exit.i368_crit_edge:     ; preds = %if.then.i365
  call void @__sanitizer_cov_trace_pc() #14
  br label %refdst_drop.exit.i368

if.then.i.i367:                                   ; preds = %if.then.i365
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i366 = and i32 %99, -2
  %100 = inttoptr i32 %and1.i.i366 to ptr
  tail call void @dst_release(ptr noundef %100) #12
  br label %refdst_drop.exit.i368

refdst_drop.exit.i368:                            ; preds = %if.then.i.i367, %if.then.i365.refdst_drop.exit.i368_crit_edge
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %97, align 8
  br label %cleanup

cleanup:                                          ; preds = %refdst_drop.exit.i368, %err250.cleanup_crit_edge, %refdst_drop.exit.i, %if.end248.cleanup_crit_edge, %if.then243, %if.then196, %do.end105, %if.then27, %do.body15
  %retval.0 = phi i32 [ -71, %do.end105 ], [ -115, %if.then196 ], [ %cond, %if.then243 ], [ -22, %if.then27 ], [ -22, %do.body15 ], [ -115, %if.end248.cleanup_crit_edge ], [ -115, %refdst_drop.exit.i ], [ -22, %err250.cleanup_crit_edge ], [ -22, %refdst_drop.exit.i368 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_frag6_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @ip6frag_init, ptr getelementptr inbounds (%struct.inet_frags, ptr @nf_frags, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.inet_frags, ptr @nf_frags, i32 0, i32 2), align 4
  store i32 200, ptr @nf_frags, align 4
  store ptr @nf_ct_frag6_expire, ptr getelementptr inbounds (%struct.inet_frags, ptr @nf_frags, i32 0, i32 3), align 4
  store ptr @nf_frags_cache_name, ptr getelementptr inbounds (%struct.inet_frags, ptr @nf_frags, i32 0, i32 5), align 4
  %0 = call ptr @memcpy(ptr getelementptr inbounds (%struct.inet_frags, ptr @nf_frags, i32 0, i32 6), ptr @nfct_rhash_params, i32 28)
  %call = tail call i32 @inet_frags_init(ptr noundef nonnull @nf_frags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nf_ct_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.then3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @inet_frags_fini(ptr noundef nonnull @nf_frags) #12
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ip6frag_init(ptr nocapture noundef writeonly %q, ptr nocapture noundef readonly %a) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %key1 = getelementptr inbounds %struct.inet_frag_queue, ptr %q, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %key1, ptr %a, i32 44)
  %ecn = getelementptr inbounds %struct.frag_queue, ptr %q, i32 0, i32 3
  %1 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ecn, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_ct_frag6_expire(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -48
  %fqdir = getelementptr i8, ptr %t, i32 132
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %net = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %8 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fqdir, align 4
  %dead.i = getelementptr inbounds %struct.fqdir, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dead.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %dead.i, align 8, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %rcu_read_lock.exit.i.out_rcu_unlock.i_crit_edge

rcu_read_lock.exit.i.out_rcu_unlock.i_crit_edge:  ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_rcu_unlock.i

if.end.i:                                         ; preds = %rcu_read_lock.exit.i
  %lock.i = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %flags.i = getelementptr i8, ptr %t, i32 128
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 8
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not.i = icmp eq i8 %14, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  tail call void @inet_frag_kill(ptr noundef %add.ptr) #12
  %iif.i = getelementptr i8, ptr %t, i32 144
  %15 = ptrtoint ptr %iif.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iif.i, align 8
  %call.i = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %16) #12
  %tobool8.not.i = icmp eq ptr %call.i, null
  br i1 %tobool8.not.i, label %if.end6.i.out.i_crit_edge, label %if.end10.i

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end10.i:                                       ; preds = %if.end6.i
  %ip6_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 80
  %17 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i161.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i161.i, label %if.end10.i.__in6_dev_get.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end10.i.__in6_dev_get.exit.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end10.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i162.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i162.i, label %land.lhs.true.i163.i, label %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge

lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

land.lhs.true.i163.i:                             ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i163.i.__in6_dev_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i163.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true.i163.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i163.i
  %.b10.i.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i.i, label %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, label %if.then.i164.i

land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit.i

if.then.i164.i:                                   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 313, ptr noundef nonnull @.str.15) #12
  br label %__in6_dev_get.exit.i

__in6_dev_get.exit.i:                             ; preds = %if.then.i164.i, %land.lhs.true5.i.i.__in6_dev_get.exit.i_crit_edge, %land.lhs.true.i163.i.__in6_dev_get.exit.i_crit_edge, %lor.lhs.false.i.i.__in6_dev_get.exit.i_crit_edge, %if.end10.i.__in6_dev_get.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %18, null
  br i1 %cmp.not.i, label %__in6_dev_get.exit.i.do.body32.i_crit_edge, label %do.body16.i, !prof !109

__in6_dev_get.exit.i.do.body32.i_crit_edge:       ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body32.i

do.body16.i:                                      ; preds = %__in6_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable() #12
  %ipv6.i = getelementptr inbounds %struct.inet6_dev, ptr %18, i32 0, i32 33, i32 1
  %19 = ptrtoint ptr %ipv6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipv6.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %28, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #12
  %arrayidx24.i = getelementptr [37 x i64], ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx24.i, align 8
  %add25.i = add i64 %30, 1
  store i64 %add25.i, ptr %arrayidx24.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %28, i32 0, i32 1, i32 0, i32 1
  %31 = tail call ptr @llvm.returnaddress(i32 0) #12
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  %33 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %do.body32.i

do.body32.i:                                      ; preds = %do.body16.i, %__in6_dev_get.exit.i.do.body32.i_crit_edge
  tail call fastcc void @local_bh_disable() #12
  %ipv6_statistics.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 30, i32 1
  %35 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipv6_statistics.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i165.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i165.i to ptr
  %cpu43.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu43.i, align 4
  %arrayidx44.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx44.i, align 4
  %add45.i = add i32 %43, %37
  %44 = inttoptr i32 %add45.i to ptr
  %syncp46.i = getelementptr inbounds %struct.ipstats_mib, ptr %44, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp46.i) #12
  %arrayidx48.i = getelementptr [37 x i64], ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx48.i, align 8
  %add49.i = add i64 %46, 1
  store i64 %add49.i, ptr %arrayidx48.i, align 8
  %dep_map.i.i166.i = getelementptr inbounds %struct.ipstats_mib, ptr %44, i32 0, i32 1, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #12
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i166.i, i32 noundef %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  %49 = ptrtoint ptr %syncp46.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %syncp46.i, align 4
  %inc.i.i.i167.i = add i32 %50, 1
  store i32 %inc.i.i.i167.i, ptr %syncp46.i, align 4
  tail call fastcc void @local_bh_enable() #12
  %51 = ptrtoint ptr %ip6_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %ip6_ptr.i.i, align 8
  %call.i169.i = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call.i169.i, label %do.body32.i.__in6_dev_get.exit179.i_crit_edge, label %lor.lhs.false.i172.i

do.body32.i.__in6_dev_get.exit179.i_crit_edge:    ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit179.i

lor.lhs.false.i172.i:                             ; preds = %do.body32.i
  %call2.i170.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call2.i170.i, 0
  br i1 %tobool.not.i171.i, label %land.lhs.true.i175.i, label %lor.lhs.false.i172.i.__in6_dev_get.exit179.i_crit_edge

lor.lhs.false.i172.i.__in6_dev_get.exit179.i_crit_edge: ; preds = %lor.lhs.false.i172.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit179.i

land.lhs.true.i175.i:                             ; preds = %lor.lhs.false.i172.i
  %call3.i173.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i173.i)
  %tobool4.not.i174.i = icmp eq i32 %call3.i173.i, 0
  br i1 %tobool4.not.i174.i, label %land.lhs.true.i175.i.__in6_dev_get.exit179.i_crit_edge, label %land.lhs.true5.i177.i

land.lhs.true.i175.i.__in6_dev_get.exit179.i_crit_edge: ; preds = %land.lhs.true.i175.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit179.i

land.lhs.true5.i177.i:                            ; preds = %land.lhs.true.i175.i
  %.b10.i176.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i176.i, label %land.lhs.true5.i177.i.__in6_dev_get.exit179.i_crit_edge, label %if.then.i178.i

land.lhs.true5.i177.i.__in6_dev_get.exit179.i_crit_edge: ; preds = %land.lhs.true5.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in6_dev_get.exit179.i

if.then.i178.i:                                   ; preds = %land.lhs.true5.i177.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 313, ptr noundef nonnull @.str.15) #12
  br label %__in6_dev_get.exit179.i

__in6_dev_get.exit179.i:                          ; preds = %if.then.i178.i, %land.lhs.true5.i177.i.__in6_dev_get.exit179.i_crit_edge, %land.lhs.true.i175.i.__in6_dev_get.exit179.i_crit_edge, %lor.lhs.false.i172.i.__in6_dev_get.exit179.i_crit_edge, %do.body32.i.__in6_dev_get.exit179.i_crit_edge
  %cmp57.not.i = icmp eq ptr %52, null
  br i1 %cmp57.not.i, label %__in6_dev_get.exit179.i.do.body92.i_crit_edge, label %do.body66.i, !prof !109

__in6_dev_get.exit179.i.do.body92.i_crit_edge:    ; preds = %__in6_dev_get.exit179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body92.i

do.body66.i:                                      ; preds = %__in6_dev_get.exit179.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable() #12
  %ipv676.i = getelementptr inbounds %struct.inet6_dev, ptr %52, i32 0, i32 33, i32 1
  %53 = ptrtoint ptr %ipv676.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ipv676.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu43.i, align 4
  %arrayidx80.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx80.i, align 4
  %add81.i = add i32 %59, %55
  %60 = inttoptr i32 %add81.i to ptr
  %syncp82.i = getelementptr inbounds %struct.ipstats_mib, ptr %60, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp82.i) #12
  %arrayidx84.i = getelementptr [37 x i64], ptr %60, i32 0, i32 16
  %61 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx84.i, align 8
  %add85.i = add i64 %62, 1
  store i64 %add85.i, ptr %arrayidx84.i, align 8
  %dep_map.i.i180.i = getelementptr inbounds %struct.ipstats_mib, ptr %60, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i180.i, i32 noundef %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  %63 = ptrtoint ptr %syncp82.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %syncp82.i, align 4
  %inc.i.i.i181.i = add i32 %64, 1
  store i32 %inc.i.i.i181.i, ptr %syncp82.i, align 4
  tail call fastcc void @local_bh_enable() #12
  br label %do.body92.i

do.body92.i:                                      ; preds = %do.body66.i, %__in6_dev_get.exit179.i.do.body92.i_crit_edge
  tail call fastcc void @local_bh_disable() #12
  %65 = ptrtoint ptr %ipv6_statistics.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ipv6_statistics.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = ptrtoint ptr %cpu43.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu43.i, align 4
  %arrayidx106.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx106.i, align 4
  %add107.i = add i32 %71, %67
  %72 = inttoptr i32 %add107.i to ptr
  %syncp108.i = getelementptr inbounds %struct.ipstats_mib, ptr %72, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp108.i) #12
  %arrayidx110.i = getelementptr [37 x i64], ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx110.i, align 8
  %add111.i = add i64 %74, 1
  store i64 %add111.i, ptr %arrayidx110.i, align 8
  %dep_map.i.i182.i = getelementptr inbounds %struct.ipstats_mib, ptr %72, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i182.i, i32 noundef %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  %75 = ptrtoint ptr %syncp108.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %syncp108.i, align 4
  %inc.i.i.i183.i = add i32 %76, 1
  store i32 %inc.i.i.i183.i, ptr %syncp108.i, align 4
  tail call fastcc void @local_bh_enable() #12
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags.i, align 8
  %79 = and i8 %78, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool121.not.i = icmp eq i8 %79, 0
  br i1 %tobool121.not.i, label %do.body92.i.out.i_crit_edge, label %if.end123.i

do.body92.i.out.i_crit_edge:                      ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end123.i:                                      ; preds = %do.body92.i
  %call125.i = tail call ptr @inet_frag_pull_head(ptr noundef %add.ptr) #12
  %tobool126.not.i = icmp eq ptr %call125.i, null
  br i1 %tobool126.not.i, label %if.end123.i.out.i_crit_edge, label %if.end128.i

if.end123.i.out.i_crit_edge:                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end128.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = getelementptr inbounds %struct.anon.83, ptr %call125.i, i32 0, i32 2
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %80, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call125.i, i32 0, i32 3
  tail call void @icmp6_send(ptr noundef nonnull %call125.i, i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 0, ptr noundef null, ptr noundef %cb.i.i) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call125.i, i32 noundef 0) #12
  br label %out_rcu_unlock.i

out.i:                                            ; preds = %if.end123.i.out.i_crit_edge, %do.body92.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %out_rcu_unlock.i

out_rcu_unlock.i:                                 ; preds = %out.i, %if.end128.i, %rcu_read_lock.exit.i.out_rcu_unlock.i_crit_edge
  %call.i184.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i184.i, label %out_rcu_unlock.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i187.i

out_rcu_unlock.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %out_rcu_unlock.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i187.i:                             ; preds = %out_rcu_unlock.i
  %call1.i185.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185.i)
  %tobool.not.i186.i = icmp eq i32 %call1.i185.i, 0
  br i1 %tobool.not.i186.i, label %land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i189.i

land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i187.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i189.i:                            ; preds = %land.lhs.true.i187.i
  %.b4.i188.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i188.i, label %land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i190.i

land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i189.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i190.i:                                   ; preds = %land.lhs.true2.i189.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i190.i, %land.lhs.true2.i189.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i187.i.rcu_read_unlock.exit.i_crit_edge, %out_rcu_unlock.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  %82 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i.i.i191.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i191.i to ptr
  %preempt_count.i.i.i.i192.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i192.i, align 4
  %sub.i.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i192.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %refcnt.i.i = getelementptr i8, ptr %t, i32 92
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !113
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i193.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ip6frag_expire_frag_queue.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !110

if.end5.i.i.i.i.i.ip6frag_expire_frag_queue.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip6frag_expire_frag_queue.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #12
  br label %ip6frag_expire_frag_queue.exit

if.then.i193.i:                                   ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @inet_frag_destroy(ptr noundef %add.ptr) #12
  br label %ip6frag_expire_frag_queue.exit

ip6frag_expire_frag_queue.exit:                   ; preds = %if.then.i193.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ip6frag_expire_frag_queue.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frags_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frags_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_frag6_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nf_ct_net_ops) #12
  tail call void @inet_frags_fini(ptr noundef nonnull @nf_frags) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_frag_pernet(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nf_frag_pernet_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 45, ptr noundef nonnull @.str.15) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #12
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !121
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_frag_queue_insert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_ct_frag6_reasm(ptr noundef %fq, ptr noundef %skb, ptr noundef %prev_tail, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_frag_kill(ptr noundef %fq) #12
  %ecn1 = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 3
  %0 = ptrtoint ptr %ecn1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ecn1, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [16 x i8], ptr @ip_frag_ecn_table, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %entry.err_crit_edge, label %if.end, !prof !109

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %entry
  %call = tail call ptr @inet_frag_reasm_prepare(ptr noundef %fq, ptr noundef %skb, ptr noundef %prev_tail) #12
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end7:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %len = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 8
  %sub = add i32 %sub.ptr.lhs.cast, -48
  %add = add i32 %sub, %11
  %sub10 = sub i32 %add, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub10)
  %cmp11 = icmp sgt i32 %sub10, 65535
  br i1 %cmp11, label %do.body, label %if.end26

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_ct_frag6_reasm.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_ct_frag6_reasm, %land.lhs.true)) #12
          to label %err [label %land.lhs.true], !srcloc !108

land.lhs.true:                                    ; preds = %do.body
  %call22 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.err_crit_edge, label %if.then24

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_ct_frag6_reasm.descriptor, ptr noundef nonnull @.str.36, i32 noundef %sub10) #12
  br label %err

if.end26:                                         ; preds = %if.end7
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %12 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i, align 2
  %conv.i112 = zext i16 %13 to i32
  %add.ptr.i113 = getelementptr i8, ptr %7, i32 %conv.i112
  %14 = ptrtoint ptr %add.ptr.i113 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i113, align 1
  %nhoffset = getelementptr inbounds %struct.frag_queue, ptr %fq, i32 0, i32 2
  %16 = ptrtoint ptr %nhoffset to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %nhoffset, align 4
  %idxprom30 = zext i16 %17 to i32
  %arrayidx31 = getelementptr i8, ptr %add.ptr.i, i32 %idxprom30
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %15, ptr %arrayidx31, align 1
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast35 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast36 = ptrtoint ptr %20 to i32
  %sub.ptr.sub37 = sub i32 -8, %sub.ptr.rhs.cast36
  %sub38 = add i32 %sub.ptr.sub37, %sub.ptr.lhs.cast35
  %23 = call ptr @memmove(ptr %add.ptr, ptr %20, i32 %sub38)
  %mac_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header, align 2
  %add40 = add i16 %25, 8
  store i16 %add40, ptr %mac_header, align 2
  %26 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i, align 4
  %add43 = add i16 %27, 8
  store i16 %add43, ptr %network_header.i, align 4
  %28 = load ptr, ptr %data, align 4
  %29 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i119 = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i119, ptr %transport_header.i, align 2
  tail call void @inet_frag_reasm_finish(ptr noundef %fq, ptr noundef %skb, ptr noundef nonnull %call, i1 noundef zeroext false) #12
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  %31 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %31, align 8
  %conv46 = trunc i32 %sub10 to i16
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %35 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  %payload_len48 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %payload_len48 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv46, ptr %payload_len48, align 4
  %38 = load ptr, ptr %head.i, align 8
  %39 = load i16, ptr %network_header.i, align 4
  %conv.i.i123 = zext i16 %39 to i32
  %add.ptr.i.i124 = getelementptr i8, ptr %38, i32 %conv.i.i123
  %40 = ptrtoint ptr %add.ptr.i.i124 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.i124, align 2
  %conv6.i = zext i8 %3 to i16
  %shl7.i = shl nuw nsw i16 %conv6.i, 4
  %or10.i = or i16 %41, %shl7.i
  store i16 %or10.i, ptr %add.ptr.i.i124, align 2
  %max_size = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 12
  %42 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %max_size, align 2
  %add52 = add i16 %43, 40
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %44 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %add52, ptr %frag_max_size, align 4
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags, align 8
  %47 = or i16 %46, 16
  store i16 %47, ptr %flags, align 8
  %bf.load58 = load i16, ptr %ignore_df, align 8
  %48 = and i16 %bf.load58, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp61 = icmp eq i16 %48, 1024
  br i1 %cmp61, label %if.then63, label %if.end26.if.end67_crit_edge

if.end26.if.end67_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then63:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i, align 8
  %51 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i, align 4
  %conv.i127 = zext i16 %52 to i32
  %add.ptr.i128 = getelementptr i8, ptr %50, i32 %conv.i127
  %53 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %transport_header.i, align 2
  %conv.i130 = zext i16 %54 to i32
  %sub.i = sub nsw i32 %conv.i130, %conv.i127
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %call66 = tail call i32 @csum_partial(ptr noundef %add.ptr.i128, i32 noundef %sub.i, i32 noundef %57) #12
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call66, ptr %55, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end26.if.end67_crit_edge
  %rb_fragments = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 5
  %59 = ptrtoint ptr %rb_fragments to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rb_fragments, align 8
  %fragments_tail = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 6
  %60 = ptrtoint ptr %fragments_tail to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %fragments_tail, align 4
  %last_run_head = getelementptr inbounds %struct.inet_frag_queue, ptr %fq, i32 0, i32 7
  %61 = ptrtoint ptr %last_run_head to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %last_run_head, align 8
  br label %cleanup

err:                                              ; preds = %if.then24, %land.lhs.true.err_crit_edge, %do.body, %if.end.err_crit_edge, %entry.err_crit_edge
  tail call void @inet_frag_kill(ptr noundef %fq) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end67
  %retval.0 = phi i32 [ -22, %err ], [ 0, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_reasm_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_reasm_finish(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_frag_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !122
  %5 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %14 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %33 = tail call i32 @llvm.read_register.i32(metadata !97) #12
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !110

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !126
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_frag_pull_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp6_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6frag_key_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @jhash2(ptr noundef %data, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip6frag_obj_hashfn(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %key = getelementptr inbounds %struct.inet_frag_queue, ptr %data, i32 0, i32 1
  %call = tail call fastcc i32 @jhash2(ptr noundef %key, i32 noundef %seed)
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip6frag_obj_cmpfn(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %key1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key1, align 4
  %key2 = getelementptr inbounds %struct.inet_frag_queue, ptr %ptr, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(44) %key2, ptr noundef dereferenceable(44) %1, i32 44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool = icmp ne i32 %bcmp, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash2(ptr nocapture noundef readonly %k, i32 noundef %initval) unnamed_addr #8 align 64 {
sw.epilog:
  call void @__sanitizer_cov_trace_pc() #14
  %add1 = add i32 %initval, -559038693
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k, align 4
  %add2 = add i32 %1, %add1
  %arrayidx3 = getelementptr i32, ptr %k, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %add4 = add i32 %3, %add1
  %arrayidx5 = getelementptr i32, ptr %k, i32 2
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %add6 = add i32 %5, %add1
  %sub = sub i32 %add2, %add6
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add6, i32 %add6, i32 4) #12
  %xor = xor i32 %sub, %or.i
  %add7 = add i32 %add6, %add4
  %sub8 = sub i32 %add4, %xor
  %or.i1 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #12
  %xor10 = xor i32 %sub8, %or.i1
  %add11 = add i32 %xor, %add7
  %sub12 = sub i32 %add7, %xor10
  %or.i2 = tail call i32 @llvm.fshl.i32(i32 %xor10, i32 %xor10, i32 8) #12
  %xor14 = xor i32 %sub12, %or.i2
  %add15 = add i32 %xor10, %add11
  %sub16 = sub i32 %add11, %xor14
  %or.i3 = tail call i32 @llvm.fshl.i32(i32 %xor14, i32 %xor14, i32 16) #12
  %xor18 = xor i32 %sub16, %or.i3
  %add19 = add i32 %xor14, %add15
  %sub20 = sub i32 %add15, %xor18
  %or.i4 = tail call i32 @llvm.fshl.i32(i32 %xor18, i32 %xor18, i32 19) #12
  %xor22 = xor i32 %sub20, %or.i4
  %add23 = add i32 %xor18, %add19
  %sub24 = sub i32 %add19, %xor22
  %or.i5 = tail call i32 @llvm.fshl.i32(i32 %xor22, i32 %xor22, i32 4) #12
  %xor26 = xor i32 %sub24, %or.i5
  %add27 = add i32 %xor22, %add23
  %add.ptr = getelementptr i32, ptr %k, i32 3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %add2.1 = add i32 %7, %add23
  %arrayidx3.1 = getelementptr i32, ptr %k, i32 4
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.1, align 4
  %add4.1 = add i32 %9, %add27
  %arrayidx5.1 = getelementptr i32, ptr %k, i32 5
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.1, align 4
  %add6.1 = add i32 %11, %xor26
  %sub.1 = sub i32 %add2.1, %add6.1
  %or.i.1 = tail call i32 @llvm.fshl.i32(i32 %add6.1, i32 %add6.1, i32 4) #12
  %xor.1 = xor i32 %sub.1, %or.i.1
  %add7.1 = add i32 %add6.1, %add4.1
  %sub8.1 = sub i32 %add4.1, %xor.1
  %or.i1.1 = tail call i32 @llvm.fshl.i32(i32 %xor.1, i32 %xor.1, i32 6) #12
  %xor10.1 = xor i32 %sub8.1, %or.i1.1
  %add11.1 = add i32 %xor.1, %add7.1
  %sub12.1 = sub i32 %add7.1, %xor10.1
  %or.i2.1 = tail call i32 @llvm.fshl.i32(i32 %xor10.1, i32 %xor10.1, i32 8) #12
  %xor14.1 = xor i32 %sub12.1, %or.i2.1
  %add15.1 = add i32 %xor10.1, %add11.1
  %sub16.1 = sub i32 %add11.1, %xor14.1
  %or.i3.1 = tail call i32 @llvm.fshl.i32(i32 %xor14.1, i32 %xor14.1, i32 16) #12
  %xor18.1 = xor i32 %sub16.1, %or.i3.1
  %add19.1 = add i32 %xor14.1, %add15.1
  %sub20.1 = sub i32 %add15.1, %xor18.1
  %or.i4.1 = tail call i32 @llvm.fshl.i32(i32 %xor18.1, i32 %xor18.1, i32 19) #12
  %xor22.1 = xor i32 %sub20.1, %or.i4.1
  %add23.1 = add i32 %xor18.1, %add19.1
  %sub24.1 = sub i32 %add19.1, %xor22.1
  %or.i5.1 = tail call i32 @llvm.fshl.i32(i32 %xor22.1, i32 %xor22.1, i32 4) #12
  %xor26.1 = xor i32 %sub24.1, %or.i5.1
  %add27.1 = add i32 %xor22.1, %add23.1
  %add.ptr.1 = getelementptr i32, ptr %k, i32 6
  %12 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.1, align 4
  %add2.2 = add i32 %13, %add23.1
  %arrayidx3.2 = getelementptr i32, ptr %k, i32 7
  %14 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.2, align 4
  %add4.2 = add i32 %15, %add27.1
  %arrayidx5.2 = getelementptr i32, ptr %k, i32 8
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.2, align 4
  %add6.2 = add i32 %17, %xor26.1
  %sub.2 = sub i32 %add2.2, %add6.2
  %or.i.2 = tail call i32 @llvm.fshl.i32(i32 %add6.2, i32 %add6.2, i32 4) #12
  %xor.2 = xor i32 %sub.2, %or.i.2
  %add7.2 = add i32 %add6.2, %add4.2
  %sub8.2 = sub i32 %add4.2, %xor.2
  %or.i1.2 = tail call i32 @llvm.fshl.i32(i32 %xor.2, i32 %xor.2, i32 6) #12
  %xor10.2 = xor i32 %sub8.2, %or.i1.2
  %add11.2 = add i32 %xor.2, %add7.2
  %sub12.2 = sub i32 %add7.2, %xor10.2
  %or.i2.2 = tail call i32 @llvm.fshl.i32(i32 %xor10.2, i32 %xor10.2, i32 8) #12
  %xor14.2 = xor i32 %sub12.2, %or.i2.2
  %add15.2 = add i32 %xor10.2, %add11.2
  %sub16.2 = sub i32 %add11.2, %xor14.2
  %or.i3.2 = tail call i32 @llvm.fshl.i32(i32 %xor14.2, i32 %xor14.2, i32 16) #12
  %xor18.2 = xor i32 %sub16.2, %or.i3.2
  %add19.2 = add i32 %xor14.2, %add15.2
  %sub20.2 = sub i32 %add15.2, %xor18.2
  %or.i4.2 = tail call i32 @llvm.fshl.i32(i32 %xor18.2, i32 %xor18.2, i32 19) #12
  %xor22.2 = xor i32 %sub20.2, %or.i4.2
  %add23.2 = add i32 %xor18.2, %add19.2
  %sub24.2 = sub i32 %add19.2, %xor22.2
  %or.i5.2 = tail call i32 @llvm.fshl.i32(i32 %xor22.2, i32 %xor22.2, i32 4) #12
  %xor26.2 = xor i32 %sub24.2, %or.i5.2
  %add27.2 = add i32 %xor22.2, %add23.2
  %uglygep18 = getelementptr i8, ptr %k, i32 36
  %arrayidx32 = getelementptr i8, ptr %k, i32 40
  %18 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %19, %add27.2
  %20 = ptrtoint ptr %uglygep18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uglygep18, align 4
  %add36 = add i32 %21, %add23.2
  %xor37 = xor i32 %xor26.2, %add33
  %or.i6 = tail call i32 @llvm.fshl.i32(i32 %add33, i32 %add33, i32 14) #12
  %sub39 = sub i32 %xor37, %or.i6
  %xor40 = xor i32 %add36, %sub39
  %or.i7 = tail call i32 @llvm.fshl.i32(i32 %sub39, i32 %sub39, i32 11) #12
  %sub42 = sub i32 %xor40, %or.i7
  %xor43 = xor i32 %sub42, %add33
  %or.i8 = tail call i32 @llvm.fshl.i32(i32 %sub42, i32 %sub42, i32 25) #12
  %sub45 = sub i32 %xor43, %or.i8
  %xor46 = xor i32 %sub45, %sub39
  %or.i9 = tail call i32 @llvm.fshl.i32(i32 %sub45, i32 %sub45, i32 16) #12
  %sub48 = sub i32 %xor46, %or.i9
  %xor49 = xor i32 %sub48, %sub42
  %or.i10 = tail call i32 @llvm.fshl.i32(i32 %sub48, i32 %sub48, i32 4) #12
  %sub51 = sub i32 %xor49, %or.i10
  %xor52 = xor i32 %sub51, %sub45
  %or.i11 = tail call i32 @llvm.fshl.i32(i32 %sub51, i32 %sub51, i32 14) #12
  %sub54 = sub i32 %xor52, %or.i11
  %xor55 = xor i32 %sub54, %sub48
  %or.i12 = tail call i32 @llvm.fshl.i32(i32 %sub54, i32 %sub54, i32 24) #12
  %sub57 = sub i32 %xor55, %or.i12
  ret i32 %sub57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_ct_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_frag_pernet(ptr noundef %net)
  %fqdir = getelementptr inbounds %struct.nft_ct_frag6_pernet, ptr %call, i32 0, i32 1
  %call1 = tail call i32 @fqdir_init(ptr noundef %fqdir, ptr noundef nonnull @nf_frags, ptr noundef %net) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4194304, ptr %1, align 128
  %3 = load ptr, ptr %fqdir, align 4
  %low_thresh = getelementptr inbounds %struct.fqdir, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3145728, ptr %low_thresh, align 4
  %5 = load ptr, ptr %fqdir, align 4
  %timeout = getelementptr inbounds %struct.fqdir, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %timeout, align 8
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.if.end3.i_crit_edge, label %if.then.i

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @nf_ct_frag6_sysctl_table, i32 noundef 144, i32 noundef 3264) #12
  %cmp.i = icmp eq ptr %call1.i, null
  br i1 %cmp.i, label %if.then.i.if.then7_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %if.end.if.end3.i_crit_edge
  %table.0.i = phi ptr [ @nf_ct_frag6_sysctl_table, %if.end.if.end3.i_crit_edge ], [ %call1.i, %if.then.i.if.end3.i_crit_edge ]
  %call4.i = tail call fastcc ptr @nf_frag_pernet(ptr noundef %net) #12
  %fqdir.i = getelementptr inbounds %struct.nft_ct_frag6_pernet, ptr %call4.i, i32 0, i32 1
  %7 = ptrtoint ptr %fqdir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fqdir.i, align 4
  %timeout.i = getelementptr inbounds %struct.fqdir, ptr %8, i32 0, i32 2
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %timeout.i, ptr %data.i, align 4
  %10 = load ptr, ptr %fqdir.i, align 4
  %low_thresh.i = getelementptr inbounds %struct.fqdir, ptr %10, i32 0, i32 1
  %data7.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 1
  %11 = ptrtoint ptr %data7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %low_thresh.i, ptr %data7.i, align 4
  %12 = load ptr, ptr %fqdir.i, align 4
  %extra2.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 8
  %13 = ptrtoint ptr %extra2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %extra2.i, align 4
  %14 = load ptr, ptr %fqdir.i, align 4
  %data13.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 1
  %15 = ptrtoint ptr %data13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %data13.i, align 4
  %16 = load ptr, ptr %fqdir.i, align 4
  %low_thresh15.i = getelementptr inbounds %struct.fqdir, ptr %16, i32 0, i32 1
  %extra1.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 7
  %17 = ptrtoint ptr %extra1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %low_thresh15.i, ptr %extra1.i, align 4
  %18 = load ptr, ptr %fqdir.i, align 4
  %extra220.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 8
  %19 = ptrtoint ptr %extra220.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %extra220.i, align 4
  %call21.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.39, ptr noundef nonnull %table.0.i) #12
  %cmp22.i = icmp eq ptr %call21.i, null
  br i1 %cmp22.i, label %err_reg.i, label %nf_ct_frag6_sysctl_register.exit

err_reg.i:                                        ; preds = %if.end3.i
  br i1 %cmp.i.not.i, label %err_reg.i.if.then7_crit_edge, label %if.then27.i

err_reg.i.if.then7_crit_edge:                     ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then27.i:                                      ; preds = %err_reg.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %table.0.i) #12
  br label %if.then7

nf_ct_frag6_sysctl_register.exit:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21.i, ptr %call4.i, align 4
  br label %cleanup

if.then7:                                         ; preds = %if.then27.i, %err_reg.i.if.then7_crit_edge, %if.then.i.if.then7_crit_edge
  %21 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %nf_ct_frag6_sysctl_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -12, %if.then7 ], [ 0, %nf_ct_frag6_sysctl_register.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_ct_net_pre_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_frag_pernet(ptr noundef %net)
  %fqdir = getelementptr inbounds %struct.nft_ct_frag6_pernet, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fqdir, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %1, align 128
  %dead.i = getelementptr inbounds %struct.fqdir, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dead.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 1, ptr %dead.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_ct_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_frag_pernet(ptr noundef %net)
  %call.i = tail call fastcc ptr @nf_frag_pernet(ptr noundef %net) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #12
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %entry.nf_ct_frags6_sysctl_unregister.exit_crit_edge, label %if.then.i

entry.nf_ct_frags6_sysctl_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_ct_frags6_sysctl_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %3) #12
  br label %nf_ct_frags6_sysctl_unregister.exit

nf_ct_frags6_sysctl_unregister.exit:              ; preds = %if.then.i, %entry.nf_ct_frags6_sysctl_unregister.exit_crit_edge
  %fqdir = getelementptr inbounds %struct.nft_ct_frag6_pernet, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %fqdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fqdir, align 4
  tail call void @fqdir_exit(ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fqdir_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fqdir_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 449, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nf_ct_frag6_gather.__UNIQUE_ID_ddebug629, !1, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 460, i32 3}
!9 = !{ptr @nf_ct_frag6_gather.__UNIQUE_ID_ddebug630, !8, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 475, i32 3}
!13 = !{ptr @nf_ct_frag6_gather.__UNIQUE_ID_ddebug631, !12, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_nf_ct_frag6_gather, !16, !"__ksymtab_nf_ct_frag6_gather", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 491, i32 1}
!17 = !{ptr @nf_frags, !18, !"nf_frags", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 37, i32 26}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 405, i32 4}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @find_prev_fhdr.__UNIQUE_ID_ddebug627, !20, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!23 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 409, i32 4}
!26 = !{ptr @find_prev_fhdr.__UNIQUE_ID_ddebug628, !25, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nf_frag_pernet_id, !40, !"nf_frag_pernet_id", i1 false, i1 false}
!40 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 36, i32 21}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 176, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug620, !42, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!45 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 187, i32 3}
!48 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug621, !47, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 207, i32 4}
!52 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug622, !51, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!53 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 220, i32 4}
!56 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug623, !55, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!57 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 227, i32 5}
!60 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug624, !59, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 239, i32 3}
!64 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug625, !63, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 243, i32 3}
!68 = !{ptr @nf_ct_frag6_queue.__UNIQUE_ID_ddebug626, !67, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!69 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 333, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nf_ct_frag6_reasm.descriptor, !71, !"descriptor", i1 false, i1 false}
!74 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!77 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nf_frags_cache_name, !82, !"nf_frags_cache_name", i1 false, i1 false}
!82 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 34, i32 19}
!83 = !{ptr @nfct_rhash_params, !84, !"nfct_rhash_params", i1 false, i1 false}
!84 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 535, i32 39}
!85 = !{ptr @nf_ct_net_ops, !86, !"nf_ct_net_ops", i1 false, i1 false}
!86 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 527, i32 33}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 91, i32 33}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 48, i32 15}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 54, i32 15}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 60, i32 15}
!95 = !{ptr @nf_ct_frag6_sysctl_table, !96, !"nf_ct_frag6_sysctl_table", i1 false, i1 false}
!96 = !{!"../net/ipv6/netfilter/nf_conntrack_reasm.c", i32 46, i32 25}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 2148197265, i64 2148197270, i64 2148197283, i64 2148197327, i64 2148197361, i64 2148197382}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2154967146, i64 2154967634, i64 2154967183, i64 2154967239, i64 2154967273, i64 2154967297, i64 2154967338, i64 2154967359, i64 2154967387, i64 2154967421}
!112 = !{i64 2148459911}
!113 = !{i64 2148374375, i64 2148374407, i64 2148374436, i64 2148374470, i64 2148374501, i64 2148374524}
!114 = !{i64 2150439350}
!115 = !{i64 2158749532, i64 2158750036, i64 2158749569, i64 2158749625, i64 2158749659, i64 2158749683, i64 2158749724, i64 2158749745, i64 2158749773, i64 2158749807}
!116 = !{i64 2158742828}
!117 = !{i64 2148370380, i64 2148370406, i64 2148370435, i64 2148370469, i64 2148370500, i64 2148370523}
!118 = !{i64 2149399837}
!119 = !{i8 0, i8 2}
!120 = !{i64 2150209068}
!121 = !{i64 2149400103}
!122 = !{i64 2150096609}
!123 = !{i64 2150101543}
!124 = !{i64 2150123261}
!125 = !{i64 2150128155}
!126 = !{i64 2150208743}
