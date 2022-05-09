; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_recent.c_pt.bc'
source_filename = "../net/netfilter/xt_recent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.126 }
%union.anon.126 = type { ptr }
%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.xt_action_param = type { %union.anon.147, %union.anon.148, ptr, i32, i16, i8 }
%union.anon.147 = type { ptr }
%union.anon.148 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_recent_mtinfo_v1 = type { i32, i32, i8, i8, [200 x i8], i8, %union.nf_inet_addr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.recent_table = type { %struct.list_head, [200 x i8], %union.nf_inet_addr, i32, i32, i8, %struct.list_head, [0 x %struct.list_head] }
%struct.recent_entry = type { %struct.list_head, %struct.list_head, %union.nf_inet_addr, i16, i8, i8, i16, [0 x i32] }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.recent_net = type { %struct.list_head, ptr }
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
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.128, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.129, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.130, ptr, %struct.address_space, %struct.list_head, %union.anon.131, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.128 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.129 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.130 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.131 = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.recent_iter_state = type { ptr, i32 }

@__UNIQUE_ID_author491 = internal constant [51 x i8] c"xt_recent.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author492 = internal constant [53 x i8] c"xt_recent.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description493 = internal constant [61 x i8] c"xt_recent.description=Xtables: \22recently-seen\22 host matching\00", section ".modinfo", align 1
@__UNIQUE_ID_file494 = internal constant [39 x i8] c"xt_recent.file=net/netfilter/xt_recent\00", section ".modinfo", align 1
@__UNIQUE_ID_license495 = internal constant [22 x i8] c"xt_recent.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [27 x i8] c"xt_recent.alias=ipt_recent\00", section ".modinfo", align 1
@__UNIQUE_ID_alias497 = internal constant [28 x i8] c"xt_recent.alias=ip6t_recent\00", section ".modinfo", align 1
@__param_str_ip_list_tot = internal constant [22 x i8] c"xt_recent.ip_list_tot\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ip_list_tot = internal global i32 100, section ".data..read_mostly", align 4
@__param_ip_list_tot = internal constant %struct.kernel_param { ptr @__param_str_ip_list_tot, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.126 { ptr @ip_list_tot } }, section "__param", align 4
@__UNIQUE_ID_ip_list_tottype498 = internal constant [36 x i8] c"xt_recent.parmtype=ip_list_tot:uint\00", section ".modinfo", align 1
@__param_str_ip_list_hash_size = internal constant [28 x i8] c"xt_recent.ip_list_hash_size\00", align 1
@ip_list_hash_size = internal global i32 0, section ".data..read_mostly", align 4
@__param_ip_list_hash_size = internal constant %struct.kernel_param { ptr @__param_str_ip_list_hash_size, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.126 { ptr @ip_list_hash_size } }, section "__param", align 4
@__UNIQUE_ID_ip_list_hash_sizetype499 = internal constant [42 x i8] c"xt_recent.parmtype=ip_list_hash_size:uint\00", section ".modinfo", align 1
@__param_str_ip_list_perms = internal constant [24 x i8] c"xt_recent.ip_list_perms\00", align 1
@ip_list_perms = internal global i32 420, section ".data..read_mostly", align 4
@__param_ip_list_perms = internal constant %struct.kernel_param { ptr @__param_str_ip_list_perms, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.126 { ptr @ip_list_perms } }, section "__param", align 4
@__UNIQUE_ID_ip_list_permstype500 = internal constant [38 x i8] c"xt_recent.parmtype=ip_list_perms:uint\00", section ".modinfo", align 1
@__param_str_ip_list_uid = internal constant [22 x i8] c"xt_recent.ip_list_uid\00", align 1
@ip_list_uid = internal global i32 0, section ".data..read_mostly", align 4
@__param_ip_list_uid = internal constant %struct.kernel_param { ptr @__param_str_ip_list_uid, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @ip_list_uid } }, section "__param", align 4
@__UNIQUE_ID_ip_list_uidtype501 = internal constant [36 x i8] c"xt_recent.parmtype=ip_list_uid:uint\00", section ".modinfo", align 1
@__param_str_ip_list_gid = internal constant [22 x i8] c"xt_recent.ip_list_gid\00", align 1
@ip_list_gid = internal global i32 0, section ".data..read_mostly", align 4
@__param_ip_list_gid = internal constant %struct.kernel_param { ptr @__param_str_ip_list_gid, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.126 { ptr @ip_list_gid } }, section "__param", align 4
@__UNIQUE_ID_ip_list_gidtype502 = internal constant [36 x i8] c"xt_recent.parmtype=ip_list_gid:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_list_tot503 = internal constant [62 x i8] c"xt_recent.parm=ip_list_tot:number of IPs to remember per list\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_list_hash_size504 = internal constant [72 x i8] c"xt_recent.parm=ip_list_hash_size:size of hash table used to look up IPs\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_list_perms505 = internal constant [72 x i8] c"xt_recent.parm=ip_list_perms:permissions on /proc/net/xt_recent/* files\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_list_uid506 = internal constant [72 x i8] c"xt_recent.parm=ip_list_uid:default owner of /proc/net/xt_recent/* files\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_list_gid507 = internal constant [79 x i8] c"xt_recent.parm=ip_list_gid:default owning group of /proc/net/xt_recent/* files\00", section ".modinfo", align 1
@__param_str_ip_pkt_list_tot = internal constant [26 x i8] c"xt_recent.ip_pkt_list_tot\00", align 1
@ip_pkt_list_tot = internal global i32 0, section ".data..read_mostly", align 4
@__param_ip_pkt_list_tot = internal constant %struct.kernel_param { ptr @__param_str_ip_pkt_list_tot, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.126 { ptr @ip_pkt_list_tot } }, section "__param", align 4
@__UNIQUE_ID_ip_pkt_list_tottype508 = internal constant [40 x i8] c"xt_recent.parmtype=ip_pkt_list_tot:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ip_pkt_list_tot509 = internal constant [87 x i8] c"xt_recent.parm=ip_pkt_list_tot:number of packets per IP address to remember (max. 255)\00", section ".modinfo", align 1
@recent_mt_reg = internal global [4 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"recent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @recent_mt, ptr @recent_mt_check_v0, ptr @recent_mt_destroy, ptr null, ptr null, i32 212, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"recent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @recent_mt, ptr @recent_mt_check_v0, ptr @recent_mt_destroy, ptr null, ptr null, i32 212, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"recent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @recent_mt, ptr @recent_mt_check_v1, ptr @recent_mt_destroy, ptr null, ptr null, i32 228, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"recent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @recent_mt, ptr @recent_mt_check_v1, ptr @recent_mt_destroy, ptr null, ptr null, i32 228, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@recent_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @recent_net_init, ptr null, ptr @recent_net_exit, ptr null, ptr @recent_net_id, i32 12 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_xt_recent__511_762_recent_mt_init6 = internal global ptr @recent_mt_init, section ".initcall6.init", align 4
@__exitcall_recent_mt_exit = internal global ptr @recent_mt_exit, section ".exitcall.exit", align 4
@recent_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@recent_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recent_lock\00", [20 x i8] zeroinitializer }, align 32
@hash_rnd = internal global i32 0, section ".data..read_mostly", align 4
@recent_mt_check.___done = internal global i8 0, section ".data.once", align 1
@recent_mt_check.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@recent_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.recent_mt_check = private unnamed_addr constant [16 x i8] c"recent_mt_check\00", align 1
@recent_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.recent_mt_check, ptr @.str.8, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016xt_recent: Unsupported userspace flags (%08x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_recent.c\00", [38 x i8] zeroinitializer }, align 32
@recent_mt_check._entry_ptr = internal global ptr @recent_mt_check._entry, section ".printk_index", align 4
@recent_mt_check._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@recent_mt_check._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.recent_mt_check, ptr @.str.8, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016xt_recent: hitcount (%u) is larger than allowed maximum (%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@recent_mt_check._entry_ptr.12 = internal global ptr @recent_mt_check._entry.10, section ".printk_index", align 4
@recent_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @recent_mutex, i64 52), ptr getelementptr (i8, ptr @recent_mutex, i64 52) }, ptr @recent_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@recent_mt_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @recent_seq_open, ptr @seq_read, ptr null, ptr @recent_mt_proc_write, ptr @seq_lseek, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"recent_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"recent_mutex\00", [19 x i8] zeroinitializer }, align 32
@recent_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @recent_seq_start, ptr @recent_seq_stop, ptr @recent_seq_next, ptr @recent_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"src=%pI4 ttl: %u last_seen: %lu oldest_pkt: %u\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"src=%pI6 ttl: %u last_seen: %lu oldest_pkt: %u\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %lu\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@recent_mt_proc_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.recent_mt_proc_write = private unnamed_addr constant [21 x i8] c"recent_mt_proc_write\00", align 1
@recent_mt_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.recent_mt_proc_write, ptr @.str.8, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016xt_recent: Need \22+ip\22, \22-ip\22 or \22/\22\0A\00", [57 x i8] zeroinitializer }, align 32
@recent_mt_proc_write._entry_ptr = internal global ptr @recent_mt_proc_write._entry, section ".printk_index", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xt_recent\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 43, i64 45, i64 47]
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"recent_net_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 687, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"recent_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 45, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 102, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 346, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 349, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 364, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"recent_mutex\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"recent_mt_proc_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 627, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 103, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"recent_seq_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 539, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 528, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 531, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 534, i32 19 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 534, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 534, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 593, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [29 x i8] c"../net/netfilter/xt_recent.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 639, i32 37 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_alias497, ptr @__UNIQUE_ID_author491, ptr @__UNIQUE_ID_author492, ptr @__UNIQUE_ID_description493, ptr @__UNIQUE_ID_file494, ptr @__UNIQUE_ID_ip_list_gid507, ptr @__UNIQUE_ID_ip_list_gidtype502, ptr @__UNIQUE_ID_ip_list_hash_size504, ptr @__UNIQUE_ID_ip_list_hash_sizetype499, ptr @__UNIQUE_ID_ip_list_perms505, ptr @__UNIQUE_ID_ip_list_permstype500, ptr @__UNIQUE_ID_ip_list_tot503, ptr @__UNIQUE_ID_ip_list_tottype498, ptr @__UNIQUE_ID_ip_list_uid506, ptr @__UNIQUE_ID_ip_list_uidtype501, ptr @__UNIQUE_ID_ip_pkt_list_tot509, ptr @__UNIQUE_ID_ip_pkt_list_tottype508, ptr @__UNIQUE_ID_license495, ptr @__exitcall_recent_mt_exit, ptr @__initcall__kmod_xt_recent__511_762_recent_mt_init6, ptr @__param_ip_list_gid, ptr @__param_ip_list_hash_size, ptr @__param_ip_list_perms, ptr @__param_ip_list_tot, ptr @__param_ip_list_uid, ptr @__param_ip_pkt_list_tot, ptr @recent_mt_check._entry, ptr @recent_mt_check._entry.10, ptr @recent_mt_check._entry_ptr, ptr @recent_mt_check._entry_ptr.12, ptr @recent_mt_exit, ptr @recent_mt_proc_write._entry, ptr @recent_mt_proc_write._entry_ptr, ptr @recent_net_ops, ptr @recent_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @recent_mt_check.___once_key, ptr @recent_mt_check._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @recent_mt_check._rs.9, ptr @.str.11, ptr @recent_mutex, ptr @recent_mt_proc_ops, ptr @.str.13, ptr @.str.14, ptr @recent_seq_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @recent_mt_proc_write._rs, ptr @.str.20, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_check.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_check._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_check._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_proc_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recent_mt_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @recent_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xt_unregister_matches(ptr noundef nonnull @recent_mt_reg, i32 noundef 4) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @recent_net_ops) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ip_list_tot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @ip_pkt_list_tot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #14, !range !146
  %sub.i = sub nuw nsw i32 32, %2
  %shl = shl nuw i32 1, %sub.i
  store i32 %shl, ptr @ip_list_hash_size, align 4
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @recent_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @xt_register_matches(ptr noundef nonnull @recent_mt_reg, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @recent_net_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @recent_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %addr_mask = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %call1 = tail call fastcc ptr @recent_pernet(ptr noundef %3)
  %4 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr_mask) #14
  %7 = getelementptr inbounds [4 x i32], ptr %addr_mask, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i32], ptr %addr_mask, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i32], ptr %addr_mask, i32 0, i32 3
  %invert = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp = icmp eq i8 %15, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %side = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %6, i32 0, i32 5
  %20 = ptrtoint ptr %side to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %side, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp6 = icmp eq i8 %21, 1
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %storemerge.in = select i1 %cmp6, ptr %daddr, ptr %saddr
  %ttl9 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  br label %if.end22

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %daddr18 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %saddr20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %addr.sroa.0.0.in = select i1 %cmp6, ptr %daddr18, ptr %saddr20
  %addr.sroa.9.0.in = getelementptr inbounds i8, ptr %addr.sroa.0.0.in, i32 12
  %22 = ptrtoint ptr %addr.sroa.9.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %addr.sroa.9.0 = load i32, ptr %addr.sroa.9.0.in, align 4
  %addr.sroa.8.0.in = getelementptr inbounds i8, ptr %addr.sroa.0.0.in, i32 8
  %23 = ptrtoint ptr %addr.sroa.8.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %addr.sroa.8.0 = load i32, ptr %addr.sroa.8.0.in, align 4
  %addr.sroa.7.0.in = getelementptr inbounds i8, ptr %addr.sroa.0.0.in, i32 4
  %24 = ptrtoint ptr %addr.sroa.7.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %addr.sroa.7.0 = load i32, ptr %addr.sroa.7.0.in, align 4
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  br label %if.end22

if.end22:                                         ; preds = %if.else10, %if.then
  %addr.sroa.0.1.in = phi ptr [ %storemerge.in, %if.then ], [ %addr.sroa.0.0.in, %if.else10 ]
  %addr.sroa.7.1 = phi i32 [ 0, %if.then ], [ %addr.sroa.7.0, %if.else10 ]
  %addr.sroa.8.1 = phi i32 [ 0, %if.then ], [ %addr.sroa.8.0, %if.else10 ]
  %addr.sroa.9.1 = phi i32 [ 0, %if.then ], [ %addr.sroa.9.0, %if.else10 ]
  %ttl.0.in = phi ptr [ %ttl9, %if.then ], [ %hop_limit, %if.else10 ]
  %25 = ptrtoint ptr %addr.sroa.0.1.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %addr.sroa.0.1 = load i32, ptr %addr.sroa.0.1.in, align 4
  %26 = ptrtoint ptr %ttl.0.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %ttl.0 = load i8, ptr %ttl.0.in, align 1
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out.i, align 4
  %cmp24.not = icmp eq ptr %28, null
  br i1 %cmp24.not, label %if.end22.if.end31_crit_edge, label %land.lhs.true

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end22
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool26.not = icmp eq ptr %31, null
  br i1 %tobool26.not, label %land.lhs.true.if.then30_crit_edge, label %lor.lhs.false

land.lhs.true.if.then30_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

lor.lhs.false:                                    ; preds = %land.lhs.true
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, %33
  br i1 %cmp.i.not, label %lor.lhs.false.if.end31_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then30

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %land.lhs.true.if.then30_crit_edge
  %inc = add i8 %ttl.0, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %ttl.1 = phi i8 [ %ttl.0, %lor.lhs.false.if.end31_crit_edge ], [ %inc, %if.then30 ], [ %ttl.0, %if.end22.if.end31_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  %name = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %6, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end31
  %t.0.in.i = phi ptr [ %call1, %if.end31 ], [ %t.0.i, %for.body.i.for.cond.i_crit_edge ]
  %34 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %t.0.i = load ptr, ptr %t.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, %call1
  br i1 %cmp.not.i, label %for.cond.i.recent_table_lookup.exit_crit_edge, label %for.body.i

for.cond.i.recent_table_lookup.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_table_lookup.exit

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.recent_table, ptr %t.0.i, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %name2.i, ptr noundef %name) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.recent_table_lookup.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.body.i.recent_table_lookup.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_table_lookup.exit

recent_table_lookup.exit:                         ; preds = %for.body.i.recent_table_lookup.exit_crit_edge, %for.cond.i.recent_table_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %t.0.i, %for.body.i.recent_table_lookup.exit_crit_edge ], [ null, %for.cond.i.recent_table_lookup.exit_crit_edge ]
  %mask = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask, align 4
  %and.i = and i32 %36, %addr.sroa.0.1
  %37 = ptrtoint ptr %addr_mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %addr_mask, align 4
  %arrayidx4.i = getelementptr %struct.recent_table, ptr %retval.0.i, i32 0, i32 2, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i, align 4
  %and5.i = and i32 %39, %addr.sroa.7.1
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and5.i, ptr %7, align 4
  %arrayidx8.i = getelementptr %struct.recent_table, ptr %retval.0.i, i32 0, i32 2, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %42, %addr.sroa.8.1
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and9.i, ptr %8, align 4
  %arrayidx12.i = getelementptr %struct.recent_table, ptr %retval.0.i, i32 0, i32 2, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %45, %addr.sroa.9.1
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and13.i, ptr %9, align 4
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state.i, align 4
  %pf.i207 = getelementptr inbounds %struct.nf_hook_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %pf.i207 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pf.i207, align 1
  %conv34 = zext i8 %50 to i16
  %check_set = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %6, i32 0, i32 2
  %51 = ptrtoint ptr %check_set to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %check_set, align 4
  %53 = and i8 %52, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool36.not = icmp eq i8 %53, 0
  %spec.select = select i1 %tobool36.not, i8 0, i8 %ttl.1
  %call39 = call fastcc ptr @recent_entry_lookup(ptr noundef %retval.0.i, ptr noundef nonnull %addr_mask, i16 noundef zeroext %conv34, i8 noundef zeroext %spec.select)
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.then42, label %if.end58

if.then42:                                        ; preds = %recent_table_lookup.exit
  %54 = and i8 %52, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool46.not = icmp eq i8 %54, 0
  br i1 %tobool46.not, label %if.then42.out_crit_edge, label %if.end48

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end48:                                         ; preds = %if.then42
  %call51 = call fastcc ptr @recent_entry_init(ptr noundef %retval.0.i, ptr noundef nonnull %addr_mask, i16 noundef zeroext %conv34, i8 noundef zeroext %ttl.1)
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.then54, label %if.end48.if.end55_crit_edge

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %55 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %hotdrop, align 2
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end48.if.end55_crit_edge
  %lnot = xor i1 %tobool, true
  br label %out

if.end58:                                         ; preds = %recent_table_lookup.exit
  %conv60 = zext i8 %52 to i32
  %and61 = and i32 %conv60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else67, label %if.then63

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %lnot65 = xor i1 %tobool, true
  br label %if.end119

if.else67:                                        ; preds = %if.end58
  %and70 = and i32 %conv60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else76, label %if.then72

if.then72:                                        ; preds = %if.else67
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call39) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then72.list_del.exit.i_crit_edge

if.then72.list_del.exit.i_crit_edge:              ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call39, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call39, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then72.list_del.exit.i_crit_edge
  %62 = ptrtoint ptr %call39 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %call39, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call39, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lru_list.i = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 1
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list.i) #14
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %list_del.exit.i.recent_entry_remove.exit_crit_edge

list_del.exit.i.recent_entry_remove.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_entry_remove.exit

if.end.i.i6.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i4.i, align 4
  %66 = ptrtoint ptr %lru_list.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lru_list.i, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i5.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %recent_entry_remove.exit

recent_entry_remove.exit:                         ; preds = %if.end.i.i6.i, %list_del.exit.i.recent_entry_remove.exit_crit_edge
  %70 = ptrtoint ptr %lru_list.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %lru_list.i, align 4
  %prev.i7.i = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i, align 4
  tail call void @kfree(ptr noundef nonnull %call39) #14
  %entries.i = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 4
  %72 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %entries.i, align 4
  %dec.i = add i32 %73, -1
  store i32 %dec.i, ptr %entries.i, align 4
  %lnot74 = xor i1 %tobool, true
  br label %if.end119

if.else76:                                        ; preds = %if.else67
  %and79 = and i32 %conv60, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else76.if.end119_crit_edge, label %if.then81

if.else76.if.end119_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then81:                                        ; preds = %if.else76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %6, align 4
  %mul.neg = mul i32 %76, -100
  %sub = add i32 %mul.neg, %74
  %nstamps = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 6
  %77 = ptrtoint ptr %nstamps to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %nstamps, align 4
  %conv82 = zext i16 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp83229.not = icmp eq i16 %78, 0
  br i1 %cmp83229.not, label %if.then81.for.end_crit_edge, label %for.body.lr.ph

if.then81.for.end_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool86.not = icmp eq i32 %76, 0
  %hit_count = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %6, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hits.0233 = phi i32 [ 0, %for.body.lr.ph ], [ %hits.1, %for.inc.for.body_crit_edge ]
  %i.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %inc104, %for.inc.for.body_crit_edge ]
  br i1 %tobool86.not, label %for.body.if.end92_crit_edge, label %land.lhs.true87

for.body.if.end92_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

land.lhs.true87:                                  ; preds = %for.body
  %arrayidx = getelementptr %struct.recent_entry, ptr %call39, i32 0, i32 7, i32 %i.0230
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  %sub88 = sub i32 %80, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub88)
  %cmp89 = icmp slt i32 %sub88, 0
  br i1 %cmp89, label %land.lhs.true87.for.inc_crit_edge, label %land.lhs.true87.if.end92_crit_edge

land.lhs.true87.if.end92_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

land.lhs.true87.for.inc_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end92:                                         ; preds = %land.lhs.true87.if.end92_crit_edge, %for.body.if.end92_crit_edge
  %81 = ptrtoint ptr %hit_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hit_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool93.not = icmp ne i32 %82, 0
  %inc95 = add i32 %hits.0233, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc95, i32 %82)
  %cmp97.not = icmp ult i32 %inc95, %82
  %or.cond = select i1 %tobool93.not, i1 %cmp97.not, i1 false
  br i1 %or.cond, label %if.end92.for.inc_crit_edge, label %if.then99

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then99:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %lnot101 = xor i1 %tobool, true
  br label %for.end

for.inc:                                          ; preds = %if.end92.for.inc_crit_edge, %land.lhs.true87.for.inc_crit_edge
  %hits.1 = phi i32 [ %hits.0233, %land.lhs.true87.for.inc_crit_edge ], [ %inc95, %if.end92.for.inc_crit_edge ]
  %inc104 = add nuw nsw i32 %i.0230, 1
  %exitcond.not = icmp eq i32 %inc104, %conv82
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then99, %if.then81.for.end_crit_edge
  %ret.0.in = phi i1 [ %lnot101, %if.then99 ], [ %tobool, %if.then81.for.end_crit_edge ], [ %tobool, %for.inc.for.end_crit_edge ]
  %and107 = and i32 %conv60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %for.end.if.end119_crit_edge, label %if.then109

for.end.if.end119_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then109:                                       ; preds = %for.end
  %and112 = and i32 %conv60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp ne i32 %and112, 0
  %spec.select199 = select i1 %tobool113.not, i1 %ret.0.in, i1 false
  %lru_list.i210 = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 6
  %83 = ptrtoint ptr %lru_list.i210 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lru_list.i210, align 4
  %add.ptr.i = getelementptr i8, ptr %84, i32 -8
  %cmp.i211 = icmp eq ptr %add.ptr.i, %call39
  %85 = and i1 %spec.select199, %cmp.i211
  br i1 %85, label %if.then109.if.end119_crit_edge, label %if.end.i

if.then109.if.end119_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.end.i:                                         ; preds = %if.then109
  %stamps.i = getelementptr i8, ptr %84, i32 32
  %index.i = getelementptr i8, ptr %84, i32 27
  %86 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %index.i, align 1
  %conv.i212 = zext i8 %87 to i32
  %sub.i = add nsw i32 %conv.i212, -1
  %arrayidx.i = getelementptr [0 x i32], ptr %stamps.i, i32 0, i32 %sub.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i, align 4
  %sub1.i = sub i32 %89, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i.if.end119_crit_edge

if.end.i.if.end119_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end119

if.then4.i:                                       ; preds = %if.end.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then4.i.list_del.exit.i.i_crit_edge

if.then4.i.list_del.exit.i.i_crit_edge:           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr i8, ptr %84, i32 -4
  %90 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i.i.i, align 4
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i.i.i, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then4.i.list_del.exit.i.i_crit_edge
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i.i.i213 = getelementptr i8, ptr %84, i32 -4
  %97 = ptrtoint ptr %prev.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i213, align 4
  %call.i.i3.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #14
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %list_del.exit.i.i.recent_entry_remove.exit.i_crit_edge

list_del.exit.i.i.recent_entry_remove.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_entry_remove.exit.i

if.end.i.i6.i.i:                                  ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i.i = getelementptr i8, ptr %84, i32 4
  %98 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %prev.i.i4.i.i, align 4
  %100 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %84, align 4
  %prev1.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev1.i.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %99, ptr %prev1.i.i.i5.i.i, align 4
  %103 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %101, ptr %99, align 4
  br label %recent_entry_remove.exit.i

recent_entry_remove.exit.i:                       ; preds = %if.end.i.i6.i.i, %list_del.exit.i.i.recent_entry_remove.exit.i_crit_edge
  %104 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i7.i.i = getelementptr i8, ptr %84, i32 4
  %105 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  %entries.i.i = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 4
  %106 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %entries.i.i, align 4
  %dec.i.i = add i32 %107, -1
  store i32 %dec.i.i, ptr %entries.i.i, align 4
  br label %if.end119

if.end119:                                        ; preds = %recent_entry_remove.exit.i, %if.end.i.if.end119_crit_edge, %if.then109.if.end119_crit_edge, %for.end.if.end119_crit_edge, %if.else76.if.end119_crit_edge, %recent_entry_remove.exit, %if.then63
  %ret.1.off0 = phi i1 [ %lnot65, %if.then63 ], [ %lnot74, %recent_entry_remove.exit ], [ %tobool, %if.else76.if.end119_crit_edge ], [ %ret.0.in, %for.end.if.end119_crit_edge ], [ true, %if.then109.if.end119_crit_edge ], [ %ret.0.in, %if.end.i.if.end119_crit_edge ], [ %ret.0.in, %recent_entry_remove.exit.i ]
  %108 = ptrtoint ptr %check_set to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %check_set, align 4
  %conv121 = zext i8 %109 to i32
  %and122 = and i32 %conv121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %lor.lhs.false124, label %if.end119.if.then132_crit_edge

if.end119.if.then132_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then132

lor.lhs.false124:                                 ; preds = %if.end119
  %and127 = and i32 %conv121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  %ret.1.off0.not = xor i1 %ret.1.off0, true
  %brmerge = select i1 %tobool128.not, i1 true, i1 %ret.1.off0.not
  br i1 %brmerge, label %lor.lhs.false124.out_crit_edge, label %lor.lhs.false124.if.then132_crit_edge

lor.lhs.false124.if.then132_crit_edge:            ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then132

lor.lhs.false124.out_crit_edge:                   ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then132:                                       ; preds = %lor.lhs.false124.if.then132_crit_edge, %if.end119.if.then132_crit_edge
  %nstamps_max_mask.i = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 5
  %110 = ptrtoint ptr %nstamps_max_mask.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %nstamps_max_mask.i, align 4
  %index.i214 = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 5
  %112 = ptrtoint ptr %index.i214 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %index.i214, align 1
  %and20.i = and i8 %113, %111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %inc.i = add i8 %and20.i, 1
  store i8 %inc.i, ptr %index.i214, align 1
  %idxprom.i = zext i8 %and20.i to i32
  %arrayidx.i215 = getelementptr %struct.recent_entry, ptr %call39, i32 0, i32 7, i32 %idxprom.i
  %115 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx.i215, align 4
  %nstamps.i = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 6
  %116 = ptrtoint ptr %nstamps.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %nstamps.i, align 4
  %118 = zext i8 %inc.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %118)
  %cmp.i216 = icmp ult i16 %117, %118
  br i1 %cmp.i216, label %if.then.i, label %if.then132.if.end.i219_crit_edge

if.then132.if.end.i219_crit_edge:                 ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i219

if.then.i:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  %119 = ptrtoint ptr %nstamps.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %nstamps.i, align 4
  br label %if.end.i219

if.end.i219:                                      ; preds = %if.then.i, %if.then132.if.end.i219_crit_edge
  %lru_list.i217 = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 1
  %lru_list11.i = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 6
  %call.i.i.i218 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list.i217) #14
  br i1 %call.i.i.i218, label %if.end.i.i.i222, label %if.end.i219.__list_del_entry.exit.i.i_crit_edge

if.end.i219.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i222:                                  ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i220 = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %prev.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i.i220, align 4
  %122 = ptrtoint ptr %lru_list.i217 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lru_list.i217, align 4
  %prev1.i.i.i.i221 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i.i221 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i.i221, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i222, %if.end.i219.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 6, i32 1
  %126 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i223 = tail call zeroext i1 @__list_add_valid(ptr noundef %lru_list.i217, ptr noundef %127, ptr noundef %lru_list11.i) #14
  br i1 %call.i.i.i.i223, label %if.end.i.i.i.i224, label %__list_del_entry.exit.i.i.recent_entry_update.exit_crit_edge

__list_del_entry.exit.i.i.recent_entry_update.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_entry_update.exit

if.end.i.i.i.i224:                                ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %128 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %lru_list.i217, ptr %prev.i2.i.i, align 4
  %129 = ptrtoint ptr %lru_list.i217 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %lru_list11.i, ptr %lru_list.i217, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %prev3.i.i.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %lru_list.i217, ptr %127, align 4
  br label %recent_entry_update.exit

recent_entry_update.exit:                         ; preds = %if.end.i.i.i.i224, %__list_del_entry.exit.i.i.recent_entry_update.exit_crit_edge
  %ttl133 = getelementptr inbounds %struct.recent_entry, ptr %call39, i32 0, i32 4
  %132 = ptrtoint ptr %ttl133 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %ttl.1, ptr %ttl133, align 2
  br label %out

out:                                              ; preds = %recent_entry_update.exit, %lor.lhs.false124.out_crit_edge, %if.end55, %if.then42.out_crit_edge
  %ret.2.off0 = phi i1 [ %lnot, %if.end55 ], [ %tobool, %if.then42.out_crit_edge ], [ %ret.1.off0, %recent_entry_update.exit ], [ %ret.1.off0, %lor.lhs.false124.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr_mask) #14
  ret i1 %ret.2.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_mt_check_v0(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %info_v1 = alloca %struct.xt_recent_mtinfo_v1, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  call void @llvm.lifetime.start.p0(i64 228, ptr nonnull %info_v1) #14
  %2 = call ptr @memcpy(ptr %info_v1, ptr %1, i32 212)
  %mask = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %info_v1, i32 0, i32 6
  %3 = call ptr @memset(ptr %mask, i32 255, i32 16)
  %call = call fastcc i32 @recent_mt_check(ptr noundef %par, ptr noundef nonnull %info_v1)
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %info_v1) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recent_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %call = tail call fastcc ptr @recent_pernet(ptr noundef %1)
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %matchinfo, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @recent_mutex, i32 noundef 0) #14
  %name = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %3, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %t.0.in.i = phi ptr [ %call, %entry ], [ %t.0.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %t.0.i = load ptr, ptr %t.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, %call
  br i1 %cmp.not.i, label %for.cond.i.recent_table_lookup.exit_crit_edge, label %for.body.i

for.cond.i.recent_table_lookup.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_table_lookup.exit

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.recent_table, ptr %t.0.i, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %name2.i, ptr noundef %name) #17
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.recent_table_lookup.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

for.body.i.recent_table_lookup.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_table_lookup.exit

recent_table_lookup.exit:                         ; preds = %for.body.i.recent_table_lookup.exit_crit_edge, %for.cond.i.recent_table_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %t.0.i, %for.body.i.recent_table_lookup.exit_crit_edge ], [ null, %for.cond.i.recent_table_lookup.exit_crit_edge ]
  %refcnt = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %recent_table_lookup.exit.if.end7_crit_edge

recent_table_lookup.exit.if.end7_crit_edge:       ; preds = %recent_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then:                                          ; preds = %recent_table_lookup.exit
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %retval.0.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %retval.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  %xt_recent = getelementptr inbounds %struct.recent_net, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %xt_recent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xt_recent, align 4
  %cmp2.not = icmp eq ptr %16, null
  br i1 %cmp2.not, label %list_del.exit.if.end_crit_edge, label %if.then3

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %name4 = getelementptr inbounds %struct.recent_table, ptr %retval.0.i, i32 0, i32 1
  tail call void @remove_proc_entry(ptr noundef %name4, ptr noundef nonnull %16) #14
  br label %if.end

if.end:                                           ; preds = %if.then3, %list_del.exit.if.end_crit_edge
  tail call fastcc void @recent_table_flush(ptr noundef %retval.0.i)
  tail call void @kvfree(ptr noundef %retval.0.i) #14
  br label %if.end7

if.end7:                                          ; preds = %if.end, %recent_table_lookup.exit.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @recent_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_mt_check_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %call = tail call fastcc i32 @recent_mt_check(ptr noundef %par, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @recent_pernet(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load i32, ptr @recent_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !147
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #14
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !148
  %9 = tail call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @recent_entry_lookup(ptr noundef readonly %table, ptr nocapture noundef readonly %addrp, i16 noundef zeroext %family, i8 noundef zeroext %ttl) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %family)
  %cmp = icmp eq i16 %family, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %addrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addrp, align 4
  %2 = load i32, ptr @hash_rnd, align 4
  %add1.i.i = add i32 %2, -559038733
  %add.i.i.i = add i32 %add1.i.i, %1
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #14
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #14
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #14
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #14
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #14
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #14
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #14
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr @hash_rnd, align 4
  %add1.i.i50 = add i32 %3, -559038721
  %4 = ptrtoint ptr %addrp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addrp, align 4
  %add2.i.i = add i32 %5, %add1.i.i50
  %arrayidx3.i.i = getelementptr i32, ptr %addrp, i32 1
  %6 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %7, %add1.i.i50
  %arrayidx5.i.i = getelementptr i32, ptr %addrp, i32 2
  %8 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %9, %add1.i.i50
  %sub.i.i = sub i32 %add2.i.i, %add6.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i, i32 %add6.i.i, i32 4) #14
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add7.i.i = add i32 %add6.i.i, %add4.i.i
  %sub8.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #14
  %xor10.i.i = xor i32 %sub8.i.i, %or.i1.i.i
  %add11.i.i = add i32 %xor.i.i, %add7.i.i
  %sub12.i.i = sub i32 %add7.i.i, %xor10.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 8) #14
  %xor14.i.i = xor i32 %sub12.i.i, %or.i2.i.i
  %add15.i.i = add i32 %xor10.i.i, %add11.i.i
  %sub16.i.i = sub i32 %add11.i.i, %xor14.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i, i32 %xor14.i.i, i32 16) #14
  %xor18.i.i = xor i32 %sub16.i.i, %or.i3.i.i
  %add19.i.i = add i32 %xor14.i.i, %add15.i.i
  %sub20.i.i = sub i32 %add15.i.i, %xor18.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i, i32 %xor18.i.i, i32 19) #14
  %xor22.i.i = xor i32 %sub20.i.i, %or.i4.i.i
  %add23.i.i = add i32 %xor18.i.i, %add19.i.i
  %sub24.i.i = sub i32 %add19.i.i, %xor22.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i, i32 %xor22.i.i, i32 4) #14
  %xor26.i.i = xor i32 %sub24.i.i, %or.i5.i.i
  %add27.i.i = add i32 %xor22.i.i, %add23.i.i
  %add.ptr.i.i = getelementptr i32, ptr %addrp, i32 3
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %add36.i.i = add i32 %add23.i.i, %11
  %xor37.i.i = xor i32 %xor26.i.i, %add27.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add27.i.i, i32 %add27.i.i, i32 14) #14
  %sub39.i.i = sub i32 %xor37.i.i, %or.i6.i.i
  %xor40.i.i = xor i32 %sub39.i.i, %add36.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #14
  %sub42.i.i = sub i32 %xor40.i.i, %or.i7.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %add27.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #14
  %sub45.i.i = sub i32 %xor43.i.i, %or.i8.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #14
  %sub48.i.i = sub i32 %xor46.i.i, %or.i9.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #14
  %sub51.i.i = sub i32 %xor49.i.i, %or.i10.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #14
  %sub54.i.i = sub i32 %xor52.i.i, %or.i11.i.i
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #14
  %sub57.i.i = sub i32 %xor55.i.i, %or.i12.i.i
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub57.i.i.sink = phi i32 [ %sub57.i.i, %if.else ], [ %sub20.i.i.i, %if.then ]
  %12 = load i32, ptr @ip_list_hash_size, align 4
  %sub.i51 = add i32 %12, -1
  %and.i52 = and i32 %sub57.i.i.sink, %sub.i51
  %arrayidx = getelementptr %struct.recent_table, ptr %table, i32 0, i32 7, i32 %and.i52
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %e.053 = load ptr, ptr %arrayidx, align 4
  %cmp5.not54 = icmp eq ptr %e.053, %arrayidx
  br i1 %cmp5.not54, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ttl)
  %cmp22 = icmp eq i8 %ttl, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.055 = phi ptr [ %e.053, %for.body.lr.ph ], [ %e.0, %for.inc.for.body_crit_edge ]
  %family7 = getelementptr inbounds %struct.recent_entry, ptr %e.055, i32 0, i32 3
  %14 = ptrtoint ptr %family7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %family7, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %family)
  %cmp10 = icmp eq i16 %15, %family
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %addr = getelementptr inbounds %struct.recent_entry, ptr %e.055, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %addr, ptr noundef dereferenceable(16) %addrp, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp13 = icmp eq i32 %bcmp, 0
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %ttl17 = getelementptr inbounds %struct.recent_entry, ptr %e.055, i32 0, i32 4
  %16 = ptrtoint ptr %ttl17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ttl17, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %ttl)
  %cmp19 = icmp eq i8 %17, %ttl
  %or.cond = or i1 %cmp22, %cmp19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp27 = icmp eq i8 %17, 0
  %or.cond49 = or i1 %cmp27, %or.cond
  br i1 %or.cond49, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %e.055 to i32
  call void @__asan_load4_noabort(i32 %18)
  %e.0 = load ptr, ptr %e.055, align 4
  %cmp5.not = icmp eq ptr %e.0, %arrayidx
  br i1 %cmp5.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %e.055, %land.lhs.true15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @recent_entry_init(ptr noundef %t, ptr nocapture noundef readonly %addr, i16 noundef zeroext %family, i8 noundef zeroext %ttl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nstamps_max_mask = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 5
  %0 = ptrtoint ptr %nstamps_max_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nstamps_max_mask, align 4
  %conv = zext i8 %1 to i32
  %entries = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 4
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries, align 4
  %4 = load i32, ptr @ip_list_tot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.not = icmp ult i32 %3, %4
  br i1 %cmp.not, label %entry.if.end8.i_crit_edge, label %if.then

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.then:                                          ; preds = %entry
  %lru_list = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 6
  %5 = ptrtoint ptr %lru_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lru_list, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %6, i32 -4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i.i = getelementptr i8, ptr %6, i32 -4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #14
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %list_del.exit.i.recent_entry_remove.exit_crit_edge

list_del.exit.i.recent_entry_remove.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_entry_remove.exit

if.end.i.i6.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i = getelementptr i8, ptr %6, i32 4
  %15 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i4.i, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i5.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %recent_entry_remove.exit

recent_entry_remove.exit:                         ; preds = %if.end.i.i6.i, %list_del.exit.i.recent_entry_remove.exit_crit_edge
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i7.i = getelementptr i8, ptr %6, i32 4
  %22 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #14
  %23 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entries, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %entries, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %recent_entry_remove.exit, %entry.if.end8.i_crit_edge
  %add = shl nuw nsw i32 %conv, 2
  %spec.select.i64 = add nuw nsw i32 %add, 44
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i64, i32 noundef 2592) #19
  %cmp3 = icmp eq ptr %call9.i, null
  br i1 %cmp3, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %addr7 = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 2
  %25 = call ptr @memcpy(ptr %addr7, ptr %addr, i32 16)
  %ttl8 = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 4
  %26 = ptrtoint ptr %ttl8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %ttl, ptr %ttl8, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %stamps = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 7
  %28 = ptrtoint ptr %stamps to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %stamps, align 8
  %nstamps = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 6
  %29 = ptrtoint ptr %nstamps to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %nstamps, align 4
  %index = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 5
  %30 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %index, align 1
  %family9 = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 3
  %31 = ptrtoint ptr %family9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %family, ptr %family9, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %family)
  %cmp11 = icmp eq i16 %family, 2
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end6
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %34 = load i32, ptr @hash_rnd, align 4
  %add1.i.i = add i32 %34, -559038733
  %add.i.i.i47 = add i32 %add1.i.i, %33
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #14
  %sub.i.i.i48 = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i47, %sub.i.i.i48
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i48, i32 %sub.i.i.i48, i32 11) #14
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #14
  %sub8.i.i.i49 = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i49, %sub.i.i.i48
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i49, i32 %sub8.i.i.i49, i32 16) #14
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #14
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i49
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #14
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #14
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  %35 = load i32, ptr @ip_list_hash_size, align 4
  %sub.i = add i32 %35, -1
  %and.i = and i32 %sub20.i.i.i, %sub.i
  %arrayidx15 = getelementptr %struct.recent_table, ptr %t, i32 0, i32 7, i32 %and.i
  %prev.i = getelementptr %struct.recent_table, ptr %t, i32 0, i32 7, i32 %and.i, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %37, ptr noundef %arrayidx15) #14
  br i1 %call.i.i, label %if.then13.if.end20.sink.split_crit_edge, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then13.if.end20.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.end6
  %38 = load i32, ptr @hash_rnd, align 4
  %add1.i.i51 = add i32 %38, -559038721
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %addr, align 4
  %add2.i.i = add i32 %40, %add1.i.i51
  %arrayidx3.i.i = getelementptr i32, ptr %addr, i32 1
  %41 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %42, %add1.i.i51
  %arrayidx5.i.i = getelementptr i32, ptr %addr, i32 2
  %43 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %44, %add1.i.i51
  %sub.i.i = sub i32 %add2.i.i, %add6.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i, i32 %add6.i.i, i32 4) #14
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add7.i.i = add i32 %add6.i.i, %add4.i.i
  %sub8.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #14
  %xor10.i.i = xor i32 %sub8.i.i, %or.i1.i.i
  %add11.i.i = add i32 %xor.i.i, %add7.i.i
  %sub12.i.i = sub i32 %add7.i.i, %xor10.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 8) #14
  %xor14.i.i = xor i32 %sub12.i.i, %or.i2.i.i
  %add15.i.i = add i32 %xor10.i.i, %add11.i.i
  %sub16.i.i = sub i32 %add11.i.i, %xor14.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i, i32 %xor14.i.i, i32 16) #14
  %xor18.i.i = xor i32 %sub16.i.i, %or.i3.i.i
  %add19.i.i = add i32 %xor14.i.i, %add15.i.i
  %sub20.i.i = sub i32 %add15.i.i, %xor18.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i, i32 %xor18.i.i, i32 19) #14
  %xor22.i.i = xor i32 %sub20.i.i, %or.i4.i.i
  %add23.i.i = add i32 %xor18.i.i, %add19.i.i
  %sub24.i.i = sub i32 %add19.i.i, %xor22.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i, i32 %xor22.i.i, i32 4) #14
  %xor26.i.i = xor i32 %sub24.i.i, %or.i5.i.i
  %add27.i.i = add i32 %xor22.i.i, %add23.i.i
  %add.ptr.i.i = getelementptr i32, ptr %addr, i32 3
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i.i, align 4
  %add36.i.i = add i32 %add23.i.i, %46
  %xor37.i.i = xor i32 %xor26.i.i, %add27.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add27.i.i, i32 %add27.i.i, i32 14) #14
  %sub39.i.i = sub i32 %xor37.i.i, %or.i6.i.i
  %xor40.i.i = xor i32 %sub39.i.i, %add36.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #14
  %sub42.i.i = sub i32 %xor40.i.i, %or.i7.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %add27.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #14
  %sub45.i.i = sub i32 %xor43.i.i, %or.i8.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #14
  %sub48.i.i = sub i32 %xor46.i.i, %or.i9.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #14
  %sub51.i.i = sub i32 %xor49.i.i, %or.i10.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #14
  %sub54.i.i = sub i32 %xor52.i.i, %or.i11.i.i
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #14
  %sub57.i.i = sub i32 %xor55.i.i, %or.i12.i.i
  %47 = load i32, ptr @ip_list_hash_size, align 4
  %sub.i52 = add i32 %47, -1
  %and.i53 = and i32 %sub57.i.i, %sub.i52
  %arrayidx19 = getelementptr %struct.recent_table, ptr %t, i32 0, i32 7, i32 %and.i53
  %prev.i54 = getelementptr %struct.recent_table, ptr %t, i32 0, i32 7, i32 %and.i53, i32 1
  %48 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i54, align 4
  %call.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i, ptr noundef %49, ptr noundef %arrayidx19) #14
  br i1 %call.i.i55, label %if.else.if.end20.sink.split_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else.if.end20.sink.split_crit_edge, %if.then13.if.end20.sink.split_crit_edge
  %prev.i54.sink = phi ptr [ %prev.i, %if.then13.if.end20.sink.split_crit_edge ], [ %prev.i54, %if.else.if.end20.sink.split_crit_edge ]
  %arrayidx19.sink = phi ptr [ %arrayidx15, %if.then13.if.end20.sink.split_crit_edge ], [ %arrayidx19, %if.else.if.end20.sink.split_crit_edge ]
  %.sink65 = phi ptr [ %37, %if.then13.if.end20.sink.split_crit_edge ], [ %49, %if.else.if.end20.sink.split_crit_edge ]
  %50 = ptrtoint ptr %prev.i54.sink to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9.i, ptr %prev.i54.sink, align 4
  %51 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx19.sink, ptr %call9.i, align 128
  %prev3.i.i56 = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i56 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %.sink65, ptr %prev3.i.i56, align 4
  %53 = ptrtoint ptr %.sink65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call9.i, ptr %.sink65, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge, %if.then13.if.end20_crit_edge
  %lru_list21 = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 1
  %lru_list22 = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 6
  %prev.i59 = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i59, align 4
  %call.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef %lru_list21, ptr noundef %55, ptr noundef %lru_list22) #14
  br i1 %call.i.i60, label %if.end.i.i62, label %if.end20.list_add_tail.exit63_crit_edge

if.end20.list_add_tail.exit63_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit63

if.end.i.i62:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %lru_list21, ptr %prev.i59, align 4
  %57 = ptrtoint ptr %lru_list21 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %lru_list22, ptr %lru_list21, align 8
  %prev3.i.i61 = getelementptr inbounds %struct.recent_entry, ptr %call9.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev3.i.i61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i61, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %lru_list21, ptr %55, align 4
  br label %list_add_tail.exit63

list_add_tail.exit63:                             ; preds = %if.end.i.i62, %if.end20.list_add_tail.exit63_crit_edge
  %60 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entries, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit63, %if.end8.i.cleanup_crit_edge
  ret ptr %call9.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recent_entry_remove(ptr nocapture noundef %t, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %e, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %lru_list = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 1
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list) #14
  br i1 %call.i.i3, label %if.end.i.i6, label %list_del.exit.list_del.exit8_crit_edge

list_del.exit.list_del.exit8_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit8

if.end.i.i6:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4 = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i4, align 4
  %10 = ptrtoint ptr %lru_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lru_list, align 4
  %prev1.i.i.i5 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i5, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit8

list_del.exit8:                                   ; preds = %if.end.i.i6, %list_del.exit.list_del.exit8_crit_edge
  %14 = ptrtoint ptr %lru_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %lru_list, align 4
  %prev.i7 = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7, align 4
  tail call void @kfree(ptr noundef %e) #14
  %entries = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 4
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %entries, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %entries, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recent_entry_update(ptr noundef %t, ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nstamps_max_mask = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 5
  %0 = ptrtoint ptr %nstamps_max_mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nstamps_max_mask, align 4
  %index = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 1
  %and20 = and i8 %3, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %inc = add i8 %and20, 1
  store i8 %inc, ptr %index, align 1
  %idxprom = zext i8 %and20 to i32
  %arrayidx = getelementptr %struct.recent_entry, ptr %e, i32 0, i32 7, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %nstamps = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 6
  %6 = ptrtoint ptr %nstamps to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nstamps, align 4
  %8 = zext i8 %inc to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %8)
  %cmp = icmp ult i16 %7, %8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %nstamps to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %nstamps, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lru_list = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 1
  %lru_list11 = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %lru_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lru_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru_list, ptr noundef %17, ptr noundef %lru_list11) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lru_list, ptr %prev.i2.i, align 4
  %19 = ptrtoint ptr %lru_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lru_list11, ptr %lru_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.recent_entry, ptr %e, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %lru_list, ptr %17, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recent_mt_check(ptr nocapture noundef readonly %par, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %call = tail call fastcc ptr @recent_pernet(ptr noundef %1)
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @recent_mt_check.___once_key, ptr blockaddress(@recent_mt_check, %if.then)) #14
          to label %if.end14 [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #14
  %2 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %___flags, align 4, !annotation !150
  %call4 = call zeroext i1 @__do_once_start(ptr noundef nonnull @recent_mt_check.___done, ptr noundef nonnull %___flags) #14
  br i1 %call4, label %if.then13, label %if.then.if.end_crit_edge, !prof !151

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  call void @get_random_bytes(ptr noundef nonnull @hash_rnd, i32 noundef 4) #14
  call void @__do_once_done(ptr noundef nonnull @recent_mt_check.___done, ptr noundef nonnull @recent_mt_check.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #14
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %check_set = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %check_set to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %check_set, align 4
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %cond.false, label %if.then20

if.then20:                                        ; preds = %if.end14
  %call21 = call i32 @___ratelimit(ptr noundef nonnull @recent_mt_check._rs, ptr noundef nonnull @__func__.recent_mt_check) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.cleanup_crit_edge, label %do.end

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %check_set to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %check_set, align 4
  %conv26 = zext i8 %6 to i32
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv26) #20
  br label %cleanup

cond.false:                                       ; preds = %if.end14
  %and32 = and i32 %conv, 15
  %call.i = call i32 @__sw_hweight8(i32 noundef %and32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end125, label %cond.false.cleanup_crit_edge

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end125:                                        ; preds = %cond.false
  %7 = ptrtoint ptr %check_set to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %check_set, align 4
  %conv127 = zext i8 %8 to i32
  %and128 = and i32 %conv127, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end125.if.end138_crit_edge, label %land.lhs.true

if.end125.if.end138_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

land.lhs.true:                                    ; preds = %if.end125
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool130.not = icmp eq i32 %10, 0
  br i1 %tobool130.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %hit_count = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %hit_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hit_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool131.not = icmp eq i32 %12, 0
  %and135 = and i32 %conv127, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %or.cond = select i1 %tobool131.not, i1 %tobool136.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end138_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.if.end138_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end138

if.end138:                                        ; preds = %lor.lhs.false.if.end138_crit_edge, %if.end125.if.end138_crit_edge
  %13 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool142.not = icmp eq i8 %13, 0
  br i1 %tobool142.not, label %if.end138.if.end147_crit_edge, label %land.lhs.true143

if.end138.if.end147_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

land.lhs.true143:                                 ; preds = %if.end138
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool145.not = icmp eq i32 %15, 0
  br i1 %tobool145.not, label %land.lhs.true143.cleanup_crit_edge, label %land.lhs.true143.if.end147_crit_edge

land.lhs.true143.if.end147_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

land.lhs.true143.cleanup_crit_edge:               ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end147:                                        ; preds = %land.lhs.true143.if.end147_crit_edge, %if.end138.if.end147_crit_edge
  %hit_count148 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %hit_count148 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hit_count148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp149 = icmp ugt i32 %17, 255
  br i1 %cmp149, label %if.then151, label %if.end162

if.then151:                                       ; preds = %if.end147
  %call152 = call i32 @___ratelimit(ptr noundef nonnull @recent_mt_check._rs.9, ptr noundef nonnull @__func__.recent_mt_check) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then151.cleanup_crit_edge, label %do.end157

if.then151.cleanup_crit_edge:                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end157:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %hit_count148 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hit_count148, align 4
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %19, i32 noundef 255) #20
  br label %cleanup

if.end162:                                        ; preds = %if.end147
  %name = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %info, i32 0, i32 4
  %call163 = call i32 @xt_check_proc_name(ptr noundef %name, i32 noundef 200) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.end162.cleanup_crit_edge

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end166:                                        ; preds = %if.end162
  %20 = load i32, ptr @ip_pkt_list_tot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool167.not = icmp ne i32 %20, 0
  %21 = ptrtoint ptr %hit_count148 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %hit_count148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pr, i32 %20)
  %cmp170 = icmp ult i32 %.pr, %20
  %or.cond401 = select i1 %tobool167.not, i1 %cmp170, i1 false
  br i1 %or.cond401, label %cond.end199, label %if.else

cond.end199:                                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i376 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i376)
  %tobool.not.i.i.i = icmp eq i32 %sub.i376, 0
  %22 = call i32 @llvm.ctlz.i32(i32 %sub.i376, i1 true) #14, !range !146
  %sub.i.i.i = sub nuw nsw i32 32, %22
  %notmask403 = shl nsw i32 -1, %sub.i.i.i
  %sub.i.i.op.i.op = xor i32 %notmask403, -1
  %sub201 = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.op.i.op
  br label %if.end246

if.else:                                          ; preds = %if.end166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool203.not = icmp eq i32 %.pr, 0
  br i1 %tobool203.not, label %if.else.if.end246_crit_edge, label %cond.end241

if.else.if.end246_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end246

cond.end241:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i380 = add i32 %.pr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i380)
  %tobool.not.i.i.i381 = icmp eq i32 %sub.i380, 0
  %23 = call i32 @llvm.ctlz.i32(i32 %sub.i380, i1 true) #14, !range !146
  %sub.i.i.i382 = sub nuw nsw i32 32, %23
  %notmask = shl nsw i32 -1, %sub.i.i.i382
  %sub.i.i.op.i383.op = xor i32 %notmask, -1
  %sub243 = select i1 %tobool.not.i.i.i381, i32 0, i32 %sub.i.i.op.i383.op
  br label %if.end246

if.end246:                                        ; preds = %cond.end241, %if.else.if.end246_crit_edge, %cond.end199
  %nstamp_mask.0 = phi i32 [ %sub201, %cond.end199 ], [ %sub243, %cond.end241 ], [ 31, %if.else.if.end246_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @recent_mutex, i32 noundef 0) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end246
  %t.0.in.i = phi ptr [ %call, %if.end246 ], [ %t.0.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %t.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %t.0.i = load ptr, ptr %t.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, %call
  br i1 %cmp.not.i, label %for.cond.i.if.end260_crit_edge, label %for.body.i

for.cond.i.if.end260_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end260

for.body.i:                                       ; preds = %for.cond.i
  %name2.i = getelementptr inbounds %struct.recent_table, ptr %t.0.i, i32 0, i32 1
  %call.i385 = call i32 @strcmp(ptr noundef %name2.i, ptr noundef %name) #17
  %tobool.not.i = icmp eq i32 %call.i385, 0
  br i1 %tobool.not.i, label %recent_table_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

recent_table_lookup.exit:                         ; preds = %for.body.i
  %cmp250.not = icmp eq ptr %t.0.i, null
  br i1 %cmp250.not, label %recent_table_lookup.exit.if.end260_crit_edge, label %if.then252

recent_table_lookup.exit.if.end260_crit_edge:     ; preds = %recent_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end260

if.then252:                                       ; preds = %recent_table_lookup.exit
  %nstamps_max_mask = getelementptr inbounds %struct.recent_table, ptr %t.0.i, i32 0, i32 5
  %25 = ptrtoint ptr %nstamps_max_mask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nstamps_max_mask, align 4
  %conv253 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nstamp_mask.0, i32 %conv253)
  %cmp254 = icmp ugt i32 %nstamp_mask.0, %conv253
  br i1 %cmp254, label %if.then256, label %if.then252.if.end259_crit_edge

if.then252.if.end259_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end259

if.then256:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  call fastcc void @recent_table_flush(ptr noundef nonnull %t.0.i)
  %conv257 = trunc i32 %nstamp_mask.0 to i8
  %27 = ptrtoint ptr %nstamps_max_mask to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv257, ptr %nstamps_max_mask, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  br label %if.end259

if.end259:                                        ; preds = %if.then256, %if.then252.if.end259_crit_edge
  %refcnt = getelementptr inbounds %struct.recent_table, ptr %t.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refcnt, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %out

if.end260:                                        ; preds = %recent_table_lookup.exit.if.end260_crit_edge, %for.cond.i.if.end260_crit_edge
  %30 = load i32, ptr @ip_list_hash_size, align 4
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 8) #14
  %32 = extractvalue { i32, i1 } %31, 1
  %33 = extractvalue { i32, i1 } %31, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %33, i32 244) #14
  %retval.0.i387 = select i1 %32, i32 -1, i32 %spec.select.i
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i387, i32 noundef 3520, i32 noundef -1) #19
  %cmp263 = icmp eq ptr %call.i.i, null
  br i1 %cmp263, label %if.end260.out_crit_edge, label %if.end266

if.end260.out_crit_edge:                          ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end266:                                        ; preds = %if.end260
  %refcnt267 = getelementptr inbounds %struct.recent_table, ptr %call.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %refcnt267 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %refcnt267, align 4
  %conv268 = trunc i32 %nstamp_mask.0 to i8
  %nstamps_max_mask269 = getelementptr inbounds %struct.recent_table, ptr %call.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %nstamps_max_mask269 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv268, ptr %nstamps_max_mask269, align 4
  %mask = getelementptr inbounds %struct.recent_table, ptr %call.i.i, i32 0, i32 2
  %mask270 = getelementptr inbounds %struct.xt_recent_mtinfo_v1, ptr %info, i32 0, i32 6
  %36 = call ptr @memcpy(ptr %mask, ptr %mask270, i32 16)
  %name271 = getelementptr inbounds %struct.recent_table, ptr %call.i.i, i32 0, i32 1
  %call275 = call ptr @strcpy(ptr noundef %name271, ptr noundef %name) #18
  %lru_list = getelementptr inbounds %struct.recent_table, ptr %call.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %lru_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %lru_list, ptr %lru_list, align 4
  %prev.i = getelementptr inbounds %struct.recent_table, ptr %call.i.i, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lru_list, ptr %prev.i, align 4
  %39 = load i32, ptr @ip_list_hash_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp276397.not = icmp eq i32 %39, 0
  br i1 %cmp276397.not, label %if.end266.for.end_crit_edge, label %if.end266.for.body_crit_edge

if.end266.for.body_crit_edge:                     ; preds = %if.end266
  br label %for.body

if.end266.for.end_crit_edge:                      ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end266.for.body_crit_edge
  %i.0398 = phi i32 [ %inc278, %for.body.for.body_crit_edge ], [ 0, %if.end266.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.recent_table, ptr %call.i.i, i32 0, i32 7, i32 %i.0398
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i388 = getelementptr %struct.recent_table, ptr %call.i.i, i32 0, i32 7, i32 %i.0398, i32 1
  %41 = ptrtoint ptr %prev.i388 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx, ptr %prev.i388, align 4
  %inc278 = add nuw i32 %i.0398, 1
  %exitcond.not = icmp eq i32 %inc278, %39
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end266.for.end_crit_edge
  %42 = load i32, ptr @ip_list_uid, align 4
  %call280 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %42) #14
  %43 = load i32, ptr @ip_list_gid, align 4
  %call282 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %43) #14
  %.fca.0.insert319 = insertvalue [1 x i32] poison, i32 %call280, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call280)
  %cmp.i.not = icmp eq i32 %call280, -1
  br i1 %cmp.i.not, label %for.end.if.then289_crit_edge, label %lor.lhs.false286

for.end.if.then289_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then289

lor.lhs.false286:                                 ; preds = %for.end
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call282, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call282)
  %cmp.i389.not = icmp eq i32 %call282, -1
  br i1 %cmp.i389.not, label %lor.lhs.false286.if.then289_crit_edge, label %if.end290

lor.lhs.false286.if.then289_crit_edge:            ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then289

if.then289:                                       ; preds = %lor.lhs.false286.if.then289_crit_edge, %for.end.if.then289_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i) #14
  br label %out

if.end290:                                        ; preds = %lor.lhs.false286
  %44 = load i32, ptr @ip_list_perms, align 4
  %conv293 = trunc i32 %44 to i16
  %xt_recent = getelementptr inbounds %struct.recent_net, ptr %call, i32 0, i32 1
  %45 = ptrtoint ptr %xt_recent to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %xt_recent, align 4
  %call294 = call ptr @proc_create_data(ptr noundef %name271, i16 noundef zeroext %conv293, ptr noundef %46, ptr noundef nonnull @recent_mt_proc_ops, ptr noundef nonnull %call.i.i) #14
  %cmp295 = icmp eq ptr %call294, null
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #16
  call void @kvfree(ptr noundef nonnull %call.i.i) #14
  br label %out

if.end298:                                        ; preds = %if.end290
  call void @proc_set_user(ptr noundef nonnull %call294, [1 x i32] %.fca.0.insert319, [1 x i32] %.fca.0.insert) #14
  call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  %prev.i390 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i390 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i390, align 4
  %call.i.i391 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %48, ptr noundef %call) #14
  br i1 %call.i.i391, label %if.end.i.i, label %if.end298.list_add_tail.exit_crit_edge

if.end298.list_add_tail.exit_crit_edge:           ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %prev.i390 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i, ptr %prev.i390, align 4
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %call.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %call.i.i, ptr %48, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end298.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  br label %out

out:                                              ; preds = %list_add_tail.exit, %if.then297, %if.then289, %if.end260.out_crit_edge, %if.end259
  %ret.0 = phi i32 [ 0, %if.end259 ], [ -12, %if.then297 ], [ 0, %list_add_tail.exit ], [ -22, %if.then289 ], [ -12, %if.end260.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @recent_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end162.cleanup_crit_edge, %do.end157, %if.then151.cleanup_crit_edge, %land.lhs.true143.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %do.end, %if.then20.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %do.end ], [ -22, %if.then20.cleanup_crit_edge ], [ -22, %cond.false.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true143.cleanup_crit_edge ], [ -22, %do.end157 ], [ -22, %if.then151.cleanup_crit_edge ], [ %call163, %if.end162.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_proc_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @recent_table_flush(ptr noundef %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ip_list_hash_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp31.not = icmp eq i32 %0, 0
  br i1 %cmp31.not, label %entry.for.end18_crit_edge, label %for.body.lr.ph

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end18

for.body.lr.ph:                                   ; preds = %entry
  %entries.i = getelementptr inbounds %struct.recent_table, ptr %t, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc17.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.recent_table, ptr %t, i32 0, i32 7, i32 %i.032
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %cmp10.not27 = icmp eq ptr %2, %arrayidx
  br i1 %cmp10.not27, label %for.body.for.inc17_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17

for.body11:                                       ; preds = %recent_entry_remove.exit.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %e.028 = phi ptr [ %next.0, %recent_entry_remove.exit.for.body11_crit_edge ], [ %2, %for.body.for.body11_crit_edge ]
  %3 = ptrtoint ptr %e.028 to i32
  call void @__asan_load4_noabort(i32 %3)
  %next.0 = load ptr, ptr %e.028, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.028) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body11.list_del.exit.i_crit_edge

for.body11.list_del.exit.i_crit_edge:             ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.028, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %e.028 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %e.028, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body11.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %e.028 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %e.028, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.028, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %lru_list.i = getelementptr inbounds %struct.recent_entry, ptr %e.028, i32 0, i32 1
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list.i) #14
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %list_del.exit.i.recent_entry_remove.exit_crit_edge

list_del.exit.i.recent_entry_remove.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_entry_remove.exit

if.end.i.i6.i:                                    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i4.i = getelementptr inbounds %struct.recent_entry, ptr %e.028, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i4.i, align 4
  %14 = ptrtoint ptr %lru_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lru_list.i, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i5.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %recent_entry_remove.exit

recent_entry_remove.exit:                         ; preds = %if.end.i.i6.i, %list_del.exit.i.recent_entry_remove.exit_crit_edge
  %18 = ptrtoint ptr %lru_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %lru_list.i, align 4
  %prev.i7.i = getelementptr inbounds %struct.recent_entry, ptr %e.028, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i, align 4
  tail call void @kfree(ptr noundef %e.028) #14
  %20 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entries.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %entries.i, align 4
  %cmp10.not = icmp eq ptr %next.0, %arrayidx
  br i1 %cmp10.not, label %recent_entry_remove.exit.for.inc17_crit_edge, label %recent_entry_remove.exit.for.body11_crit_edge

recent_entry_remove.exit.for.body11_crit_edge:    ; preds = %recent_entry_remove.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11

recent_entry_remove.exit.for.inc17_crit_edge:     ; preds = %recent_entry_remove.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc17

for.inc17:                                        ; preds = %recent_entry_remove.exit.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %inc = add nuw i32 %i.032, 1
  %22 = load i32, ptr @ip_list_hash_size, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc17.for.body_crit_edge, label %for.inc17.for.end18_crit_edge

for.inc17.for.end18_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end18

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end18:                                        ; preds = %for.inc17.for.end18_crit_edge, %entry.for.end18_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_user(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_seq_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @recent_seq_ops, i32 noundef 8) #14
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_mt_proc_write(ptr nocapture noundef readonly %file, ptr noundef %input, i32 noundef %size, ptr nocapture noundef %loff) #2 align 64 {
entry:
  %buf = alloca [41 x i8], align 1
  %addr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %buf) #14
  %4 = call ptr @memset(ptr %buf, i32 255, i32 41)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #14
  %5 = call ptr @memset(ptr %addr, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.umin.i32(i32 %size, i32 41)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %input, i32 %6, i32 -1226833920) #21, !srcloc !152
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !153

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #14
  %8 = call i32 @llvm.read_register.i32(metadata !136) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !154
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !156
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %input, i32 noundef %6) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !153

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.0.i.i81 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %6, %if.end.if.then11.i.i_crit_edge ], [ %6, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %6, %res.0.i.i81
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i81)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %loff to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %loff, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp10.not = icmp eq i64 %13, 0
  br i1 %cmp10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %sw.default [
    i8 47, label %sw.bb
    i8 45, label %if.end12.sw.epilog_crit_edge
    i8 43, label %sw.bb14
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  call fastcc void @recent_table_flush(ptr noundef %3)
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  br label %cleanup

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  %call15 = call i32 @___ratelimit(ptr noundef nonnull @recent_mt_proc_write._rs, ptr noundef nonnull @__func__.recent_mt_proc_write) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %do.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #20
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %if.end12.sw.epilog_crit_edge
  %add.0.off0 = phi i1 [ true, %sw.bb14 ], [ false, %if.end12.sw.epilog_crit_edge ]
  %incdec.ptr = getelementptr inbounds i8, ptr %buf, i32 1
  %dec = add nsw i32 %6, -1
  %call19 = call ptr @strnchr(ptr noundef %incdec.ptr, i32 noundef %dec, i32 noundef 58) #14
  %cmp20.not = icmp eq ptr %call19, null
  br i1 %cmp20.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call23 = call i32 @in6_pton(ptr noundef %incdec.ptr, i32 noundef %dec, ptr noundef nonnull %addr, i32 noundef 10, ptr noundef null) #14
  br label %if.end28

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = call i32 @in4_pton(ptr noundef %incdec.ptr, i32 noundef %dec, ptr noundef nonnull %addr, i32 noundef 10, ptr noundef null) #14
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %family.0 = phi i16 [ 10, %if.then22 ], [ 2, %if.else ]
  %succ.0.in.in = phi i32 [ %call23, %if.then22 ], [ %call25, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %succ.0.in.in)
  %succ.0.in.not = icmp eq i32 %succ.0.in.in, 0
  br i1 %succ.0.in.not, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  %call32 = call fastcc ptr @recent_entry_lookup(ptr noundef %3, ptr noundef nonnull %addr, i16 noundef zeroext %family.0, i8 noundef zeroext 0)
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then35, label %if.else40

if.then35:                                        ; preds = %if.end31
  br i1 %add.0.off0, label %if.then37, label %if.then35.if.end45_crit_edge

if.then35.if.end45_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = call fastcc ptr @recent_entry_init(ptr noundef %3, ptr noundef nonnull %addr, i16 noundef zeroext %family.0, i8 noundef zeroext 0)
  br label %if.end45

if.else40:                                        ; preds = %if.end31
  br i1 %add.0.off0, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @recent_entry_update(ptr noundef %3, ptr noundef nonnull %call32)
  br label %if.end45

if.else43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @recent_entry_remove(ptr noundef %3, ptr noundef nonnull %call32)
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42, %if.then37, %if.then35.if.end45_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  %conv47 = zext i32 %6 to i64
  %17 = ptrtoint ptr %loff to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %loff, align 8
  %add48 = add i64 %18, %conv47
  store i64 %add48, ptr %loff, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end28.cleanup_crit_edge, %do.end, %sw.default.cleanup_crit_edge, %sw.bb, %if.end9.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end45 ], [ %6, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ -29, %if.end9.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %sw.default.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #14
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %buf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @recent_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  %bucket = getelementptr inbounds %struct.recent_iter_state, ptr %1, i32 0, i32 1
  %6 = load i32, ptr @ip_list_hash_size, align 4
  %7 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %bucket, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp36.not = icmp eq i32 %6, 0
  br i1 %cmp36.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %entry.for.body_crit_edge
  %p.038 = phi i64 [ %p.1.lcssa, %for.inc15.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %storemerge37 = phi i32 [ %inc, %for.inc15.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.recent_table, ptr %3, i32 0, i32 7, i32 %storemerge37
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %e.032 = load ptr, ptr %arrayidx, align 4
  %cmp7.not33 = icmp eq ptr %e.032, %arrayidx
  br i1 %cmp7.not33, label %for.body.for.inc15_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc15

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %e.035 = phi ptr [ %e.0, %for.inc.for.body8_crit_edge ], [ %e.032, %for.body.for.body8_crit_edge ]
  %p.134 = phi i64 [ %dec, %for.inc.for.body8_crit_edge ], [ %p.038, %for.body.for.body8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %p.134)
  %cmp9 = icmp eq i64 %p.134, 0
  br i1 %cmp9, label %for.body8.cleanup_crit_edge, label %for.inc

for.body8.cleanup_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body8
  %dec = add i64 %p.134, -1
  %9 = ptrtoint ptr %e.035 to i32
  call void @__asan_load4_noabort(i32 %9)
  %e.0 = load ptr, ptr %e.035, align 4
  %cmp7.not = icmp eq ptr %e.0, %arrayidx
  br i1 %cmp7.not, label %for.inc.for.inc15_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body8

for.inc.for.inc15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc15

for.inc15:                                        ; preds = %for.inc.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %p.1.lcssa = phi i64 [ %p.038, %for.body.for.inc15_crit_edge ], [ %dec, %for.inc.for.inc15_crit_edge ]
  %inc = add nuw i32 %storemerge37, 1
  %10 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %bucket, align 4
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc15.cleanup_crit_edge, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %for.body8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %e.035, %for.body8.cleanup_crit_edge ], [ null, %for.inc15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recent_seq_stop(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @recent_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %v, ptr nocapture noundef %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v, align 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %pos, align 8
  %bucket = getelementptr inbounds %struct.recent_iter_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bucket, align 4
  %arrayidx16 = getelementptr %struct.recent_table, ptr %3, i32 0, i32 7, i32 %9
  %cmp17 = icmp eq ptr %5, %arrayidx16
  br i1 %cmp17, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %10 = load i32, ptr @ip_list_hash_size, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i32 [ %9, %while.body.lr.ph ], [ %16, %if.end.while.body_crit_edge ]
  %inc2 = add i32 %11, 1
  %12 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc2, ptr %bucket, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc2, i32 %10)
  %cmp3.not = icmp ult i32 %inc2, %10
  br i1 %cmp3.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arrayidx6 = getelementptr %struct.recent_table, ptr %3, i32 0, i32 7, i32 %inc2
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %15 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bucket, align 4
  %arrayidx = getelementptr %struct.recent_table, ptr %3, i32 0, i32 7, i32 %16
  %cmp = icmp eq ptr %14, %arrayidx
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %entry.cleanup_crit_edge ], [ %14, %if.end.cleanup_crit_edge ], [ null, %while.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_seq_show(ptr noundef %seq, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.recent_entry, ptr %v, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv = zext i8 %5 to i32
  %sub = add nuw nsw i32 %conv, 255
  %nstamps_max_mask = getelementptr inbounds %struct.recent_table, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %nstamps_max_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nstamps_max_mask, align 4
  %conv1 = zext i8 %7 to i32
  %and = and i32 %sub, %conv1
  %family = getelementptr inbounds %struct.recent_entry, ptr %v, i32 0, i32 3
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp = icmp eq i16 %9, 2
  %addr = getelementptr inbounds %struct.recent_entry, ptr %v, i32 0, i32 2
  %ttl = getelementptr inbounds %struct.recent_entry, ptr %v, i32 0, i32 4
  %10 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ttl, align 2
  %conv4 = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.recent_entry, ptr %v, i32 0, i32 7, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %.str.15..str.16 = select i1 %cmp, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull %.str.15..str.16, ptr noundef %addr, i32 noundef %conv4, i32 noundef %13, i32 noundef %conv) #14
  %nstamps = getelementptr inbounds %struct.recent_entry, ptr %v, i32 0, i32 6
  %14 = ptrtoint ptr %nstamps to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nstamps, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp1540.not = icmp eq i16 %15, 0
  br i1 %cmp1540.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.041)
  %tobool.not = icmp eq i32 %i.041, 0
  %cond = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  %arrayidx18 = getelementptr %struct.recent_entry, ptr %v, i32 0, i32 7, i32 %i.041
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, i32 noundef %17) #14
  %inc = add nuw nsw i32 %i.041, 1
  %18 = ptrtoint ptr %nstamps to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nstamps, align 4
  %conv14 = zext i16 %19 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recent_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @recent_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev.i, align 4
  %call.i = tail call fastcc ptr @recent_pernet(ptr noundef %net) #14
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %2 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net.i, align 4
  %call1.i = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.24, ptr noundef %3) #14
  %xt_recent.i = getelementptr inbounds %struct.recent_net, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %xt_recent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %xt_recent.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  %..i = select i1 %tobool.not.i, i32 -12, i32 0
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recent_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @recent_pernet(ptr noundef %net) #14
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @recent_lock) #14
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %t.014.i = load ptr, ptr %call.i, align 4
  %cmp.not15.i = icmp eq ptr %t.014.i, %call.i
  br i1 %cmp.not15.i, label %entry.recent_proc_net_exit.exit_crit_edge, label %for.body.lr.ph.i

entry.recent_proc_net_exit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_proc_net_exit.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %xt_recent.i = getelementptr inbounds %struct.recent_net, ptr %call.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %t.016.i = phi ptr [ %t.014.i, %for.body.lr.ph.i ], [ %t.0.i, %for.body.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.recent_table, ptr %t.016.i, i32 0, i32 1
  %1 = ptrtoint ptr %xt_recent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xt_recent.i, align 4
  tail call void @remove_proc_entry(ptr noundef %name.i, ptr noundef %2) #14
  %3 = ptrtoint ptr %t.016.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %t.0.i = load ptr, ptr %t.016.i, align 4
  %cmp.not.i = icmp eq ptr %t.0.i, %call.i
  br i1 %cmp.not.i, label %for.body.i.recent_proc_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.recent_proc_net_exit.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recent_proc_net_exit.exit

recent_proc_net_exit.exit:                        ; preds = %for.body.i.recent_proc_net_exit.exit_crit_edge, %entry.recent_proc_net_exit.exit_crit_edge
  %xt_recent7.i = getelementptr inbounds %struct.recent_net, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %xt_recent7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xt_recent7.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @recent_lock) #14
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %5 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.24, ptr noundef %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !125, !127, !128, !130, !132, !134}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__UNIQUE_ID_author491, !1, !"__UNIQUE_ID_author491", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_recent.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_author492, !3, !"__UNIQUE_ID_author492", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_recent.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_description493, !5, !"__UNIQUE_ID_description493", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_recent.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_file494, !7, !"__UNIQUE_ID_file494", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_recent.c", i32 39, i32 1}
!8 = !{ptr @__UNIQUE_ID_license495, !7, !"__UNIQUE_ID_license495", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias496, !10, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_recent.c", i32 40, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias497, !12, !"__UNIQUE_ID_alias497", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_recent.c", i32 41, i32 1}
!13 = !{ptr @__param_ip_list_tot, !14, !"__param_ip_list_tot", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_recent.c", i32 48, i32 1}
!15 = !{ptr @__UNIQUE_ID_ip_list_tottype498, !14, !"__UNIQUE_ID_ip_list_tottype498", i1 false, i1 false}
!16 = !{ptr @__param_ip_list_hash_size, !17, !"__param_ip_list_hash_size", i1 false, i1 false}
!17 = !{!"../net/netfilter/xt_recent.c", i32 49, i32 1}
!18 = !{ptr @__UNIQUE_ID_ip_list_hash_sizetype499, !17, !"__UNIQUE_ID_ip_list_hash_sizetype499", i1 false, i1 false}
!19 = !{ptr @__param_ip_list_perms, !20, !"__param_ip_list_perms", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_recent.c", i32 50, i32 1}
!21 = !{ptr @__UNIQUE_ID_ip_list_permstype500, !20, !"__UNIQUE_ID_ip_list_permstype500", i1 false, i1 false}
!22 = !{ptr @__param_ip_list_uid, !23, !"__param_ip_list_uid", i1 false, i1 false}
!23 = !{!"../net/netfilter/xt_recent.c", i32 51, i32 1}
!24 = !{ptr @__UNIQUE_ID_ip_list_uidtype501, !23, !"__UNIQUE_ID_ip_list_uidtype501", i1 false, i1 false}
!25 = !{ptr @__param_ip_list_gid, !26, !"__param_ip_list_gid", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_recent.c", i32 52, i32 1}
!27 = !{ptr @__UNIQUE_ID_ip_list_gidtype502, !26, !"__UNIQUE_ID_ip_list_gidtype502", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_ip_list_tot503, !29, !"__UNIQUE_ID_ip_list_tot503", i1 false, i1 false}
!29 = !{!"../net/netfilter/xt_recent.c", i32 53, i32 1}
!30 = !{ptr @__UNIQUE_ID_ip_list_hash_size504, !31, !"__UNIQUE_ID_ip_list_hash_size504", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_recent.c", i32 54, i32 1}
!32 = !{ptr @__UNIQUE_ID_ip_list_perms505, !33, !"__UNIQUE_ID_ip_list_perms505", i1 false, i1 false}
!33 = !{!"../net/netfilter/xt_recent.c", i32 55, i32 1}
!34 = !{ptr @__UNIQUE_ID_ip_list_uid506, !35, !"__UNIQUE_ID_ip_list_uid506", i1 false, i1 false}
!35 = !{!"../net/netfilter/xt_recent.c", i32 56, i32 1}
!36 = !{ptr @__UNIQUE_ID_ip_list_gid507, !37, !"__UNIQUE_ID_ip_list_gid507", i1 false, i1 false}
!37 = !{!"../net/netfilter/xt_recent.c", i32 57, i32 1}
!38 = !{ptr @__param_ip_pkt_list_tot, !39, !"__param_ip_pkt_list_tot", i1 false, i1 false}
!39 = !{!"../net/netfilter/xt_recent.c", i32 61, i32 1}
!40 = !{ptr @__UNIQUE_ID_ip_pkt_list_tottype508, !39, !"__UNIQUE_ID_ip_pkt_list_tottype508", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_ip_pkt_list_tot509, !42, !"__UNIQUE_ID_ip_pkt_list_tot509", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_recent.c", i32 62, i32 1}
!43 = !{ptr @__initcall__kmod_xt_recent__511_762_recent_mt_init6, !44, !"__initcall__kmod_xt_recent__511_762_recent_mt_init6", i1 false, i1 false}
!44 = !{!"../net/netfilter/xt_recent.c", i32 762, i32 1}
!45 = !{ptr @__exitcall_recent_mt_exit, !46, !"__exitcall_recent_mt_exit", i1 false, i1 false}
!46 = !{!"../net/netfilter/xt_recent.c", i32 763, i32 1}
!47 = !{ptr @ip_list_hash_size, !48, !"ip_list_hash_size", i1 false, i1 false}
!48 = !{!"../net/netfilter/xt_recent.c", i32 44, i32 21}
!49 = !{ptr @ip_list_uid, !50, !"ip_list_uid", i1 false, i1 false}
!50 = !{!"../net/netfilter/xt_recent.c", i32 46, i32 21}
!51 = !{ptr @ip_list_gid, !52, !"ip_list_gid", i1 false, i1 false}
!52 = !{!"../net/netfilter/xt_recent.c", i32 47, i32 21}
!53 = !{ptr @ip_pkt_list_tot, !54, !"ip_pkt_list_tot", i1 false, i1 false}
!54 = !{!"../net/netfilter/xt_recent.c", i32 60, i32 21}
!55 = !{ptr @__param_str_ip_list_tot, !14, !"__param_str_ip_list_tot", i1 false, i1 false}
!56 = !{ptr @ip_list_tot, !57, !"ip_list_tot", i1 false, i1 false}
!57 = !{!"../net/netfilter/xt_recent.c", i32 43, i32 21}
!58 = !{ptr @__param_str_ip_list_hash_size, !17, !"__param_str_ip_list_hash_size", i1 false, i1 false}
!59 = !{ptr @__param_str_ip_list_perms, !20, !"__param_str_ip_list_perms", i1 false, i1 false}
!60 = !{ptr @ip_list_perms, !61, !"ip_list_perms", i1 false, i1 false}
!61 = !{!"../net/netfilter/xt_recent.c", i32 45, i32 21}
!62 = !{ptr @__param_str_ip_list_uid, !23, !"__param_str_ip_list_uid", i1 false, i1 false}
!63 = !{ptr @__param_str_ip_list_gid, !26, !"__param_str_ip_list_gid", i1 false, i1 false}
!64 = !{ptr @__param_str_ip_pkt_list_tot, !39, !"__param_str_ip_pkt_list_tot", i1 false, i1 false}
!65 = !{ptr @recent_mt_reg, !66, !"recent_mt_reg", i1 false, i1 false}
!66 = !{!"../net/netfilter/xt_recent.c", i32 694, i32 24}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!69 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.1, !68, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!73 = !{ptr @.str.2, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.3, !72, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.4, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @recent_net_id, !79, !"recent_net_id", i1 false, i1 false}
!79 = !{!"../net/netfilter/xt_recent.c", i32 95, i32 21}
!80 = !{ptr @.str.5, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/netfilter/xt_recent.c", i32 102, i32 8}
!82 = !{ptr @recent_lock, !81, !"recent_lock", i1 false, i1 false}
!83 = !{ptr @hash_rnd, !84, !"hash_rnd", i1 false, i1 false}
!84 = !{!"../net/netfilter/xt_recent.c", i32 109, i32 18}
!85 = !{ptr @recent_mt_check.___done, !86, !"___done", i1 false, i1 false}
!86 = !{!"../net/netfilter/xt_recent.c", i32 346, i32 2}
!87 = !{ptr @recent_mt_check.___once_key, !86, !"___once_key", i1 false, i1 false}
!88 = !{ptr @.str.6, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/xt_recent.c", i32 349, i32 3}
!90 = !{ptr @recent_mt_check._rs, !89, !"_rs", i1 false, i1 false}
!91 = !{ptr @__func__.recent_mt_check, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.7, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.8, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @recent_mt_check._entry, !89, !"_entry", i1 false, i1 false}
!95 = !{ptr @recent_mt_check._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @recent_mt_check._rs.9, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../net/netfilter/xt_recent.c", i32 364, i32 3}
!98 = !{ptr @.str.11, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @recent_mt_check._entry.10, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @recent_mt_check._entry_ptr.12, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.13, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netfilter/xt_recent.c", i32 103, i32 8}
!103 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @recent_mutex, !102, !"recent_mutex", i1 false, i1 false}
!105 = !{ptr @recent_mt_proc_ops, !106, !"recent_mt_proc_ops", i1 false, i1 false}
!106 = !{!"../net/netfilter/xt_recent.c", i32 627, i32 30}
!107 = !{ptr @recent_seq_ops, !108, !"recent_seq_ops", i1 false, i1 false}
!108 = !{!"../net/netfilter/xt_recent.c", i32 539, i32 36}
!109 = !{ptr @.str.15, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/netfilter/xt_recent.c", i32 528, i32 19}
!111 = !{ptr @.str.16, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/netfilter/xt_recent.c", i32 531, i32 19}
!113 = !{ptr @.str.17, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/netfilter/xt_recent.c", i32 534, i32 19}
!115 = !{ptr @.str.18, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/xt_recent.c", i32 534, i32 33}
!117 = !{ptr @.str.19, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/netfilter/xt_recent.c", i32 534, i32 39}
!119 = !{ptr @recent_mt_proc_write._rs, !120, !"_rs", i1 false, i1 false}
!120 = !{!"../net/netfilter/xt_recent.c", i32 593, i32 3}
!121 = !{ptr @__func__.recent_mt_proc_write, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.20, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @recent_mt_proc_write._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @recent_mt_proc_write._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!127 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!130 = !{ptr @.str.23, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!132 = !{ptr @recent_net_ops, !133, !"recent_net_ops", i1 false, i1 false}
!133 = !{!"../net/netfilter/xt_recent.c", i32 687, i32 33}
!134 = !{ptr @.str.24, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/netfilter/xt_recent.c", i32 639, i32 37}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i32 0, i32 33}
!147 = !{i64 2149664101}
!148 = !{i64 2149664367}
!149 = !{i64 2148849682, i64 2148849687, i64 2148849708, i64 2148849752, i64 2148849786, i64 2148849807}
!150 = !{!"auto-init"}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{i64 2152340483, i64 2152340508}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 4836038}
!155 = !{i64 4836235}
!156 = !{i64 2152321468}
