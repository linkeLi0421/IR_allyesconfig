; ModuleID = '/llk/IR_all_yes/net/unix/diag.c_pt.bc'
source_filename = "../net/unix/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [60 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [100 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scm_stat = type { %struct.atomic_t }
%struct.unix_diag_rqlen = type { i32, i32 }
%struct.unix_diag_vfs = type { i32, i32 }
%struct.unix_diag_req = type { i8, i8, i16, i32, i32, i32, [2 x i32] }
%struct.unix_address = type { %struct.refcount_struct, i32, [0 x %struct.sockaddr_un] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.43, ptr }
%union.anon.43 = type { i64 }
%struct.lockref = type { %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { %struct.spinlock, i32 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.142 = type { %struct.callback_head }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.144 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.file = type { %union.anon.42, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.42 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.54 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.54 = type { %struct.callback_head }

@unix_diag_handler = internal constant { %struct.sock_diag_handler, [16 x i8] } { %struct.sock_diag_handler { i8 1, ptr @unix_diag_handler_dump, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_unix_diag__459_340_unix_diag_init6 = internal global ptr @unix_diag_init, section ".initcall6.init", align 4
@__exitcall_unix_diag_exit = internal global ptr @unix_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file460 = internal constant [34 x i8] c"unix_diag.file=net/unix/unix_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [22 x i8] c"unix_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias462 = internal constant [41 x i8] c"unix_diag.alias=net-pf-16-proto-4-type-1\00", section ".modinfo", align 1
@__const.unix_diag_handler_dump.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @unix_diag_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@unix_table_locks = external dso_local global [512 x %struct.spinlock], align 4
@unix_socket_table = external dso_local local_unnamed_addr global [512 x %struct.hlist_head], align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"unix_diag_handler\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../net/unix/diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 325, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 991, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias462, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_unix_diag_exit, ptr @__initcall__kmod_unix_diag__459_340_unix_diag_init6, ptr @unix_diag_exit, ptr @unix_diag_handler, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_diag_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @unix_diag_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sock_diag_unregister(ptr noundef nonnull @unix_diag_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_diag_register(ptr noundef nonnull @unix_diag_handler) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_diag_handler_dump(ptr noundef %skb, ptr noundef %h) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h, align 4
  %sub.i = add i32 %6, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i)
  %cmp = icmp slt i32 %sub.i, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %h, i32 0, i32 2
  %7 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nlmsg_flags, align 2
  %9 = and i16 %8, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.else, label %netlink_dump_start.exit

netlink_dump_start.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #6
  %10 = call ptr @memcpy(ptr %c, ptr @__const.unix_diag_handler_dump.c, i32 24)
  %diag_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 54
  %11 = ptrtoint ptr %diag_nlsk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %diag_nlsk, align 8
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %12, ptr noundef %skb, ptr noundef %h, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %h, i32 16
  %udiag_ino.i = getelementptr i8, ptr %h, i32 24
  %14 = ptrtoint ptr %udiag_ino.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %udiag_ino.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.else.for.body.i.i_crit_edge

if.else.for.body.i.i_crit_edge:                   ; preds = %if.else
  br label %for.body.i.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %if.else.for.body.i.i_crit_edge
  %i.040.i.i = phi i32 [ %inc.i.i, %for.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %i.040.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #6
  %arrayidx1.i.i = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %i.040.i.i
  %16 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -84
  %tobool4.not3843.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool4.not38.i.i = or i1 %tobool.not.i.i, %tobool4.not3843.i.i
  br i1 %tobool4.not38.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body5.i.i_crit_edge

for.body.i.i.for.body5.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body5.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body5.i.i:                                    ; preds = %for.inc.i.i.for.body5.i.i_crit_edge, %for.body.i.i.for.body5.i.i_crit_edge
  %sk.039.i.i = phi ptr [ %add.ptr14.i.i, %for.inc.i.i.for.body5.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.i.i.for.body5.i.i_crit_edge ]
  %call.i.i = tail call i32 @sock_i_ino(ptr noundef nonnull %sk.039.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %15)
  %cmp6.i.i = icmp eq i32 %call.i.i, %15
  br i1 %cmp6.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body5.i.i
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.039.i.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #6, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !23

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end5.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !24

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end5.i_crit_edge:          ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %if.end5.i

for.inc.i.i:                                      ; preds = %for.body5.i.i
  %20 = getelementptr inbounds %struct.sock_common, ptr %sk.039.i.i, i32 0, i32 15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool10.not.i.i = icmp eq ptr %22, null
  %add.ptr14.i.i = getelementptr i8, ptr %22, i32 -84
  %tobool4.not46.i.i = icmp eq ptr %add.ptr14.i.i, null
  %tobool4.not.i.i = or i1 %tobool10.not.i.i, %tobool4.not46.i.i
  br i1 %tobool4.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body5.i.i_crit_edge

for.inc.i.i.for.body5.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #6
  %inc.i.i = add nuw nsw i32 %i.040.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 512
  br i1 %exitcond.not.i.i, label %for.end.i.i.cleanup_crit_edge, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end5.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #6
  %skc_net.i52.i = getelementptr inbounds %struct.sock_common, ptr %sk.039.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %skc_net.i52.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i52.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %4
  br i1 %cmp.i.not.i, label %if.end9.i, label %if.end5.i.if.then31.i_crit_edge

if.end5.i.if.then31.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.end9.i:                                        ; preds = %if.end5.i
  %udiag_cookie.i = getelementptr i8, ptr %h, i32 32
  %call10.i = tail call i32 @sock_diag_check_cookie(ptr noundef nonnull %sk.039.i.i, ptr noundef %udiag_cookie.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %again.preheader.i, label %if.end9.i.if.then31.i_crit_edge

if.end9.i.if.then31.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

again.preheader.i:                                ; preds = %if.end9.i
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %h, i32 0, i32 3
  br label %again.i

again.i:                                          ; preds = %if.then21.i.again.i_crit_edge, %again.preheader.i
  %extra_len.0.i = phi i32 [ %add22.i, %if.then21.i.again.i_crit_edge ], [ 256, %again.preheader.i ]
  %sub.i.i.i = or i32 %extra_len.0.i, 32
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %sub.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool15.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i, label %again.i.if.then31.i_crit_edge, label %if.end17.i

again.i.if.then31.i_crit_edge:                    ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.end17.i:                                       ; preds = %again.i
  %25 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %portid.i, align 4
  %27 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nlmsg_seq.i, align 4
  %29 = ptrtoint ptr %udiag_ino.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %udiag_ino.i, align 4
  %call19.i = tail call fastcc i32 @sk_diag_fill(ptr noundef nonnull %sk.039.i.i, ptr noundef nonnull %call.i.i.i, ptr noundef %add.ptr.i, i32 noundef %26, i32 noundef %28, i32 noundef 0, i32 noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.end26.i

if.then21.i:                                      ; preds = %if.end17.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  %add22.i = add nuw nsw i32 %extra_len.0.i, 256
  %cmp23.i = icmp ugt i32 %extra_len.0.i, 3839
  br i1 %cmp23.i, label %if.then21.i.if.then31.i_crit_edge, label %if.then21.i.again.i_crit_edge

if.then21.i.again.i_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %again.i

if.then21.i.if.then31.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.end26.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %diag_nlsk.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 54
  %31 = ptrtoint ptr %diag_nlsk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %diag_nlsk.i, align 8
  %33 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %portid.i, align 4
  %call.i53.i = tail call i32 @netlink_unicast(ptr noundef %32, ptr noundef nonnull %call.i.i.i, i32 noundef %34, i32 noundef 64) #6
  %35 = tail call i32 @llvm.smin.i32(i32 %call.i53.i, i32 0) #6
  br label %if.then31.i

if.then31.i:                                      ; preds = %if.end26.i, %if.then21.i.if.then31.i_crit_edge, %again.i.if.then31.i_crit_edge, %if.end9.i.if.then31.i_crit_edge, %if.end5.i.if.then31.i_crit_edge
  %err.0.i = phi i32 [ %call10.i, %if.end9.i.if.then31.i_crit_edge ], [ %35, %if.end26.i ], [ -2, %if.end5.i.if.then31.i_crit_edge ], [ %call19.i, %if.then21.i.if.then31.i_crit_edge ], [ -12, %again.i.if.then31.i_crit_edge ]
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #6
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #6, !srcloc !26
  %asmresult.i.i.i.i.i.i.i54.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i54.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i54.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i55.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i54.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i54.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !24

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 3) #6
  br label %cleanup

if.then.i55.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @sk_free(ptr noundef %sk.039.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i55.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %netlink_dump_start.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %err.0.i, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %err.0.i, %if.then10.i.i.i.i.i ], [ %err.0.i, %if.then.i55.i ], [ -2, %for.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unix_diag_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %cmp92 = icmp ult i32 %9, 512
  br i1 %cmp92, label %for.body.lr.ph, label %entry.cleanup45_crit_edge

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

for.body.lr.ph:                                   ; preds = %entry
  %udiag_states = getelementptr i8, ptr %6, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %for.body.lr.ph
  %s_num.095 = phi i32 [ %11, %for.body.lr.ph ], [ 0, %for.inc40.for.body_crit_edge ]
  %slot.093 = phi i32 [ %9, %for.body.lr.ph ], [ %inc41, %for.inc40.for.body_crit_edge ]
  %arrayidx3 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %slot.093
  tail call void @_raw_spin_lock(ptr noundef %arrayidx3) #6
  %arrayidx4 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %slot.093
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %13, null
  %add.ptr = getelementptr i8, ptr %13, i32 -84
  %tobool7.not86101 = icmp eq ptr %add.ptr, null
  %tobool7.not86 = or i1 %tobool.not, %tobool7.not86101
  br i1 %tobool7.not86, label %for.body.for.inc40_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %num.190 = phi i32 [ %num.2, %for.inc.for.body8_crit_edge ], [ 0, %for.body.for.body8_crit_edge ]
  %sk.087 = phi ptr [ %add.ptr35, %for.inc.for.body8_crit_edge ], [ %add.ptr, %for.body.for.body8_crit_edge ]
  %skc_net.i76 = getelementptr inbounds %struct.sock_common, ptr %sk.087, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i76, align 4
  %cmp.i.not = icmp eq ptr %15, %4
  br i1 %cmp.i.not, label %if.end, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body8
  call void @__sanitizer_cov_trace_cmp4(i32 %num.190, i32 %s_num.095)
  %cmp12 = icmp slt i32 %num.190, %s_num.095
  br i1 %cmp12, label %if.end.next_crit_edge, label %if.end14

if.end.next_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %udiag_states to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %udiag_states, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk.087, i32 0, i32 4
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %19 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.next_crit_edge, label %if.end17

if.end14.next_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.end17:                                         ; preds = %if.end14
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portid, align 4
  %24 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlmsg_seq, align 4
  %lock.i = getelementptr inbounds %struct.unix_sock, ptr %sk.087, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %call1.i = tail call i32 @sock_i_ino(ptr noundef nonnull %sk.087) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end17.next_crit_edge, label %sk_diag_dump.exit

if.end17.next_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

sk_diag_dump.exit:                                ; preds = %if.end17
  %call4.i = tail call fastcc i32 @sk_diag_fill(ptr noundef nonnull %sk.087, ptr noundef %skb, ptr noundef %add.ptr.i, i32 noundef %23, i32 noundef %27, i32 noundef 2, i32 noundef %call1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp22 = icmp slt i32 %call4.i, 0
  br i1 %cmp22, label %cleanup, label %sk_diag_dump.exit.next_crit_edge

sk_diag_dump.exit.next_crit_edge:                 ; preds = %sk_diag_dump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

next:                                             ; preds = %sk_diag_dump.exit.next_crit_edge, %if.end17.next_crit_edge, %if.end14.next_crit_edge, %if.end.next_crit_edge
  %inc = add i32 %num.190, 1
  br label %for.inc

for.inc:                                          ; preds = %next, %for.body8.for.inc_crit_edge
  %num.2 = phi i32 [ %inc, %next ], [ %num.190, %for.body8.for.inc_crit_edge ]
  %28 = getelementptr inbounds %struct.sock_common, ptr %sk.087, i32 0, i32 15
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool31.not = icmp eq ptr %30, null
  %add.ptr35 = getelementptr i8, ptr %30, i32 -84
  %tobool7.not105 = icmp eq ptr %add.ptr35, null
  %tobool7.not = or i1 %tobool31.not, %tobool7.not105
  br i1 %tobool7.not, label %for.inc.for.inc40_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8

for.inc.for.inc40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

cleanup:                                          ; preds = %sk_diag_dump.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx3) #6
  br label %cleanup45

for.inc40:                                        ; preds = %for.inc.for.inc40_crit_edge, %for.body.for.inc40_crit_edge
  %num.1.lcssa = phi i32 [ 0, %for.body.for.inc40_crit_edge ], [ %num.2, %for.inc.for.inc40_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx3) #6
  %inc41 = add nuw nsw i32 %slot.093, 1
  %exitcond.not = icmp eq i32 %inc41, 512
  br i1 %exitcond.not, label %for.inc40.cleanup45_crit_edge, label %for.inc40.for.body_crit_edge

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc40.cleanup45_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

cleanup45:                                        ; preds = %for.inc40.cleanup45_crit_edge, %cleanup, %entry.cleanup45_crit_edge
  %slot.085 = phi i32 [ %slot.093, %cleanup ], [ %9, %entry.cleanup45_crit_edge ], [ 512, %for.inc40.cleanup45_crit_edge ]
  %num.3 = phi i32 [ %num.190, %cleanup ], [ %11, %entry.cleanup45_crit_edge ], [ %num.1.lcssa, %for.inc40.cleanup45_crit_edge ]
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %slot.085, ptr %7, align 4
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %num.3, ptr %arrayidx2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sk_diag_fill(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %req, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, i32 noundef %sk_ino) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %rql.i = alloca %struct.unix_diag_rqlen, align 4
  %tmp.i.i = alloca i32, align 4
  %uv.i = alloca %struct.unix_diag_vfs, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 32
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !23

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 20, i32 noundef 16, i32 noundef %flags) #6
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %add.ptr.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %7 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_type, align 2
  %conv = trunc i16 %8 to i8
  %udiag_type = getelementptr i8, ptr %call3.i, i32 17
  %9 = ptrtoint ptr %udiag_type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %udiag_type, align 1
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  %udiag_state = getelementptr i8, ptr %call3.i, i32 18
  %12 = ptrtoint ptr %udiag_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %udiag_state, align 2
  %pad = getelementptr i8, ptr %call3.i, i32 19
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %pad, align 1
  %udiag_ino = getelementptr i8, ptr %call3.i, i32 20
  %14 = ptrtoint ptr %udiag_ino to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sk_ino, ptr %udiag_ino, align 4
  %udiag_cookie = getelementptr i8, ptr %call3.i, i32 24
  tail call void @sock_diag_save_cookie(ptr noundef %sk, ptr noundef %udiag_cookie) #6
  %udiag_show = getelementptr inbounds %struct.unix_diag_req, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %udiag_show, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %addr1.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 1
  %17 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %addr1.i, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end6_crit_edge, label %sk_diag_dump_name.exit

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

sk_diag_dump_name.exit:                           ; preds = %land.lhs.true
  %len.i = getelementptr inbounds %struct.unix_address, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %20, -2
  %name.i = getelementptr inbounds %struct.unix_address, ptr %18, i32 0, i32 2
  %sun_path.i = getelementptr inbounds %struct.sockaddr_un, ptr %name.i, i32 0, i32 1
  %call7.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 0, i32 noundef %sub.i, ptr noundef %sun_path.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool4.not = icmp eq i32 %call7.i, 0
  br i1 %tobool4.not, label %sk_diag_dump_name.exit.if.end6_crit_edge, label %sk_diag_dump_name.exit.if.then.i.i118_crit_edge

sk_diag_dump_name.exit.if.then.i.i118_crit_edge:  ; preds = %sk_diag_dump_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

sk_diag_dump_name.exit.if.end6_crit_edge:         ; preds = %sk_diag_dump_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %sk_diag_dump_name.exit.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %21 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %udiag_show, align 4
  %and8 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end14_crit_edge, label %land.lhs.true10

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end6
  %dentry1.i = getelementptr inbounds %struct.unix_sock, ptr %sk, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dentry1.i, align 4
  %tobool.not.i96 = icmp eq ptr %24, null
  br i1 %tobool.not.i96, label %land.lhs.true10.if.end14_crit_edge, label %sk_diag_dump_vfs.exit

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

sk_diag_dump_vfs.exit:                            ; preds = %land.lhs.true10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uv.i) #6
  %25 = getelementptr inbounds %struct.unix_diag_vfs, ptr %uv.i, i32 0, i32 1
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino.i, align 8
  %30 = ptrtoint ptr %uv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %uv.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 9
  %31 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_sb.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_dev.i, align 8
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %25, align 4
  %call3.i97 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %uv.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i97)
  %tobool12.not = icmp eq i32 %call3.i97, 0
  br i1 %tobool12.not, label %sk_diag_dump_vfs.exit.if.end14_crit_edge, label %sk_diag_dump_vfs.exit.if.then.i.i118_crit_edge

sk_diag_dump_vfs.exit.if.then.i.i118_crit_edge:   ; preds = %sk_diag_dump_vfs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

sk_diag_dump_vfs.exit.if.end14_crit_edge:         ; preds = %sk_diag_dump_vfs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %sk_diag_dump_vfs.exit.if.end14_crit_edge, %land.lhs.true10.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %36 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %udiag_show, align 4
  %and16 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end22_crit_edge, label %land.lhs.true18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true18:                                  ; preds = %if.end14
  %call.i = call ptr @unix_peer_get(ptr noundef %sk) #6
  %tobool.not.i99 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i99, label %land.lhs.true18.if.end22_crit_edge, label %if.then.i100

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then.i100:                                     ; preds = %land.lhs.true18
  %lock.i = getelementptr inbounds %struct.unix_sock, ptr %call.i, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %call2.i = call i32 @sock_i_ino(ptr noundef nonnull %call.i) #6
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #6
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #6, !srcloc !26
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sk_diag_dump_peer.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !24

if.end5.i.i.i.i.i.sk_diag_dump_peer.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_diag_dump_peer.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #6
  br label %sk_diag_dump_peer.exit

if.then.i.i:                                      ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @sk_free(ptr noundef nonnull %call.i) #6
  br label %sk_diag_dump_peer.exit

sk_diag_dump_peer.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sk_diag_dump_peer.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %39 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call2.i, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not, label %sk_diag_dump_peer.exit.if.end22_crit_edge, label %sk_diag_dump_peer.exit.if.then.i.i118_crit_edge

sk_diag_dump_peer.exit.if.then.i.i118_crit_edge:  ; preds = %sk_diag_dump_peer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

sk_diag_dump_peer.exit.if.end22_crit_edge:        ; preds = %sk_diag_dump_peer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %sk_diag_dump_peer.exit.if.end22_crit_edge, %land.lhs.true18.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %40 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %udiag_show, align 4
  %and24 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end30_crit_edge, label %land.lhs.true26

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true26:                                  ; preds = %if.end22
  %42 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %43)
  %cmp.i102 = icmp eq i8 %43, 10
  br i1 %cmp.i102, label %if.then.i106, label %land.lhs.true26.if.end30_crit_edge

land.lhs.true26.if.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then.i106:                                     ; preds = %land.lhs.true26
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %lock.i103 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i103) #6
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i, align 4
  %mul.i = shl i32 %45, 2
  %call.i104 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 3, i32 noundef %mul.i) #6
  %tobool.not.i105 = icmp eq ptr %call.i104, null
  br i1 %tobool.not.i105, label %sk_diag_dump_icons.exit, label %if.end.i107

if.end.i107:                                      ; preds = %if.then.i106
  %add.ptr.i.i = getelementptr i8, ptr %call.i104, i32 4
  %46 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %skb.039.i = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp7.not40.i = icmp eq ptr %skb.039.i, %sk_receive_queue.i
  br i1 %cmp7.not40.i, label %if.end.i107.sk_diag_dump_icons.exit.thread133_crit_edge, label %if.end.i107.for.body.i_crit_edge

if.end.i107.for.body.i_crit_edge:                 ; preds = %if.end.i107
  br label %for.body.i

if.end.i107.sk_diag_dump_icons.exit.thread133_crit_edge: ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_diag_dump_icons.exit.thread133

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %if.end.i107.for.body.i_crit_edge
  %skb.042.i = phi ptr [ %skb.0.i, %cond.end.i.for.body.i_crit_edge ], [ %skb.039.i, %if.end.i107.for.body.i_crit_edge ]
  %i.041.i = phi i32 [ %inc.i, %cond.end.i.for.body.i_crit_edge ], [ 0, %if.end.i107.for.body.i_crit_edge ]
  %47 = getelementptr inbounds %struct.sk_buff, ptr %skb.042.i, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %lock10.i = getelementptr inbounds %struct.unix_sock, ptr %49, i32 0, i32 8
  call void @_raw_spin_lock_nested(ptr noundef %lock10.i, i32 noundef 1) #6
  %peer13.i = getelementptr inbounds %struct.unix_sock, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %peer13.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %peer13.i, align 4
  %tobool14.not.i = icmp eq ptr %51, null
  br i1 %tobool14.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 @sock_i_ino(ptr noundef nonnull %51) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call15.i, %cond.true.i ], [ 0, %for.body.i.cond.end.i_crit_edge ]
  %inc.i = add i32 %i.041.i, 1
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i.i, i32 %i.041.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock10.i) #6
  %53 = ptrtoint ptr %skb.042.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %skb.0.i = load ptr, ptr %skb.042.i, align 4
  %cmp7.not.i = icmp eq ptr %skb.0.i, %sk_receive_queue.i
  br i1 %cmp7.not.i, label %cond.end.i.sk_diag_dump_icons.exit.thread133_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cond.end.i.sk_diag_dump_icons.exit.thread133_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_diag_dump_icons.exit.thread133

sk_diag_dump_icons.exit.thread133:                ; preds = %cond.end.i.sk_diag_dump_icons.exit.thread133_crit_edge, %if.end.i107.sk_diag_dump_icons.exit.thread133_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i103) #6
  br label %if.end30

sk_diag_dump_icons.exit:                          ; preds = %if.then.i106
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lock.i103) #6
  br label %if.then.i.i118

if.end30:                                         ; preds = %sk_diag_dump_icons.exit.thread133, %land.lhs.true26.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %54 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %udiag_show, align 4
  %and32 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end38_crit_edge, label %land.lhs.true34

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true34:                                  ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rql.i) #6
  %56 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %57)
  %cmp.i110 = icmp eq i8 %57, 10
  br i1 %cmp.i110, label %if.then.i112, label %if.else.i

if.then.i112:                                     ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  %qlen.i111 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %qlen.i111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %qlen.i111, align 4
  %60 = ptrtoint ptr %rql.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rql.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 54
  %61 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sk_max_ack_backlog.i, align 8
  br label %sk_diag_show_rqlen.exit

if.else.i:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  %call.i113 = call i32 @unix_inq_len(ptr noundef %sk) #6
  %63 = ptrtoint ptr %rql.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call.i113, ptr %rql.i, align 4
  %call3.i114 = call i32 @unix_outq_len(ptr noundef %sk) #6
  br label %sk_diag_show_rqlen.exit

sk_diag_show_rqlen.exit:                          ; preds = %if.else.i, %if.then.i112
  %storemerge.i = phi i32 [ %call3.i114, %if.else.i ], [ %62, %if.then.i112 ]
  %64 = getelementptr inbounds %struct.unix_diag_rqlen, ptr %rql.i, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge.i, ptr %64, align 4
  %call5.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %rql.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rql.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool36.not = icmp eq i32 %call5.i, 0
  br i1 %tobool36.not, label %sk_diag_show_rqlen.exit.if.end38_crit_edge, label %sk_diag_show_rqlen.exit.if.then.i.i118_crit_edge

sk_diag_show_rqlen.exit.if.then.i.i118_crit_edge: ; preds = %sk_diag_show_rqlen.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

sk_diag_show_rqlen.exit.if.end38_crit_edge:       ; preds = %sk_diag_show_rqlen.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %sk_diag_show_rqlen.exit.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %66 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %udiag_show, align 4
  %and40 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end46_crit_edge, label %land.lhs.true42

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true42:                                  ; preds = %if.end38
  %call43 = call i32 @sock_diag_put_meminfo(ptr noundef %sk, ptr noundef %skb, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.if.end46_crit_edge, label %land.lhs.true42.if.then.i.i118_crit_edge

land.lhs.true42.if.then.i.i118_crit_edge:         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

land.lhs.true42.if.end46_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true42.if.end46_crit_edge, %if.end38.if.end46_crit_edge
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %68 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %sk_shutdown, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %70 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %tmp.i, align 1
  %call.i116 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool48.not = icmp eq i32 %call.i116, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.if.then.i.i118_crit_edge

if.end46.if.then.i.i118_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

if.end50:                                         ; preds = %if.end46
  %71 = ptrtoint ptr %udiag_show to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %udiag_show, align 4
  %and52 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end58_crit_edge, label %land.lhs.true54

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

land.lhs.true54:                                  ; preds = %if.end50
  %call55 = call fastcc i32 @sk_diag_dump_uid(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true54.if.end58_crit_edge, label %land.lhs.true54.if.then.i.i118_crit_edge

land.lhs.true54.if.then.i.i118_crit_edge:         ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i118

land.lhs.true54.if.end58_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true54.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %73 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %75 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i118:                                   ; preds = %land.lhs.true54.if.then.i.i118_crit_edge, %if.end46.if.then.i.i118_crit_edge, %land.lhs.true42.if.then.i.i118_crit_edge, %sk_diag_show_rqlen.exit.if.then.i.i118_crit_edge, %sk_diag_dump_icons.exit, %sk_diag_dump_peer.exit.if.then.i.i118_crit_edge, %sk_diag_dump_vfs.exit.if.then.i.i118_crit_edge, %sk_diag_dump_name.exit.if.then.i.i118_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %77, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i118.nlmsg_cancel.exit_crit_edge, !prof !23

if.then.i.i118.nlmsg_cancel.exit_crit_edge:       ; preds = %if.then.i.i118
  call void @__sanitizer_cov_trace_pc() #8
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i118
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i118.nlmsg_cancel.exit_crit_edge
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i119 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i120 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i121 = sub i32 %sub.ptr.lhs.cast.i.i119, %sub.ptr.rhs.cast.i.i120
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i121) #6
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end58, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end58 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_put_meminfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sk_diag_dump_uid(ptr noundef %sk, ptr noundef %nlskb) unnamed_addr #2 align 64 {
entry:
  %uid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #6
  %0 = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 71
  %3 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns.i, align 4
  %call1 = tail call i32 @sock_i_uid(ptr noundef %sk) #6
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call1, 0
  %call3 = tail call i32 @from_kuid_munged(ptr noundef %10, [1 x i32] %.fca.0.insert) #6
  %11 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call3, ptr %uid, align 4
  %call4 = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %uid) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #6
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @unix_peer_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_inq_len(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_outq_len(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_check_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_unix_diag__459_340_unix_diag_init6, !1, !"__initcall__kmod_unix_diag__459_340_unix_diag_init6", i1 false, i1 false}
!1 = !{!"../net/unix/diag.c", i32 340, i32 1}
!2 = !{ptr @__exitcall_unix_diag_exit, !3, !"__exitcall_unix_diag_exit", i1 false, i1 false}
!3 = !{!"../net/unix/diag.c", i32 341, i32 1}
!4 = !{ptr @__UNIQUE_ID_file460, !5, !"__UNIQUE_ID_file460", i1 false, i1 false}
!5 = !{!"../net/unix/diag.c", i32 342, i32 1}
!6 = !{ptr @__UNIQUE_ID_license461, !5, !"__UNIQUE_ID_license461", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias462, !8, !"__UNIQUE_ID_alias462", i1 false, i1 false}
!8 = !{!"../net/unix/diag.c", i32 343, i32 1}
!9 = !{ptr @unix_diag_handler, !10, !"unix_diag_handler", i1 false, i1 false}
!10 = !{!"../net/unix/diag.c", i32 325, i32 39}
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
!22 = !{i64 2148484670, i64 2148484702, i64 2148484731, i64 2148484765, i64 2148484796, i64 2148484819}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148572695}
!26 = !{i64 2148487135, i64 2148487167, i64 2148487196, i64 2148487230, i64 2148487261, i64 2148487284}
!27 = !{i64 2150564266}
!28 = !{i64 2156830117}
