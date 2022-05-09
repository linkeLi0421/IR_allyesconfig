; ModuleID = '/llk/IR_all_yes/net/appletalk/aarp.c_pt.bc'
source_filename = "../net/appletalk/aarp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+aarp_send_ddp\22, \22a\22\09"
module asm "\09.weak\09__crc_aarp_send_ddp\09\09\09\09"
module asm "\09.long\09__crc_aarp_send_ddp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aarp_send_ddp:\09\09\09\09\09"
module asm "\09.asciz \09\22aarp_send_ddp\22\09\09\09\09\09"
module asm "__kstrtabns_aarp_send_ddp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.atalk_addr = type { i16, i8 }
%struct.aarp_entry = type { i32, %struct.sk_buff_head, i32, i32, %struct.atalk_addr, ptr, [6 x i8], i16, ptr }
%struct.ifreq = type { %union.anon.126, %union.anon.127 }
%union.anon.126 = type { [16 x i8] }
%union.anon.127 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.atalk_iface = type { ptr, %struct.atalk_addr, i32, %struct.atalk_netrange, ptr }
%struct.atalk_netrange = type { i8, i16, i16 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.datalink_proto = type { [8 x i8], ptr, i16, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.elapaarp = type <{ i16, i16, i8, i8, i16, [6 x i8], i8, i16, i8, [6 x i8], i8, i16, i8 }>
%struct.ddpehdr = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.aarp_iter_state = type { i32, ptr }

@sysctl_aarp_expiry_time = dso_local global { i32, [28 x i8] } { i32 30000, [28 x i8] zeroinitializer }, align 32
@sysctl_aarp_tick_time = dso_local global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@sysctl_aarp_retransmit_limit = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@sysctl_aarp_resolve_time = dso_local global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@aarp_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@proxies = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aarp_send_ddp.ddp_eth_multicast = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\09\00\07\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@ddp_dl = external dso_local local_unnamed_addr global ptr, align 4
@resolved = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@unresolved = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@unresolved_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@aarp_timer = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@__kstrtab_aarp_send_ddp = external dso_local constant [0 x i8], align 1
@__kstrtabns_aarp_send_ddp = external dso_local constant [0 x i8], align 1
@__ksymtab_aarp_send_ddp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aarp_send_ddp to i32), ptr @__kstrtab_aarp_send_ddp, ptr @__kstrtabns_aarp_send_ddp }, section "___ksymtab+aarp_send_ddp", align 4
@aarp_snap_id = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\00\80\F3", [27 x i8] zeroinitializer }, align 32
@aarp_dl = external dso_local local_unnamed_addr global ptr, align 4
@aarp_proto_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012Unable to register AARP with SNAP.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aarp_proto_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/appletalk/aarp.c\00", [43 x i8] zeroinitializer }, align 32
@aarp_proto_init._entry_ptr = internal global ptr @aarp_proto_init._entry, section ".printk_index", align 4
@aarp_proto_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&aarp_timer)\00", [18 x i8] zeroinitializer }, align 32
@aarp_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @aarp_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@aarp_seq_ops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @aarp_seq_start, ptr @aarp_seq_stop, ptr @aarp_seq_next, ptr @aarp_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aarp_lock\00", [22 x i8] zeroinitializer }, align 32
@aarp_send_probe.aarp_eth_multicast = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\09\00\07\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__aarp_send_query.aarp_eth_multicast = internal global [6 x i8] c"\09\00\07\FF\FF\FF", align 1
@init_net = external dso_local global %struct.net, align 128
@.str.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Address  Interface   Hardware Address   Expires LastSend  Retry Status\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%04X:%02X  %-12s\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"????\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %8s\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" %8s %6hu\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"                \00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resolved\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unresolved\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"proxies\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@dt2str.buf = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%ld.%02ld\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 773]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 773]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 512, i64 773]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"sysctl_aarp_expiry_time\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 39, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"sysctl_aarp_tick_time\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 40, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"sysctl_aarp_retransmit_limit\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 41, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [25 x i8] c"sysctl_aarp_resolve_time\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 42, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"aarp_lock\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"proxies\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 73, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"ddp_eth_multicast\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 545, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"resolved\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 71, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"unresolved\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 72, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"unresolved_count\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 74, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"aarp_timer\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 80, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"aarp_snap_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 874, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 882, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 885, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"aarp_notifier\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 870, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"aarp_seq_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1034, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 77, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"aarp_eth_multicast\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 208, i32 23 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1984, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1009, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1012, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1015, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1016, i32 19 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1017, i32 19 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1020, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1024, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1025, i32 19 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1026, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1027, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1028, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1029, i32 9 }
@___asan_gen_.130 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 994, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [24 x i8] c"../net/appletalk/aarp.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 996, i32 15 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_aarp_send_ddp, ptr @aarp_proto_init._entry, ptr @aarp_proto_init._entry_ptr, ptr @sysctl_aarp_expiry_time, ptr @sysctl_aarp_tick_time, ptr @sysctl_aarp_retransmit_limit, ptr @sysctl_aarp_resolve_time, ptr @aarp_lock, ptr @proxies, ptr @aarp_send_ddp.ddp_eth_multicast, ptr @resolved, ptr @unresolved, ptr @unresolved_count, ptr @aarp_timer, ptr @aarp_snap_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @aarp_proto_init.__key, ptr @.str.3, ptr @aarp_notifier, ptr @aarp_seq_ops, ptr @.str.4, ptr @aarp_send_probe.aarp_eth_multicast, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @dt2str.buf, ptr @.str.18], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_aarp_expiry_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_aarp_tick_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_aarp_retransmit_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_aarp_resolve_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proxies to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_send_ddp.ddp_eth_multicast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resolved to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unresolved to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unresolved_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_snap_id to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_proto_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_proto_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aarp_send_probe.aarp_eth_multicast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2str.buf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aarp_proxy_remove(ptr noundef readnone %dev, ptr nocapture noundef readonly %sa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  %0 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_node, align 2
  %2 = urem i8 %1, 15
  %rem = zext i8 %2 to i32
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  %arrayidx = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %rem
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not20.i = icmp eq ptr %4, null
  br i1 %tobool.not20.i, label %entry.if.end_crit_edge, label %while.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %5 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sa, align 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %list.addr.021.i = phi ptr [ %4, %while.body.lr.ph.i ], [ %16, %if.end.i.while.body.i_crit_edge ]
  %target_addr.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4
  %7 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp.i = icmp eq i16 %8, %6
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %s_node.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_node.i, align 2
  %11 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp8.i = icmp eq i8 %10, %12
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %dev11.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 5
  %13 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev11.i, align 4
  %cmp12.i = icmp eq ptr %14, %dev
  br i1 %cmp12.i, label %if.then, label %land.lhs.true10.i.if.end.i_crit_edge

land.lhs.true10.i.if.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true10.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 8
  %15 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %17, -1
  %expires_at = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 3
  %18 = ptrtoint ptr %expires_at to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %expires_at, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aarp_probe_network(ptr nocapture noundef %atif) local_unnamed_addr #0 align 64 {
entry:
  %atreq.i = alloca %struct.ifreq, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atif, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %for.cond.preheader [
    i16 773, label %entry.if.then_crit_edge
    i16 512, label %entry.if.then_crit_edge19
  ]

entry.if.then_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.preheader:                               ; preds = %entry
  %address = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1
  %status = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 2
  %5 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %6, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %for.cond.preheader.if.end11_crit_edge

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %atreq.i) #9
  %9 = call ptr @memset(ptr %atreq.i, i32 255, i32 32)
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev_ops.i, align 8
  %address.i = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1
  %s_node.i = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_node.i, align 2
  %sat_addr.i = getelementptr inbounds %struct.ifreq, ptr %atreq.i, i32 0, i32 1, i32 0, i32 1
  %s_node1.i = getelementptr inbounds %struct.atalk_addr, ptr %sat_addr.i, i32 0, i32 1
  %14 = ptrtoint ptr %s_node1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %s_node1.i, align 2
  %15 = ptrtoint ptr %address.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %address.i, align 4
  %17 = ptrtoint ptr %sat_addr.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %sat_addr.i, align 4
  %ndo_do_ioctl.i = getelementptr inbounds %struct.net_device_ops, ptr %11, i32 0, i32 11
  %18 = ptrtoint ptr %ndo_do_ioctl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndo_do_ioctl.i, align 4
  %call.i = call i32 %19(ptr noundef %1, ptr noundef nonnull %atreq.i, i32 noundef 35094) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.aarp_send_probe_phase1.exit_crit_edge

if.then.aarp_send_probe_phase1.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %aarp_send_probe_phase1.exit

if.then.i:                                        ; preds = %if.then
  %20 = ptrtoint ptr %ndo_do_ioctl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndo_do_ioctl.i, align 4
  %22 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %atif, align 4
  %call8.i = call i32 %21(ptr noundef %23, ptr noundef nonnull %atreq.i, i32 noundef 35093) #9
  %24 = ptrtoint ptr %address.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %address.i, align 4
  %26 = ptrtoint ptr %sat_addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sat_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp.not.i = icmp eq i16 %25, %27
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i.if.then23.i_crit_edge

if.then.i.if.then23.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %28 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_node.i, align 2
  %30 = ptrtoint ptr %s_node1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s_node1.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp21.not.i = icmp eq i8 %29, %31
  br i1 %cmp21.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then23.i_crit_edge

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then23.i:                                      ; preds = %lor.lhs.false.i.if.then23.i_crit_edge, %if.then.i.if.then23.i_crit_edge
  %status.i = getelementptr inbounds %struct.atalk_iface, ptr %atif, i32 0, i32 2
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i, align 4
  %or.i = or i32 %33, 2
  store i32 %or.i, ptr %status.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then23.i, %lor.lhs.false.i.if.end.i_crit_edge
  %34 = ptrtoint ptr %address.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %27, ptr %address.i, align 4
  %35 = ptrtoint ptr %s_node1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_node1.i, align 2
  %37 = ptrtoint ptr %s_node.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %s_node.i, align 2
  br label %aarp_send_probe_phase1.exit

aarp_send_probe_phase1.exit:                      ; preds = %if.end.i, %if.then.aarp_send_probe_phase1.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %atreq.i) #9
  br label %if.end11

for.cond:                                         ; preds = %for.cond.preheader
  %38 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %39, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  %and.1 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.end11_crit_edge

for.cond.if.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.1:                                       ; preds = %for.cond
  %42 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %43, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %and.2 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.end11_crit_edge

for.cond.1.if.end11_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.2:                                       ; preds = %for.cond.1
  %46 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %47, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status, align 4
  %and.3 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.if.end11_crit_edge

for.cond.2.if.end11_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.3:                                       ; preds = %for.cond.2
  %50 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %51, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %and.4 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.if.end11_crit_edge

for.cond.3.if.end11_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.4:                                       ; preds = %for.cond.3
  %54 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %55, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 4
  %and.5 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.if.end11_crit_edge

for.cond.4.if.end11_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.5:                                       ; preds = %for.cond.4
  %58 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %59, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %60 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %status, align 4
  %and.6 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.if.end11_crit_edge

for.cond.5.if.end11_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.6:                                       ; preds = %for.cond.5
  %62 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %63, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %64 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %status, align 4
  %and.7 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %for.cond.6.if.end11_crit_edge

for.cond.6.if.end11_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.7:                                       ; preds = %for.cond.6
  %66 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %67, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %status, align 4
  %and.8 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.cond.8, label %for.cond.7.if.end11_crit_edge

for.cond.7.if.end11_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %71, ptr noundef %address)
  tail call void @msleep(i32 noundef 100) #9
  br label %if.end11

if.end11:                                         ; preds = %for.cond.8, %for.cond.7.if.end11_crit_edge, %for.cond.6.if.end11_crit_edge, %for.cond.5.if.end11_crit_edge, %for.cond.4.if.end11_crit_edge, %for.cond.3.if.end11_crit_edge, %for.cond.2.if.end11_crit_edge, %for.cond.1.if.end11_crit_edge, %for.cond.if.end11_crit_edge, %aarp_send_probe_phase1.exit, %for.cond.preheader.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aarp_send_probe(ptr noundef %dev, ptr nocapture noundef readonly %us) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %2 = load ptr, ptr @aarp_dl, align 4
  %header_length = getelementptr inbounds %struct.datalink_proto, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header_length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %header_length, align 4
  %conv1 = zext i16 %4 to i32
  %add2 = add nuw nsw i32 %add, %conv1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add2, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hard_header_len, align 2
  %conv4 = zext i16 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %7 = load ptr, ptr @aarp_dl, align 4
  %header_length5 = getelementptr inbounds %struct.datalink_proto, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %header_length5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %header_length5, align 4
  %conv6 = zext i16 %9 to i32
  %add7 = add nuw nsw i32 %conv6, %conv4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add7
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %add7
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -32613, ptr %protocol, align 8
  %19 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %19, align 8
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 8
  %23 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 1, ptr %add.ptr.i.i, align 1
  %pa_type = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %pa_type to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 -32613, ptr %pa_type, align 1
  %hw_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %hw_len to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %hw_len, align 1
  %pa_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %pa_len to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %pa_len, align 1
  %function = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %function to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 3, ptr %function, align 1
  %hw_src = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 5
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %hw_src to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hw_src, align 4
  %add.ptr.i49 = getelementptr i8, ptr %31, i32 4
  %35 = ptrtoint ptr %add.ptr.i49 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i49, align 2
  %add.ptr1.i50 = getelementptr i8, ptr %hw_src, i32 4
  %37 = ptrtoint ptr %add.ptr1.i50 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i50, align 2
  %pa_src_zero = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %pa_src_zero to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %pa_src_zero, align 1
  %39 = ptrtoint ptr %us to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %us, align 2
  %pa_src_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %pa_src_net to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %pa_src_net, align 1
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %us, i32 0, i32 1
  %42 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s_node, align 2
  %pa_src_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %pa_src_node to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %pa_src_node, align 1
  %hw_dst = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 9
  %45 = call ptr @memset(ptr %hw_dst, i32 0, i32 7)
  %46 = load i16, ptr %us, align 2
  %pa_dst_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 11
  %47 = ptrtoint ptr %pa_dst_net to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %pa_dst_net, align 1
  %48 = load i8, ptr %s_node, align 2
  %pa_dst_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 12
  %49 = ptrtoint ptr %pa_dst_node to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %pa_dst_node, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %50 = load ptr, ptr @aarp_dl, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %request, align 4
  %call13 = tail call i32 %52(ptr noundef %50, ptr noundef nonnull %call.i, ptr noundef nonnull @aarp_send_probe.aarp_eth_multicast) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aarp_proxy_probe_network(ptr nocapture noundef readonly %atif, ptr nocapture noundef readonly %sa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atif, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %3, label %if.end [
    i16 773, label %entry.out_crit_edge
    i16 512, label %entry.out_crit_edge54
  ]

entry.out_crit_edge54:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 88) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end
  %packet_queue.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %6 = ptrtoint ptr %packet_queue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %packet_queue.i, ptr %packet_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %packet_queue.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i.i, align 4
  %expires_at = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %expires_at to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %expires_at, align 8
  %status = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %status, align 4
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  %11 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_node, align 2
  %target_addr = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 4
  %s_node11 = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %s_node11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %s_node11, align 2
  %14 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sa, align 2
  %16 = ptrtoint ptr %target_addr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %target_addr, align 4
  %17 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %atif, align 4
  %dev15 = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dev15, align 8
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  %20 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_node, align 2
  %22 = urem i8 %21, 15
  %rem = zext i8 %22 to i32
  %arrayidx = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %rem
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %next = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %next, align 4
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10
  %count.053 = phi i32 [ 0, %if.end10 ], [ %inc, %for.body.for.body_crit_edge ]
  %26 = ptrtoint ptr %atif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %atif, align 4
  tail call fastcc void @aarp_send_probe(ptr noundef %27, ptr noundef %sa)
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  tail call void @msleep(i32 noundef 100) #9
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %and = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp ne i32 %and, 0
  %inc = add nuw nsw i32 %count.053, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 10
  %or.cond = select i1 %tobool23.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %and27 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %32, -1
  %33 = ptrtoint ptr %expires_at to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %expires_at, align 8
  br label %if.end33

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %and32 = and i32 %31, -2
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and32, ptr %status, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then29
  %retval1.0 = phi i32 [ -98, %if.then29 ], [ 1, %if.else ]
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %out

out:                                              ; preds = %if.end33, %if.end.out_crit_edge, %entry.out_crit_edge, %entry.out_crit_edge54
  %retval1.1 = phi i32 [ -93, %entry.out_crit_edge ], [ %retval1.0, %if.end33 ], [ -93, %entry.out_crit_edge54 ], [ -12, %if.end.out_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aarp_send_ddp(ptr noundef %dev, ptr noundef %skb, ptr nocapture noundef readonly %sa, ptr nocapture readnone %hwaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %network_header.i, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type, align 16
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %6, label %entry.free_it_crit_edge [
    i16 773, label %if.then
    i16 512, label %if.then32
    i16 1, label %if.end39
  ]

entry.free_it_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_it

if.then:                                          ; preds = %entry
  %call = tail call ptr @atalk_find_dev_addr(ptr noundef %dev) #9
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %deh_snet = getelementptr inbounds %struct.ddpehdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %deh_snet to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %deh_snet, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.then.land.lhs.true_crit_edge, label %lor.lhs.false

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.then
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %11)
  %cmp5 = icmp eq i16 %13, %11
  br i1 %cmp5, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %deh_dnet = getelementptr inbounds %struct.ddpehdr, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %deh_dnet, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool7.not = icmp eq i16 %15, 0
  br i1 %tobool7.not, label %land.lhs.true.if.then15_crit_edge, label %lor.lhs.false8

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %15)
  %cmp13 = icmp eq i16 %17, %15
  br i1 %cmp13, label %lor.lhs.false8.if.then15_crit_edge, label %lor.lhs.false8.if.end_crit_edge

lor.lhs.false8.if.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false8.if.then15_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false8.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %call16 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %conv17 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv17, ptr %21, align 2
  br label %if.end

if.end:                                           ; preds = %if.then15, %lor.lhs.false8.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %ft.0 = phi i8 [ 1, %if.then15 ], [ 2, %lor.lhs.false8.if.end_crit_edge ], [ 2, %lor.lhs.false.if.end_crit_edge ]
  %call19 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #9
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  %23 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_node, align 2
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %26, align 1
  %s_node21 = getelementptr inbounds %struct.atalk_addr, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %s_node21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_node21, align 2
  %30 = load ptr, ptr %data.i, align 4
  %arrayidx23 = getelementptr i8, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx23, align 1
  %32 = load ptr, ptr %data.i, align 4
  %arrayidx26 = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %ft.0, ptr %arrayidx26, align 1
  br label %sendit

if.then32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %34 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16, ptr %protocol, align 8
  br label %sendit

if.end39:                                         ; preds = %entry
  %35 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %35, align 8
  %protocol40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %37 = ptrtoint ptr %protocol40 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -32613, ptr %protocol40, align 8
  %s_node41 = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  %38 = ptrtoint ptr %s_node41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s_node41, align 2
  %40 = urem i8 %39, 15
  %rem = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp45 = icmp eq i8 %39, -1
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ddp_dl to i32))
  %41 = load ptr, ptr @ddp_dl, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %request, align 4
  %call48 = tail call i32 %43(ptr noundef %41, ptr noundef %skb, ptr noundef nonnull @aarp_send_ddp.ddp_eth_multicast) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  %arrayidx50 = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %rem
  %44 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx50, align 4
  %tobool.not20.i = icmp eq ptr %45, null
  br i1 %tobool.not20.i, label %if.end49.if.end57_crit_edge, label %while.body.lr.ph.i

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

while.body.lr.ph.i:                               ; preds = %if.end49
  %46 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sa, align 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %list.addr.021.i = phi ptr [ %45, %while.body.lr.ph.i ], [ %57, %if.end.i.while.body.i_crit_edge ]
  %target_addr.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4
  %48 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %target_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %47)
  %cmp.i = icmp eq i16 %49, %47
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %s_node.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %s_node.i, align 2
  %52 = ptrtoint ptr %s_node41 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_node41, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %53)
  %cmp8.i = icmp eq i8 %51, %53
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %dev11.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 5
  %54 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev11.i, align 4
  %cmp12.i = icmp eq ptr %55, %dev
  br i1 %cmp12.i, label %if.then53, label %land.lhs.true10.i.if.end.i_crit_edge

land.lhs.true10.i.if.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true10.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 8
  %56 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i.if.end57_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end57_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %59 = load i32, ptr @sysctl_aarp_expiry_time, align 4
  %mul = mul i32 %59, 10
  %add = add i32 %mul, %58
  %expires_at = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 3
  %60 = ptrtoint ptr %expires_at to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %expires_at, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ddp_dl to i32))
  %61 = load ptr, ptr @ddp_dl, align 4
  %request54 = getelementptr inbounds %struct.datalink_proto, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %request54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %request54, align 4
  %hwaddr55 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 6
  %call56 = tail call i32 %63(ptr noundef %61, ptr noundef %skb, ptr noundef %hwaddr55) #9
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end.i.if.end57_crit_edge, %if.end49.if.end57_crit_edge
  %arrayidx58 = getelementptr [16 x ptr], ptr @unresolved, i32 0, i32 %rem
  %64 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx58, align 4
  %tobool.not20.i146 = icmp eq ptr %65, null
  br i1 %tobool.not20.i146, label %if.end57.if.end62_crit_edge, label %while.body.lr.ph.i148

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

while.body.lr.ph.i148:                            ; preds = %if.end57
  %66 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %sa, align 2
  br label %while.body.i152

while.body.i152:                                  ; preds = %if.end.i161.while.body.i152_crit_edge, %while.body.lr.ph.i148
  %list.addr.021.i149 = phi ptr [ %65, %while.body.lr.ph.i148 ], [ %77, %if.end.i161.while.body.i152_crit_edge ]
  %target_addr.i150 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i149, i32 0, i32 4
  %68 = ptrtoint ptr %target_addr.i150 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %target_addr.i150, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %69, i16 %67)
  %cmp.i151 = icmp eq i16 %69, %67
  br i1 %cmp.i151, label %land.lhs.true.i155, label %while.body.i152.if.end.i161_crit_edge

while.body.i152.if.end.i161_crit_edge:            ; preds = %while.body.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

land.lhs.true.i155:                               ; preds = %while.body.i152
  %s_node.i153 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i149, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %s_node.i153 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %s_node.i153, align 2
  %72 = ptrtoint ptr %s_node41 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %s_node41, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp8.i154 = icmp eq i8 %71, %73
  br i1 %cmp8.i154, label %land.lhs.true10.i158, label %land.lhs.true.i155.if.end.i161_crit_edge

land.lhs.true.i155.if.end.i161_crit_edge:         ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

land.lhs.true10.i158:                             ; preds = %land.lhs.true.i155
  %dev11.i156 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i149, i32 0, i32 5
  %74 = ptrtoint ptr %dev11.i156 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev11.i156, align 4
  %cmp12.i157 = icmp eq ptr %75, %dev
  br i1 %cmp12.i157, label %if.then61, label %land.lhs.true10.i158.if.end.i161_crit_edge

land.lhs.true10.i158.if.end.i161_crit_edge:       ; preds = %land.lhs.true10.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

if.end.i161:                                      ; preds = %land.lhs.true10.i158.if.end.i161_crit_edge, %land.lhs.true.i155.if.end.i161_crit_edge, %while.body.i152.if.end.i161_crit_edge
  %next.i159 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i149, i32 0, i32 8
  %76 = ptrtoint ptr %next.i159 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %next.i159, align 4
  %tobool.not.i160 = icmp eq ptr %77, null
  br i1 %tobool.not.i160, label %if.end.i161.if.end62_crit_edge, label %if.end.i161.while.body.i152_crit_edge

if.end.i161.while.body.i152_crit_edge:            ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i152

if.end.i161.if.end62_crit_edge:                   ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then61:                                        ; preds = %land.lhs.true10.i158
  call void @__sanitizer_cov_trace_pc() #11
  %packet_queue = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i149, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %packet_queue, ptr noundef %skb) #9
  br label %out_unlock

if.end62:                                         ; preds = %if.end.i161.if.end62_crit_edge, %if.end57.if.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 2592, i32 noundef 88) #12
  %tobool.not.i164 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i164, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %free_it

if.end66:                                         ; preds = %if.end62
  %packet_queue.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1
  %lock.i.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %79 = ptrtoint ptr %packet_queue.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %packet_queue.i, ptr %packet_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %packet_queue.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %qlen.i.i.i, align 4
  tail call void @skb_queue_tail(ptr noundef %packet_queue.i, ptr noundef %skb) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %83 = load i32, ptr @sysctl_aarp_resolve_time, align 4
  %add68 = add i32 %83, %82
  %expires_at69 = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %expires_at69 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add68, ptr %expires_at69, align 8
  %dev70 = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 5
  %85 = ptrtoint ptr %dev70 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev, ptr %dev70, align 8
  %86 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx58, align 4
  %next = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %next, align 4
  %target_addr = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %sa to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %sa, align 2
  %91 = ptrtoint ptr %target_addr to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %target_addr, align 4
  %xmit_count = getelementptr inbounds %struct.aarp_entry, ptr %call7.i.i, i32 0, i32 7
  %92 = ptrtoint ptr %xmit_count to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %xmit_count, align 2
  store ptr %call7.i.i, ptr %arrayidx58, align 4
  %93 = load i32, ptr @unresolved_count, align 4
  %inc = add i32 %93, 1
  store i32 %inc, ptr @unresolved_count, align 4
  tail call fastcc void @__aarp_send_query(ptr noundef nonnull %call7.i.i)
  %94 = load i32, ptr @unresolved_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp73 = icmp eq i32 %94, 1
  br i1 %cmp73, label %if.then75, label %if.end66.out_unlock_crit_edge

if.end66.out_unlock_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then75:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %96 = load i32, ptr @sysctl_aarp_tick_time, align 4
  %add76 = add i32 %96, %95
  %call77 = tail call i32 @mod_timer(ptr noundef nonnull @aarp_timer, i32 noundef %add76) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.then75, %if.end66.out_unlock_crit_edge, %if.then61
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %cleanup

sendit:                                           ; preds = %if.then32, %if.end
  %97 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %dev, ptr %97, align 8
  %99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %tobool79.not = icmp eq ptr %101, null
  br i1 %tobool79.not, label %sendit.if.end81_crit_edge, label %if.then80

sendit.if.end81_crit_edge:                        ; preds = %sendit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then80:                                        ; preds = %sendit
  call void @__sanitizer_cov_trace_pc() #11
  %sk_priority = getelementptr inbounds %struct.sock, ptr %101, i32 0, i32 33
  %102 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %104 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %priority, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %sendit.if.end81_crit_edge
  %call82 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end81.cleanup_crit_edge, label %if.end81.drop_crit_edge

if.end81.drop_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

free_it:                                          ; preds = %if.then65, %entry.free_it_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %drop

drop:                                             ; preds = %free_it, %if.end81.drop_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end81.cleanup_crit_edge, %out_unlock, %if.then53, %if.then47
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %if.end81.cleanup_crit_edge ], [ 0, %out_unlock ], [ 0, %if.then53 ], [ 0, %if.then47 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atalk_find_dev_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__aarp_send_query(ptr nocapture noundef %a) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %4 = load ptr, ptr @aarp_dl, align 4
  %header_length = getelementptr inbounds %struct.datalink_proto, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %header_length to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %header_length, align 4
  %conv2 = zext i16 %6 to i32
  %add3 = add nuw nsw i32 %add, %conv2
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %call4 = tail call ptr @atalk_find_dev_addr(ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hard_header_len, align 2
  %conv9 = zext i16 %8 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %9 = load ptr, ptr @aarp_dl, align 4
  %header_length10 = getelementptr inbounds %struct.datalink_proto, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %header_length10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %header_length10, align 4
  %conv11 = zext i16 %11 to i32
  %add12 = add nuw nsw i32 %conv11, %conv9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 %add12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %19 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call13 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -32613, ptr %protocol, align 8
  %21 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %21, align 8
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %25 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 1, ptr %add.ptr.i.i, align 1
  %pa_type = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %pa_type to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 -32613, ptr %pa_type, align 1
  %hw_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %hw_len to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 6, ptr %hw_len, align 1
  %pa_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %pa_len to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %pa_len, align 1
  %function = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %function to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 1, ptr %function, align 1
  %hw_src = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 5
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %32 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr, align 64
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %hw_src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %hw_src, align 4
  %add.ptr.i62 = getelementptr i8, ptr %33, i32 4
  %37 = ptrtoint ptr %add.ptr.i62 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i62, align 2
  %add.ptr1.i63 = getelementptr i8, ptr %hw_src, i32 4
  %39 = ptrtoint ptr %add.ptr1.i63 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %add.ptr1.i63, align 2
  %pa_src_zero = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %pa_src_zero to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %pa_src_zero, align 1
  %41 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %call4, align 2
  %pa_src_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %pa_src_net to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %pa_src_net, align 1
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %call4, i32 0, i32 1
  %44 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %s_node, align 2
  %pa_src_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %pa_src_node to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %pa_src_node, align 1
  %hw_dst = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 9
  %target_addr = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 4
  %47 = call ptr @memset(ptr %hw_dst, i32 0, i32 7)
  %48 = ptrtoint ptr %target_addr to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %target_addr, align 4
  %pa_dst_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 11
  %50 = ptrtoint ptr %pa_dst_net to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %pa_dst_net, align 1
  %s_node18 = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %s_node18 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %s_node18, align 2
  %pa_dst_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 12
  %53 = ptrtoint ptr %pa_dst_node to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %pa_dst_node, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %54 = load ptr, ptr @aarp_dl, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %request, align 4
  %call19 = tail call i32 %56(ptr noundef %54, ptr noundef nonnull %call.i, ptr noundef nonnull @__aarp_send_query.aarp_eth_multicast) #9
  %xmit_count = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 7
  %57 = ptrtoint ptr %xmit_count to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %xmit_count, align 2
  %inc = add i16 %58, 1
  store i16 %inc, ptr %xmit_count, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %a, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aarp_proto_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_snap_client(ptr noundef nonnull @aarp_snap_id, ptr noundef nonnull @aarp_rcv) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  store ptr %call, ptr @aarp_dl, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  tail call void @init_timer_key(ptr noundef nonnull @aarp_timer, ptr noundef nonnull @aarp_expire_timeout, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @aarp_proto_init.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @sysctl_aarp_expiry_time, align 4
  %add = add i32 %1, %0
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @aarp_timer, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @aarp_timer) #9
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @aarp_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body2.cleanup_crit_edge, label %if.then7

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @del_timer_sync(ptr noundef nonnull @aarp_timer) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %2 = load ptr, ptr @aarp_dl, align 4
  tail call void @unregister_snap_client(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call5, %if.then7 ], [ 0, %do.body2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_snap_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aarp_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  %sa = alloca %struct.atalk_addr, align 4
  %da = alloca %struct.atalk_addr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sa) #9
  %4 = ptrtoint ptr %sa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sa, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %da) #9
  %5 = ptrtoint ptr %da to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %da, align 4, !annotation !84
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %6 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %7, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.out0_crit_edge

entry.out0_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp.not = icmp eq i16 %9, 1
  br i1 %cmp.not, label %if.end5, label %if.end.out0_crit_edge

if.end.out0_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 28) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out0_crit_edge, label %if.end9

if.end5.out0_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

if.end9:                                          ; preds = %if.end5
  %function10 = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %function10 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %function10, align 1
  %12 = add i16 %11, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %12)
  %13 = icmp ult i16 %12, -3
  br i1 %13, label %if.end9.out0_crit_edge, label %lor.lhs.false17

if.end9.out0_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

lor.lhs.false17:                                  ; preds = %if.end9
  %hw_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %hw_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp19.not = icmp eq i8 %15, 6
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false17.out0_crit_edge

lor.lhs.false17.out0_crit_edge:                   ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %pa_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %pa_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pa_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp23.not = icmp eq i8 %17, 4
  br i1 %cmp23.not, label %lor.lhs.false25, label %lor.lhs.false21.out0_crit_edge

lor.lhs.false21.out0_crit_edge:                   ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %pa_src_zero = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %pa_src_zero to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pa_src_zero, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false25.out0_crit_edge

lor.lhs.false25.out0_crit_edge:                   ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %pa_dst_zero = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %pa_dst_zero to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pa_dst_zero, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.end32, label %lor.lhs.false28.out0_crit_edge

lor.lhs.false28.out0_crit_edge:                   ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

if.end32:                                         ; preds = %lor.lhs.false28
  %pa_src_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %pa_src_node to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pa_src_node, align 1
  %24 = urem i8 %23, 15
  %rem = zext i8 %24 to i32
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  %25 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %s_node, align 2
  %pa_src_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %pa_src_net to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %pa_src_net, align 1
  %28 = ptrtoint ptr %sa to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %sa, align 4
  %atalk_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 77
  %29 = ptrtoint ptr %atalk_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %atalk_ptr.i, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %if.end32.out0_crit_edge, label %if.end38

if.end32.out0_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out0

if.end38:                                         ; preds = %if.end32
  %status = getelementptr inbounds %struct.atalk_iface, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.end38.if.end54_crit_edge, label %land.lhs.true

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end38
  %s_node40 = getelementptr inbounds %struct.atalk_iface, ptr %30, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %s_node40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %s_node40, align 2
  %pa_dst_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %pa_dst_node to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pa_dst_node, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp43 = icmp eq i8 %34, %36
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true45:                                  ; preds = %land.lhs.true
  %address = getelementptr inbounds %struct.atalk_iface, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %address, align 4
  %pa_dst_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %pa_dst_net to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %pa_dst_net, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp50 = icmp eq i16 %38, %40
  br i1 %cmp50, label %if.then52, label %land.lhs.true45.if.end54_crit_edge

land.lhs.true45.if.end54_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %32, 2
  %41 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %status, align 4
  br label %out0

if.end54:                                         ; preds = %land.lhs.true45.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  %pa_dst_node55 = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 12
  %42 = ptrtoint ptr %pa_dst_node55 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pa_dst_node55, align 1
  %s_node56 = getelementptr inbounds %struct.atalk_addr, ptr %da, i32 0, i32 1
  %44 = ptrtoint ptr %s_node56 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %s_node56, align 2
  %pa_dst_net57 = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 11
  %45 = ptrtoint ptr %pa_dst_net57 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %pa_dst_net57, align 1
  %47 = ptrtoint ptr %da to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %da, align 4
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  %arrayidx = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %rem
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx, align 4
  %tobool.not20.i = icmp eq ptr %49, null
  br i1 %tobool.not20.i, label %if.end54.if.end68_crit_edge, label %if.end54.while.body.i_crit_edge

if.end54.while.body.i_crit_edge:                  ; preds = %if.end54
  br label %while.body.i

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end54.while.body.i_crit_edge
  %list.addr.021.i = phi ptr [ %57, %if.end.i.while.body.i_crit_edge ], [ %49, %if.end54.while.body.i_crit_edge ]
  %target_addr.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4
  %50 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %target_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %46)
  %cmp.i198 = icmp eq i16 %51, %46
  br i1 %cmp.i198, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %s_node.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %s_node.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %43)
  %cmp8.i = icmp eq i8 %53, %43
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %dev11.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 5
  %54 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev11.i, align 4
  %cmp12.i = icmp eq ptr %55, %dev
  br i1 %cmp12.i, label %land.lhs.true61, label %land.lhs.true10.i.if.end.i_crit_edge

land.lhs.true10.i.if.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true10.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 8
  %56 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i.if.end68_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end68_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true61:                                  ; preds = %land.lhs.true10.i
  %status62 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 2
  %58 = ptrtoint ptr %status62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status62, align 4
  %and63 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end68_crit_edge, label %if.then65

land.lhs.true61.if.end68_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then65:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %or67 = or i32 %59, 2
  %60 = ptrtoint ptr %status62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or67, ptr %status62, align 4
  br label %unlock

if.end68:                                         ; preds = %land.lhs.true61.if.end68_crit_edge, %if.end.i.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  %61 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %11, label %if.end68.unlock_crit_edge [
    i16 2, label %sw.bb
    i16 1, label %if.end68.sw.bb88_crit_edge
    i16 3, label %if.end68.sw.bb88_crit_edge260
  ]

if.end68.sw.bb88_crit_edge260:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb88

if.end68.sw.bb88_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb88

if.end68.unlock_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb:                                            ; preds = %if.end68
  %62 = load i32, ptr @unresolved_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool70.not = icmp eq i32 %62, 0
  br i1 %tobool70.not, label %sw.bb.unlock_crit_edge, label %if.end72

sw.bb.unlock_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end72:                                         ; preds = %sw.bb
  %arrayidx73 = getelementptr [16 x ptr], ptr @unresolved, i32 0, i32 %rem
  %63 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx73, align 4
  %tobool.not20.i199 = icmp eq ptr %64, null
  br i1 %tobool.not20.i199, label %if.end72.unlock_crit_edge, label %while.body.lr.ph.i201

if.end72.unlock_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

while.body.lr.ph.i201:                            ; preds = %if.end72
  %65 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %sa, align 4
  br label %while.body.i205

while.body.i205:                                  ; preds = %if.end.i214.while.body.i205_crit_edge, %while.body.lr.ph.i201
  %list.addr.021.i202 = phi ptr [ %64, %while.body.lr.ph.i201 ], [ %76, %if.end.i214.while.body.i205_crit_edge ]
  %target_addr.i203 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 4
  %67 = ptrtoint ptr %target_addr.i203 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %target_addr.i203, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %66)
  %cmp.i204 = icmp eq i16 %68, %66
  br i1 %cmp.i204, label %land.lhs.true.i208, label %while.body.i205.if.end.i214_crit_edge

while.body.i205.if.end.i214_crit_edge:            ; preds = %while.body.i205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i214

land.lhs.true.i208:                               ; preds = %while.body.i205
  %s_node.i206 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %s_node.i206 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %s_node.i206, align 2
  %71 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %s_node, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %72)
  %cmp8.i207 = icmp eq i8 %70, %72
  br i1 %cmp8.i207, label %land.lhs.true10.i211, label %land.lhs.true.i208.if.end.i214_crit_edge

land.lhs.true.i208.if.end.i214_crit_edge:         ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i214

land.lhs.true10.i211:                             ; preds = %land.lhs.true.i208
  %dev11.i209 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 5
  %73 = ptrtoint ptr %dev11.i209 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev11.i209, align 4
  %cmp12.i210 = icmp eq ptr %74, %dev
  br i1 %cmp12.i210, label %lor.lhs.false76, label %land.lhs.true10.i211.if.end.i214_crit_edge

land.lhs.true10.i211.if.end.i214_crit_edge:       ; preds = %land.lhs.true10.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i214

if.end.i214:                                      ; preds = %land.lhs.true10.i211.if.end.i214_crit_edge, %land.lhs.true.i208.if.end.i214_crit_edge, %while.body.i205.if.end.i214_crit_edge
  %next.i212 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 8
  %75 = ptrtoint ptr %next.i212 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %next.i212, align 4
  %tobool.not.i213 = icmp eq ptr %76, null
  br i1 %tobool.not.i213, label %if.end.i214.unlock_crit_edge, label %if.end.i214.while.body.i205_crit_edge

if.end.i214.while.body.i205_crit_edge:            ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i205

if.end.i214.unlock_crit_edge:                     ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false76:                                  ; preds = %land.lhs.true10.i211
  %dev11.i209.le = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 5
  %77 = ptrtoint ptr %dev11.i209.le to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev11.i209.le, align 4
  %cmp78.not = icmp eq ptr %78, %dev
  br i1 %cmp78.not, label %if.end81, label %lor.lhs.false76.unlock_crit_edge

lor.lhs.false76.unlock_crit_edge:                 ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end81:                                         ; preds = %lor.lhs.false76
  %hwaddr = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 6
  %hw_src = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %hw_src to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hw_src, align 4
  %81 = ptrtoint ptr %hwaddr to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %hwaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %hw_src, i32 4
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.aarp_entry, ptr %list.addr.021.i202, i32 0, i32 6, i32 4
  %84 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %add.ptr1.i, align 2
  tail call fastcc void @__aarp_resolved(ptr noundef %arrayidx73, ptr noundef nonnull %list.addr.021.i202, i32 noundef %rem)
  %85 = load i32, ptr @unresolved_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool84.not = icmp eq i32 %85, 0
  br i1 %tobool84.not, label %if.then85, label %if.end81.unlock_crit_edge

if.end81.unlock_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %87 = load i32, ptr @sysctl_aarp_expiry_time, align 4
  %add = add i32 %87, %86
  %call86 = tail call i32 @mod_timer(ptr noundef nonnull @aarp_timer, i32 noundef %add) #9
  br label %unlock

sw.bb88:                                          ; preds = %if.end68.sw.bb88_crit_edge, %if.end68.sw.bb88_crit_edge260
  %88 = ptrtoint ptr %pa_dst_node55 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pa_dst_node55, align 1
  %90 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %s_node, align 2
  %91 = ptrtoint ptr %pa_dst_net57 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %pa_dst_net57, align 1
  %93 = ptrtoint ptr %sa to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %sa, align 4
  %call93 = call fastcc ptr @__aarp_proxy_find(ptr noundef %dev, ptr noundef nonnull %sa)
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.then95, label %if.else

if.then95:                                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #11
  %address96 = getelementptr inbounds %struct.atalk_iface, ptr %30, i32 0, i32 1
  br label %if.end101

if.else:                                          ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %s_node56 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %89, ptr %s_node56, align 2
  %95 = ptrtoint ptr %da to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %92, ptr %da, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.then95
  %ma.0 = phi ptr [ %da, %if.else ], [ %address96, %if.then95 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp103 = icmp eq i16 %11, 3
  br i1 %cmp103, label %if.then105, label %if.end101.if.end116_crit_edge

if.end101.if.end116_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then105:                                       ; preds = %if.end101
  %96 = urem i8 %89, 15
  %rem108 = zext i8 %96 to i32
  %arrayidx109 = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %rem108
  %97 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx109, align 4
  %99 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %tobool.not20.i217 = icmp eq ptr %98, null
  br i1 %tobool.not20.i217, label %if.then105.if.end116_crit_edge, label %if.then105.while.body.i223_crit_edge

if.then105.while.body.i223_crit_edge:             ; preds = %if.then105
  br label %while.body.i223

if.then105.if.end116_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

while.body.i223:                                  ; preds = %if.end.i232.while.body.i223_crit_edge, %if.then105.while.body.i223_crit_edge
  %list.addr.021.i220 = phi ptr [ %109, %if.end.i232.while.body.i223_crit_edge ], [ %98, %if.then105.while.body.i223_crit_edge ]
  %target_addr.i221 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i220, i32 0, i32 4
  %102 = ptrtoint ptr %target_addr.i221 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %target_addr.i221, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %92)
  %cmp.i222 = icmp eq i16 %103, %92
  br i1 %cmp.i222, label %land.lhs.true.i226, label %while.body.i223.if.end.i232_crit_edge

while.body.i223.if.end.i232_crit_edge:            ; preds = %while.body.i223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i232

land.lhs.true.i226:                               ; preds = %while.body.i223
  %s_node.i224 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i220, i32 0, i32 4, i32 1
  %104 = ptrtoint ptr %s_node.i224 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %s_node.i224, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %89)
  %cmp8.i225 = icmp eq i8 %105, %89
  br i1 %cmp8.i225, label %land.lhs.true10.i229, label %land.lhs.true.i226.if.end.i232_crit_edge

land.lhs.true.i226.if.end.i232_crit_edge:         ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i232

land.lhs.true10.i229:                             ; preds = %land.lhs.true.i226
  %dev11.i227 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i220, i32 0, i32 5
  %106 = ptrtoint ptr %dev11.i227 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev11.i227, align 4
  %cmp12.i228 = icmp eq ptr %107, %101
  br i1 %cmp12.i228, label %if.then112, label %land.lhs.true10.i229.if.end.i232_crit_edge

land.lhs.true10.i229.if.end.i232_crit_edge:       ; preds = %land.lhs.true10.i229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i232

if.end.i232:                                      ; preds = %land.lhs.true10.i229.if.end.i232_crit_edge, %land.lhs.true.i226.if.end.i232_crit_edge, %while.body.i223.if.end.i232_crit_edge
  %next.i230 = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i220, i32 0, i32 8
  %108 = ptrtoint ptr %next.i230 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %next.i230, align 4
  %tobool.not.i231 = icmp eq ptr %109, null
  br i1 %tobool.not.i231, label %if.end.i232.if.end116_crit_edge, label %if.end.i232.while.body.i223_crit_edge

if.end.i232.while.body.i223_crit_edge:            ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i223

if.end.i232.if.end116_crit_edge:                  ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then112:                                       ; preds = %land.lhs.true10.i229
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %110, -1
  %expires_at = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i220, i32 0, i32 3
  %111 = ptrtoint ptr %expires_at to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub, ptr %expires_at, align 4
  %112 = load volatile i32, ptr @jiffies, align 128
  %113 = load i32, ptr @sysctl_aarp_tick_time, align 4
  %add113 = add i32 %113, %112
  %call114 = call i32 @mod_timer(ptr noundef nonnull @aarp_timer, i32 noundef %add113) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.end.i232.if.end116_crit_edge, %if.then105.if.end116_crit_edge, %if.end101.if.end116_crit_edge
  %114 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %s_node, align 2
  %s_node119 = getelementptr inbounds %struct.atalk_addr, ptr %ma.0, i32 0, i32 1
  %116 = ptrtoint ptr %s_node119 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %s_node119, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %117)
  %cmp121.not = icmp eq i8 %115, %117
  br i1 %cmp121.not, label %if.end124, label %if.end116.unlock_crit_edge

if.end116.unlock_crit_edge:                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end124:                                        ; preds = %if.end116
  %118 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %sa, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool127.not = icmp eq i16 %119, 0
  br i1 %tobool127.not, label %if.end124.if.end140_crit_edge, label %land.lhs.true128

if.end124.if.end140_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

land.lhs.true128:                                 ; preds = %if.end124
  %120 = ptrtoint ptr %ma.0 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ma.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool131.not = icmp eq i16 %121, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %119, i16 %121)
  %cmp137.not = icmp eq i16 %119, %121
  %or.cond197 = select i1 %tobool131.not, i1 true, i1 %cmp137.not
  br i1 %or.cond197, label %land.lhs.true128.if.end140_crit_edge, label %land.lhs.true128.unlock_crit_edge

land.lhs.true128.unlock_crit_edge:                ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

land.lhs.true128.if.end140_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true128.if.end140_crit_edge, %if.end124.if.end140_crit_edge
  %122 = ptrtoint ptr %pa_src_node to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pa_src_node, align 1
  %124 = ptrtoint ptr %s_node to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %s_node, align 2
  %125 = ptrtoint ptr %pa_src_net to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %pa_src_net, align 1
  %127 = ptrtoint ptr %sa to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %sa, align 4
  %hw_src145 = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 5
  call fastcc void @aarp_send_reply(ptr noundef %dev, ptr noundef %ma.0, ptr noundef nonnull %sa, ptr noundef %hw_src145)
  br label %unlock

unlock:                                           ; preds = %if.end140, %land.lhs.true128.unlock_crit_edge, %if.end116.unlock_crit_edge, %if.then85, %if.end81.unlock_crit_edge, %lor.lhs.false76.unlock_crit_edge, %if.end.i214.unlock_crit_edge, %if.end72.unlock_crit_edge, %sw.bb.unlock_crit_edge, %if.end68.unlock_crit_edge, %if.then65
  call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %out0

out0:                                             ; preds = %unlock, %if.then52, %if.end32.out0_crit_edge, %lor.lhs.false28.out0_crit_edge, %lor.lhs.false25.out0_crit_edge, %lor.lhs.false21.out0_crit_edge, %lor.lhs.false17.out0_crit_edge, %if.end9.out0_crit_edge, %if.end5.out0_crit_edge, %if.end.out0_crit_edge, %entry.out0_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out0_crit_edge ], [ 0, %if.end9.out0_crit_edge ], [ 0, %lor.lhs.false17.out0_crit_edge ], [ 0, %lor.lhs.false21.out0_crit_edge ], [ 0, %lor.lhs.false25.out0_crit_edge ], [ 0, %lor.lhs.false28.out0_crit_edge ], [ 0, %if.end5.out0_crit_edge ], [ 0, %entry.out0_crit_edge ], [ 1, %if.end32.out0_crit_edge ], [ 1, %unlock ], [ 1, %if.then52 ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %da) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sa) #9
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aarp_expire_timeout(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %for.body

for.body:                                         ; preds = %__aarp_expire_timer.exit41.for.body_crit_edge, %entry
  %ct.043 = phi i32 [ 0, %entry ], [ %inc, %__aarp_expire_timer.exit41.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %ct.043
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not7.i = icmp eq ptr %1, null
  br i1 %tobool.not7.i, label %for.body.__aarp_expire_timer.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.__aarp_expire_timer.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %2 = phi ptr [ %10, %if.end.i.while.body.i_crit_edge ], [ %1, %for.body.while.body.i_crit_edge ]
  %n.addr.08.i = phi ptr [ %n.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %arrayidx, %for.body.while.body.i_crit_edge ]
  %expires_at.i = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %expires_at.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expires_at.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 8
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i, align 4
  %8 = ptrtoint ptr %n.addr.08.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %n.addr.08.i, align 4
  %packet_queue.i.i = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %n.addr.1.i = phi ptr [ %n.addr.08.i, %if.then.i ], [ %next.i, %while.body.i.if.end.i_crit_edge ]
  %9 = ptrtoint ptr %n.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %n.addr.1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i.__aarp_expire_timer.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.__aarp_expire_timer.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit

__aarp_expire_timer.exit:                         ; preds = %if.end.i.__aarp_expire_timer.exit_crit_edge, %for.body.__aarp_expire_timer.exit_crit_edge
  %arrayidx1 = getelementptr [16 x ptr], ptr @unresolved, i32 0, i32 %ct.043
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1, align 4
  %tobool.not9.i = icmp eq ptr %12, null
  br i1 %tobool.not9.i, label %__aarp_expire_timer.exit.__aarp_expire_timer.exit28_crit_edge, label %__aarp_expire_timer.exit.while.body.i9_crit_edge

__aarp_expire_timer.exit.while.body.i9_crit_edge: ; preds = %__aarp_expire_timer.exit
  br label %while.body.i9

__aarp_expire_timer.exit.__aarp_expire_timer.exit28_crit_edge: ; preds = %__aarp_expire_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit28

while.body.i9:                                    ; preds = %if.end.i15.while.body.i9_crit_edge, %__aarp_expire_timer.exit.while.body.i9_crit_edge
  %13 = phi ptr [ %23, %if.end.i15.while.body.i9_crit_edge ], [ %12, %__aarp_expire_timer.exit.while.body.i9_crit_edge ]
  %n.addr.010.i = phi ptr [ %n.addr.1.i13, %if.end.i15.while.body.i9_crit_edge ], [ %arrayidx1, %__aarp_expire_timer.exit.while.body.i9_crit_edge ]
  %xmit_count.i = getelementptr inbounds %struct.aarp_entry, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %xmit_count.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %xmit_count.i, align 2
  %conv.i = zext i16 %15 to i32
  %16 = load i32, ptr @sysctl_aarp_retransmit_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %16, %conv.i
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i12

if.then.i12:                                      ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #11
  %next.i10 = getelementptr inbounds %struct.aarp_entry, ptr %13, i32 0, i32 8
  %17 = ptrtoint ptr %next.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next.i10, align 4
  %19 = ptrtoint ptr %n.addr.010.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %n.addr.010.i, align 4
  %packet_queue.i.i11 = getelementptr inbounds %struct.aarp_entry, ptr %13, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i11) #9
  tail call void @kfree(ptr noundef nonnull %13) #9
  br label %if.end.i15

if.else.i:                                        ; preds = %while.body.i9
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__aarp_send_query(ptr noundef nonnull %13) #9
  %20 = ptrtoint ptr %n.addr.010.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %n.addr.010.i, align 4
  %next2.i = getelementptr inbounds %struct.aarp_entry, ptr %21, i32 0, i32 8
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.else.i, %if.then.i12
  %n.addr.1.i13 = phi ptr [ %n.addr.010.i, %if.then.i12 ], [ %next2.i, %if.else.i ]
  %22 = ptrtoint ptr %n.addr.1.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %n.addr.1.i13, align 4
  %tobool.not.i14 = icmp eq ptr %23, null
  br i1 %tobool.not.i14, label %__aarp_kick.exit, label %if.end.i15.while.body.i9_crit_edge

if.end.i15.while.body.i9_crit_edge:               ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i9

__aarp_kick.exit:                                 ; preds = %if.end.i15
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %arrayidx1, align 4
  %tobool.not7.i16 = icmp eq ptr %.pr, null
  br i1 %tobool.not7.i16, label %__aarp_kick.exit.__aarp_expire_timer.exit28_crit_edge, label %__aarp_kick.exit.while.body.i22_crit_edge

__aarp_kick.exit.while.body.i22_crit_edge:        ; preds = %__aarp_kick.exit
  br label %while.body.i22

__aarp_kick.exit.__aarp_expire_timer.exit28_crit_edge: ; preds = %__aarp_kick.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit28

while.body.i22:                                   ; preds = %if.end.i27.while.body.i22_crit_edge, %__aarp_kick.exit.while.body.i22_crit_edge
  %25 = phi ptr [ %33, %if.end.i27.while.body.i22_crit_edge ], [ %.pr, %__aarp_kick.exit.while.body.i22_crit_edge ]
  %n.addr.08.i17 = phi ptr [ %n.addr.1.i25, %if.end.i27.while.body.i22_crit_edge ], [ %arrayidx1, %__aarp_kick.exit.while.body.i22_crit_edge ]
  %expires_at.i18 = getelementptr inbounds %struct.aarp_entry, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %expires_at.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %expires_at.i18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i19 = sub i32 %27, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i19)
  %cmp.i20 = icmp slt i32 %sub.i19, 0
  %next.i21 = getelementptr inbounds %struct.aarp_entry, ptr %25, i32 0, i32 8
  br i1 %cmp.i20, label %if.then.i24, label %while.body.i22.if.end.i27_crit_edge

while.body.i22.if.end.i27_crit_edge:              ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i27

if.then.i24:                                      ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %next.i21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next.i21, align 4
  %31 = ptrtoint ptr %n.addr.08.i17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %n.addr.08.i17, align 4
  %packet_queue.i.i23 = getelementptr inbounds %struct.aarp_entry, ptr %25, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i23) #9
  tail call void @kfree(ptr noundef nonnull %25) #9
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i24, %while.body.i22.if.end.i27_crit_edge
  %n.addr.1.i25 = phi ptr [ %n.addr.08.i17, %if.then.i24 ], [ %next.i21, %while.body.i22.if.end.i27_crit_edge ]
  %32 = ptrtoint ptr %n.addr.1.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %n.addr.1.i25, align 4
  %tobool.not.i26 = icmp eq ptr %33, null
  br i1 %tobool.not.i26, label %if.end.i27.__aarp_expire_timer.exit28_crit_edge, label %if.end.i27.while.body.i22_crit_edge

if.end.i27.while.body.i22_crit_edge:              ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i22

if.end.i27.__aarp_expire_timer.exit28_crit_edge:  ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit28

__aarp_expire_timer.exit28:                       ; preds = %if.end.i27.__aarp_expire_timer.exit28_crit_edge, %__aarp_kick.exit.__aarp_expire_timer.exit28_crit_edge, %__aarp_expire_timer.exit.__aarp_expire_timer.exit28_crit_edge
  %arrayidx3 = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %ct.043
  %34 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3, align 4
  %tobool.not7.i29 = icmp eq ptr %35, null
  br i1 %tobool.not7.i29, label %__aarp_expire_timer.exit28.__aarp_expire_timer.exit41_crit_edge, label %__aarp_expire_timer.exit28.while.body.i35_crit_edge

__aarp_expire_timer.exit28.while.body.i35_crit_edge: ; preds = %__aarp_expire_timer.exit28
  br label %while.body.i35

__aarp_expire_timer.exit28.__aarp_expire_timer.exit41_crit_edge: ; preds = %__aarp_expire_timer.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit41

while.body.i35:                                   ; preds = %if.end.i40.while.body.i35_crit_edge, %__aarp_expire_timer.exit28.while.body.i35_crit_edge
  %36 = phi ptr [ %44, %if.end.i40.while.body.i35_crit_edge ], [ %35, %__aarp_expire_timer.exit28.while.body.i35_crit_edge ]
  %n.addr.08.i30 = phi ptr [ %n.addr.1.i38, %if.end.i40.while.body.i35_crit_edge ], [ %arrayidx3, %__aarp_expire_timer.exit28.while.body.i35_crit_edge ]
  %expires_at.i31 = getelementptr inbounds %struct.aarp_entry, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %expires_at.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %expires_at.i31, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i32 = sub i32 %38, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32)
  %cmp.i33 = icmp slt i32 %sub.i32, 0
  %next.i34 = getelementptr inbounds %struct.aarp_entry, ptr %36, i32 0, i32 8
  br i1 %cmp.i33, label %if.then.i37, label %while.body.i35.if.end.i40_crit_edge

while.body.i35.if.end.i40_crit_edge:              ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i40

if.then.i37:                                      ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %next.i34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %next.i34, align 4
  %42 = ptrtoint ptr %n.addr.08.i30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %n.addr.08.i30, align 4
  %packet_queue.i.i36 = getelementptr inbounds %struct.aarp_entry, ptr %36, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i36) #9
  tail call void @kfree(ptr noundef nonnull %36) #9
  br label %if.end.i40

if.end.i40:                                       ; preds = %if.then.i37, %while.body.i35.if.end.i40_crit_edge
  %n.addr.1.i38 = phi ptr [ %n.addr.08.i30, %if.then.i37 ], [ %next.i34, %while.body.i35.if.end.i40_crit_edge ]
  %43 = ptrtoint ptr %n.addr.1.i38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %n.addr.1.i38, align 4
  %tobool.not.i39 = icmp eq ptr %44, null
  br i1 %tobool.not.i39, label %if.end.i40.__aarp_expire_timer.exit41_crit_edge, label %if.end.i40.while.body.i35_crit_edge

if.end.i40.while.body.i35_crit_edge:              ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i35

if.end.i40.__aarp_expire_timer.exit41_crit_edge:  ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_timer.exit41

__aarp_expire_timer.exit41:                       ; preds = %if.end.i40.__aarp_expire_timer.exit41_crit_edge, %__aarp_expire_timer.exit28.__aarp_expire_timer.exit41_crit_edge
  %inc = add nuw nsw i32 %ct.043, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %__aarp_expire_timer.exit41.for.body_crit_edge

__aarp_expire_timer.exit41.for.body_crit_edge:    ; preds = %__aarp_expire_timer.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %__aarp_expire_timer.exit41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %46 = load i32, ptr @unresolved_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  %sysctl_aarp_expiry_time.val = load i32, ptr @sysctl_aarp_expiry_time, align 4
  %sysctl_aarp_tick_time.val = load i32, ptr @sysctl_aarp_tick_time, align 4
  %cond = select i1 %tobool.not, i32 %sysctl_aarp_expiry_time.val, i32 %sysctl_aarp_tick_time.val
  %add = add i32 %cond, %45
  %call = tail call i32 @mod_timer(ptr noundef nonnull @aarp_timer, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_snap_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aarp_device_down(ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %for.body

for.body:                                         ; preds = %__aarp_expire_device.exit32.for.body_crit_edge, %entry
  %ct.033 = phi i32 [ 0, %entry ], [ %inc, %__aarp_expire_device.exit32.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %ct.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not8.i = icmp eq ptr %1, null
  br i1 %tobool.not8.i, label %for.body.__aarp_expire_device.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.__aarp_expire_device.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %2 = phi ptr [ %9, %if.end.i.while.body.i_crit_edge ], [ %1, %for.body.while.body.i_crit_edge ]
  %n.addr.09.i = phi ptr [ %n.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %arrayidx, %for.body.while.body.i_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  %cmp.i = icmp eq ptr %4, %dev
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 8
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i, align 4
  %7 = ptrtoint ptr %n.addr.09.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %n.addr.09.i, align 4
  %packet_queue.i.i = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %n.addr.1.i = phi ptr [ %n.addr.09.i, %if.then.i ], [ %next.i, %while.body.i.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %n.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %n.addr.1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.__aarp_expire_device.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.__aarp_expire_device.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit

__aarp_expire_device.exit:                        ; preds = %if.end.i.__aarp_expire_device.exit_crit_edge, %for.body.__aarp_expire_device.exit_crit_edge
  %arrayidx1 = getelementptr [16 x ptr], ptr @unresolved, i32 0, i32 %ct.033
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1, align 4
  %tobool.not8.i9 = icmp eq ptr %11, null
  br i1 %tobool.not8.i9, label %__aarp_expire_device.exit.__aarp_expire_device.exit20_crit_edge, label %__aarp_expire_device.exit.while.body.i14_crit_edge

__aarp_expire_device.exit.while.body.i14_crit_edge: ; preds = %__aarp_expire_device.exit
  br label %while.body.i14

__aarp_expire_device.exit.__aarp_expire_device.exit20_crit_edge: ; preds = %__aarp_expire_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit20

while.body.i14:                                   ; preds = %if.end.i19.while.body.i14_crit_edge, %__aarp_expire_device.exit.while.body.i14_crit_edge
  %12 = phi ptr [ %19, %if.end.i19.while.body.i14_crit_edge ], [ %11, %__aarp_expire_device.exit.while.body.i14_crit_edge ]
  %n.addr.09.i10 = phi ptr [ %n.addr.1.i17, %if.end.i19.while.body.i14_crit_edge ], [ %arrayidx1, %__aarp_expire_device.exit.while.body.i14_crit_edge ]
  %dev1.i11 = getelementptr inbounds %struct.aarp_entry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev1.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i11, align 4
  %cmp.i12 = icmp eq ptr %14, %dev
  %next.i13 = getelementptr inbounds %struct.aarp_entry, ptr %12, i32 0, i32 8
  br i1 %cmp.i12, label %if.then.i16, label %while.body.i14.if.end.i19_crit_edge

while.body.i14.if.end.i19_crit_edge:              ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i19

if.then.i16:                                      ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %next.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next.i13, align 4
  %17 = ptrtoint ptr %n.addr.09.i10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %n.addr.09.i10, align 4
  %packet_queue.i.i15 = getelementptr inbounds %struct.aarp_entry, ptr %12, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i15) #9
  tail call void @kfree(ptr noundef nonnull %12) #9
  br label %if.end.i19

if.end.i19:                                       ; preds = %if.then.i16, %while.body.i14.if.end.i19_crit_edge
  %n.addr.1.i17 = phi ptr [ %n.addr.09.i10, %if.then.i16 ], [ %next.i13, %while.body.i14.if.end.i19_crit_edge ]
  %18 = ptrtoint ptr %n.addr.1.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %n.addr.1.i17, align 4
  %tobool.not.i18 = icmp eq ptr %19, null
  br i1 %tobool.not.i18, label %if.end.i19.__aarp_expire_device.exit20_crit_edge, label %if.end.i19.while.body.i14_crit_edge

if.end.i19.while.body.i14_crit_edge:              ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i14

if.end.i19.__aarp_expire_device.exit20_crit_edge: ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit20

__aarp_expire_device.exit20:                      ; preds = %if.end.i19.__aarp_expire_device.exit20_crit_edge, %__aarp_expire_device.exit.__aarp_expire_device.exit20_crit_edge
  %arrayidx2 = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %ct.033
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx2, align 4
  %tobool.not8.i21 = icmp eq ptr %21, null
  br i1 %tobool.not8.i21, label %__aarp_expire_device.exit20.__aarp_expire_device.exit32_crit_edge, label %__aarp_expire_device.exit20.while.body.i26_crit_edge

__aarp_expire_device.exit20.while.body.i26_crit_edge: ; preds = %__aarp_expire_device.exit20
  br label %while.body.i26

__aarp_expire_device.exit20.__aarp_expire_device.exit32_crit_edge: ; preds = %__aarp_expire_device.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit32

while.body.i26:                                   ; preds = %if.end.i31.while.body.i26_crit_edge, %__aarp_expire_device.exit20.while.body.i26_crit_edge
  %22 = phi ptr [ %29, %if.end.i31.while.body.i26_crit_edge ], [ %21, %__aarp_expire_device.exit20.while.body.i26_crit_edge ]
  %n.addr.09.i22 = phi ptr [ %n.addr.1.i29, %if.end.i31.while.body.i26_crit_edge ], [ %arrayidx2, %__aarp_expire_device.exit20.while.body.i26_crit_edge ]
  %dev1.i23 = getelementptr inbounds %struct.aarp_entry, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev1.i23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i23, align 4
  %cmp.i24 = icmp eq ptr %24, %dev
  %next.i25 = getelementptr inbounds %struct.aarp_entry, ptr %22, i32 0, i32 8
  br i1 %cmp.i24, label %if.then.i28, label %while.body.i26.if.end.i31_crit_edge

while.body.i26.if.end.i31_crit_edge:              ; preds = %while.body.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i31

if.then.i28:                                      ; preds = %while.body.i26
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %next.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next.i25, align 4
  %27 = ptrtoint ptr %n.addr.09.i22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %n.addr.09.i22, align 4
  %packet_queue.i.i27 = getelementptr inbounds %struct.aarp_entry, ptr %22, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i27) #9
  tail call void @kfree(ptr noundef nonnull %22) #9
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i28, %while.body.i26.if.end.i31_crit_edge
  %n.addr.1.i29 = phi ptr [ %n.addr.09.i22, %if.then.i28 ], [ %next.i25, %while.body.i26.if.end.i31_crit_edge ]
  %28 = ptrtoint ptr %n.addr.1.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %n.addr.1.i29, align 4
  %tobool.not.i30 = icmp eq ptr %29, null
  br i1 %tobool.not.i30, label %if.end.i31.__aarp_expire_device.exit32_crit_edge, label %if.end.i31.while.body.i26_crit_edge

if.end.i31.while.body.i26_crit_edge:              ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i26

if.end.i31.__aarp_expire_device.exit32_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit32

__aarp_expire_device.exit32:                      ; preds = %if.end.i31.__aarp_expire_device.exit32_crit_edge, %__aarp_expire_device.exit20.__aarp_expire_device.exit32_crit_edge
  %inc = add nuw nsw i32 %ct.033, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %__aarp_expire_device.exit32.for.body_crit_edge

__aarp_expire_device.exit32.for.body_crit_edge:   ; preds = %__aarp_expire_device.exit32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %__aarp_expire_device.exit32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aarp_seq_start(ptr nocapture noundef readonly %seq, ptr noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @aarp_lock) #9
  %table = getelementptr inbounds %struct.aarp_iter_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @resolved, ptr %table, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  %tobool3.not.i = icmp eq ptr %pos, null
  br label %rescan.i

rescan.i:                                         ; preds = %while.end.i.rescan.i_crit_edge, %cond.true
  %cmp8.i = phi i1 [ true, %cond.true ], [ false, %while.end.i.rescan.i_crit_edge ]
  %cmp11.i = phi i1 [ false, %cond.true ], [ %cmp8.i, %while.end.i.rescan.i_crit_edge ]
  %table.0.i = phi ptr [ @resolved, %cond.true ], [ %unresolved.mux, %while.end.i.rescan.i_crit_edge ]
  %off.0.i = phi i64 [ 0, %cond.true ], [ %off.2.lcssa.i, %while.end.i.rescan.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %rescan.i
  %off.141.i = phi i64 [ %off.2.lcssa.i, %for.end.i.while.body.i_crit_edge ], [ %off.0.i, %rescan.i ]
  %ct.139.i = phi i32 [ %inc7.i, %for.end.i.while.body.i_crit_edge ], [ 0, %rescan.i ]
  %arrayidx.i = getelementptr ptr, ptr %table.0.i, i32 %ct.139.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %entry2.034.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not35.i = icmp eq ptr %entry2.034.i, null
  br i1 %tobool.not35.i, label %while.body.i.for.end.i_crit_edge, label %for.body.i.preheader

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.preheader:                             ; preds = %while.body.i
  br i1 %tobool3.not.i, label %for.body.i.preheader.if.then.i.split_crit_edge, label %for.body.i.preheader.for.body.i_crit_edge

for.body.i.preheader.for.body.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.body.i

for.body.i.preheader.if.then.i.split_crit_edge:   ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader.for.body.i_crit_edge
  %entry2.037.i = phi ptr [ %entry2.0.i, %for.inc.i.for.body.i_crit_edge ], [ %entry2.034.i, %for.body.i.preheader.for.body.i_crit_edge ]
  %off.236.i = phi i64 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %off.141.i, %for.body.i.preheader.for.body.i_crit_edge ]
  %inc.i = add i64 %off.236.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc.i, i64 %5)
  %cmp4.i = icmp eq i64 %inc.i, %5
  br i1 %cmp4.i, label %for.body.i.if.then.i.split_crit_edge, label %for.inc.i

for.body.i.if.then.i.split_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.split

if.then.i.split:                                  ; preds = %for.body.i.if.then.i.split_crit_edge, %for.body.i.preheader.if.then.i.split_crit_edge
  %entry2.037.lcssa.i.split = phi ptr [ %entry2.037.i, %for.body.i.if.then.i.split_crit_edge ], [ %entry2.034.i, %for.body.i.preheader.if.then.i.split_crit_edge ]
  %7 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %table.0.i, ptr %table, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ct.139.i, ptr %1, align 4
  br label %cond.end

for.inc.i:                                        ; preds = %for.body.i
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %entry2.037.i, i32 0, i32 8
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %entry2.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %entry2.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %off.2.lcssa.i = phi i64 [ %off.141.i, %while.body.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %inc7.i = add nuw nsw i32 %ct.139.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 16
  br i1 %exitcond.not.i, label %while.end.i, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %for.end.i
  %brmerge = or i1 %cmp8.i, %cmp11.i
  %unresolved.mux = select i1 %cmp8.i, ptr @unresolved, ptr @proxies
  br i1 %brmerge, label %while.end.i.rescan.i_crit_edge, label %while.end.i.cond.end_crit_edge

while.end.i.cond.end_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

while.end.i.rescan.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rescan.i

cond.end:                                         ; preds = %while.end.i.cond.end_crit_edge, %if.then.i.split, %entry.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 1 to ptr), %entry.cond.end_crit_edge ], [ %entry2.037.lcssa.i.split, %if.then.i.split ], [ null, %while.end.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aarp_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aarp_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readonly %v, ptr nocapture noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %table1.i = getelementptr inbounds %struct.aarp_iter_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %table1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table1.i, align 4
  br label %rescan.i

rescan.i:                                         ; preds = %rescan.i.backedge, %if.then
  %ct.0.i = phi i32 [ %5, %if.then ], [ 0, %rescan.i.backedge ]
  %table.0.i = phi ptr [ %7, %if.then ], [ %table.0.i.be, %rescan.i.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ct.0.i)
  %cmp38.i = icmp slt i32 %ct.0.i, 16
  br i1 %cmp38.i, label %rescan.i.while.body.i_crit_edge, label %rescan.i.while.end.i_crit_edge

rescan.i.while.end.i_crit_edge:                   ; preds = %rescan.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

rescan.i.while.body.i_crit_edge:                  ; preds = %rescan.i
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %rescan.i.while.body.i_crit_edge
  %ct.139.i = phi i32 [ %inc7.i, %for.end.i.while.body.i_crit_edge ], [ %ct.0.i, %rescan.i.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %table.0.i, i32 %ct.139.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %entry2.034.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not35.i = icmp eq ptr %entry2.034.i, null
  br i1 %tobool.not35.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %table1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %table.0.i, ptr %table1.i, align 4
  br label %if.end7.sink.split

for.end.i:                                        ; preds = %while.body.i
  %inc7.i = add nsw i32 %ct.139.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 16
  br i1 %exitcond.not.i, label %for.end.i.while.end.i_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %for.end.i.while.end.i_crit_edge, %rescan.i.while.end.i_crit_edge
  %cmp8.i = icmp eq ptr %table.0.i, @resolved
  br i1 %cmp8.i, label %while.end.i.rescan.i.backedge_crit_edge, label %if.end10.i

while.end.i.rescan.i.backedge_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rescan.i.backedge

if.end10.i:                                       ; preds = %while.end.i
  %cmp11.i = icmp eq ptr %table.0.i, @unresolved
  br i1 %cmp11.i, label %if.end10.i.rescan.i.backedge_crit_edge, label %if.end10.i.if.end7_crit_edge

if.end10.i.if.end7_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end10.i.rescan.i.backedge_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rescan.i.backedge

rescan.i.backedge:                                ; preds = %if.end10.i.rescan.i.backedge_crit_edge, %while.end.i.rescan.i.backedge_crit_edge
  %table.0.i.be = phi ptr [ @proxies, %if.end10.i.rescan.i.backedge_crit_edge ], [ @unresolved, %while.end.i.rescan.i.backedge_crit_edge ]
  br label %rescan.i

if.else:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 8
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.else4, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else4:                                         ; preds = %if.else
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %inc5 = add i32 %13, 1
  store i32 %inc5, ptr %1, align 4
  %table1.i13 = getelementptr inbounds %struct.aarp_iter_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %table1.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table1.i13, align 4
  br label %rescan.i18

rescan.i18:                                       ; preds = %rescan.i18.backedge, %if.else4
  %ct.0.i14 = phi i32 [ %inc5, %if.else4 ], [ 0, %rescan.i18.backedge ]
  %table.0.i15 = phi ptr [ %15, %if.else4 ], [ %table.0.i15.be, %rescan.i18.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %ct.0.i14)
  %cmp38.i17 = icmp slt i32 %ct.0.i14, 16
  br i1 %cmp38.i17, label %rescan.i18.while.body.i24_crit_edge, label %rescan.i18.while.end.i31_crit_edge

rescan.i18.while.end.i31_crit_edge:               ; preds = %rescan.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i31

rescan.i18.while.body.i24_crit_edge:              ; preds = %rescan.i18
  br label %while.body.i24

while.body.i24:                                   ; preds = %for.end.i28.while.body.i24_crit_edge, %rescan.i18.while.body.i24_crit_edge
  %ct.139.i20 = phi i32 [ %inc7.i26, %for.end.i28.while.body.i24_crit_edge ], [ %ct.0.i14, %rescan.i18.while.body.i24_crit_edge ]
  %arrayidx.i21 = getelementptr ptr, ptr %table.0.i15, i32 %ct.139.i20
  %16 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %entry2.034.i22 = load ptr, ptr %arrayidx.i21, align 4
  %tobool.not35.i23 = icmp eq ptr %entry2.034.i22, null
  br i1 %tobool.not35.i23, label %for.end.i28, label %for.body.i25

for.body.i25:                                     ; preds = %while.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %table1.i13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %table.0.i15, ptr %table1.i13, align 4
  br label %if.end7.sink.split

for.end.i28:                                      ; preds = %while.body.i24
  %inc7.i26 = add nsw i32 %ct.139.i20, 1
  %exitcond.not.i27 = icmp eq i32 %inc7.i26, 16
  br i1 %exitcond.not.i27, label %for.end.i28.while.end.i31_crit_edge, label %for.end.i28.while.body.i24_crit_edge

for.end.i28.while.body.i24_crit_edge:             ; preds = %for.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i24

for.end.i28.while.end.i31_crit_edge:              ; preds = %for.end.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i31

while.end.i31:                                    ; preds = %for.end.i28.while.end.i31_crit_edge, %rescan.i18.while.end.i31_crit_edge
  %cmp8.i30 = icmp eq ptr %table.0.i15, @resolved
  br i1 %cmp8.i30, label %while.end.i31.rescan.i18.backedge_crit_edge, label %if.end10.i35

while.end.i31.rescan.i18.backedge_crit_edge:      ; preds = %while.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rescan.i18.backedge

if.end10.i35:                                     ; preds = %while.end.i31
  %cmp11.i34 = icmp eq ptr %table.0.i15, @unresolved
  br i1 %cmp11.i34, label %if.end10.i35.rescan.i18.backedge_crit_edge, label %if.end10.i35.if.end7_crit_edge

if.end10.i35.if.end7_crit_edge:                   ; preds = %if.end10.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end10.i35.rescan.i18.backedge_crit_edge:       ; preds = %if.end10.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %rescan.i18.backedge

rescan.i18.backedge:                              ; preds = %if.end10.i35.rescan.i18.backedge_crit_edge, %while.end.i31.rescan.i18.backedge_crit_edge
  %table.0.i15.be = phi ptr [ @proxies, %if.end10.i35.rescan.i18.backedge_crit_edge ], [ @unresolved, %while.end.i31.rescan.i18.backedge_crit_edge ]
  br label %rescan.i18

if.end7.sink.split:                               ; preds = %for.body.i25, %for.body.i
  %ct.139.i20.lcssa.sink = phi i32 [ %ct.139.i20, %for.body.i25 ], [ %ct.139.i, %for.body.i ]
  %entry1.0.ph = phi ptr [ %entry2.034.i22, %for.body.i25 ], [ %entry2.034.i, %for.body.i ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ct.139.i20.lcssa.sink, ptr %1, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.end10.i35.if.end7_crit_edge, %if.else.if.end7_crit_edge, %if.end10.i.if.end7_crit_edge
  %entry1.0 = phi ptr [ %11, %if.else.if.end7_crit_edge ], [ %entry1.0.ph, %if.end7.sink.split ], [ null, %if.end10.i.if.end7_crit_edge ], [ null, %if.end10.i35.if.end7_crit_edge ]
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aarp_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.6) #9
  br label %if.end31

if.else:                                          ; preds = %entry
  %target_addr = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 4
  %3 = ptrtoint ptr %target_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %target_addr, align 4
  %conv = zext i16 %4 to i32
  %s_node = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s_node, align 2
  %conv3 = zext i8 %6 to i32
  %dev = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not, ptr @.str.8, ptr %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv3, ptr noundef nonnull %spec.select) #9
  %hwaddr = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef %hwaddr) #9
  %expires_at = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 3
  %9 = ptrtoint ptr %expires_at to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expires_at, align 4
  %sub = sub i32 %10, %2
  %sub.frozen = freeze i32 %sub
  %div.i = udiv i32 %sub.frozen, 100
  %11 = mul i32 %div.i, 100
  %rem.i.decomposed = sub i32 %sub.frozen, %11
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @dt2str.buf, ptr noundef nonnull @.str.18, i32 noundef %div.i, i32 noundef %rem.i.decomposed) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, ptr noundef nonnull @dt2str.buf) #9
  %table = getelementptr inbounds %struct.aarp_iter_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table, align 4
  %cmp6 = icmp eq ptr %13, @unresolved
  br i1 %cmp6, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v, align 4
  %sub9 = sub i32 %2, %15
  %sub9.frozen = freeze i32 %sub9
  %div.i52 = udiv i32 %sub9.frozen, 100
  %16 = mul i32 %div.i52, 100
  %rem.i53.decomposed = sub i32 %sub9.frozen, %16
  %call.i54 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @dt2str.buf, ptr noundef nonnull @.str.18, i32 noundef %div.i52, i32 noundef %rem.i53.decomposed) #9
  %xmit_count = getelementptr inbounds %struct.aarp_entry, ptr %v, i32 0, i32 7
  %17 = ptrtoint ptr %xmit_count to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %xmit_count, align 2
  %conv11 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, ptr noundef nonnull @dt2str.buf, i32 noundef %conv11) #9
  br label %if.end

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.12) #9
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then8
  %19 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table, align 4
  %cmp14 = icmp eq ptr %20, @resolved
  br i1 %cmp14, label %if.end.cond.end29_crit_edge, label %cond.false17

if.end.cond.end29_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

cond.false17:                                     ; preds = %if.end
  %cmp19 = icmp eq ptr %20, @unresolved
  br i1 %cmp19, label %cond.false17.cond.end29_crit_edge, label %cond.false22

cond.false17.cond.end29_crit_edge:                ; preds = %cond.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

cond.false22:                                     ; preds = %cond.false17
  call void @__sanitizer_cov_trace_pc() #11
  %cmp24 = icmp eq ptr %20, @proxies
  %cond26 = select i1 %cmp24, ptr @.str.16, ptr @.str.17
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false22, %cond.false17.cond.end29_crit_edge, %if.end.cond.end29_crit_edge
  %cond30 = phi ptr [ @.str.14, %if.end.cond.end29_crit_edge ], [ %cond26, %cond.false22 ], [ @.str.15, %cond.false17.cond.end29_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond30) #9
  br label %if.end31

if.end31:                                         ; preds = %cond.end29, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aarp_cleanup_module() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @aarp_timer) #9
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @aarp_notifier) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %0 = load ptr, ptr @aarp_dl, align 4
  tail call void @unregister_snap_client(ptr noundef %0) #9
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %for.body.i

for.body.i:                                       ; preds = %__aarp_expire_all.exit18.i.for.body.i_crit_edge, %entry
  %ct.019.i = phi i32 [ 0, %entry ], [ %inc.i, %__aarp_expire_all.exit18.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %ct.019.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not4.i.i = icmp eq ptr %2, null
  br i1 %tobool.not4.i.i, label %for.body.i.__aarp_expire_all.exit.i_crit_edge, label %for.body.i.while.body.i.i_crit_edge

for.body.i.while.body.i.i_crit_edge:              ; preds = %for.body.i
  br label %while.body.i.i

for.body.i.__aarp_expire_all.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_all.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.while.body.i.i_crit_edge
  %3 = phi ptr [ %8, %while.body.i.i.while.body.i.i_crit_edge ], [ %2, %for.body.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.aarp_entry, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx.i, align 4
  %packet_queue.i.i.i = getelementptr inbounds %struct.aarp_entry, ptr %3, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i.i) #9
  tail call void @kfree(ptr noundef nonnull %3) #9
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %while.body.i.i.__aarp_expire_all.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.__aarp_expire_all.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_all.exit.i

__aarp_expire_all.exit.i:                         ; preds = %while.body.i.i.__aarp_expire_all.exit.i_crit_edge, %for.body.i.__aarp_expire_all.exit.i_crit_edge
  %arrayidx1.i = getelementptr [16 x ptr], ptr @unresolved, i32 0, i32 %ct.019.i
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not4.i7.i = icmp eq ptr %10, null
  br i1 %tobool.not4.i7.i, label %__aarp_expire_all.exit.i.__aarp_expire_all.exit12.i_crit_edge, label %__aarp_expire_all.exit.i.while.body.i11.i_crit_edge

__aarp_expire_all.exit.i.while.body.i11.i_crit_edge: ; preds = %__aarp_expire_all.exit.i
  br label %while.body.i11.i

__aarp_expire_all.exit.i.__aarp_expire_all.exit12.i_crit_edge: ; preds = %__aarp_expire_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_all.exit12.i

while.body.i11.i:                                 ; preds = %while.body.i11.i.while.body.i11.i_crit_edge, %__aarp_expire_all.exit.i.while.body.i11.i_crit_edge
  %11 = phi ptr [ %16, %while.body.i11.i.while.body.i11.i_crit_edge ], [ %10, %__aarp_expire_all.exit.i.while.body.i11.i_crit_edge ]
  %next.i8.i = getelementptr inbounds %struct.aarp_entry, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %next.i8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next.i8.i, align 4
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx1.i, align 4
  %packet_queue.i.i9.i = getelementptr inbounds %struct.aarp_entry, ptr %11, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i9.i) #9
  tail call void @kfree(ptr noundef nonnull %11) #9
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i10.i = icmp eq ptr %16, null
  br i1 %tobool.not.i10.i, label %while.body.i11.i.__aarp_expire_all.exit12.i_crit_edge, label %while.body.i11.i.while.body.i11.i_crit_edge

while.body.i11.i.while.body.i11.i_crit_edge:      ; preds = %while.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i11.i

while.body.i11.i.__aarp_expire_all.exit12.i_crit_edge: ; preds = %while.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_all.exit12.i

__aarp_expire_all.exit12.i:                       ; preds = %while.body.i11.i.__aarp_expire_all.exit12.i_crit_edge, %__aarp_expire_all.exit.i.__aarp_expire_all.exit12.i_crit_edge
  %arrayidx2.i = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %ct.019.i
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not4.i13.i = icmp eq ptr %18, null
  br i1 %tobool.not4.i13.i, label %__aarp_expire_all.exit12.i.__aarp_expire_all.exit18.i_crit_edge, label %__aarp_expire_all.exit12.i.while.body.i17.i_crit_edge

__aarp_expire_all.exit12.i.while.body.i17.i_crit_edge: ; preds = %__aarp_expire_all.exit12.i
  br label %while.body.i17.i

__aarp_expire_all.exit12.i.__aarp_expire_all.exit18.i_crit_edge: ; preds = %__aarp_expire_all.exit12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_all.exit18.i

while.body.i17.i:                                 ; preds = %while.body.i17.i.while.body.i17.i_crit_edge, %__aarp_expire_all.exit12.i.while.body.i17.i_crit_edge
  %19 = phi ptr [ %24, %while.body.i17.i.while.body.i17.i_crit_edge ], [ %18, %__aarp_expire_all.exit12.i.while.body.i17.i_crit_edge ]
  %next.i14.i = getelementptr inbounds %struct.aarp_entry, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %next.i14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next.i14.i, align 4
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %arrayidx2.i, align 4
  %packet_queue.i.i15.i = getelementptr inbounds %struct.aarp_entry, ptr %19, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i15.i) #9
  tail call void @kfree(ptr noundef nonnull %19) #9
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i16.i = icmp eq ptr %24, null
  br i1 %tobool.not.i16.i, label %while.body.i17.i.__aarp_expire_all.exit18.i_crit_edge, label %while.body.i17.i.while.body.i17.i_crit_edge

while.body.i17.i.while.body.i17.i_crit_edge:      ; preds = %while.body.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i17.i

while.body.i17.i.__aarp_expire_all.exit18.i_crit_edge: ; preds = %while.body.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_all.exit18.i

__aarp_expire_all.exit18.i:                       ; preds = %while.body.i17.i.__aarp_expire_all.exit18.i_crit_edge, %__aarp_expire_all.exit12.i.__aarp_expire_all.exit18.i_crit_edge
  %inc.i = add nuw nsw i32 %ct.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %aarp_purge.exit, label %__aarp_expire_all.exit18.i.for.body.i_crit_edge

__aarp_expire_all.exit18.i.for.body.i_crit_edge:  ; preds = %__aarp_expire_all.exit18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

aarp_purge.exit:                                  ; preds = %__aarp_expire_all.exit18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__aarp_resolved(ptr nocapture noundef %list, ptr noundef %a, i32 noundef %hash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %tobool.not22 = icmp eq ptr %1, null
  br i1 %tobool.not22, label %entry.while.end8_crit_edge, label %while.body.lr.ph

entry.while.end8_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end8

while.body.lr.ph:                                 ; preds = %entry
  %next = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 8
  %arrayidx = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %hash
  %packet_queue = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 1
  %expires_at = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 3
  %hwaddr = getelementptr inbounds %struct.aarp_entry, ptr %a, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %16, %if.end.while.body_crit_edge ]
  %list.addr.023 = phi ptr [ %list, %while.body.lr.ph ], [ %list.addr.1, %if.end.while.body_crit_edge ]
  %cmp = icmp eq ptr %2, %a
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, ptr @unresolved_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr @unresolved_count, align 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %6 = ptrtoint ptr %list.addr.023 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %list.addr.023, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  store ptr %8, ptr %next, align 4
  store ptr %a, ptr %arrayidx, align 4
  %call19 = tail call ptr @skb_dequeue(ptr noundef %packet_queue) #9
  %cmp4.not20 = icmp eq ptr %call19, null
  br i1 %cmp4.not20, label %if.then.if.end_crit_edge, label %if.then.while.body5_crit_edge

if.then.while.body5_crit_edge:                    ; preds = %if.then
  br label %while.body5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %if.then.while.body5_crit_edge
  %call21 = phi ptr [ %call, %while.body5.while.body5_crit_edge ], [ %call19, %if.then.while.body5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = load i32, ptr @sysctl_aarp_expiry_time, align 4
  %mul = mul i32 %10, 10
  %add = add i32 %mul, %9
  %11 = ptrtoint ptr %expires_at to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %expires_at, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ddp_dl to i32))
  %12 = load ptr, ptr @ddp_dl, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %request, align 4
  %call6 = tail call i32 %14(ptr noundef %12, ptr noundef nonnull %call21, ptr noundef %hwaddr) #9
  %call = tail call ptr @skb_dequeue(ptr noundef %packet_queue) #9
  %cmp4.not = icmp eq ptr %call, null
  br i1 %cmp4.not, label %while.body5.if.end_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body5

while.body5.if.end_crit_edge:                     ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %next7 = getelementptr inbounds %struct.aarp_entry, ptr %2, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %if.else, %while.body5.if.end_crit_edge, %if.then.if.end_crit_edge
  %list.addr.1 = phi ptr [ %next7, %if.else ], [ %list.addr.023, %if.then.if.end_crit_edge ], [ %list.addr.023, %while.body5.if.end_crit_edge ]
  %15 = ptrtoint ptr %list.addr.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.addr.1, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.while.end8_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end8_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end8

while.end8:                                       ; preds = %if.end.while.end8_crit_edge, %entry.while.end8_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__aarp_proxy_find(ptr noundef readnone %dev, ptr noundef readonly %sa) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %sa, i32 0, i32 1
  %0 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_node, align 2
  %2 = urem i8 %1, 15
  %rem = zext i8 %2 to i32
  %arrayidx = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %rem
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not20.i = icmp eq ptr %4, null
  br i1 %tobool.not20.i, label %entry.__aarp_find_entry.exit_crit_edge, label %while.body.lr.ph.i

entry.__aarp_find_entry.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_find_entry.exit

while.body.lr.ph.i:                               ; preds = %entry
  %5 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sa, align 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %list.addr.021.i = phi ptr [ %4, %while.body.lr.ph.i ], [ %14, %if.end.i.while.body.i_crit_edge ]
  %target_addr.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4
  %7 = ptrtoint ptr %target_addr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp.i = icmp eq i16 %8, %6
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %s_node.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_node.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %1)
  %cmp8.i = icmp eq i8 %10, %1
  br i1 %cmp8.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %dev11.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 5
  %11 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11.i, align 4
  %cmp12.i = icmp eq ptr %12, %dev
  br i1 %cmp12.i, label %land.lhs.true10.i.__aarp_find_entry.exit_crit_edge, label %land.lhs.true10.i.if.end.i_crit_edge

land.lhs.true10.i.if.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true10.i.__aarp_find_entry.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_find_entry.exit

if.end.i:                                         ; preds = %land.lhs.true10.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %list.addr.021.i, i32 0, i32 8
  %13 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i.__aarp_find_entry.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.__aarp_find_entry.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_find_entry.exit

__aarp_find_entry.exit:                           ; preds = %if.end.i.__aarp_find_entry.exit_crit_edge, %land.lhs.true10.i.__aarp_find_entry.exit_crit_edge, %entry.__aarp_find_entry.exit_crit_edge
  %list.addr.0.lcssa.i = phi ptr [ null, %entry.__aarp_find_entry.exit_crit_edge ], [ null, %if.end.i.__aarp_find_entry.exit_crit_edge ], [ %list.addr.021.i, %land.lhs.true10.i.__aarp_find_entry.exit_crit_edge ]
  %tobool.not = icmp eq ptr %list.addr.0.lcssa.i, null
  %spec.select = select i1 %tobool.not, ptr null, ptr %sa
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aarp_send_reply(ptr noundef %dev, ptr nocapture noundef readonly %us, ptr nocapture noundef readonly %them, ptr noundef %sha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %2 = load ptr, ptr @aarp_dl, align 4
  %header_length = getelementptr inbounds %struct.datalink_proto, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %header_length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %header_length, align 4
  %conv1 = zext i16 %4 to i32
  %add2 = add nuw nsw i32 %add, %conv1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add2, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hard_header_len, align 2
  %conv4 = zext i16 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %7 = load ptr, ptr @aarp_dl, align 4
  %header_length5 = getelementptr inbounds %struct.datalink_proto, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %header_length5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %header_length5, align 4
  %conv6 = zext i16 %9 to i32
  %add7 = add nuw nsw i32 %conv6, %conv4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add7
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 %add7
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %17 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 28) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -32613, ptr %protocol, align 8
  %19 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %19, align 8
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 8
  %23 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 1, ptr %add.ptr.i.i, align 1
  %pa_type = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %pa_type to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 -32613, ptr %pa_type, align 1
  %hw_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %hw_len to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %hw_len, align 1
  %pa_len = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %pa_len to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %pa_len, align 1
  %function = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %function to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 2, ptr %function, align 1
  %hw_src = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 5
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %hw_src to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hw_src, align 4
  %add.ptr.i56 = getelementptr i8, ptr %31, i32 4
  %35 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i56, align 2
  %add.ptr1.i57 = getelementptr i8, ptr %hw_src, i32 4
  %37 = ptrtoint ptr %add.ptr1.i57 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %add.ptr1.i57, align 2
  %pa_src_zero = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %pa_src_zero to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %pa_src_zero, align 1
  %39 = ptrtoint ptr %us to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %us, align 2
  %pa_src_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %pa_src_net to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %pa_src_net, align 1
  %s_node = getelementptr inbounds %struct.atalk_addr, ptr %us, i32 0, i32 1
  %42 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s_node, align 2
  %pa_src_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %pa_src_node to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %pa_src_node, align 1
  %tobool10.not = icmp eq ptr %sha, null
  %hw_dst = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 9
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = call ptr @memset(ptr %hw_dst, i32 0, i32 6)
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %sha to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sha, align 4
  %48 = ptrtoint ptr %hw_dst to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %hw_dst, align 4
  %add.ptr.i58 = getelementptr i8, ptr %sha, i32 4
  %49 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i58, align 2
  %add.ptr1.i59 = getelementptr i8, ptr %hw_dst, i32 4
  %51 = ptrtoint ptr %add.ptr1.i59 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i59, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %pa_dst_zero = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %pa_dst_zero to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %pa_dst_zero, align 1
  %53 = ptrtoint ptr %them to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %them, align 2
  %pa_dst_net = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 11
  %55 = ptrtoint ptr %pa_dst_net to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %54, ptr %pa_dst_net, align 1
  %s_node17 = getelementptr inbounds %struct.atalk_addr, ptr %them, i32 0, i32 1
  %56 = ptrtoint ptr %s_node17 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_node17, align 2
  %pa_dst_node = getelementptr inbounds %struct.elapaarp, ptr %add.ptr.i.i, i32 0, i32 12
  %58 = ptrtoint ptr %pa_dst_node to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %pa_dst_node, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aarp_dl to i32))
  %59 = load ptr, ptr @aarp_dl, align 4
  %request = getelementptr inbounds %struct.datalink_proto, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %request, align 4
  %call18 = tail call i32 %61(ptr noundef %59, ptr noundef nonnull %call.i, ptr noundef %sha) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aarp_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i = icmp eq ptr %3, @init_net
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  %or.cond = and i1 %cmp, %cmp.i
  br i1 %or.cond, label %if.then3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %entry
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %for.body

for.body:                                         ; preds = %__aarp_expire_device.exit40.for.body_crit_edge, %if.then3
  %ct.041 = phi i32 [ 0, %if.then3 ], [ %inc, %__aarp_expire_device.exit40.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @resolved, i32 0, i32 %ct.041
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not8.i = icmp eq ptr %5, null
  br i1 %tobool.not8.i, label %for.body.__aarp_expire_device.exit_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.__aarp_expire_device.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %6 = phi ptr [ %13, %if.end.i.while.body.i_crit_edge ], [ %5, %for.body.while.body.i_crit_edge ]
  %n.addr.09.i = phi ptr [ %n.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %arrayidx, %for.body.while.body.i_crit_edge ]
  %dev1.i = getelementptr inbounds %struct.aarp_entry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %cmp.i16 = icmp eq ptr %8, %1
  %next.i = getelementptr inbounds %struct.aarp_entry, ptr %6, i32 0, i32 8
  br i1 %cmp.i16, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %11 = ptrtoint ptr %n.addr.09.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %n.addr.09.i, align 4
  %packet_queue.i.i = getelementptr inbounds %struct.aarp_entry, ptr %6, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i) #9
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %n.addr.1.i = phi ptr [ %n.addr.09.i, %if.then.i ], [ %next.i, %while.body.i.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %n.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %n.addr.1.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.__aarp_expire_device.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.__aarp_expire_device.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit

__aarp_expire_device.exit:                        ; preds = %if.end.i.__aarp_expire_device.exit_crit_edge, %for.body.__aarp_expire_device.exit_crit_edge
  %arrayidx5 = getelementptr [16 x ptr], ptr @unresolved, i32 0, i32 %ct.041
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5, align 4
  %tobool.not8.i17 = icmp eq ptr %15, null
  br i1 %tobool.not8.i17, label %__aarp_expire_device.exit.__aarp_expire_device.exit28_crit_edge, label %__aarp_expire_device.exit.while.body.i22_crit_edge

__aarp_expire_device.exit.while.body.i22_crit_edge: ; preds = %__aarp_expire_device.exit
  br label %while.body.i22

__aarp_expire_device.exit.__aarp_expire_device.exit28_crit_edge: ; preds = %__aarp_expire_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit28

while.body.i22:                                   ; preds = %if.end.i27.while.body.i22_crit_edge, %__aarp_expire_device.exit.while.body.i22_crit_edge
  %16 = phi ptr [ %23, %if.end.i27.while.body.i22_crit_edge ], [ %15, %__aarp_expire_device.exit.while.body.i22_crit_edge ]
  %n.addr.09.i18 = phi ptr [ %n.addr.1.i25, %if.end.i27.while.body.i22_crit_edge ], [ %arrayidx5, %__aarp_expire_device.exit.while.body.i22_crit_edge ]
  %dev1.i19 = getelementptr inbounds %struct.aarp_entry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %dev1.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i19, align 4
  %cmp.i20 = icmp eq ptr %18, %1
  %next.i21 = getelementptr inbounds %struct.aarp_entry, ptr %16, i32 0, i32 8
  br i1 %cmp.i20, label %if.then.i24, label %while.body.i22.if.end.i27_crit_edge

while.body.i22.if.end.i27_crit_edge:              ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i27

if.then.i24:                                      ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %next.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next.i21, align 4
  %21 = ptrtoint ptr %n.addr.09.i18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %n.addr.09.i18, align 4
  %packet_queue.i.i23 = getelementptr inbounds %struct.aarp_entry, ptr %16, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i23) #9
  tail call void @kfree(ptr noundef nonnull %16) #9
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i24, %while.body.i22.if.end.i27_crit_edge
  %n.addr.1.i25 = phi ptr [ %n.addr.09.i18, %if.then.i24 ], [ %next.i21, %while.body.i22.if.end.i27_crit_edge ]
  %22 = ptrtoint ptr %n.addr.1.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %n.addr.1.i25, align 4
  %tobool.not.i26 = icmp eq ptr %23, null
  br i1 %tobool.not.i26, label %if.end.i27.__aarp_expire_device.exit28_crit_edge, label %if.end.i27.while.body.i22_crit_edge

if.end.i27.while.body.i22_crit_edge:              ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i22

if.end.i27.__aarp_expire_device.exit28_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit28

__aarp_expire_device.exit28:                      ; preds = %if.end.i27.__aarp_expire_device.exit28_crit_edge, %__aarp_expire_device.exit.__aarp_expire_device.exit28_crit_edge
  %arrayidx6 = getelementptr [16 x ptr], ptr @proxies, i32 0, i32 %ct.041
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6, align 4
  %tobool.not8.i29 = icmp eq ptr %25, null
  br i1 %tobool.not8.i29, label %__aarp_expire_device.exit28.__aarp_expire_device.exit40_crit_edge, label %__aarp_expire_device.exit28.while.body.i34_crit_edge

__aarp_expire_device.exit28.while.body.i34_crit_edge: ; preds = %__aarp_expire_device.exit28
  br label %while.body.i34

__aarp_expire_device.exit28.__aarp_expire_device.exit40_crit_edge: ; preds = %__aarp_expire_device.exit28
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit40

while.body.i34:                                   ; preds = %if.end.i39.while.body.i34_crit_edge, %__aarp_expire_device.exit28.while.body.i34_crit_edge
  %26 = phi ptr [ %33, %if.end.i39.while.body.i34_crit_edge ], [ %25, %__aarp_expire_device.exit28.while.body.i34_crit_edge ]
  %n.addr.09.i30 = phi ptr [ %n.addr.1.i37, %if.end.i39.while.body.i34_crit_edge ], [ %arrayidx6, %__aarp_expire_device.exit28.while.body.i34_crit_edge ]
  %dev1.i31 = getelementptr inbounds %struct.aarp_entry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %dev1.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i31, align 4
  %cmp.i32 = icmp eq ptr %28, %1
  %next.i33 = getelementptr inbounds %struct.aarp_entry, ptr %26, i32 0, i32 8
  br i1 %cmp.i32, label %if.then.i36, label %while.body.i34.if.end.i39_crit_edge

while.body.i34.if.end.i39_crit_edge:              ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i39

if.then.i36:                                      ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %next.i33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next.i33, align 4
  %31 = ptrtoint ptr %n.addr.09.i30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %n.addr.09.i30, align 4
  %packet_queue.i.i35 = getelementptr inbounds %struct.aarp_entry, ptr %26, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %packet_queue.i.i35) #9
  tail call void @kfree(ptr noundef nonnull %26) #9
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i36, %while.body.i34.if.end.i39_crit_edge
  %n.addr.1.i37 = phi ptr [ %n.addr.09.i30, %if.then.i36 ], [ %next.i33, %while.body.i34.if.end.i39_crit_edge ]
  %32 = ptrtoint ptr %n.addr.1.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %n.addr.1.i37, align 4
  %tobool.not.i38 = icmp eq ptr %33, null
  br i1 %tobool.not.i38, label %if.end.i39.__aarp_expire_device.exit40_crit_edge, label %if.end.i39.while.body.i34_crit_edge

if.end.i39.while.body.i34_crit_edge:              ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i34

if.end.i39.__aarp_expire_device.exit40_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %__aarp_expire_device.exit40

__aarp_expire_device.exit40:                      ; preds = %if.end.i39.__aarp_expire_device.exit40_crit_edge, %__aarp_expire_device.exit28.__aarp_expire_device.exit40_crit_edge
  %inc = add nuw nsw i32 %ct.041, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %__aarp_expire_device.exit40.for.body_crit_edge

__aarp_expire_device.exit40.for.body_crit_edge:   ; preds = %__aarp_expire_device.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %__aarp_expire_device.exit40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @aarp_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @sysctl_aarp_expiry_time, !1, !"sysctl_aarp_expiry_time", i1 false, i1 false}
!1 = !{!"../net/appletalk/aarp.c", i32 39, i32 5}
!2 = !{ptr @sysctl_aarp_tick_time, !3, !"sysctl_aarp_tick_time", i1 false, i1 false}
!3 = !{!"../net/appletalk/aarp.c", i32 40, i32 5}
!4 = !{ptr @sysctl_aarp_retransmit_limit, !5, !"sysctl_aarp_retransmit_limit", i1 false, i1 false}
!5 = !{!"../net/appletalk/aarp.c", i32 41, i32 5}
!6 = !{ptr @sysctl_aarp_resolve_time, !7, !"sysctl_aarp_resolve_time", i1 false, i1 false}
!7 = !{!"../net/appletalk/aarp.c", i32 42, i32 5}
!8 = !{ptr @aarp_send_ddp.ddp_eth_multicast, !9, !"ddp_eth_multicast", i1 false, i1 false}
!9 = !{!"../net/appletalk/aarp.c", i32 545, i32 14}
!10 = !{ptr @__ksymtab_aarp_send_ddp, !11, !"__ksymtab_aarp_send_ddp", i1 false, i1 false}
!11 = !{!"../net/appletalk/aarp.c", i32 677, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/appletalk/aarp.c", i32 882, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @aarp_proto_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @aarp_proto_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @aarp_proto_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/appletalk/aarp.c", i32 885, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aarp_seq_ops, !22, !"aarp_seq_ops", i1 false, i1 false}
!22 = !{!"../net/appletalk/aarp.c", i32 1034, i32 29}
!23 = !{ptr @resolved, !24, !"resolved", i1 false, i1 false}
!24 = !{!"../net/appletalk/aarp.c", i32 71, i32 27}
!25 = !{ptr @unresolved, !26, !"unresolved", i1 false, i1 false}
!26 = !{!"../net/appletalk/aarp.c", i32 72, i32 27}
!27 = !{ptr @proxies, !28, !"proxies", i1 false, i1 false}
!28 = !{!"../net/appletalk/aarp.c", i32 73, i32 27}
!29 = !{ptr @unresolved_count, !30, !"unresolved_count", i1 false, i1 false}
!30 = !{!"../net/appletalk/aarp.c", i32 74, i32 12}
!31 = !{ptr @aarp_timer, !32, !"aarp_timer", i1 false, i1 false}
!32 = !{!"../net/appletalk/aarp.c", i32 80, i32 26}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/appletalk/aarp.c", i32 77, i32 8}
!35 = !{ptr @aarp_lock, !34, !"aarp_lock", i1 false, i1 false}
!36 = !{ptr @aarp_send_probe.aarp_eth_multicast, !37, !"aarp_eth_multicast", i1 false, i1 false}
!37 = !{!"../net/appletalk/aarp.c", i32 208, i32 23}
!38 = !{ptr @skb_queue_head_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!40 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__aarp_send_query.aarp_eth_multicast, !42, !"aarp_eth_multicast", i1 false, i1 false}
!42 = !{!"../net/appletalk/aarp.c", i32 100, i32 23}
!43 = !{ptr @aarp_snap_id, !44, !"aarp_snap_id", i1 false, i1 false}
!44 = !{!"../net/appletalk/aarp.c", i32 874, i32 22}
!45 = !{ptr @aarp_notifier, !46, !"aarp_notifier", i1 false, i1 false}
!46 = !{!"../net/appletalk/aarp.c", i32 870, i32 30}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/appletalk/aarp.c", i32 1009, i32 5}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/appletalk/aarp.c", i32 1012, i32 19}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/appletalk/aarp.c", i32 1015, i32 39}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/appletalk/aarp.c", i32 1016, i32 19}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/appletalk/aarp.c", i32 1017, i32 19}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/appletalk/aarp.c", i32 1020, i32 20}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/appletalk/aarp.c", i32 1024, i32 18}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/appletalk/aarp.c", i32 1025, i32 19}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/appletalk/aarp.c", i32 1026, i32 35}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/appletalk/aarp.c", i32 1027, i32 39}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/appletalk/aarp.c", i32 1028, i32 36}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/appletalk/aarp.c", i32 1029, i32 9}
!71 = !{ptr @dt2str.buf, !72, !"buf", i1 false, i1 false}
!72 = !{!"../net/appletalk/aarp.c", i32 994, i32 14}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/appletalk/aarp.c", i32 996, i32 15}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
