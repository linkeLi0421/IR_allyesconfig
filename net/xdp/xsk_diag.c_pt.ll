; ModuleID = '/llk/IR_all_yes/net/xdp/xsk_diag.c_pt.bc'
source_filename = "../net/xdp/xsk_diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.156, %union.anon.157, [48 x i8], %union.anon.158, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.160, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.156 = type { ptr }
%union.anon.157 = type { i64 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { i32, ptr }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.162, i32, i32, i32, i16, i16, %union.anon.164, i32, %union.anon.165, %union.anon.166, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.162 = type { i32 }
%union.anon.164 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.xdp_diag_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.xdp_diag_ring = type { i32 }
%struct.xdp_diag_umem = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xdp_diag_info = type { i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.114 }
%union.anon.114 = type { [6 x i32], [24 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.file = type { %union.anon.42, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.42 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.54 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.54 = type { %struct.callback_head }
%struct.xdp_sock = type { %struct.sock, [64 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i16, i8, i32, [96 x i8], ptr, %struct.list_head, %struct.spinlock, i64, i64, %struct.list_head, %struct.spinlock, %struct.mutex, ptr, ptr, [32 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.155 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xsk_queue = type { i32, i32, i32, i32, ptr, i64, i64 }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.xsk_buff_pool = type { ptr, ptr, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, %struct.work_struct, %struct.list_head, i32, i16, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, %struct.spinlock, [0 x ptr], [16 x i8] }

@xsk_diag_handler = internal constant { %struct.sock_diag_handler, [16 x i8] } { %struct.sock_diag_handler { i8 44, ptr @xsk_diag_handler_dump, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_xsk_diag__487_208_xsk_diag_init6 = internal global ptr @xsk_diag_init, section ".initcall6.init", align 4
@__exitcall_xsk_diag_exit = internal global ptr @xsk_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file488 = internal constant [31 x i8] c"xsk_diag.file=net/xdp/xsk_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license489 = internal constant [21 x i8] c"xsk_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias490 = internal constant [41 x i8] c"xsk_diag.alias=net-pf-16-proto-4-type-44\00", section ".modinfo", align 1
@__const.xsk_diag_handler_dump.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @xsk_diag_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"xsk_diag_handler\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../net/xdp/xsk_diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 193, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 991, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias490, ptr @__UNIQUE_ID_file488, ptr @__UNIQUE_ID_license489, ptr @__exitcall_xsk_diag_exit, ptr @__initcall__kmod_xsk_diag__487_208_xsk_diag_init6, ptr @xsk_diag_exit, ptr @xsk_diag_handler, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsk_diag_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xsk_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sock_diag_unregister(ptr noundef nonnull @xsk_diag_handler) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_diag_register(ptr noundef nonnull @xsk_diag_handler) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_diag_handler_dump(ptr noundef %nlskb, ptr noundef %hdr) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #4
  %0 = call ptr @memcpy(ptr %c, ptr @__const.xsk_diag_handler_dump.c, i32 24)
  %1 = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr, align 4
  %sub.i = add i32 %7, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %hdr, i32 0, i32 2
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 2
  %10 = and i16 %9, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 54
  %11 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %diag_nlsk, align 8
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end3.netlink_dump_start.exit_crit_edge

if.end3.netlink_dump_start.exit_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %netlink_dump_start.exit

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %module.i, align 4
  br label %netlink_dump_start.exit

netlink_dump_start.exit:                          ; preds = %if.then.i, %if.end3.netlink_dump_start.exit_crit_edge
  %call.i = call i32 @__netlink_dump_start(ptr noundef %12, ptr noundef %nlskb, ptr noundef %hdr, ptr noundef nonnull %c) #4
  br label %cleanup

cleanup:                                          ; preds = %netlink_dump_start.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xsk_diag_dump(ptr noundef %nlskb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %du.i15.i = alloca %struct.xdp_diag_stats, align 8
  %dr.i73.i.i = alloca %struct.xdp_diag_ring, align 4
  %dr.i.i4.i = alloca %struct.xdp_diag_ring, align 4
  %du.i.i = alloca %struct.xdp_diag_umem, align 8
  %dr.i14.i.i = alloca %struct.xdp_diag_ring, align 4
  %dr.i.i.i = alloca %struct.xdp_diag_ring, align 4
  %tmp.i.i = alloca i32, align 4
  %di.i.i = alloca %struct.xdp_diag_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %xdp = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %xdp, i32 noundef 0) #4
  %list = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 51, i32 1
  %10 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list, align 4
  %tobool.not = icmp eq ptr %11, null
  %add.ptr = getelementptr i8, ptr %11, i32 -84
  %tobool4.not6277 = icmp eq ptr %add.ptr, null
  %tobool4.not62 = or i1 %tobool.not, %tobool4.not6277
  br i1 %tobool4.not62, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 16
  %xdiag_show.i = getelementptr i8, ptr %1, i32 24
  %queue_id3.i.i = getelementptr inbounds %struct.xdp_diag_info, ptr %di.i.i, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %du.i.i, i32 24
  %id3.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 1
  %num_pages.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 2
  %chunk_size5.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 3
  %headroom6.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 4
  %queue_id16.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 6
  %flags.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 7
  %refs.i.i = getelementptr inbounds %struct.xdp_diag_umem, ptr %du.i.i, i32 0, i32 8
  %13 = getelementptr inbounds i8, ptr %du.i15.i, i32 32
  %n_rx_invalid.i.i = getelementptr inbounds %struct.xdp_diag_stats, ptr %du.i15.i, i32 0, i32 1
  %n_rx_full.i.i = getelementptr inbounds %struct.xdp_diag_stats, ptr %du.i15.i, i32 0, i32 2
  %n_fill_ring_empty.i.i = getelementptr inbounds %struct.xdp_diag_stats, ptr %du.i15.i, i32 0, i32 3
  %n_tx_ring_empty.i.i = getelementptr inbounds %struct.xdp_diag_stats, ptr %du.i15.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %num.066 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1, %for.inc.for.body_crit_edge ]
  %sk.063 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr27, %for.inc.for.body_crit_edge ]
  %skc_net.i54 = getelementptr inbounds %struct.sock_common, ptr %sk.063, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i54, align 4
  %cmp.i.not = icmp eq ptr %15, %6
  br i1 %cmp.i.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i32 %num.066, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %num.066, i32 %9)
  %cmp = icmp slt i32 %num.066, %9
  br i1 %cmp, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb, align 4
  %sk11 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk11, align 8
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 71
  %20 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_ns.i, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 12
  %28 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid, align 4
  %30 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlmsg_seq, align 4
  %call16 = call i32 @sock_i_ino(ptr noundef nonnull %sk.063) #4
  %34 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

skb_tailroom.exit.i.i:                            ; preds = %if.end9
  %36 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i.i, align 4
  %38 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 32
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.for.end_crit_edge, label %nlmsg_put.exit.i, !prof !22

skb_tailroom.exit.i.i.for.end_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef %nlskb, i32 noundef %29, i32 noundef %33, i32 noundef 20, i32 noundef 16, i32 noundef 2) #4
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.for.end_crit_edge, label %if.end.i

nlmsg_put.exit.i.for.end_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %40 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 44, ptr %add.ptr.i.i, align 4
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk.063, i32 0, i32 45
  %42 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sk_type.i, align 2
  %conv.i55 = trunc i16 %43 to i8
  %xdiag_type.i = getelementptr i8, ptr %call3.i.i, i32 17
  %44 = ptrtoint ptr %xdiag_type.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv.i55, ptr %xdiag_type.i, align 1
  %xdiag_ino.i = getelementptr i8, ptr %call3.i.i, i32 20
  %45 = ptrtoint ptr %xdiag_ino.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call16, ptr %xdiag_ino.i, align 4
  %xdiag_cookie.i = getelementptr i8, ptr %call3.i.i, i32 24
  call void @sock_diag_save_cookie(ptr noundef nonnull %sk.063, ptr noundef %xdiag_cookie.i) #4
  %mutex.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %46 = ptrtoint ptr %xdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xdiag_show.i, align 4
  %and.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %di.i.i) #4
  %dev.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 3
  %48 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.xsk_diag_put_info.exit.i_crit_edge, label %cond.true.i.i

land.lhs.true.i.xsk_diag_put_info.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_put_info.exit.i

cond.true.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ifindex.i.i, align 4
  br label %xsk_diag_put_info.exit.i

xsk_diag_put_info.exit.i:                         ; preds = %cond.true.i.i, %land.lhs.true.i.xsk_diag_put_info.exit.i_crit_edge
  %cond.i.i = phi i32 [ %51, %cond.true.i.i ], [ 0, %land.lhs.true.i.xsk_diag_put_info.exit.i_crit_edge ]
  %52 = ptrtoint ptr %di.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i.i, ptr %di.i.i, align 8
  %queue_id.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 7
  %53 = ptrtoint ptr %queue_id.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %queue_id.i.i, align 8
  %conv.i.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %queue_id3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i.i, ptr %queue_id3.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %di.i.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %di.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %xsk_diag_put_info.exit.i.if.end7.i_crit_edge, label %xsk_diag_put_info.exit.i.if.then.i.i.i_crit_edge

xsk_diag_put_info.exit.i.if.then.i.i.i_crit_edge: ; preds = %xsk_diag_put_info.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

xsk_diag_put_info.exit.i.if.end7.i_crit_edge:     ; preds = %xsk_diag_put_info.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.end7.i:                                        ; preds = %xsk_diag_put_info.exit.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %56 = ptrtoint ptr %xdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xdiag_show.i, align 4
  %and9.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end18.i_crit_edge, label %land.lhs.true11.i

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

land.lhs.true11.i:                                ; preds = %if.end7.i
  %call12.i = call i32 @sock_i_uid(ptr noundef nonnull %sk.063) #4
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call12.i, 0
  %call14.i = call i32 @from_kuid_munged(ptr noundef %27, [1 x i32] %.fca.0.insert.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %58 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call14.i, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool16.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.end18.i_crit_edge, label %land.lhs.true11.i.if.then.i.i.i_crit_edge

land.lhs.true11.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

land.lhs.true11.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true11.i.if.end18.i_crit_edge, %if.end7.i.if.end18.i_crit_edge
  %59 = ptrtoint ptr %xdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xdiag_show.i, align 4
  %and20.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end26.i_crit_edge, label %land.lhs.true22.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

land.lhs.true22.i:                                ; preds = %if.end18.i
  %rx.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 2
  %61 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx.i.i, align 128
  %tobool.not.i2.i = icmp eq ptr %62, null
  br i1 %tobool.not.i2.i, label %land.lhs.true22.i.land.lhs.true.i.i_crit_edge, label %if.end.i3.i

land.lhs.true22.i.land.lhs.true.i.i_crit_edge:    ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

if.end.i3.i:                                      ; preds = %land.lhs.true22.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dr.i.i.i) #4
  %nentries.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %nentries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nentries.i.i.i, align 4
  %65 = ptrtoint ptr %dr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %dr.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %dr.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dr.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i3.i.land.lhs.true.i.i_crit_edge, label %if.end.i3.i.if.then.i.i.i_crit_edge

if.end.i3.i.if.then.i.i.i_crit_edge:              ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.end.i3.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.end.i3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i3.i.land.lhs.true.i.i_crit_edge, %land.lhs.true22.i.land.lhs.true.i.i_crit_edge
  %tx.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 11
  %66 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx.i.i, align 128
  %tobool3.not.i.i = icmp eq ptr %67, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end26.i_crit_edge, label %xsk_diag_put_rings_cfg.exit.i

land.lhs.true.i.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

xsk_diag_put_rings_cfg.exit.i:                    ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dr.i14.i.i) #4
  %nentries.i15.i.i = getelementptr inbounds %struct.xsk_queue, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %nentries.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nentries.i15.i.i, align 4
  %70 = ptrtoint ptr %dr.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %dr.i14.i.i, align 4
  %call.i16.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %dr.i14.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dr.i14.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i.i)
  %tobool24.not.i = icmp eq i32 %call.i16.i.i, 0
  br i1 %tobool24.not.i, label %xsk_diag_put_rings_cfg.exit.i.if.end26.i_crit_edge, label %xsk_diag_put_rings_cfg.exit.i.if.then.i.i.i_crit_edge

xsk_diag_put_rings_cfg.exit.i.if.then.i.i.i_crit_edge: ; preds = %xsk_diag_put_rings_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

xsk_diag_put_rings_cfg.exit.i.if.end26.i_crit_edge: ; preds = %xsk_diag_put_rings_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.i

if.end26.i:                                       ; preds = %xsk_diag_put_rings_cfg.exit.i.if.end26.i_crit_edge, %land.lhs.true.i.i.if.end26.i_crit_edge, %if.end18.i.if.end26.i_crit_edge
  %71 = ptrtoint ptr %xdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %xdiag_show.i, align 4
  %and28.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end34.i_crit_edge, label %land.lhs.true30.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

land.lhs.true30.i:                                ; preds = %if.end26.i
  %pool1.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 6
  %73 = ptrtoint ptr %pool1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pool1.i.i, align 4
  %umem2.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 4
  %75 = ptrtoint ptr %umem2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %umem2.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %du.i.i) #4
  %77 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 0, ptr %12, align 8
  %tobool.not.i5.i = icmp eq ptr %76, null
  br i1 %tobool.not.i5.i, label %land.lhs.true30.i.xsk_diag_put_umem.exit.thread.i_crit_edge, label %if.end.i6.i

land.lhs.true30.i.xsk_diag_put_umem.exit.thread.i_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_put_umem.exit.thread.i

if.end.i6.i:                                      ; preds = %land.lhs.true30.i
  %id.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 11
  %78 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id.i.i, align 8
  %80 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %id3.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 1
  %81 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %size.i.i, align 8
  %83 = ptrtoint ptr %du.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %du.i.i, align 8
  %npgs.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 5
  %84 = ptrtoint ptr %npgs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %npgs.i.i, align 4
  %86 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %num_pages.i.i, align 4
  %chunk_size.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 3
  %87 = ptrtoint ptr %chunk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chunk_size.i.i, align 4
  %89 = ptrtoint ptr %chunk_size5.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %chunk_size5.i.i, align 8
  %headroom.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 2
  %90 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %headroom.i.i, align 8
  %92 = ptrtoint ptr %headroom6.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %headroom6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %74, null
  br i1 %tobool7.not.i.i, label %if.end.i6.i.cond.end14.i.i_crit_edge, label %land.lhs.true.i7.i

if.end.i6.i.cond.end14.i.i_crit_edge:             ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end14.i.i

land.lhs.true.i7.i:                               ; preds = %if.end.i6.i
  %netdev.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %74, i32 0, i32 1
  %93 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %netdev.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %94, null
  br i1 %tobool8.not.i.i, label %land.lhs.true.i7.i.cond.true12.i.i_crit_edge, label %cond.true.i9.i

land.lhs.true.i7.i.cond.true12.i.i_crit_edge:     ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true12.i.i

cond.true.i9.i:                                   ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex.i8.i = getelementptr inbounds %struct.net_device, ptr %94, i32 0, i32 17
  %95 = ptrtoint ptr %ifindex.i8.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ifindex.i8.i, align 4
  br label %cond.true12.i.i

cond.true12.i.i:                                  ; preds = %cond.true.i9.i, %land.lhs.true.i7.i.cond.true12.i.i_crit_edge
  %.sink.i.i = phi i32 [ %96, %cond.true.i9.i ], [ 0, %land.lhs.true.i7.i.cond.true12.i.i_crit_edge ]
  %97 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.sink.i.i, ptr %12, align 8
  %queue_id.i10.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %74, i32 0, i32 9
  %98 = ptrtoint ptr %queue_id.i10.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %queue_id.i10.i, align 4
  %conv.i11.i = zext i16 %99 to i32
  br label %cond.end14.i.i

cond.end14.i.i:                                   ; preds = %cond.true12.i.i, %if.end.i6.i.cond.end14.i.i_crit_edge
  %cond15.i.i = phi i32 [ %conv.i11.i, %cond.true12.i.i ], [ 0, %if.end.i6.i.cond.end14.i.i_crit_edge ]
  %100 = ptrtoint ptr %queue_id16.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %cond15.i.i, ptr %queue_id16.i.i, align 4
  %zc.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 9
  %101 = ptrtoint ptr %zc.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %zc.i.i, align 1, !range !23
  %103 = zext i8 %102 to i32
  %104 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %flags.i.i, align 8
  %users.i.i = getelementptr inbounds %struct.xdp_umem, ptr %76, i32 0, i32 7
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #4
  %105 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %users.i.i, align 4
  %107 = ptrtoint ptr %refs.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %refs.i.i, align 4
  %call21.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 5, i32 noundef 40, ptr noundef nonnull %du.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp ne i32 %call21.i.i, 0
  %brmerge.i.i = select i1 %tobool22.not.i.i, i1 true, i1 %tobool7.not.i.i
  br i1 %brmerge.i.i, label %cond.end14.i.i.if.end30.i.i_crit_edge, label %land.lhs.true25.i.i

cond.end14.i.i.if.end30.i.i_crit_edge:            ; preds = %cond.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i.i

land.lhs.true25.i.i:                              ; preds = %cond.end14.i.i
  %fq.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %74, i32 0, i32 10
  %108 = ptrtoint ptr %fq.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fq.i.i, align 128
  %tobool26.not.i.i = icmp eq ptr %109, null
  br i1 %tobool26.not.i.i, label %land.lhs.true25.i.i.if.end30.i.i_crit_edge, label %if.then27.i.i

land.lhs.true25.i.i.if.end30.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dr.i.i4.i) #4
  %nentries.i.i12.i = getelementptr inbounds %struct.xsk_queue, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %nentries.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nentries.i.i12.i, align 4
  %112 = ptrtoint ptr %dr.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %dr.i.i4.i, align 4
  %call.i.i13.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %dr.i.i4.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dr.i.i4.i) #4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %land.lhs.true25.i.i.if.end30.i.i_crit_edge, %cond.end14.i.i.if.end30.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call21.i.i, %cond.end14.i.i.if.end30.i.i_crit_edge ], [ %call.i.i13.i, %if.then27.i.i ], [ 0, %land.lhs.true25.i.i.if.end30.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool31.not.i.i = icmp ne i32 %err.0.i.i, 0
  %brmerge72.i.i = select i1 %tobool31.not.i.i, i1 true, i1 %tobool7.not.i.i
  br i1 %brmerge72.i.i, label %if.end30.i.i.xsk_diag_put_umem.exit.i_crit_edge, label %land.lhs.true34.i.i

if.end30.i.i.xsk_diag_put_umem.exit.i_crit_edge:  ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_put_umem.exit.i

land.lhs.true34.i.i:                              ; preds = %if.end30.i.i
  %cq.i.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %74, i32 0, i32 11
  %113 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cq.i.i, align 4
  %tobool35.not.i.i = icmp eq ptr %114, null
  br i1 %tobool35.not.i.i, label %land.lhs.true34.i.i.xsk_diag_put_umem.exit.thread.i_crit_edge, label %if.then36.i.i

land.lhs.true34.i.i.xsk_diag_put_umem.exit.thread.i_crit_edge: ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_put_umem.exit.thread.i

if.then36.i.i:                                    ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dr.i73.i.i) #4
  %nentries.i74.i.i = getelementptr inbounds %struct.xsk_queue, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %nentries.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nentries.i74.i.i, align 4
  %117 = ptrtoint ptr %dr.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %dr.i73.i.i, align 4
  %call.i75.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %dr.i73.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dr.i73.i.i) #4
  br label %xsk_diag_put_umem.exit.i

xsk_diag_put_umem.exit.thread.i:                  ; preds = %land.lhs.true34.i.i.xsk_diag_put_umem.exit.thread.i_crit_edge, %land.lhs.true30.i.xsk_diag_put_umem.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %du.i.i) #4
  br label %if.end34.i

xsk_diag_put_umem.exit.i:                         ; preds = %if.then36.i.i, %if.end30.i.i.xsk_diag_put_umem.exit.i_crit_edge
  %retval.0.i14.i = phi i32 [ %err.0.i.i, %if.end30.i.i.xsk_diag_put_umem.exit.i_crit_edge ], [ %call.i75.i.i, %if.then36.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %du.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i14.i)
  %tobool32.not.i = icmp eq i32 %retval.0.i14.i, 0
  br i1 %tobool32.not.i, label %xsk_diag_put_umem.exit.i.if.end34.i_crit_edge, label %xsk_diag_put_umem.exit.i.if.then.i.i.i_crit_edge

xsk_diag_put_umem.exit.i.if.then.i.i.i_crit_edge: ; preds = %xsk_diag_put_umem.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

xsk_diag_put_umem.exit.i.if.end34.i_crit_edge:    ; preds = %xsk_diag_put_umem.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %xsk_diag_put_umem.exit.i.if.end34.i_crit_edge, %xsk_diag_put_umem.exit.thread.i, %if.end26.i.if.end34.i_crit_edge
  %118 = ptrtoint ptr %xdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xdiag_show.i, align 4
  %and36.i = and i32 %119, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end42.i_crit_edge, label %land.lhs.true38.i

if.end34.i.if.end42.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

land.lhs.true38.i:                                ; preds = %if.end34.i
  %call39.i = call i32 @sock_diag_put_meminfo(ptr noundef nonnull %sk.063, ptr noundef %nlskb, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %land.lhs.true38.i.if.end42.i_crit_edge, label %land.lhs.true38.i.if.then.i.i.i_crit_edge

land.lhs.true38.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

land.lhs.true38.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true38.i.if.end42.i_crit_edge, %if.end34.i.if.end42.i_crit_edge
  %120 = ptrtoint ptr %xdiag_show.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %xdiag_show.i, align 4
  %and44.i = and i32 %121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end42.i.xsk_diag_fill.exit_crit_edge, label %land.lhs.true46.i

if.end42.i.xsk_diag_fill.exit_crit_edge:          ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_fill.exit

land.lhs.true46.i:                                ; preds = %if.end42.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %du.i15.i) #4
  %122 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 0, ptr %13, align 8
  %rx_dropped.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 14
  %123 = ptrtoint ptr %rx_dropped.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %rx_dropped.i.i, align 8
  %125 = ptrtoint ptr %du.i15.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %du.i15.i, align 8
  %rx.i16.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 2
  %126 = ptrtoint ptr %rx.i16.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx.i16.i, align 128
  %tobool.not.i.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true46.i.xskq_nb_invalid_descs.exit.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true46.i.xskq_nb_invalid_descs.exit.i.i_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xskq_nb_invalid_descs.exit.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #6
  %invalid_descs.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %127, i32 0, i32 5
  %128 = ptrtoint ptr %invalid_descs.i.i.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %invalid_descs.i.i.i, align 8
  br label %xskq_nb_invalid_descs.exit.i.i

xskq_nb_invalid_descs.exit.i.i:                   ; preds = %cond.true.i.i.i, %land.lhs.true46.i.xskq_nb_invalid_descs.exit.i.i_crit_edge
  %cond.i.i.i = phi i64 [ %129, %cond.true.i.i.i ], [ 0, %land.lhs.true46.i.xskq_nb_invalid_descs.exit.i.i_crit_edge ]
  %130 = ptrtoint ptr %n_rx_invalid.i.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %cond.i.i.i, ptr %n_rx_invalid.i.i, align 8
  %rx_queue_full.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 15
  %131 = ptrtoint ptr %rx_queue_full.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %rx_queue_full.i.i, align 64
  %133 = ptrtoint ptr %n_rx_full.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %n_rx_full.i.i, align 8
  %pool.i.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 6
  %134 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pool.i.i, align 4
  %tobool.not.i17.i = icmp eq ptr %135, null
  br i1 %tobool.not.i17.i, label %xskq_nb_invalid_descs.exit.i.i.cond.end.i.i_crit_edge, label %cond.true.i19.i

xskq_nb_invalid_descs.exit.i.i.cond.end.i.i_crit_edge: ; preds = %xskq_nb_invalid_descs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i.i

cond.true.i19.i:                                  ; preds = %xskq_nb_invalid_descs.exit.i.i
  %fq.i18.i = getelementptr inbounds %struct.xsk_buff_pool, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %fq.i18.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fq.i18.i, align 128
  %tobool.not.i13.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i13.i.i, label %cond.true.i19.i.cond.end.i.i_crit_edge, label %cond.true.i14.i.i

cond.true.i19.i.cond.end.i.i_crit_edge:           ; preds = %cond.true.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i.i

cond.true.i14.i.i:                                ; preds = %cond.true.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  %queue_empty_descs.i.i.i = getelementptr inbounds %struct.xsk_queue, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %queue_empty_descs.i.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %queue_empty_descs.i.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i14.i.i, %cond.true.i19.i.cond.end.i.i_crit_edge, %xskq_nb_invalid_descs.exit.i.i.cond.end.i.i_crit_edge
  %cond.i20.i = phi i64 [ 0, %xskq_nb_invalid_descs.exit.i.i.cond.end.i.i_crit_edge ], [ %139, %cond.true.i14.i.i ], [ 0, %cond.true.i19.i.cond.end.i.i_crit_edge ]
  %140 = ptrtoint ptr %n_fill_ring_empty.i.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %cond.i20.i, ptr %n_fill_ring_empty.i.i, align 8
  %tx.i21.i = getelementptr inbounds %struct.xdp_sock, ptr %sk.063, i32 0, i32 11
  %141 = ptrtoint ptr %tx.i21.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tx.i21.i, align 128
  %tobool.not.i16.i.i = icmp eq ptr %142, null
  br i1 %tobool.not.i16.i.i, label %cond.end.i.i.xsk_diag_put_stats.exit.i_crit_edge, label %cond.true.i23.i.i

cond.end.i.i.xsk_diag_put_stats.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_put_stats.exit.i

cond.true.i23.i.i:                                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %invalid_descs.i17.i.i = getelementptr inbounds %struct.xsk_queue, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %invalid_descs.i17.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %invalid_descs.i17.i.i, align 8
  %145 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %13, align 8
  %queue_empty_descs.i22.i.i = getelementptr inbounds %struct.xsk_queue, ptr %142, i32 0, i32 6
  %146 = ptrtoint ptr %queue_empty_descs.i22.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %queue_empty_descs.i22.i.i, align 8
  br label %xsk_diag_put_stats.exit.i

xsk_diag_put_stats.exit.i:                        ; preds = %cond.true.i23.i.i, %cond.end.i.i.xsk_diag_put_stats.exit.i_crit_edge
  %cond.i24.i.i = phi i64 [ %147, %cond.true.i23.i.i ], [ 0, %cond.end.i.i.xsk_diag_put_stats.exit.i_crit_edge ]
  %148 = ptrtoint ptr %n_tx_ring_empty.i.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %cond.i24.i.i, ptr %n_tx_ring_empty.i.i, align 8
  %call6.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 9, i32 noundef 48, ptr noundef nonnull %du.i15.i) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %du.i15.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool48.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool48.not.i, label %xsk_diag_put_stats.exit.i.xsk_diag_fill.exit_crit_edge, label %xsk_diag_put_stats.exit.i.if.then.i.i.i_crit_edge

xsk_diag_put_stats.exit.i.if.then.i.i.i_crit_edge: ; preds = %xsk_diag_put_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

xsk_diag_put_stats.exit.i.xsk_diag_fill.exit_crit_edge: ; preds = %xsk_diag_put_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xsk_diag_fill.exit

if.then.i.i.i:                                    ; preds = %xsk_diag_put_stats.exit.i.if.then.i.i.i_crit_edge, %land.lhs.true38.i.if.then.i.i.i_crit_edge, %xsk_diag_put_umem.exit.i.if.then.i.i.i_crit_edge, %xsk_diag_put_rings_cfg.exit.i.if.then.i.i.i_crit_edge, %if.end.i3.i.if.then.i.i.i_crit_edge, %land.lhs.true11.i.if.then.i.i.i_crit_edge, %xsk_diag_put_info.exit.i.if.then.i.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 19
  %149 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %150, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !22

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #4
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %151 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i24.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i25.i = ptrtoint ptr %152 to i32
  %sub.ptr.sub.i.i26.i = sub i32 %sub.ptr.lhs.cast.i.i24.i, %sub.ptr.rhs.cast.i.i25.i
  call void @skb_trim(ptr noundef %nlskb, i32 noundef %sub.ptr.sub.i.i26.i) #4
  br label %for.end

xsk_diag_fill.exit:                               ; preds = %xsk_diag_put_stats.exit.i.xsk_diag_fill.exit_crit_edge, %if.end42.i.xsk_diag_fill.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #4
  %153 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %154 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %155 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %xsk_diag_fill.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %inc, %if.end.for.inc_crit_edge ], [ %inc, %xsk_diag_fill.exit ], [ %num.066, %for.body.for.inc_crit_edge ]
  %156 = getelementptr inbounds %struct.sock_common, ptr %sk.063, i32 0, i32 15
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %tobool23.not = icmp eq ptr %158, null
  %add.ptr27 = getelementptr i8, ptr %158, i32 -84
  %tobool4.not80 = icmp eq ptr %add.ptr27, null
  %tobool4.not = or i1 %tobool23.not, %tobool4.not80
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.for.end_crit_edge, %skb_tailroom.exit.i.i.for.end_crit_edge, %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  %num.061 = phi i32 [ %num.066, %nlmsg_cancel.exit.i ], [ 0, %entry.for.end_crit_edge ], [ %num.1, %for.inc.for.end_crit_edge ], [ %num.066, %nlmsg_put.exit.i.for.end_crit_edge ], [ %num.066, %skb_tailroom.exit.i.i.for.end_crit_edge ], [ %num.066, %if.end9.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %xdp) #4
  %159 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %num.061, ptr %7, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 6
  %160 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_put_meminfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_xsk_diag__487_208_xsk_diag_init6, !1, !"__initcall__kmod_xsk_diag__487_208_xsk_diag_init6", i1 false, i1 false}
!1 = !{!"../net/xdp/xsk_diag.c", i32 208, i32 1}
!2 = !{ptr @__exitcall_xsk_diag_exit, !3, !"__exitcall_xsk_diag_exit", i1 false, i1 false}
!3 = !{!"../net/xdp/xsk_diag.c", i32 209, i32 1}
!4 = !{ptr @__UNIQUE_ID_file488, !5, !"__UNIQUE_ID_file488", i1 false, i1 false}
!5 = !{!"../net/xdp/xsk_diag.c", i32 210, i32 1}
!6 = !{ptr @__UNIQUE_ID_license489, !5, !"__UNIQUE_ID_license489", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias490, !8, !"__UNIQUE_ID_alias490", i1 false, i1 false}
!8 = !{!"../net/xdp/xsk_diag.c", i32 211, i32 1}
!9 = !{ptr @xsk_diag_handler, !10, !"xsk_diag_handler", i1 false, i1 false}
!10 = !{!"../net/xdp/xsk_diag.c", i32 193, i32 39}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/net/netlink.h", i32 991, i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i8 0, i8 2}
