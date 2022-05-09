; ModuleID = '/llk/IR_all_yes/net/ipv6/xfrm6_tunnel.c_pt.bc'
source_filename = "../net/ipv6/xfrm6_tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xfrm6_tunnel_spi_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_tunnel_spi_lookup\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_tunnel_spi_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_tunnel_spi_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_tunnel_spi_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_tunnel_spi_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xfrm6_tunnel_alloc_spi\22, \22a\22\09"
module asm "\09.weak\09__crc_xfrm6_tunnel_alloc_spi\09\09\09\09"
module asm "\09.long\09__crc_xfrm6_tunnel_alloc_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm6_tunnel_alloc_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm6_tunnel_alloc_spi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm6_tunnel_alloc_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfrm6_tunnel = type { ptr, ptr, ptr, ptr, i32 }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xfrm6_tunnel_spi = type { %struct.hlist_node, %struct.hlist_node, %union.xfrm_address_t, i32, %struct.refcount_struct, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%union.xfrm_address_t = type { [4 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.xfrm6_tunnel_net = type { [256 x %struct.hlist_head], [256 x %struct.hlist_head], i32 }
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
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.145, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.145 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { ptr }
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
%struct.sk_buff = type { %union.anon.82, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, i32, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.103, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.105, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.103 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.105 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }

@__kstrtab_xfrm6_tunnel_spi_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_tunnel_spi_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_tunnel_spi_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_tunnel_spi_lookup to i32), ptr @__kstrtab_xfrm6_tunnel_spi_lookup, ptr @__kstrtabns_xfrm6_tunnel_spi_lookup }, section "___ksymtab+xfrm6_tunnel_spi_lookup", align 4
@xfrm6_tunnel_spi_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_xfrm6_tunnel_alloc_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm6_tunnel_alloc_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm6_tunnel_alloc_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm6_tunnel_alloc_spi to i32), ptr @__kstrtab_xfrm6_tunnel_alloc_spi, ptr @__kstrtabns_xfrm6_tunnel_alloc_spi }, section "___ksymtab+xfrm6_tunnel_alloc_spi", align 4
@xfrm46_tunnel_handler = internal global %struct.xfrm6_tunnel { ptr @xfrm6_tunnel_rcv, ptr null, ptr @xfrm6_tunnel_err, ptr null, i32 3 }, section ".data..read_mostly", align 4
@xfrm6_tunnel_handler = internal global %struct.xfrm6_tunnel { ptr @xfrm6_tunnel_rcv, ptr null, ptr @xfrm6_tunnel_err, ptr null, i32 3 }, section ".data..read_mostly", align 4
@xfrm6_tunnel_type = internal constant { %struct.xfrm_type, [36 x i8] } { %struct.xfrm_type { ptr null, i8 41, i8 0, ptr @xfrm6_tunnel_init_state, ptr @xfrm6_tunnel_destroy, ptr @xfrm6_tunnel_input, ptr @xfrm6_tunnel_output, ptr null }, [36 x i8] zeroinitializer }, align 32
@xfrm6_tunnel_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xfrm6_tunnel_net_init, ptr null, ptr @xfrm6_tunnel_net_exit, ptr null, ptr @xfrm6_tunnel_net_id, i32 2052 }, [32 x i8] zeroinitializer }, align 32
@xfrm6_tunnel_spi_kmem = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_xfrm6_tunnel__514_398_xfrm6_tunnel_init6 = internal global ptr @xfrm6_tunnel_init, section ".initcall6.init", align 4
@__exitcall_xfrm6_tunnel_fini = internal global ptr @xfrm6_tunnel_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file515 = internal constant [40 x i8] c"xfrm6_tunnel.file=net/ipv6/xfrm6_tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license516 = internal constant [25 x i8] c"xfrm6_tunnel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias517 = internal constant [35 x i8] c"xfrm6_tunnel.alias=xfrm-type-10-41\00", section ".modinfo", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@__xfrm6_tunnel_spi_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ipv6/xfrm6_tunnel.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@xfrm6_tunnel_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xfrm6_tunnel_spi_lock\00", [42 x i8] zeroinitializer }, align 32
@xfrm6_tunnel_net_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfrm6_tunnel_net_exit.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xfrm6_tunnel_spi\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"xfrm6_tunnel_spi_lock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"xfrm6_tunnel_type\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 293, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"xfrm6_tunnel_net_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 343, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 749, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 79, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 45, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 723, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 760, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 53, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [27 x i8] c"../net/ipv6/xfrm6_tunnel.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 354, i32 44 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias517, ptr @__UNIQUE_ID_file515, ptr @__UNIQUE_ID_license516, ptr @__exitcall_xfrm6_tunnel_fini, ptr @__initcall__kmod_xfrm6_tunnel__514_398_xfrm6_tunnel_init6, ptr @__ksymtab_xfrm6_tunnel_alloc_spi, ptr @__ksymtab_xfrm6_tunnel_spi_lookup, ptr @xfrm6_tunnel_fini, ptr @xfrm6_tunnel_spi_lock, ptr @xfrm6_tunnel_type, ptr @xfrm6_tunnel_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm6_tunnel_spi_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm6_tunnel_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfrm6_tunnel_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_tunnel_spi_lookup(ptr noundef %net, ptr nocapture noundef readonly %saddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #9
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 750, ptr noundef nonnull @.str.1) #9
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %call = tail call fastcc ptr @__xfrm6_tunnel_spi_lookup(ptr noundef %net, ptr noundef %saddr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock_bh.exit.cond.end_crit_edge, label %cond.true

rcu_read_lock_bh.exit.cond.end_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #11
  %spi1 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcu_read_lock_bh.exit.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %rcu_read_lock_bh.exit.cond.end_crit_edge ]
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3, label %cond.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i6

cond.end.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i6:                                 ; preds = %cond.end
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock_bh.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock_bh.exit_crit_edge, %cond.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #9
  tail call fastcc void @local_bh_enable() #9
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__xfrm6_tunnel_spi_lookup(ptr noundef %net, ptr nocapture noundef readonly %saddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net)
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @xfrm6_tunnel_spi_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b44 = load i1, ptr @__xfrm6_tunnel_spi_lookup.__warned, align 1
  br i1 %.b44, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__xfrm6_tunnel_spi_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 81, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saddr, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %3, %1
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i.i, align 4
  %xor5.i.i = xor i32 %xor.i.i, %5
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i.i, align 4
  %xor8.i.i = xor i32 %xor5.i.i, %7
  %shr.i = lshr i32 %xor8.i.i, 16
  %xor.i = xor i32 %shr.i, %xor8.i.i
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %and.i = and i32 %xor2.i, 255
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %call, i32 0, i32 %and.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %x6spi.0.in = phi ptr [ %arrayidx, %do.end ], [ %x6spi.0, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %x6spi.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %x6spi.0 = load volatile ptr, ptr %x6spi.0.in, align 4
  %tobool17.not = icmp eq ptr %x6spi.0, null
  br i1 %tobool17.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.0, i32 0, i32 2
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %xor.i.i46 = xor i32 %10, %1
  %arrayidx4.i.i47 = getelementptr %struct.xfrm6_tunnel_spi, ptr %x6spi.0, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx4.i.i47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4.i.i47, align 4
  %xor7.i.i = xor i32 %12, %3
  %or.i.i = or i32 %xor7.i.i, %xor.i.i46
  %arrayidx9.i.i = getelementptr %struct.xfrm6_tunnel_spi, ptr %x6spi.0, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9.i.i, align 4
  %xor12.i.i = xor i32 %14, %5
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.xfrm6_tunnel_spi, ptr %x6spi.0, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15.i.i, align 4
  %xor18.i.i = xor i32 %16, %7
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %x6spi.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfrm6_tunnel_alloc_spi(ptr noundef %net, ptr nocapture noundef readonly %saddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #9
  %call = tail call fastcc ptr @__xfrm6_tunnel_spi_lookup(ptr noundef %net, ptr noundef %saddr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !65
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !66

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !67

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %spi1 = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spi1, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net) #9
  %spi1.i = getelementptr inbounds %struct.xfrm6_tunnel_net, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spi1.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else.i [
    i32 0, label %if.else.if.end.i_crit_edge
    i32 -1, label %if.else.if.end.i_crit_edge70
  ]

if.else.if.end.i_crit_edge70:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw i32 %5, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.else.if.end.i_crit_edge, %if.else.if.end.i_crit_edge70
  %storemerge.i = phi i32 [ %inc.i, %if.else.i ], [ 1, %if.else.if.end.i_crit_edge ], [ 1, %if.else.if.end.i_crit_edge70 ]
  %7 = ptrtoint ptr %spi1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge.i, ptr %spi1.i, align 4
  %call.i101.i = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net) #9
  %rem.i.i102.i = and i32 %storemerge.i, 255
  %arrayidx.i103.i = getelementptr %struct.xfrm6_tunnel_net, ptr %call.i101.i, i32 0, i32 1, i32 %rem.i.i102.i
  %8 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i103.i, align 4
  %tobool.not.i104.i = icmp eq ptr %9, null
  %add.ptr.i105.i = getelementptr i8, ptr %9, i32 -8
  %tobool3.not2730.i106.i = icmp eq ptr %add.ptr.i105.i, null
  %tobool3.not27.i107.i = or i1 %tobool.not.i104.i, %tobool3.not2730.i106.i
  br i1 %tobool3.not27.i107.i, label %if.end.i.alloc_spi.i_crit_edge, label %if.end.i.for.body.i.preheader.i_crit_edge

if.end.i.for.body.i.preheader.i_crit_edge:        ; preds = %if.end.i
  br label %for.body.i.preheader.i

if.end.i.alloc_spi.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_spi.i

for.body.i.preheader.i:                           ; preds = %for.inc.i.for.body.i.preheader.i_crit_edge, %if.end.i.for.body.i.preheader.i_crit_edge
  %add.ptr.i110.i = phi ptr [ %add.ptr.i.i, %for.inc.i.for.body.i.preheader.i_crit_edge ], [ %add.ptr.i105.i, %if.end.i.for.body.i.preheader.i_crit_edge ]
  %rem.i.i109.i = phi i32 [ %rem.i.i.i, %for.inc.i.for.body.i.preheader.i_crit_edge ], [ %rem.i.i102.i, %if.end.i.for.body.i.preheader.i_crit_edge ]
  %spi.0108.i = phi i32 [ %inc15.i, %for.inc.i.for.body.i.preheader.i_crit_edge ], [ %storemerge.i, %if.end.i.for.body.i.preheader.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %x6spi.028.i.i = phi ptr [ %add.ptr11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i110.i, %for.body.i.preheader.i ]
  %spi4.i.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.028.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %spi4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spi4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spi.0108.i)
  %cmp.i.i = icmp eq i32 %11, %spi.0108.i
  br i1 %cmp.i.i, label %if.end11.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %list_byspi.i.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.028.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %list_byspi.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list_byspi.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %13, null
  %add.ptr11.i.i = getelementptr i8, ptr %13, i32 -8
  %tobool3.not31.i.i = icmp eq ptr %add.ptr11.i.i, null
  %tobool3.not.i.i = or i1 %tobool7.not.i.i, %tobool3.not31.i.i
  br i1 %tobool3.not.i.i, label %for.inc.i.i.alloc_spi.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.alloc_spi.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_spi.i

if.end11.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spi.0108.i)
  %cmp12.i = icmp eq i32 %spi.0108.i, -1
  br i1 %cmp12.i, label %for.cond16.preheader.i, label %for.inc.i

for.cond16.preheader.i:                           ; preds = %if.end11.i
  %14 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spi1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp18112.i = icmp ugt i32 %15, 1
  br i1 %cmp18112.i, label %for.cond16.preheader.i.for.body19.i_crit_edge, label %for.cond16.preheader.i.if.end_crit_edge

for.cond16.preheader.i.if.end_crit_edge:          ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond16.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body19.i

for.inc.i:                                        ; preds = %if.end11.i
  %inc15.i = add nuw i32 %spi.0108.i, 1
  %call.i.i = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net) #9
  %rem.i.i.i = and i32 %inc15.i, 255
  %arrayidx.i.i = getelementptr %struct.xfrm6_tunnel_net, ptr %call.i.i, i32 0, i32 1, i32 %rem.i.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -8
  %tobool3.not2730.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not27.i.i = or i1 %tobool.not.i.i, %tobool3.not2730.i.i
  br i1 %tobool3.not27.i.i, label %for.inc.i.alloc_spi.i_crit_edge, label %for.inc.i.for.body.i.preheader.i_crit_edge

for.inc.i.for.body.i.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader.i

for.inc.i.alloc_spi.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_spi.i

for.body19.i:                                     ; preds = %for.inc24.i.for.body19.i_crit_edge, %for.cond16.preheader.i.for.body19.i_crit_edge
  %spi.1113.i = phi i32 [ %inc25.i, %for.inc24.i.for.body19.i_crit_edge ], [ 1, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %call.i62.i = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net) #9
  %rem.i.i63.i = and i32 %spi.1113.i, 255
  %arrayidx.i64.i = getelementptr %struct.xfrm6_tunnel_net, ptr %call.i62.i, i32 0, i32 1, i32 %rem.i.i63.i
  %18 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i64.i, align 4
  %tobool.not.i65.i = icmp eq ptr %19, null
  %add.ptr.i66.i = getelementptr i8, ptr %19, i32 -8
  %tobool3.not2730.i67.i = icmp eq ptr %add.ptr.i66.i, null
  %tobool3.not27.i68.i = or i1 %tobool.not.i65.i, %tobool3.not2730.i67.i
  br i1 %tobool3.not27.i68.i, label %for.body19.i.alloc_spi.i_crit_edge, label %for.body19.i.for.body.i72.i_crit_edge

for.body19.i.for.body.i72.i_crit_edge:            ; preds = %for.body19.i
  br label %for.body.i72.i

for.body19.i.alloc_spi.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_spi.i

for.body.i72.i:                                   ; preds = %for.inc.i78.i.for.body.i72.i_crit_edge, %for.body19.i.for.body.i72.i_crit_edge
  %x6spi.028.i69.i = phi ptr [ %add.ptr11.i75.i, %for.inc.i78.i.for.body.i72.i_crit_edge ], [ %add.ptr.i66.i, %for.body19.i.for.body.i72.i_crit_edge ]
  %spi4.i70.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.028.i69.i, i32 0, i32 3
  %20 = ptrtoint ptr %spi4.i70.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spi4.i70.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %spi.1113.i)
  %cmp.i71.i = icmp eq i32 %21, %spi.1113.i
  br i1 %cmp.i71.i, label %for.inc24.i, label %for.inc.i78.i

for.inc.i78.i:                                    ; preds = %for.body.i72.i
  %list_byspi.i73.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.028.i69.i, i32 0, i32 1
  %22 = ptrtoint ptr %list_byspi.i73.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list_byspi.i73.i, align 4
  %tobool7.not.i74.i = icmp eq ptr %23, null
  %add.ptr11.i75.i = getelementptr i8, ptr %23, i32 -8
  %tobool3.not31.i76.i = icmp eq ptr %add.ptr11.i75.i, null
  %tobool3.not.i77.i = or i1 %tobool7.not.i74.i, %tobool3.not31.i76.i
  br i1 %tobool3.not.i77.i, label %for.inc.i78.i.alloc_spi.i_crit_edge, label %for.inc.i78.i.for.body.i72.i_crit_edge

for.inc.i78.i.for.body.i72.i_crit_edge:           ; preds = %for.inc.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i72.i

for.inc.i78.i.alloc_spi.i_crit_edge:              ; preds = %for.inc.i78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_spi.i

for.inc24.i:                                      ; preds = %for.body.i72.i
  %inc25.i = add nuw i32 %spi.1113.i, 1
  %24 = ptrtoint ptr %spi1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %spi1.i, align 4
  %cmp18.i = icmp ult i32 %inc25.i, %25
  br i1 %cmp18.i, label %for.inc24.i.for.body19.i_crit_edge, label %for.inc24.i.if.end_crit_edge

for.inc24.i.if.end_crit_edge:                     ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc24.i.for.body19.i_crit_edge:               ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19.i

alloc_spi.i:                                      ; preds = %for.inc.i78.i.alloc_spi.i_crit_edge, %for.body19.i.alloc_spi.i_crit_edge, %for.inc.i.alloc_spi.i_crit_edge, %for.inc.i.i.alloc_spi.i_crit_edge, %if.end.i.alloc_spi.i_crit_edge
  %spi.2.i = phi i32 [ %storemerge.i, %if.end.i.alloc_spi.i_crit_edge ], [ %spi.1113.i, %for.inc.i78.i.alloc_spi.i_crit_edge ], [ %spi.1113.i, %for.body19.i.alloc_spi.i_crit_edge ], [ %spi.0108.i, %for.inc.i.i.alloc_spi.i_crit_edge ], [ %inc15.i, %for.inc.i.alloc_spi.i_crit_edge ]
  %index.0.i = phi i32 [ %rem.i.i102.i, %if.end.i.alloc_spi.i_crit_edge ], [ %rem.i.i63.i, %for.inc.i78.i.alloc_spi.i_crit_edge ], [ %rem.i.i63.i, %for.body19.i.alloc_spi.i_crit_edge ], [ %rem.i.i109.i, %for.inc.i.i.alloc_spi.i_crit_edge ], [ %rem.i.i.i, %for.inc.i.alloc_spi.i_crit_edge ]
  %26 = ptrtoint ptr %spi1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spi.2.i, ptr %spi1.i, align 4
  %27 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  %call28.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %27, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool.not.i, label %alloc_spi.i.if.end_crit_edge, label %if.end30.i

alloc_spi.i.if.end_crit_edge:                     ; preds = %alloc_spi.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end30.i:                                       ; preds = %alloc_spi.i
  %addr.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call28.i, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %addr.i, ptr %saddr, i32 16)
  %spi31.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call28.i, i32 0, i32 3
  %29 = ptrtoint ptr %spi31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spi.2.i, ptr %spi31.i, align 8
  %refcnt.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call28.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %refcnt.i, align 4
  %list_byspi.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call28.i, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.xfrm6_tunnel_net, ptr %call.i, i32 0, i32 1, i32 %index.0.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %33 = ptrtoint ptr %list_byspi.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %list_byspi.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %call28.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list_byspi.i, ptr %arrayidx.i, align 4
  %tobool.not.i81.i = icmp eq ptr %32, null
  br i1 %tobool.not.i81.i, label %if.end30.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

if.end30.i.hlist_add_head_rcu.exit.i_crit_edge:   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list_byspi.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %if.end30.i.hlist_add_head_rcu.exit.i_crit_edge
  %37 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %saddr, align 4
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx2.i.i.i, align 4
  %xor.i.i.i = xor i32 %40, %38
  %arrayidx4.i.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor5.i.i.i = xor i32 %xor.i.i.i, %42
  %arrayidx7.i.i.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %44
  %shr.i.i = lshr i32 %xor8.i.i.i, 16
  %xor.i.i = xor i32 %shr.i.i, %xor8.i.i.i
  %shr1.i.i = lshr i32 %xor.i.i, 8
  %xor2.i.i = xor i32 %shr1.i.i, %xor.i.i
  %and.i.i = and i32 %xor2.i.i, 255
  %arrayidx33.i = getelementptr [256 x %struct.hlist_head], ptr %call.i, i32 0, i32 %and.i.i
  %45 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx33.i, align 4
  %47 = ptrtoint ptr %call28.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %call28.i, align 8
  %pprev.i82.i = getelementptr inbounds %struct.hlist_node, ptr %call28.i, i32 0, i32 1
  %48 = ptrtoint ptr %pprev.i82.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %arrayidx33.i, ptr %pprev.i82.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !68
  %49 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call28.i, ptr %arrayidx33.i, align 4
  %tobool.not.i83.i = icmp eq ptr %46, null
  br i1 %tobool.not.i83.i, label %hlist_add_head_rcu.exit.i.if.end_crit_edge, label %do.body49.i85.i

hlist_add_head_rcu.exit.i.if.end_crit_edge:       ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body49.i85.i:                                  ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev51.i84.i = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %pprev51.i84.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call28.i, ptr %pprev51.i84.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body49.i85.i, %hlist_add_head_rcu.exit.i.if.end_crit_edge, %alloc_spi.i.if.end_crit_edge, %for.inc24.i.if.end_crit_edge, %for.cond16.preheader.i.if.end_crit_edge, %refcount_inc.exit
  %spi.0 = phi i32 [ %3, %refcount_inc.exit ], [ %spi.2.i, %alloc_spi.i.if.end_crit_edge ], [ %spi.2.i, %hlist_add_head_rcu.exit.i.if.end_crit_edge ], [ %spi.2.i, %do.body49.i85.i ], [ 0, %for.cond16.preheader.i.if.end_crit_edge ], [ 0, %for.inc24.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #9
  ret i32 %spi.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_tunnel_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrm46_tunnel_handler, i16 noundef zeroext 2) #9
  %call1 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrm6_tunnel_handler, i16 noundef zeroext 10) #9
  tail call void @xfrm_unregister_type(ptr noundef nonnull @xfrm6_tunnel_type, i16 noundef zeroext 10) #9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm6_tunnel_net_ops) #9
  tail call void @rcu_barrier() #9
  %0 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_deregister(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_unregister_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 48, i32 noundef 0, i32 noundef 8192, ptr noundef null) #9
  store ptr %call, ptr @xfrm6_tunnel_spi_kmem, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xfrm6_tunnel_net_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_pernet_crit_edge, label %if.end3

if.end.out_pernet_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_pernet

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @xfrm_register_type(ptr noundef nonnull @xfrm6_tunnel_type, i16 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.out_type_crit_edge, label %if.end7

if.end3.out_type_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_type

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @xfrm6_tunnel_handler, i16 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.out_xfrm6_crit_edge, label %if.end11

if.end7.out_xfrm6_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_xfrm6

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @xfrm6_tunnel_register(ptr noundef nonnull @xfrm46_tunnel_handler, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %out_xfrm46, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_xfrm46:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @xfrm6_tunnel_deregister(ptr noundef nonnull @xfrm6_tunnel_handler, i16 noundef zeroext 10) #9
  br label %out_xfrm6

out_xfrm6:                                        ; preds = %out_xfrm46, %if.end7.out_xfrm6_crit_edge
  %rv.0 = phi i32 [ %call8, %if.end7.out_xfrm6_crit_edge ], [ %call12, %out_xfrm46 ]
  tail call void @xfrm_unregister_type(ptr noundef nonnull @xfrm6_tunnel_type, i16 noundef zeroext 10) #9
  br label %out_type

out_type:                                         ; preds = %out_xfrm6, %if.end3.out_type_crit_edge
  %rv.1 = phi i32 [ %call4, %if.end3.out_type_crit_edge ], [ %rv.0, %out_xfrm6 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xfrm6_tunnel_net_ops) #9
  br label %out_pernet

out_pernet:                                       ; preds = %out_type, %if.end.out_pernet_crit_edge
  %rv.2 = phi i32 [ %call1, %if.end.out_pernet_crit_edge ], [ %rv.1, %out_type ]
  %0 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_pernet, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.2, %out_pernet ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @xfrm6_tunnel_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.5) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #9
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call2 = tail call i32 @xfrm6_tunnel_spi_lookup(ptr noundef %4, ptr noundef %saddr)
  %call3 = tail call i32 @xfrm6_rcv_spi(ptr noundef %skb, i32 noundef 41, i32 noundef %call2, ptr noundef null) #9
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfrm6_tunnel_err(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %opt, i8 noundef zeroext %type, i8 noundef zeroext %code, i32 noundef %offset, i32 noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_rcv_spi(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfrm6_tunnel_init_state(ptr nocapture noundef %x) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %2 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encap, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %header_len = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 9
  %4 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 40, ptr %header_len, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_tunnel_destroy(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %x, align 4
  %saddr = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %call.i = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %1) #9
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #9
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saddr, align 4
  %arrayidx2.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i.i.i, align 4
  %xor.i.i.i = xor i32 %5, %3
  %arrayidx4.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor5.i.i.i = xor i32 %xor.i.i.i, %7
  %arrayidx7.i.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor8.i.i.i = xor i32 %xor5.i.i.i, %9
  %shr.i.i = lshr i32 %xor8.i.i.i, 16
  %xor.i.i = xor i32 %shr.i.i, %xor8.i.i.i
  %shr1.i.i = lshr i32 %xor.i.i, 8
  %xor2.i.i = xor i32 %shr1.i.i, %xor.i.i
  %and.i.i = and i32 %xor2.i.i, 255
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr %call.i, i32 0, i32 %and.i.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not40.i = icmp eq ptr %11, null
  br i1 %tobool3.not40.i, label %entry.xfrm6_tunnel_free_spi.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.xfrm6_tunnel_free_spi.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm6_tunnel_free_spi.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %x6spi.041.i = phi ptr [ %13, %for.inc.i.land.rhs.i_crit_edge ], [ %11, %entry.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %x6spi.041.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %x6spi.041.i, align 4
  %addr.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 2
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 4
  %16 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saddr, align 4
  %xor.i.i32.i = xor i32 %17, %15
  %arrayidx4.i.i33.i = getelementptr %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx4.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i.i33.i, align 4
  %20 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2.i.i.i, align 4
  %xor7.i.i.i = xor i32 %21, %19
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i32.i
  %arrayidx9.i.i.i = getelementptr %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.i.i.i, align 4
  %24 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor12.i.i.i = xor i32 %25, %23
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15.i.i.i, align 4
  %28 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i.i.i, align 4
  %xor18.i.i.i = xor i32 %29, %27
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.rhs.i
  %refcnt.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #9, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then8.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.i, !prof !67

if.end5.i.i.i.i.for.inc.i_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #9
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  %31 = ptrtoint ptr %x6spi.041.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %x6spi.041.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %x6spi.041.i, i32 0, i32 1
  %33 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev2.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %32, ptr %34, align 4
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i.i, label %if.then8.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.then8.i.hlist_del_rcu.exit.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.then8.i.hlist_del_rcu.exit.i_crit_edge
  %37 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %list_byspi.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 1
  %38 = ptrtoint ptr %list_byspi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list_byspi.i, align 4
  %pprev2.i.i34.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %pprev2.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pprev2.i.i34.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %39, ptr %41, align 4
  %tobool.not.i.i35.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i35.i, label %hlist_del_rcu.exit.i.hlist_del_rcu.exit38.i_crit_edge, label %do.body13.i.i37.i

hlist_del_rcu.exit.i.hlist_del_rcu.exit38.i_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_rcu.exit38.i

do.body13.i.i37.i:                                ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i36.i = getelementptr inbounds %struct.hlist_node, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %pprev14.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %pprev14.i.i36.i, align 4
  br label %hlist_del_rcu.exit38.i

hlist_del_rcu.exit38.i:                           ; preds = %do.body13.i.i37.i, %hlist_del_rcu.exit.i.hlist_del_rcu.exit38.i_crit_edge
  %44 = ptrtoint ptr %pprev2.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i34.i, align 4
  %callback_head.i = getelementptr inbounds %struct.xfrm6_tunnel_spi, ptr %x6spi.041.i, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull @x6spi_destroy_rcu) #9
  br label %xfrm6_tunnel_free_spi.exit

for.inc.i:                                        ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %for.inc.i.xfrm6_tunnel_free_spi.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.xfrm6_tunnel_free_spi.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xfrm6_tunnel_free_spi.exit

xfrm6_tunnel_free_spi.exit:                       ; preds = %for.inc.i.xfrm6_tunnel_free_spi.exit_crit_edge, %hlist_del_rcu.exit38.i, %entry.xfrm6_tunnel_free_spi.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm6_tunnel_spi_lock) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfrm6_tunnel_input(ptr nocapture noundef readnone %x, ptr nocapture noundef readonly %skb) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %nhoff = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %nhoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nhoff, align 2
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_output(ptr nocapture noundef readnone %x, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @x6spi_destroy_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfrm6_tunnel_spi_kmem, align 4
  %add.ptr = getelementptr i8, ptr %head, i32 -40
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfrm6_tunnel_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net)
  %0 = call ptr @memset(ptr %call, i32 0, i32 2052)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfrm6_tunnel_net_exit(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @xfrm6_tunnel_pernet(ptr noundef %net)
  tail call void @xfrm_flush_gc() #9
  %call1 = tail call i32 @xfrm_state_flush(ptr noundef %net, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %entry
  %i.0119 = phi i32 [ 0, %entry ], [ %inc, %if.end31.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr %call, i32 0, i32 %i.0119
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %for.body.if.end31_crit_edge, label %land.rhs

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.rhs:                                         ; preds = %for.body
  %.b116 = load i1, ptr @xfrm6_tunnel_net_exit.__already_done, align 1
  br i1 %.b116, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !67

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @xfrm6_tunnel_net_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 337, i32 noundef 9, ptr noundef null) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %for.body.if.end31_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %if.end31.for.body41_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end31.for.body41_crit_edge:                    ; preds = %if.end31
  br label %for.body41

for.body41:                                       ; preds = %if.end92.for.body41_crit_edge, %if.end31.for.body41_crit_edge
  %i.1120 = phi i32 [ %inc101, %if.end92.for.body41_crit_edge ], [ 0, %if.end31.for.body41_crit_edge ]
  %arrayidx43 = getelementptr %struct.xfrm6_tunnel_net, ptr %call, i32 0, i32 1, i32 %i.1120
  %2 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx43, align 4
  %tobool.not.i117.not = icmp eq ptr %3, null
  br i1 %tobool.not.i117.not, label %for.body41.if.end92_crit_edge, label %land.rhs54

for.body41.if.end92_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

land.rhs54:                                       ; preds = %for.body41
  %.b114115 = load i1, ptr @xfrm6_tunnel_net_exit.__already_done.10, align 1
  br i1 %.b114115, label %land.rhs54.if.end92_crit_edge, label %if.then65, !prof !67

land.rhs54.if.end92_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @xfrm6_tunnel_net_exit.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 340, i32 noundef 9, ptr noundef null) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %land.rhs54.if.end92_crit_edge, %for.body41.if.end92_crit_edge
  %inc101 = add nuw nsw i32 %i.1120, 1
  %exitcond121.not = icmp eq i32 %inc101, 256
  br i1 %exitcond121.not, label %for.end102, label %if.end92.for.body41_crit_edge

if.end92.for.body41_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

for.end102:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_flush_gc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_state_flush(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_register_type(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm6_tunnel_register(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_xfrm6_tunnel_spi_lookup, !1, !"__ksymtab_xfrm6_tunnel_spi_lookup", i1 false, i1 false}
!1 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 100, i32 1}
!2 = !{ptr @__ksymtab_xfrm6_tunnel_alloc_spi, !3, !"__ksymtab_xfrm6_tunnel_alloc_spi", i1 false, i1 false}
!3 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 179, i32 1}
!4 = !{ptr @__initcall__kmod_xfrm6_tunnel__514_398_xfrm6_tunnel_init6, !5, !"__initcall__kmod_xfrm6_tunnel__514_398_xfrm6_tunnel_init6", i1 false, i1 false}
!5 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 398, i32 1}
!6 = !{ptr @__exitcall_xfrm6_tunnel_fini, !7, !"__exitcall_xfrm6_tunnel_fini", i1 false, i1 false}
!7 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 399, i32 1}
!8 = !{ptr @__UNIQUE_ID_file515, !9, !"__UNIQUE_ID_file515", i1 false, i1 false}
!9 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 400, i32 1}
!10 = !{ptr @__UNIQUE_ID_license516, !9, !"__UNIQUE_ID_license516", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias517, !12, !"__UNIQUE_ID_alias517", i1 false, i1 false}
!12 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 401, i32 1}
!13 = !{ptr @xfrm6_tunnel_spi_kmem, !14, !"xfrm6_tunnel_spi_kmem", i1 false, i1 false}
!14 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 55, i32 27}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 79, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xfrm6_tunnel_net_id, !34, !"xfrm6_tunnel_net_id", i1 false, i1 false}
!34 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 34, i32 21}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 53, i32 8}
!40 = !{ptr @xfrm6_tunnel_spi_lock, !39, !"xfrm6_tunnel_spi_lock", i1 false, i1 false}
!41 = !{ptr @xfrm46_tunnel_handler, !42, !"xfrm46_tunnel_handler", i1 false, i1 false}
!42 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 308, i32 28}
!43 = !{ptr @xfrm6_tunnel_handler, !44, !"xfrm6_tunnel_handler", i1 false, i1 false}
!44 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 302, i32 28}
!45 = !{ptr @xfrm6_tunnel_type, !46, !"xfrm6_tunnel_type", i1 false, i1 false}
!46 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 293, i32 31}
!47 = !{ptr @xfrm6_tunnel_net_ops, !48, !"xfrm6_tunnel_net_ops", i1 false, i1 false}
!48 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 343, i32 33}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 337, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 340, i32 3}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ipv6/xfrm6_tunnel.c", i32 354, i32 44}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148349539, i64 2148349571, i64 2148349600, i64 2148349634, i64 2148349665, i64 2148349688}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2151945522}
!69 = !{i64 2149364168}
!70 = !{i64 2149364434}
!71 = !{i64 2148437564}
!72 = !{i64 2148352004, i64 2148352036, i64 2148352065, i64 2148352099, i64 2148352130, i64 2148352153}
!73 = !{i64 2149313678}
