; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_hashlimit.c_pt.bc'
source_filename = "../net/netfilter/xt_hashlimit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.hashlimit_cfg3 = type { i64, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.xt_action_param = type { %union.anon.187, %union.anon.188, ptr, i32, i16, i8 }
%union.anon.187 = type { ptr }
%union.anon.188 = type { ptr }
%struct.xt_hashlimit_mtinfo1 = type { [16 x i8], %struct.hashlimit_cfg1, ptr, [4 x i8] }
%struct.hashlimit_cfg1 = type { i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_hashlimit_mtinfo2 = type { [255 x i8], %struct.hashlimit_cfg2, ptr }
%struct.hashlimit_cfg2 = type { i64, i64, i32, i32, i32, i32, i32, i8, i8 }
%struct.xt_hashlimit_mtinfo3 = type { [255 x i8], %struct.hashlimit_cfg3, ptr }
%struct.dsthash_dst = type { %union.anon.193, i16, i16 }
%union.anon.193 = type { %struct.anon.195 }
%struct.anon.195 = type { [4 x i32], [4 x i32] }
%struct.xt_hashlimit_htable = type { %struct.hlist_node, %struct.refcount_struct, i8, i8, %struct.hashlimit_cfg3, %struct.spinlock, i32, i32, %struct.delayed_work, ptr, ptr, ptr, [0 x %struct.hlist_head] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.170, %union.anon.171, [48 x i8], %union.anon.172, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.174, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.170 = type { ptr }
%union.anon.171 = type { i64 }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type { i32, ptr }
%union.anon.174 = type { %struct.anon.175 }
%struct.anon.175 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.176, i32, i32, i32, i16, i16, %union.anon.178, i32, %union.anon.179, %union.anon.180, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.176 = type { i32 }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.194 = type { i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.dsthash_ent = type { %struct.hlist_node, %struct.dsthash_dst, %struct.spinlock, i32, %struct.anon.196, %struct.callback_head }
%struct.anon.196 = type { i32, %union.anon.197 }
%union.anon.197 = type { %struct.anon.199 }
%struct.anon.199 = type { i32, i32, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.hashlimit_net = type { %struct.hlist_head, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.44, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.44 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.189, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.190, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.191, ptr, %struct.address_space, %struct.list_head, %union.anon.192, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.189 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.190 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.191 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.192 = type { ptr }

@__UNIQUE_ID_file620 = internal constant [45 x i8] c"xt_hashlimit.file=net/netfilter/xt_hashlimit\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [25 x i8] c"xt_hashlimit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author622 = internal constant [57 x i8] c"xt_hashlimit.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author623 = internal constant [56 x i8] c"xt_hashlimit.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description624 = internal constant [67 x i8] c"xt_hashlimit.description=Xtables: per hash-bucket rate-limit match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias625 = internal constant [33 x i8] c"xt_hashlimit.alias=ipt_hashlimit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias626 = internal constant [34 x i8] c"xt_hashlimit.alias=ip6t_hashlimit\00", section ".modinfo", align 1
@hashlimit_mt_reg = internal global [6 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hashlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @hashlimit_mt_v1, ptr @hashlimit_mt_check_v1, ptr @hashlimit_mt_destroy_v1, ptr null, ptr null, i32 56, i32 48, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hashlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @hashlimit_mt_v2, ptr @hashlimit_mt_check_v2, ptr @hashlimit_mt_destroy_v2, ptr null, ptr null, i32 304, i32 296, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hashlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @hashlimit_mt, ptr @hashlimit_mt_check, ptr @hashlimit_mt_destroy, ptr null, ptr null, i32 312, i32 304, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hashlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @hashlimit_mt_v1, ptr @hashlimit_mt_check_v1, ptr @hashlimit_mt_destroy_v1, ptr null, ptr null, i32 56, i32 48, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hashlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @hashlimit_mt_v2, ptr @hashlimit_mt_check_v2, ptr @hashlimit_mt_destroy_v2, ptr null, ptr null, i32 304, i32 296, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hashlimit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @hashlimit_mt, ptr @hashlimit_mt_check, ptr @hashlimit_mt_destroy, ptr null, ptr null, i32 312, i32 304, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@hashlimit_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @hashlimit_net_init, ptr null, ptr @hashlimit_net_exit, ptr null, ptr @hashlimit_net_id, i32 12 }, [32 x i8] zeroinitializer }, align 32
@hashlimit_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_xt_hashlimit__631_1331_hashlimit_mt_init6 = internal global ptr @hashlimit_mt_init, section ".initcall6.init", align 4
@__exitcall_hashlimit_mt_exit = internal global ptr @hashlimit_mt_exit, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dsthash_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/xt_hashlimit.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dsthash_alloc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013xt_hashlimit: max count of %u reached\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsthash_alloc_init\00", [45 x i8] zeroinitializer }, align 32
@dsthash_alloc_init._entry_ptr = internal global ptr @dsthash_alloc_init._entry, section ".printk_index", align 4
@dsthash_alloc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ent->lock\00", [21 x i8] zeroinitializer }, align 32
@user2rate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.user2rate = private unnamed_addr constant [10 x i8] c"user2rate\00", align 1
@user2rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.user2rate, ptr @.str, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016xt_hashlimit: invalid rate from userspace: %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@user2rate._entry_ptr = internal global ptr @user2rate._entry, section ".printk_index", align 4
@hashlimit_mt_check_common._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hashlimit_mt_check_common = private unnamed_addr constant [26 x i8] c"hashlimit_mt_check_common\00", align 1
@hashlimit_mt_check_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016xt_hashlimit: size too large, truncated to %u\0A\00", [47 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr = internal global ptr @hashlimit_mt_check_common._entry, section ".printk_index", align 4
@hashlimit_mt_check_common._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016xt_hashlimit: max too large, truncated to %u\0A\00", [48 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr.11 = internal global ptr @hashlimit_mt_check_common._entry.9, section ".printk_index", align 4
@hashlimit_mt_check_common._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016xt_hashlimit: Unknown mode mask %X, kernel too old?\0A\00", [41 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr.15 = internal global ptr @hashlimit_mt_check_common._entry.13, section ".printk_index", align 4
@hashlimit_mt_check_common._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016xt_hashlimit: invalid rate\0A\00", [34 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr.19 = internal global ptr @hashlimit_mt_check_common._entry.17, section ".printk_index", align 4
@hashlimit_mt_check_common._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016xt_hashlimit: invalid interval\0A\00", [62 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr.23 = internal global ptr @hashlimit_mt_check_common._entry.21, section ".printk_index", align 4
@hashlimit_mt_check_common._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016xt_hashlimit: overflow, rate too high: %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr.27 = internal global ptr @hashlimit_mt_check_common._entry.25, section ".printk_index", align 4
@hashlimit_mt_check_common._rs.28 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.hashlimit_mt_check_common, ptr @.str, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016xt_hashlimit: overflow, try lower: %llu/%llu\0A\00", [48 x i8] zeroinitializer }, align 32
@hashlimit_mt_check_common._entry_ptr.31 = internal global ptr @hashlimit_mt_check_common._entry.29, section ".printk_index", align 4
@hashlimit_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hashlimit_mutex, i64 52), ptr getelementptr (i8, ptr @hashlimit_mutex, i64 52) }, ptr @hashlimit_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hashlimit_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hashlimit_mutex\00", [16 x i8] zeroinitializer }, align 32
@hashlimit_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@htable_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hinfo->lock\00", [19 x i8] zeroinitializer }, align 32
@dl_seq_ops_v1 = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dl_seq_start, ptr @dl_seq_stop, ptr @dl_seq_next, ptr @dl_seq_show_v1 }, [16 x i8] zeroinitializer }, align 32
@dl_seq_ops_v2 = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dl_seq_start, ptr @dl_seq_stop, ptr @dl_seq_next, ptr @dl_seq_show_v2 }, [16 x i8] zeroinitializer }, align 32
@dl_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dl_seq_start, ptr @dl_seq_stop, ptr @dl_seq_next, ptr @dl_seq_show }, [16 x i8] zeroinitializer }, align 32
@htable_create.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&hinfo->gc_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@htable_create.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&hinfo->gc_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%ld %pI4:%u->%pI4:%u %llu %llu %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%ld %pI6:%u->%pI6:%u %llu %llu %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipt_hashlimit\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6t_hashlimit\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xt_hashlimit\00", [19 x i8] zeroinitializer }, align 32
@hashlimit_mt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014xt_hashlimit: unable to create slab cache\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hashlimit_mt_init\00", [46 x i8] zeroinitializer }, align 32
@hashlimit_mt_init._entry_ptr = internal global ptr @hashlimit_mt_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 8, i64 6, i64 17, i64 33, i64 50, i64 51, i64 132, i64 136]
@__sancov_gen_cov_switch_values.52 = internal global [130 x i64] [i64 128, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"hashlimit_net_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1285, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 206, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 243, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 249, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 515, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 850, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 854, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 865, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 873, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 878, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 883, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 890, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [16 x i8] c"hashlimit_mutex\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 174, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"hashlimit_net_id\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 60, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 45, i32 7 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 695, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 723, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 328, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"dl_seq_ops_v1\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1212, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant [14 x i8] c"dl_seq_ops_v2\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1219, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant [11 x i8] c"dl_seq_ops\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1226, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 352, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1099, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1110, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1237, i32 44 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1241, i32 45 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1305, i32 39 }
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [32 x i8] c"../net/netfilter/xt_hashlimit.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1309, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias625, ptr @__UNIQUE_ID_alias626, ptr @__UNIQUE_ID_author622, ptr @__UNIQUE_ID_author623, ptr @__UNIQUE_ID_description624, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__exitcall_hashlimit_mt_exit, ptr @__initcall__kmod_xt_hashlimit__631_1331_hashlimit_mt_init6, ptr @dsthash_alloc_init._entry, ptr @dsthash_alloc_init._entry_ptr, ptr @hashlimit_mt_check_common._entry, ptr @hashlimit_mt_check_common._entry.13, ptr @hashlimit_mt_check_common._entry.17, ptr @hashlimit_mt_check_common._entry.21, ptr @hashlimit_mt_check_common._entry.25, ptr @hashlimit_mt_check_common._entry.29, ptr @hashlimit_mt_check_common._entry.9, ptr @hashlimit_mt_check_common._entry_ptr, ptr @hashlimit_mt_check_common._entry_ptr.11, ptr @hashlimit_mt_check_common._entry_ptr.15, ptr @hashlimit_mt_check_common._entry_ptr.19, ptr @hashlimit_mt_check_common._entry_ptr.23, ptr @hashlimit_mt_check_common._entry_ptr.27, ptr @hashlimit_mt_check_common._entry_ptr.31, ptr @hashlimit_mt_exit, ptr @hashlimit_mt_init._entry, ptr @hashlimit_mt_init._entry_ptr, ptr @user2rate._entry, ptr @user2rate._entry_ptr, ptr @hashlimit_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dsthash_alloc_init.__key, ptr @.str.4, ptr @user2rate._rs, ptr @.str.5, ptr @.str.6, ptr @hashlimit_mt_check_common._rs, ptr @.str.7, ptr @hashlimit_mt_check_common._rs.8, ptr @.str.10, ptr @hashlimit_mt_check_common._rs.12, ptr @.str.14, ptr @hashlimit_mt_check_common._rs.16, ptr @.str.18, ptr @hashlimit_mt_check_common._rs.20, ptr @.str.22, ptr @hashlimit_mt_check_common._rs.24, ptr @.str.26, ptr @hashlimit_mt_check_common._rs.28, ptr @.str.30, ptr @hashlimit_mutex, ptr @.str.32, ptr @.str.33, ptr @hashlimit_net_id, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @htable_create.__key, ptr @.str.39, ptr @dl_seq_ops_v1, ptr @dl_seq_ops_v2, ptr @dl_seq_ops, ptr @htable_create.__key.40, ptr @.str.41, ptr @htable_create.__key.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsthash_alloc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsthash_alloc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user2rate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user2rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._rs.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_check_common._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htable_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_seq_ops_v1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_seq_ops_v2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htable_create.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htable_create.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashlimit_mt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hashlimit_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @xt_unregister_matches(ptr noundef nonnull @hashlimit_mt_reg, i32 noundef 6) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @hashlimit_net_ops) #15
  tail call void @rcu_barrier() #15
  %0 = load ptr, ptr @hashlimit_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hashlimit_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @hashlimit_net_ops) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_matches(ptr noundef nonnull @hashlimit_mt_reg, i32 noundef 6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err1_crit_edge, label %if.end4

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err1

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.48, i32 noundef 144, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  store ptr %call5, ptr @hashlimit_cachep, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #18
  tail call void @xt_unregister_matches(ptr noundef nonnull @hashlimit_mt_reg, i32 noundef 6) #15
  br label %err1

err1:                                             ; preds = %do.end, %if.end.err1_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.err1_crit_edge ], [ -12, %do.end ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @hashlimit_net_ops) #15
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hashlimit_mt_v1(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %cfg = alloca %struct.hashlimit_cfg3, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %hinfo1 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %hinfo1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hinfo1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #15
  %5 = getelementptr inbounds i8, ptr %cfg, i32 32
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %cfg2 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg2, align 4
  %mode1.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mode1.i, align 8
  %avg.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %avg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avg.i, align 4
  %conv.i = zext i32 %11 to i64
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %cfg, align 8
  %burst.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %burst.i, align 4
  %conv3.i = zext i32 %14 to i64
  %burst4.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 1
  %15 = ptrtoint ptr %burst4.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv3.i, ptr %burst4.i, align 8
  %size.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %size5.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %size5.i, align 4
  %max.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max.i, align 4
  %max6.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 4
  %21 = ptrtoint ptr %max6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max6.i, align 8
  %gc_interval.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %gc_interval.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gc_interval.i, align 4
  %gc_interval7.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 5
  %24 = ptrtoint ptr %gc_interval7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gc_interval7.i, align 4
  %expire.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %expire.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %expire.i, align 4
  %expire8.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 6
  %27 = ptrtoint ptr %expire8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %expire8.i, align 8
  %srcmask.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %srcmask.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %srcmask.i, align 4
  %srcmask9.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 8
  %30 = ptrtoint ptr %srcmask9.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %srcmask9.i, align 8
  %dstmask.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %2, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %dstmask.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dstmask.i, align 1
  %dstmask10.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 9
  %33 = ptrtoint ptr %dstmask10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %dstmask10.i, align 1
  %call4 = call fastcc zeroext i1 @hashlimit_mt_common(ptr noundef %skb, ptr noundef %par, ptr noundef %4, ptr noundef nonnull %cfg, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #15
  ret i1 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hashlimit_mt_check_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %cfg = alloca %struct.hashlimit_cfg3, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #15
  %2 = getelementptr inbounds i8, ptr %cfg, i32 32
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call = tail call i32 @xt_check_proc_name(ptr noundef %1, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cfg1 = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg1, align 4
  %mode1.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode1.i, align 8
  %avg.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %avg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %avg.i, align 4
  %conv.i = zext i32 %8 to i64
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %cfg, align 8
  %burst.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %burst.i, align 4
  %conv3.i = zext i32 %11 to i64
  %burst4.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 1
  %12 = ptrtoint ptr %burst4.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv3.i, ptr %burst4.i, align 8
  %size.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %size5.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 3
  %15 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %size5.i, align 4
  %max.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max.i, align 4
  %max6.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 4
  %18 = ptrtoint ptr %max6.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max6.i, align 8
  %gc_interval.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %gc_interval.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gc_interval.i, align 4
  %gc_interval7.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 5
  %21 = ptrtoint ptr %gc_interval7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %gc_interval7.i, align 4
  %expire.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %expire.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %expire.i, align 4
  %expire8.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 6
  %24 = ptrtoint ptr %expire8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %expire8.i, align 8
  %srcmask.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %srcmask.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %srcmask.i, align 4
  %srcmask9.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 8
  %27 = ptrtoint ptr %srcmask9.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %srcmask9.i, align 8
  %dstmask.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 1, i32 8
  %28 = ptrtoint ptr %dstmask.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dstmask.i, align 1
  %dstmask10.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 9
  %30 = ptrtoint ptr %dstmask10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %dstmask10.i, align 1
  %hinfo = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 2
  %call8 = call fastcc i32 @hashlimit_mt_check_common(ptr noundef %par, ptr noundef %hinfo, ptr noundef nonnull %cfg, ptr noundef %1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hashlimit_mt_destroy_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %hinfo = getelementptr inbounds %struct.xt_hashlimit_mtinfo1, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hinfo, align 8
  tail call fastcc void @htable_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hashlimit_mt_v2(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %cfg = alloca %struct.hashlimit_cfg3, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %hinfo1 = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %hinfo1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hinfo1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #15
  %5 = getelementptr inbounds i8, ptr %cfg, i32 32
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %cfg2 = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1
  %mode15.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %mode15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode15.i, align 8
  %mode16.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %mode16.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mode16.i, align 8
  %10 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %cfg2, align 8
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %cfg, align 8
  %burst19.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %burst19.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %burst19.i, align 8
  %burst20.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 1
  %15 = ptrtoint ptr %burst20.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %burst20.i, align 8
  %size21.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %size21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size21.i, align 4
  %size22.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %size22.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %size22.i, align 4
  %max23.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %max23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max23.i, align 8
  %max24.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 4
  %21 = ptrtoint ptr %max24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max24.i, align 8
  %gc_interval25.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %gc_interval25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gc_interval25.i, align 4
  %gc_interval26.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 5
  %24 = ptrtoint ptr %gc_interval26.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %gc_interval26.i, align 4
  %expire27.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %expire27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %expire27.i, align 8
  %expire28.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 6
  %27 = ptrtoint ptr %expire28.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %expire28.i, align 8
  %srcmask29.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %srcmask29.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %srcmask29.i, align 4
  %srcmask30.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 8
  %30 = ptrtoint ptr %srcmask30.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %srcmask30.i, align 8
  %dstmask31.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %2, i32 0, i32 1, i32 8
  %31 = ptrtoint ptr %dstmask31.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dstmask31.i, align 1
  %dstmask32.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 9
  %33 = ptrtoint ptr %dstmask32.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %dstmask32.i, align 1
  %call4 = call fastcc zeroext i1 @hashlimit_mt_common(ptr noundef %skb, ptr noundef %par, ptr noundef %4, ptr noundef nonnull %cfg, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #15
  ret i1 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hashlimit_mt_check_v2(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %cfg = alloca %struct.hashlimit_cfg3, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #15
  %2 = getelementptr inbounds i8, ptr %cfg, i32 32
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call = tail call i32 @xt_check_proc_name(ptr noundef %1, i32 noundef 255) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %cfg1 = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1
  %mode15.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %mode15.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode15.i, align 8
  %mode16.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %mode16.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode16.i, align 8
  %7 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cfg1, align 8
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %cfg, align 8
  %burst19.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %burst19.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %burst19.i, align 8
  %burst20.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 1
  %12 = ptrtoint ptr %burst20.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %burst20.i, align 8
  %size21.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %size21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size21.i, align 4
  %size22.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 3
  %15 = ptrtoint ptr %size22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %size22.i, align 4
  %max23.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %max23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max23.i, align 8
  %max24.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 4
  %18 = ptrtoint ptr %max24.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max24.i, align 8
  %gc_interval25.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %gc_interval25.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gc_interval25.i, align 4
  %gc_interval26.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 5
  %21 = ptrtoint ptr %gc_interval26.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %gc_interval26.i, align 4
  %expire27.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %expire27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %expire27.i, align 8
  %expire28.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 6
  %24 = ptrtoint ptr %expire28.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %expire28.i, align 8
  %srcmask29.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %srcmask29.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %srcmask29.i, align 4
  %srcmask30.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 8
  %27 = ptrtoint ptr %srcmask30.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %srcmask30.i, align 8
  %dstmask31.i = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 1, i32 8
  %28 = ptrtoint ptr %dstmask31.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dstmask31.i, align 1
  %dstmask32.i = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 9
  %30 = ptrtoint ptr %dstmask32.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %dstmask32.i, align 1
  %hinfo = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 2
  %call8 = call fastcc i32 @hashlimit_mt_check_common(ptr noundef %par, ptr noundef %hinfo, ptr noundef nonnull %cfg, ptr noundef %1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hashlimit_mt_destroy_v2(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %hinfo = getelementptr inbounds %struct.xt_hashlimit_mtinfo2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hinfo, align 8
  tail call fastcc void @htable_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hashlimit_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %hinfo1 = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %hinfo1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hinfo1, align 8
  %cfg = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, ptr %2, i32 0, i32 1
  %call = tail call fastcc zeroext i1 @hashlimit_mt_common(ptr noundef %skb, ptr noundef %par, ptr noundef %4, ptr noundef %cfg, i32 noundef 3)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hashlimit_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %call = tail call i32 @xt_check_proc_name(ptr noundef %1, i32 noundef 255) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %hinfo = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, ptr %1, i32 0, i32 2
  %cfg = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, ptr %1, i32 0, i32 1
  %call3 = tail call fastcc i32 @hashlimit_mt_check_common(ptr noundef %par, ptr noundef %hinfo, ptr noundef %cfg, ptr noundef %1, i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hashlimit_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %hinfo = getelementptr inbounds %struct.xt_hashlimit_mtinfo3, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hinfo, align 8
  tail call fastcc void @htable_put(ptr noundef %3)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hashlimit_mt_common(ptr noundef %skb, ptr nocapture noundef %par, ptr noundef %hinfo, ptr nocapture noundef readonly %cfg, i32 noundef %revision) unnamed_addr #2 align 64 {
entry:
  %_ports.i = alloca [2 x i16], align 2
  %nexthdr.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  %dst = alloca %struct.dsthash_dst, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %dst) #15
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %1 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %thoff, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #15
  %3 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %_ports.i, align 2, !annotation !134
  %4 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr.i) #15
  %6 = call ptr @memset(ptr %dst, i32 0, i32 36)
  %family.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 2
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.body.i [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb22.i
  ]

sw.bb.i:                                          ; preds = %entry
  %mode.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode.i, align 8
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end.i141_crit_edge, label %if.then.i140

sw.bb.i.if.end.i141_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i141

if.then.i140:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %daddr.i, align 4
  %dstmask.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 9
  %18 = ptrtoint ptr %dstmask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dstmask.i, align 1
  %conv2.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  %sub.i.i139 = sub nsw i32 32, %conv2.i
  %shl.i.i = shl nsw i32 -1, %sub.i.i139
  %and.i.i = and i32 %shl.i.i, %17
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %and.i.i
  %dst4.i = getelementptr inbounds %struct.anon.194, ptr %dst, i32 0, i32 1
  %20 = ptrtoint ptr %dst4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i.i, ptr %dst4.i, align 4
  br label %if.end.i141

if.end.i141:                                      ; preds = %if.then.i140, %sw.bb.i.if.end.i141_crit_edge
  %and7.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i141.if.end14.i_crit_edge, label %if.then9.i

if.end.i141.if.end14.i_crit_edge:                 ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i127.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i127.i, align 8
  %network_header.i.i128.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i128.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i128.i, align 4
  %conv.i.i129.i = zext i16 %24 to i32
  %add.ptr.i.i130.i = getelementptr i8, ptr %22, i32 %conv.i.i129.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i130.i, i32 0, i32 8
  %25 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saddr.i, align 4
  %srcmask.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %srcmask.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %srcmask.i, align 8
  %conv12.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i131.i = icmp eq i8 %28, 0
  %sub.i132.i = sub nsw i32 32, %conv12.i
  %shl.i133.i = shl nsw i32 -1, %sub.i132.i
  %and.i134.i = and i32 %shl.i133.i, %26
  %cond.i135.i = select i1 %tobool.not.i131.i, i32 0, i32 %and.i134.i
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i135.i, ptr %dst, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end.i141.if.end14.i_crit_edge
  %and17.i = and i32 %11, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end14.i.if.end_crit_edge, label %if.end20.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i136.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i136.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i136.i, align 8
  %network_header.i.i137.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i137.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i137.i, align 4
  %conv.i.i138.i = zext i16 %33 to i32
  %add.ptr.i.i139.i = getelementptr i8, ptr %31, i32 %conv.i.i138.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i139.i, i32 0, i32 6
  %34 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %protocol.i, align 1
  %36 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %nexthdr.i, align 1
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #15
  %37 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !134
  %mode24.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %mode24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode24.i, align 8
  %and25.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %sw.bb22.i.if.end35.i_crit_edge, label %if.then27.i

sw.bb22.i.if.end35.i_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then27.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #17
  %dst28.i = getelementptr inbounds %struct.anon.195, ptr %dst, i32 0, i32 1
  %head.i.i140.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i140.i, align 8
  %network_header.i.i141.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i141.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i141.i, align 4
  %conv.i.i142.i = zext i16 %43 to i32
  %add.ptr.i.i143.i = getelementptr i8, ptr %41, i32 %conv.i.i142.i
  %daddr30.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i143.i, i32 0, i32 6
  %44 = call ptr @memcpy(ptr %dst28.i, ptr %daddr30.i, i32 16)
  %dstmask33.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 9
  %45 = ptrtoint ptr %dstmask33.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dstmask33.i, align 1
  %conv34.i = zext i8 %46 to i32
  call fastcc void @hashlimit_ipv6_mask(ptr noundef %dst28.i, i32 noundef %conv34.i) #15
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then27.i, %sw.bb22.i.if.end35.i_crit_edge
  %and38.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end35.i.if.end49.i_crit_edge, label %if.then40.i

if.end35.i.if.end49.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  %head.i.i144.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i144.i, align 8
  %network_header.i.i145.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i145.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i145.i, align 4
  %conv.i.i146.i = zext i16 %50 to i32
  %add.ptr.i.i147.i = getelementptr i8, ptr %48, i32 %conv.i.i146.i
  %saddr43.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i147.i, i32 0, i32 5
  %51 = call ptr @memcpy(ptr %dst, ptr %saddr43.i, i32 16)
  %srcmask47.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 8
  %52 = ptrtoint ptr %srcmask47.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %srcmask47.i, align 8
  %conv48.i = zext i8 %53 to i32
  call fastcc void @hashlimit_ipv6_mask(ptr noundef nonnull %dst, i32 noundef %conv48.i) #15
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then40.i, %if.end35.i.if.end49.i_crit_edge
  %and52.i = and i32 %39, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #15
  br label %if.end

cleanup.i:                                        ; preds = %if.end49.i
  %head.i.i148.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %54 = ptrtoint ptr %head.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i148.i, align 8
  %network_header.i.i149.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %56 = ptrtoint ptr %network_header.i.i149.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %network_header.i.i149.i, align 4
  %conv.i.i150.i = zext i16 %57 to i32
  %add.ptr.i.i151.i = getelementptr i8, ptr %55, i32 %conv.i.i150.i
  %nexthdr57.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i151.i, i32 0, i32 3
  %58 = ptrtoint ptr %nexthdr57.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nexthdr57.i, align 2
  %60 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %nexthdr.i, align 1
  %call58.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr.i, ptr noundef nonnull %frag_off.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call58.i)
  %cmp.i142 = icmp sgt i32 %call58.i, -1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #15
  br i1 %cmp.i142, label %sw.epilogthread-pre-split.i, label %cleanup.i.hashlimit_init_dst.exit.thread_crit_edge

cleanup.i.hashlimit_init_dst.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_init_dst.exit.thread

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/xt_hashlimit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #15, !srcloc !135
  unreachable

sw.epilogthread-pre-split.i:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %.pr.i = load i8, ptr %nexthdr.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilogthread-pre-split.i, %if.end20.i
  %62 = phi i8 [ %.pr.i, %sw.epilogthread-pre-split.i ], [ %35, %if.end20.i ]
  %protoff.addr.1.i = phi i32 [ %call58.i, %sw.epilogthread-pre-split.i ], [ %2, %if.end20.i ]
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %62, label %if.else.i143 [
    i8 6, label %sw.epilog.i.if.then69.i_crit_edge
    i8 17, label %sw.epilog.i.if.then69.i_crit_edge247
    i8 33, label %sw.epilog.i.if.then69.i_crit_edge248
    i8 50, label %sw.epilog.i.if.then69.i_crit_edge249
    i8 -124, label %sw.epilog.i.if.then69.i_crit_edge250
    i8 -120, label %sw.epilog.i.if.then69.i_crit_edge251
    i8 51, label %sw.bb1.i.i
  ]

sw.epilog.i.if.then69.i_crit_edge251:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

sw.epilog.i.if.then69.i_crit_edge250:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

sw.epilog.i.if.then69.i_crit_edge249:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

sw.epilog.i.if.then69.i_crit_edge248:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

sw.epilog.i.if.then69.i_crit_edge247:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

sw.epilog.i.if.then69.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

sw.bb1.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then69.i

if.then69.i:                                      ; preds = %sw.bb1.i.i, %sw.epilog.i.if.then69.i_crit_edge, %sw.epilog.i.if.then69.i_crit_edge247, %sw.epilog.i.if.then69.i_crit_edge248, %sw.epilog.i.if.then69.i_crit_edge249, %sw.epilog.i.if.then69.i_crit_edge250, %sw.epilog.i.if.then69.i_crit_edge251
  %retval.0.i.ph.i = phi i32 [ 0, %sw.epilog.i.if.then69.i_crit_edge ], [ 0, %sw.epilog.i.if.then69.i_crit_edge247 ], [ 0, %sw.epilog.i.if.then69.i_crit_edge248 ], [ 0, %sw.epilog.i.if.then69.i_crit_edge249 ], [ 0, %sw.epilog.i.if.then69.i_crit_edge250 ], [ 0, %sw.epilog.i.if.then69.i_crit_edge251 ], [ 4, %sw.bb1.i.i ]
  %add.i = add i32 %retval.0.i.ph.i, %protoff.addr.1.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %64 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %66 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_len.i.i.i, align 8
  %68 = add i32 %add.i, %67
  %sub.i1.i.i = sub i32 %65, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %if.end73.i, label %if.end.i.i.i, !prof !136

if.end.i.i.i:                                     ; preds = %if.then69.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.hashlimit_init_dst.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.hashlimit_init_dst.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_init_dst.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %_ports.i, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.hashlimit_init_dst.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end76.i_crit_edge

lor.lhs.false.i.i.i.if.end76.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i

lor.lhs.false.i.i.i.hashlimit_init_dst.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_init_dst.exit.thread

if.else.i143:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %4, align 2
  %70 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %_ports.i, align 2
  br label %if.end76.i

if.end73.i:                                       ; preds = %if.then69.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i152.i = getelementptr i8, ptr %72, i32 %add.i
  %tobool74.not.i = icmp eq ptr %add.ptr.i.i152.i, null
  br i1 %tobool74.not.i, label %if.end73.i.hashlimit_init_dst.exit.thread_crit_edge, label %if.end73.i.if.end76.i_crit_edge

if.end73.i.if.end76.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76.i

if.end73.i.hashlimit_init_dst.exit.thread_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_init_dst.exit.thread

if.end76.i:                                       ; preds = %if.end73.i.if.end76.i_crit_edge, %if.else.i143, %lor.lhs.false.i.i.i.if.end76.i_crit_edge
  %ports.0165.i = phi ptr [ %add.ptr.i.i152.i, %if.end73.i.if.end76.i_crit_edge ], [ %_ports.i, %if.else.i143 ], [ %_ports.i, %lor.lhs.false.i.i.i.if.end76.i_crit_edge ]
  %mode78.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %mode78.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mode78.i, align 8
  %and79.i = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end76.i.if.end83.i_crit_edge, label %if.then81.i

if.end76.i.if.end83.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %ports.0165.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ports.0165.i, align 2
  %src_port.i = getelementptr inbounds %struct.dsthash_dst, ptr %dst, i32 0, i32 1
  %77 = ptrtoint ptr %src_port.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %src_port.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end76.i.if.end83.i_crit_edge
  %and86.i = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end83.i.if.end_crit_edge, label %if.then88.i

if.end83.i.if.end_crit_edge:                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then88.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx89.i = getelementptr i16, ptr %ports.0165.i, i32 1
  %78 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx89.i, align 2
  %dst_port.i = getelementptr inbounds %struct.dsthash_dst, ptr %dst, i32 0, i32 2
  %80 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %dst_port.i, align 2
  br label %if.end

hashlimit_init_dst.exit.thread:                   ; preds = %if.end73.i.hashlimit_init_dst.exit.thread_crit_edge, %lor.lhs.false.i.i.i.hashlimit_init_dst.exit.thread_crit_edge, %if.end.i.i.i.hashlimit_init_dst.exit.thread_crit_edge, %cleanup.i.hashlimit_init_dst.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #15
  br label %hotdrop

if.end:                                           ; preds = %if.then88.i, %if.end83.i.if.end_crit_edge, %cleanup.thread.i, %if.end14.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #15
  call fastcc void @local_bh_disable()
  %call1 = call fastcc ptr @dsthash_find(ptr noundef %hinfo, ptr noundef nonnull %dst)
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.then3, label %if.else.i136

if.then3:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %lock.i) #15
  %call.i = call fastcc ptr @dsthash_find(ptr noundef %hinfo, ptr noundef nonnull %dst) #15
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end.i146, label %if.then7

if.end.i146:                                      ; preds = %if.then3
  %rnd_initialized.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 3
  %81 = ptrtoint ptr %rnd_initialized.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rnd_initialized.i, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i145 = icmp eq i8 %82, 0
  br i1 %tobool.not.i145, label %if.then5.i, label %if.end.i146.if.end7.i_crit_edge, !prof !138

if.end.i146.if.end7.i_crit_edge:                  ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #17
  %rnd.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 6
  call void @get_random_bytes(ptr noundef %rnd.i, i32 noundef 4) #15
  %83 = ptrtoint ptr %rnd_initialized.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %rnd_initialized.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i146.if.end7.i_crit_edge
  %max.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 4
  %84 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool8.not.i147 = icmp eq i32 %85, 0
  br i1 %tobool8.not.i147, label %if.end7.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end24.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %count.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 7
  %86 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %85)
  %cmp11.not.i = icmp ult i32 %87, %85
  br i1 %cmp11.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %do.body.i148

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i

do.body.i148:                                     ; preds = %land.lhs.true.i
  %call13.i = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %do.body.i148.if.then6_crit_edge, label %do.end.i

do.body.i148.if.then6_crit_edge:                  ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

do.end.i:                                         ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max.i, align 8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %89) #18
  br label %if.then6

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %if.end7.i.if.end24.i_crit_edge
  %90 = load ptr, ptr @hashlimit_cachep, align 4
  %call23.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %90, i32 noundef 2592) #15
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %if.end24.i.if.then6_crit_edge, label %if.then26.i

if.end24.i.if.then6_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.then26.i:                                      ; preds = %if.end24.i
  %dst27.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 1
  %91 = call ptr @memcpy(ptr %dst27.i, ptr %dst, i32 36)
  %lock29.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock29.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @dsthash_alloc_init.__key, i16 noundef signext 3) #15
  call void @_raw_spin_lock(ptr noundef %lock29.i) #15
  %call34.i = call fastcc i32 @hash_dst(ptr noundef %hinfo, ptr noundef nonnull %dst) #15
  %arrayidx.i = getelementptr %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 12, i32 %call34.i
  %92 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i, align 4
  %94 = ptrtoint ptr %call23.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %call23.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call23.i, i32 0, i32 1
  %95 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !139
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call23.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i149 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i149, label %if.then26.i.if.else11_crit_edge, label %do.body49.i.i

if.then26.i.if.else11_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else11

do.body49.i.i:                                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %93, i32 0, i32 1
  %97 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call23.i, ptr %pprev51.i.i, align 4
  br label %if.else11

if.then6:                                         ; preds = %if.end24.i.if.then6_crit_edge, %do.end.i, %do.body.i148.if.then6_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  call fastcc void @local_bh_enable()
  br label %hotdrop

if.then7:                                         ; preds = %if.then3
  call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  %expire = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 6
  %98 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %expire, align 8
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %99) #15
  %add = add i32 %call2.i, %0
  %expires = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 3
  %100 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add, ptr %expires, align 8
  %mode = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %101 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mode, align 8
  %rateinfo.i = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4
  %103 = ptrtoint ptr %rateinfo.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rateinfo.i, align 8
  %sub.i = sub i32 %0, %104
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %104)
  %cmp.i152 = icmp eq i32 %0, %104
  br i1 %cmp.i152, label %if.then7.if.end27_crit_edge, label %if.end.i155

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end.i155:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %revision)
  %cmp1.i = icmp slt i32 %revision, 3
  %and.i153 = and i32 %102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  %or.cond.i = or i1 %cmp1.i, %tobool.not.i154
  br i1 %or.cond.i, label %if.end22.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i155
  %105 = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 8
  %mul.i = mul i32 %107, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul.i)
  %cmp6.i = icmp ult i32 %sub.i, %mul.i
  br i1 %cmp6.i, label %if.then2.i.if.end27_crit_edge, label %if.end9.i

if.then2.i.if.end27_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end9.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i32 %mul.i to i64
  %conv5.i = zext i32 %sub.i to i64
  %108 = ptrtoint ptr %rateinfo.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %0, ptr %rateinfo.i, align 8
  %current_rate.i = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %109 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %current_rate.i, align 8
  %mul13.i = mul i64 %110, %conv.i
  %rate.i = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 3
  %111 = ptrtoint ptr %rate.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %rate.i, align 8
  %mul16.i = mul i64 %112, %conv5.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul13.i, i64 %mul16.i)
  %cmp17.i = icmp ugt i64 %mul13.i, %mul16.i
  %conv18.i = zext i1 %cmp17.i to i32
  %prev_window.i = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %prev_window.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv18.i, ptr %prev_window.i, align 4
  %114 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 0, ptr %current_rate.i, align 8
  br label %if.end27

if.end22.i:                                       ; preds = %if.end.i155
  %115 = ptrtoint ptr %rateinfo.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %0, ptr %rateinfo.i, align 8
  %and25.i156 = and i32 %102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i156)
  %tobool26.not.i157 = icmp eq i32 %and25.i156, 0
  br i1 %tobool26.not.i157, label %if.else.i160, label %if.then27.i159

if.then27.i159:                                   ; preds = %if.end22.i
  %116 = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %116, align 8
  %mul29.i = shl i32 %sub.i, 25
  %conv30.i = zext i32 %mul29.i to i64
  %add.i158 = add i64 %118, %conv30.i
  store i64 %add.i158, ptr %116, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %add.i158)
  %cmp35.not.i = icmp ult i64 %118, %add.i158
  br i1 %cmp35.not.i, label %if.then27.i159.if.end50.i_crit_edge, label %if.then37.i

if.then27.i159.if.end50.i_crit_edge:              ; preds = %if.then27.i159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.i

if.then37.i:                                      ; preds = %if.then27.i159
  call void @__sanitizer_cov_trace_pc() #17
  %119 = ptrtoint ptr %116 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 3355443200, ptr %116, align 8
  br label %if.end27

if.else.i160:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %revision)
  %cmp42.i = icmp eq i32 %revision, 1
  %cond.i = select i1 %cmp42.i, i64 256, i64 1099511627776
  %conv44.i = zext i32 %sub.i to i64
  %mul45.i = mul i64 %cond.i, %conv44.i
  %120 = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %120, align 8
  %add48.i = add i64 %122, %mul45.i
  store i64 %add48.i, ptr %120, align 8
  %credit_cap.i = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %123 = ptrtoint ptr %credit_cap.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %credit_cap.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else.i160, %if.then27.i159.if.end50.i_crit_edge
  %cap.0.i = phi i64 [ %124, %if.else.i160 ], [ 3355443200, %if.then27.i159.if.end50.i_crit_edge ]
  %125 = getelementptr inbounds %struct.dsthash_ent, ptr %call.i, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %125, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %cap.0.i)
  %cmp53.i = icmp ugt i64 %127, %cap.0.i
  br i1 %cmp53.i, label %if.then55.i, label %if.end50.i.if.end27_crit_edge

if.end50.i.if.end27_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #17
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %cap.0.i, ptr %125, align 8
  br label %if.end27

if.else11:                                        ; preds = %do.body49.i.i, %if.then26.i.if.else11_crit_edge
  %count35.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 7
  %129 = ptrtoint ptr %count35.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %count35.i, align 8
  %inc.i = add i32 %130, 1
  store i32 %inc.i, ptr %count35.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %131 = load volatile i32, ptr @jiffies, align 128
  %expire13 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 6
  %132 = ptrtoint ptr %expire13 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %expire13, align 8
  %call2.i126 = call i32 @__msecs_to_jiffies(i32 noundef %133) #15
  %add15 = add i32 %call2.i126, %131
  %expires16 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 3
  %134 = ptrtoint ptr %expires16 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add15, ptr %expires16, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %rateinfo.i161 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4
  %136 = ptrtoint ptr %rateinfo.i161 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %rateinfo.i161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %revision)
  %cmp.i162 = icmp sgt i32 %revision, 2
  br i1 %cmp.i162, label %land.lhs.true.i166, label %if.else11.if.else39.i_crit_edge

if.else11.if.else39.i_crit_edge:                  ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else39.i

land.lhs.true.i166:                               ; preds = %if.else11
  %mode.i163 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %137 = ptrtoint ptr %mode.i163 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mode.i163, align 8
  %and.i164 = and i32 %138, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool.not.i165, label %land.lhs.true.i166.if.else39.i_crit_edge, label %if.then.i169

land.lhs.true.i166.if.else39.i_crit_edge:         ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else39.i

if.then.i169:                                     ; preds = %land.lhs.true.i166
  %cfg.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4
  %139 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1
  %prev_window.i167 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 1
  %140 = ptrtoint ptr %prev_window.i167 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %prev_window.i167, align 4
  %current_rate.i168 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %141 = ptrtoint ptr %current_rate.i168 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 0, ptr %current_rate.i168, align 8
  %142 = ptrtoint ptr %mode.i163 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mode.i163, align 8
  %and5.i = and i32 %143, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %144 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %cfg.i, align 8
  br i1 %tobool6.not.i, label %if.else23.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then.i169
  %conv.i170 = trunc i64 %145 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i170)
  %tobool.not.i.i171 = icmp eq i32 %conv.i170, 0
  br i1 %tobool.not.i.i171, label %if.then7.i.user2rate_bytes.exit.i_crit_edge, label %cond.true.i.i

if.then7.i.user2rate_bytes.exit.i_crit_edge:      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %user2rate_bytes.exit.i

cond.true.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  %div.i.i172 = udiv i32 -1, %conv.i170
  br label %user2rate_bytes.exit.i

user2rate_bytes.exit.i:                           ; preds = %cond.true.i.i, %if.then7.i.user2rate_bytes.exit.i_crit_edge
  %cond.i.i173 = phi i32 [ %div.i.i172, %cond.true.i.i ], [ -1, %if.then7.i.user2rate_bytes.exit.i_crit_edge ]
  %conv.i.i = zext i32 %cond.i.i173 to i64
  %sub.i.i174 = shl nuw nsw i64 %conv.i.i, 4
  %shl.i.i175 = add nsw i64 %sub.i.i174, -16
  %rate.i176 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 3
  %146 = ptrtoint ptr %rate.i176 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %shl.i.i175, ptr %rate.i176, align 8
  %burst.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 1
  %147 = ptrtoint ptr %burst.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %burst.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %148)
  %tobool11.not.i = icmp eq i64 %148, 0
  %mul.i177 = select i1 %tobool11.not.i, i64 1, i64 %148
  %spec.select.i = mul i64 %mul.i177, %shl.i.i175
  br label %if.end35.i179

if.else23.i:                                      ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %145)
  %cmp.not.i.i = icmp eq i64 %145, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i64 @div64_u64(i64 noundef 1000000, i64 noundef %145) #15
  br label %user2rate.exit.i

if.else.i.i:                                      ; preds = %if.else23.i
  %call1.i.i = call i32 @___ratelimit(ptr noundef nonnull @user2rate._rs, ptr noundef nonnull @__func__.user2rate) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i108.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i108.i, label %if.else.i.i.user2rate.exit.i_crit_edge, label %do.end.i.i

if.else.i.i.user2rate.exit.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %user2rate.exit.i

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef 0) #18
  br label %user2rate.exit.i

user2rate.exit.i:                                 ; preds = %do.end.i.i, %if.else.i.i.user2rate.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i64 [ %call.i.i, %if.then.i.i ], [ 0, %do.end.i.i ], [ 0, %if.else.i.i.user2rate.exit.i_crit_edge ]
  %rate28.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 3
  %149 = ptrtoint ptr %rate28.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %retval.0.i.i, ptr %rate28.i, align 8
  %burst30.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %burst30.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %burst30.i, align 8
  %add.i178 = add i64 %151, %retval.0.i.i
  br label %if.end35.i179

if.end35.i179:                                    ; preds = %user2rate.exit.i, %user2rate_bytes.exit.i
  %mul.sink.i = phi i64 [ %add.i178, %user2rate.exit.i ], [ %spec.select.i, %user2rate_bytes.exit.i ]
  %burst18.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 4
  %152 = ptrtoint ptr %burst18.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %mul.sink.i, ptr %burst18.i, align 8
  %interval.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 7
  %153 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %interval.i, align 4
  %155 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %139, align 8
  br label %if.end27

if.else39.i:                                      ; preds = %land.lhs.true.i166.if.else39.i_crit_edge, %if.else11.if.else39.i_crit_edge
  %cfg40.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4
  %mode41.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %156 = ptrtoint ptr %mode41.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mode41.i, align 8
  %and42.i = and i32 %157, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.else55.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #17
  %158 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 3355443200, ptr %158, align 8
  %160 = ptrtoint ptr %cfg40.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %cfg40.i, align 8
  %conv.i109.i = and i64 %161, 4294967295
  %mul.i.i = mul nuw i64 %conv.i109.i, 3355443200
  %shr.i.i = lshr i64 %mul.i.i, 32
  %cost.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 3
  %162 = ptrtoint ptr %cost.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %shr.i.i, ptr %cost.i, align 8
  %burst53.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 1
  %163 = ptrtoint ptr %burst53.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %burst53.i, align 8
  %credit_cap.i180 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %165 = ptrtoint ptr %credit_cap.i180 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %credit_cap.i180, align 8
  br label %if.end27

if.else55.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #17
  %166 = ptrtoint ptr %cfg40.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %cfg40.i, align 8
  %burst59.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 1
  %168 = ptrtoint ptr %burst59.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %burst59.i, align 8
  %mul60.i = mul i64 %169, %167
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %revision)
  %cmp.i.i = icmp eq i32 %revision, 1
  %mul.i110.i = select i1 %cmp.i.i, i64 25600, i64 109951162777600
  %cond.i111.i = select i1 %cmp.i.i, i64 10000, i64 1000000
  %call7.i.i = call i64 @div64_u64(i64 noundef %mul.i110.i, i64 noundef %cond.i111.i) #15
  %mul8.i.i = mul i64 %mul60.i, %call7.i.i
  %170 = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %mul8.i.i, ptr %170, align 8
  %172 = ptrtoint ptr %cfg40.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %cfg40.i, align 8
  %call7.i115.i = call i64 @div64_u64(i64 noundef %mul.i110.i, i64 noundef %cond.i111.i) #15
  %mul8.i116.i = mul i64 %call7.i115.i, %173
  %cost68.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 3
  %174 = ptrtoint ptr %cost68.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %mul8.i116.i, ptr %cost68.i, align 8
  %175 = ptrtoint ptr %170 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %170, align 8
  %credit_cap72.i = getelementptr inbounds %struct.dsthash_ent, ptr %call23.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %177 = ptrtoint ptr %credit_cap72.i to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %176, ptr %credit_cap72.i, align 8
  br label %if.end27

if.else.i136:                                     ; preds = %if.end
  %expire21 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 6
  %178 = ptrtoint ptr %expire21 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %expire21, align 8
  %call2.i135 = call i32 @__msecs_to_jiffies(i32 noundef %179) #15
  %add23 = add i32 %call2.i135, %0
  %expires24 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 3
  %180 = ptrtoint ptr %expires24 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add23, ptr %expires24, align 8
  %mode26 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 4, i32 2
  %181 = ptrtoint ptr %mode26 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mode26, align 8
  %rateinfo.i181 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4
  %183 = ptrtoint ptr %rateinfo.i181 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rateinfo.i181, align 8
  %sub.i182 = sub i32 %0, %184
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %184)
  %cmp.i183 = icmp eq i32 %0, %184
  br i1 %cmp.i183, label %if.else.i136.if.end27_crit_edge, label %if.end.i188

if.else.i136.if.end27_crit_edge:                  ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end.i188:                                      ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %revision)
  %cmp1.i184 = icmp slt i32 %revision, 3
  %and.i185 = and i32 %182, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool.not.i186 = icmp eq i32 %and.i185, 0
  %or.cond.i187 = or i1 %cmp1.i184, %tobool.not.i186
  br i1 %or.cond.i187, label %if.end22.i204, label %if.then2.i191

if.then2.i191:                                    ; preds = %if.end.i188
  %185 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 8
  %mul.i189 = mul i32 %187, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i182, i32 %mul.i189)
  %cmp6.i190 = icmp ult i32 %sub.i182, %mul.i189
  br i1 %cmp6.i190, label %if.then2.i191.if.end27_crit_edge, label %if.end9.i201

if.then2.i191.if.end27_crit_edge:                 ; preds = %if.then2.i191
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end9.i201:                                     ; preds = %if.then2.i191
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i192 = zext i32 %mul.i189 to i64
  %conv5.i193 = zext i32 %sub.i182 to i64
  %188 = ptrtoint ptr %rateinfo.i181 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %0, ptr %rateinfo.i181, align 8
  %current_rate.i194 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1, i32 0, i32 2
  %189 = ptrtoint ptr %current_rate.i194 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %current_rate.i194, align 8
  %mul13.i195 = mul i64 %190, %conv.i192
  %rate.i196 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1, i32 0, i32 3
  %191 = ptrtoint ptr %rate.i196 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %rate.i196, align 8
  %mul16.i197 = mul i64 %192, %conv5.i193
  call void @__sanitizer_cov_trace_cmp8(i64 %mul13.i195, i64 %mul16.i197)
  %cmp17.i198 = icmp ugt i64 %mul13.i195, %mul16.i197
  %conv18.i199 = zext i1 %cmp17.i198 to i32
  %prev_window.i200 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1, i32 0, i32 1
  %193 = ptrtoint ptr %prev_window.i200 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %conv18.i199, ptr %prev_window.i200, align 4
  %194 = ptrtoint ptr %current_rate.i194 to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 0, ptr %current_rate.i194, align 8
  br label %if.end27

if.end22.i204:                                    ; preds = %if.end.i188
  %195 = ptrtoint ptr %rateinfo.i181 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %0, ptr %rateinfo.i181, align 8
  %and25.i202 = and i32 %182, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i202)
  %tobool26.not.i203 = icmp eq i32 %and25.i202, 0
  br i1 %tobool26.not.i203, label %if.else.i217, label %if.then27.i209

if.then27.i209:                                   ; preds = %if.end22.i204
  %196 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %196, align 8
  %mul29.i205 = shl i32 %sub.i182, 25
  %conv30.i206 = zext i32 %mul29.i205 to i64
  %add.i207 = add i64 %198, %conv30.i206
  store i64 %add.i207, ptr %196, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %198, i64 %add.i207)
  %cmp35.not.i208 = icmp ult i64 %198, %add.i207
  br i1 %cmp35.not.i208, label %if.then27.i209.if.end50.i220_crit_edge, label %if.then37.i210

if.then27.i209.if.end50.i220_crit_edge:           ; preds = %if.then27.i209
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.i220

if.then37.i210:                                   ; preds = %if.then27.i209
  call void @__sanitizer_cov_trace_pc() #17
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 3355443200, ptr %196, align 8
  br label %if.end27

if.else.i217:                                     ; preds = %if.end22.i204
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %revision)
  %cmp42.i211 = icmp eq i32 %revision, 1
  %cond.i212 = select i1 %cmp42.i211, i64 256, i64 1099511627776
  %conv44.i213 = zext i32 %sub.i182 to i64
  %mul45.i214 = mul i64 %cond.i212, %conv44.i213
  %200 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %200, align 8
  %add48.i215 = add i64 %202, %mul45.i214
  store i64 %add48.i215, ptr %200, align 8
  %credit_cap.i216 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1, i32 0, i32 2
  %203 = ptrtoint ptr %credit_cap.i216 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %credit_cap.i216, align 8
  br label %if.end50.i220

if.end50.i220:                                    ; preds = %if.else.i217, %if.then27.i209.if.end50.i220_crit_edge
  %cap.0.i218 = phi i64 [ %204, %if.else.i217 ], [ 3355443200, %if.then27.i209.if.end50.i220_crit_edge ]
  %205 = getelementptr inbounds %struct.dsthash_ent, ptr %call1, i32 0, i32 4, i32 1
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %205, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %207, i64 %cap.0.i218)
  %cmp53.i219 = icmp ugt i64 %207, %cap.0.i218
  br i1 %cmp53.i219, label %if.then55.i221, label %if.end50.i220.if.end27_crit_edge

if.end50.i220.if.end27_crit_edge:                 ; preds = %if.end50.i220
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then55.i221:                                   ; preds = %if.end50.i220
  call void @__sanitizer_cov_trace_pc() #17
  %208 = ptrtoint ptr %205 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %cap.0.i218, ptr %205, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then55.i221, %if.end50.i220.if.end27_crit_edge, %if.then37.i210, %if.end9.i201, %if.then2.i191.if.end27_crit_edge, %if.else.i136.if.end27_crit_edge, %if.else55.i, %if.then44.i, %if.end35.i179, %if.then55.i, %if.end50.i.if.end27_crit_edge, %if.then37.i, %if.end9.i, %if.then2.i.if.end27_crit_edge, %if.then7.if.end27_crit_edge
  %dh.0 = phi ptr [ %call.i, %if.then7.if.end27_crit_edge ], [ %call.i, %if.then2.i.if.end27_crit_edge ], [ %call.i, %if.end9.i ], [ %call.i, %if.then37.i ], [ %call.i, %if.end50.i.if.end27_crit_edge ], [ %call.i, %if.then55.i ], [ %call23.i, %if.end35.i179 ], [ %call23.i, %if.then44.i ], [ %call23.i, %if.else55.i ], [ %call1, %if.else.i136.if.end27_crit_edge ], [ %call1, %if.then2.i191.if.end27_crit_edge ], [ %call1, %if.end9.i201 ], [ %call1, %if.then37.i210 ], [ %call1, %if.end50.i220.if.end27_crit_edge ], [ %call1, %if.then55.i221 ]
  %mode28 = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 2
  %209 = ptrtoint ptr %mode28 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %mode28, align 8
  %and = and i32 %210, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  %and49 = and i32 %210, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool29.not, label %if.end47, label %if.then30

if.then30:                                        ; preds = %if.end27
  br i1 %tobool50.not, label %if.then30.cond.end_crit_edge, label %cond.true

if.then30.cond.end_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %211 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then30.cond.end_crit_edge
  %cond = phi i32 [ %212, %cond.true ], [ 1, %if.then30.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  %current_rate = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1, i32 0, i32 2
  %213 = ptrtoint ptr %current_rate to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %current_rate, align 8
  %add34 = add i64 %214, %conv
  store i64 %add34, ptr %current_rate, align 8
  %prev_window = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1, i32 0, i32 1
  %215 = ptrtoint ptr %prev_window to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %prev_window, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool36.not = icmp eq i32 %216, 0
  br i1 %tobool36.not, label %land.lhs.true, label %cond.end.overlimit_crit_edge

cond.end.overlimit_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %overlimit

land.lhs.true:                                    ; preds = %cond.end
  %burst = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1, i32 0, i32 4
  %217 = ptrtoint ptr %burst to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %burst, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %218)
  %cmp40.not = icmp ugt i64 %add34, %218
  br i1 %cmp40.not, label %land.lhs.true.overlimit_crit_edge, label %if.then42

land.lhs.true.overlimit_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %overlimit

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %lock = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 2
  call void @_raw_spin_unlock(ptr noundef %lock) #15
  call fastcc void @local_bh_enable()
  %219 = ptrtoint ptr %mode28 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %mode28, align 8
  %and44 = and i32 %220, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br label %cleanup

if.end47:                                         ; preds = %if.end27
  br i1 %tobool50.not, label %if.else55, label %if.then51

if.then51:                                        ; preds = %if.end47
  %len52 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %221 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %len52, align 4
  %shr.i.i223 = lshr i32 %222, 4
  %add.i.i = add nuw nsw i32 %shr.i.i223, 1
  %conv.i224 = zext i32 %add.i.i to i64
  %223 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1
  %cost.i225 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1, i32 0, i32 3
  %224 = ptrtoint ptr %cost.i225 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %cost.i225, align 8
  %mul.i226 = mul i64 %225, %conv.i224
  call void @__sanitizer_cov_trace_const_cmp8(i64 3355443200, i64 %mul.i226)
  %cmp.i227 = icmp ugt i64 %mul.i226, 3355443200
  br i1 %cmp.i227, label %if.then.i228, label %if.then51.if.end.i229_crit_edge, !prof !138

if.then51.if.end.i229_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i229

if.then.i228:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i229

if.end.i229:                                      ; preds = %if.then.i228, %if.then51.if.end.i229_crit_edge
  %tmp.0.i = phi i64 [ 3355443200, %if.then.i228 ], [ %mul.i226, %if.then51.if.end.i229_crit_edge ]
  %226 = ptrtoint ptr %223 to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %223, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %227, i64 %tmp.0.i)
  %cmp4.i = icmp ult i64 %227, %tmp.0.i
  br i1 %cmp4.i, label %land.lhs.true.i231, label %if.end.i229.if.end58_crit_edge

if.end.i229.if.end58_crit_edge:                   ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

land.lhs.true.i231:                               ; preds = %if.end.i229
  %credit_cap.i230 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1, i32 0, i32 2
  %228 = ptrtoint ptr %credit_cap.i230 to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %credit_cap.i230, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %229)
  %tobool7.not.i = icmp eq i64 %229, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i231.if.end58_crit_edge, label %if.then8.i

land.lhs.true.i231.if.end58_crit_edge:            ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end58

if.then8.i:                                       ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i = add i64 %229, -1
  %230 = ptrtoint ptr %credit_cap.i230 to i32
  call void @__asan_store8_noabort(i32 %230)
  store i64 %dec.i, ptr %credit_cap.i230, align 8
  %231 = ptrtoint ptr %223 to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 3355443200, ptr %223, align 8
  br label %if.end58

if.else55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  %cost57 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1, i32 0, i32 3
  %232 = ptrtoint ptr %cost57 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %cost57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then8.i, %land.lhs.true.i231.if.end58_crit_edge, %if.end.i229.if.end58_crit_edge
  %cost.0 = phi i64 [ %233, %if.else55 ], [ %tmp.0.i, %if.end.i229.if.end58_crit_edge ], [ %tmp.0.i, %land.lhs.true.i231.if.end58_crit_edge ], [ %tmp.0.i, %if.then8.i ]
  %234 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 4, i32 1
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %234, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %236, i64 %cost.0)
  %cmp60.not = icmp ult i64 %236, %cost.0
  br i1 %cmp60.not, label %if.end58.overlimit_crit_edge, label %if.then62

if.end58.overlimit_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %overlimit

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i64 %236, %cost.0
  %237 = ptrtoint ptr %234 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %sub, ptr %234, align 8
  %lock65 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 2
  call void @_raw_spin_unlock(ptr noundef %lock65) #15
  call fastcc void @local_bh_enable()
  %238 = ptrtoint ptr %mode28 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mode28, align 8
  %and67 = and i32 %239, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br label %cleanup

overlimit:                                        ; preds = %if.end58.overlimit_crit_edge, %land.lhs.true.overlimit_crit_edge, %cond.end.overlimit_crit_edge
  %lock71 = getelementptr inbounds %struct.dsthash_ent, ptr %dh.0, i32 0, i32 2
  call void @_raw_spin_unlock(ptr noundef %lock71) #15
  call fastcc void @local_bh_enable()
  %240 = ptrtoint ptr %mode28 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %mode28, align 8
  %and73 = and i32 %241, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74 = icmp ne i32 %and73, 0
  br label %cleanup

hotdrop:                                          ; preds = %if.then6, %hashlimit_init_dst.exit.thread
  %hotdrop75 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %242 = ptrtoint ptr %hotdrop75 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %hotdrop75, align 2
  br label %cleanup

cleanup:                                          ; preds = %hotdrop, %overlimit, %if.then62, %if.then42
  %retval.0 = phi i1 [ false, %hotdrop ], [ %tobool74, %overlimit ], [ %tobool45.not, %if.then42 ], [ %tobool68.not, %if.then62 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dst) #15
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dsthash_find(ptr noundef %ht, ptr nocapture noundef readonly %dst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hash_dst(ptr noundef %ht, ptr noundef %dst)
  %arrayidx = getelementptr %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 12, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %do.body.for.cond.preheader_crit_edge

do.body.for.cond.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true7

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @dsthash_find.__warned, align 1
  br i1 %.b51, label %land.lhs.true7.for.cond.preheader_crit_edge, label %if.then9

land.lhs.true7.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @dsthash_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.1) #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then9, %land.lhs.true7.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %do.body.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %ent.0.in = phi ptr [ %ent.0, %for.body.for.cond_crit_edge ], [ %arrayidx, %for.cond.preheader ]
  %2 = ptrtoint ptr %ent.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ent.0 = load volatile ptr, ptr %ent.0.in, align 4
  %tobool19.not = icmp eq ptr %ent.0, null
  br i1 %tobool19.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dst.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.0, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(36) %dst.i, ptr noundef dereferenceable(36) %dst, i32 36) #19
  %tobool.not.i53 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i53, label %if.then21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %lock = getelementptr inbounds %struct.dsthash_ent, ptr %ent.0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ent.0, %if.then21 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @hashlimit_ipv6_mask(ptr nocapture noundef %i, i32 noundef %p) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %p to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %p, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge54
    i32 2, label %entry.sw.bb_crit_edge55
    i32 3, label %entry.sw.bb_crit_edge56
    i32 4, label %entry.sw.bb_crit_edge57
    i32 5, label %entry.sw.bb_crit_edge58
    i32 6, label %entry.sw.bb_crit_edge59
    i32 7, label %entry.sw.bb_crit_edge60
    i32 8, label %entry.sw.bb_crit_edge61
    i32 9, label %entry.sw.bb_crit_edge62
    i32 10, label %entry.sw.bb_crit_edge63
    i32 11, label %entry.sw.bb_crit_edge64
    i32 12, label %entry.sw.bb_crit_edge65
    i32 13, label %entry.sw.bb_crit_edge66
    i32 14, label %entry.sw.bb_crit_edge67
    i32 15, label %entry.sw.bb_crit_edge68
    i32 16, label %entry.sw.bb_crit_edge69
    i32 17, label %entry.sw.bb_crit_edge70
    i32 18, label %entry.sw.bb_crit_edge71
    i32 19, label %entry.sw.bb_crit_edge72
    i32 20, label %entry.sw.bb_crit_edge73
    i32 21, label %entry.sw.bb_crit_edge74
    i32 22, label %entry.sw.bb_crit_edge75
    i32 23, label %entry.sw.bb_crit_edge76
    i32 24, label %entry.sw.bb_crit_edge77
    i32 25, label %entry.sw.bb_crit_edge78
    i32 26, label %entry.sw.bb_crit_edge79
    i32 27, label %entry.sw.bb_crit_edge80
    i32 28, label %entry.sw.bb_crit_edge81
    i32 29, label %entry.sw.bb_crit_edge82
    i32 30, label %entry.sw.bb_crit_edge83
    i32 31, label %entry.sw.bb_crit_edge84
    i32 32, label %entry.sw.bb5_crit_edge
    i32 33, label %entry.sw.bb5_crit_edge85
    i32 34, label %entry.sw.bb5_crit_edge86
    i32 35, label %entry.sw.bb5_crit_edge87
    i32 36, label %entry.sw.bb5_crit_edge88
    i32 37, label %entry.sw.bb5_crit_edge89
    i32 38, label %entry.sw.bb5_crit_edge90
    i32 39, label %entry.sw.bb5_crit_edge91
    i32 40, label %entry.sw.bb5_crit_edge92
    i32 41, label %entry.sw.bb5_crit_edge93
    i32 42, label %entry.sw.bb5_crit_edge94
    i32 43, label %entry.sw.bb5_crit_edge95
    i32 44, label %entry.sw.bb5_crit_edge96
    i32 45, label %entry.sw.bb5_crit_edge97
    i32 46, label %entry.sw.bb5_crit_edge98
    i32 47, label %entry.sw.bb5_crit_edge99
    i32 48, label %entry.sw.bb5_crit_edge100
    i32 49, label %entry.sw.bb5_crit_edge101
    i32 50, label %entry.sw.bb5_crit_edge102
    i32 51, label %entry.sw.bb5_crit_edge103
    i32 52, label %entry.sw.bb5_crit_edge104
    i32 53, label %entry.sw.bb5_crit_edge105
    i32 54, label %entry.sw.bb5_crit_edge106
    i32 55, label %entry.sw.bb5_crit_edge107
    i32 56, label %entry.sw.bb5_crit_edge108
    i32 57, label %entry.sw.bb5_crit_edge109
    i32 58, label %entry.sw.bb5_crit_edge110
    i32 59, label %entry.sw.bb5_crit_edge111
    i32 60, label %entry.sw.bb5_crit_edge112
    i32 61, label %entry.sw.bb5_crit_edge113
    i32 62, label %entry.sw.bb5_crit_edge114
    i32 63, label %entry.sw.bb5_crit_edge115
    i32 64, label %entry.sw.bb11_crit_edge
    i32 65, label %entry.sw.bb11_crit_edge116
    i32 66, label %entry.sw.bb11_crit_edge117
    i32 67, label %entry.sw.bb11_crit_edge118
    i32 68, label %entry.sw.bb11_crit_edge119
    i32 69, label %entry.sw.bb11_crit_edge120
    i32 70, label %entry.sw.bb11_crit_edge121
    i32 71, label %entry.sw.bb11_crit_edge122
    i32 72, label %entry.sw.bb11_crit_edge123
    i32 73, label %entry.sw.bb11_crit_edge124
    i32 74, label %entry.sw.bb11_crit_edge125
    i32 75, label %entry.sw.bb11_crit_edge126
    i32 76, label %entry.sw.bb11_crit_edge127
    i32 77, label %entry.sw.bb11_crit_edge128
    i32 78, label %entry.sw.bb11_crit_edge129
    i32 79, label %entry.sw.bb11_crit_edge130
    i32 80, label %entry.sw.bb11_crit_edge131
    i32 81, label %entry.sw.bb11_crit_edge132
    i32 82, label %entry.sw.bb11_crit_edge133
    i32 83, label %entry.sw.bb11_crit_edge134
    i32 84, label %entry.sw.bb11_crit_edge135
    i32 85, label %entry.sw.bb11_crit_edge136
    i32 86, label %entry.sw.bb11_crit_edge137
    i32 87, label %entry.sw.bb11_crit_edge138
    i32 88, label %entry.sw.bb11_crit_edge139
    i32 89, label %entry.sw.bb11_crit_edge140
    i32 90, label %entry.sw.bb11_crit_edge141
    i32 91, label %entry.sw.bb11_crit_edge142
    i32 92, label %entry.sw.bb11_crit_edge143
    i32 93, label %entry.sw.bb11_crit_edge144
    i32 94, label %entry.sw.bb11_crit_edge145
    i32 95, label %entry.sw.bb11_crit_edge146
    i32 96, label %entry.sw.bb17_crit_edge
    i32 97, label %entry.sw.bb17_crit_edge147
    i32 98, label %entry.sw.bb17_crit_edge148
    i32 99, label %entry.sw.bb17_crit_edge149
    i32 100, label %entry.sw.bb17_crit_edge150
    i32 101, label %entry.sw.bb17_crit_edge151
    i32 102, label %entry.sw.bb17_crit_edge152
    i32 103, label %entry.sw.bb17_crit_edge153
    i32 104, label %entry.sw.bb17_crit_edge154
    i32 105, label %entry.sw.bb17_crit_edge155
    i32 106, label %entry.sw.bb17_crit_edge156
    i32 107, label %entry.sw.bb17_crit_edge157
    i32 108, label %entry.sw.bb17_crit_edge158
    i32 109, label %entry.sw.bb17_crit_edge159
    i32 110, label %entry.sw.bb17_crit_edge160
    i32 111, label %entry.sw.bb17_crit_edge161
    i32 112, label %entry.sw.bb17_crit_edge162
    i32 113, label %entry.sw.bb17_crit_edge163
    i32 114, label %entry.sw.bb17_crit_edge164
    i32 115, label %entry.sw.bb17_crit_edge165
    i32 116, label %entry.sw.bb17_crit_edge166
    i32 117, label %entry.sw.bb17_crit_edge167
    i32 118, label %entry.sw.bb17_crit_edge168
    i32 119, label %entry.sw.bb17_crit_edge169
    i32 120, label %entry.sw.bb17_crit_edge170
    i32 121, label %entry.sw.bb17_crit_edge171
    i32 122, label %entry.sw.bb17_crit_edge172
    i32 123, label %entry.sw.bb17_crit_edge173
    i32 124, label %entry.sw.bb17_crit_edge174
    i32 125, label %entry.sw.bb17_crit_edge175
    i32 126, label %entry.sw.bb17_crit_edge176
    i32 127, label %entry.sw.bb17_crit_edge177
  ]

entry.sw.bb17_crit_edge177:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge176:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge175:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge174:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge173:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge172:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge171:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge170:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge169:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge168:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge167:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge166:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge165:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge164:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge163:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge162:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge161:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge160:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge157:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge156:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge155:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge154:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge153:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge152:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge149:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge148:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge147:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb17

entry.sw.bb11_crit_edge146:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge139:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge138:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge137:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge127:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge119:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

entry.sw.bb5_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb_crit_edge84:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge83:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge82:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge81:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge80:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge79:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge78:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge77:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge76:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge75:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge74:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge73:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge72:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge71:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge70:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge68:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge66:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge65:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge64:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge62:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge61:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge60:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge59:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge58:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge57:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge55:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge54:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge54, %entry.sw.bb_crit_edge55, %entry.sw.bb_crit_edge56, %entry.sw.bb_crit_edge57, %entry.sw.bb_crit_edge58, %entry.sw.bb_crit_edge59, %entry.sw.bb_crit_edge60, %entry.sw.bb_crit_edge61, %entry.sw.bb_crit_edge62, %entry.sw.bb_crit_edge63, %entry.sw.bb_crit_edge64, %entry.sw.bb_crit_edge65, %entry.sw.bb_crit_edge66, %entry.sw.bb_crit_edge67, %entry.sw.bb_crit_edge68, %entry.sw.bb_crit_edge69, %entry.sw.bb_crit_edge70, %entry.sw.bb_crit_edge71, %entry.sw.bb_crit_edge72, %entry.sw.bb_crit_edge73, %entry.sw.bb_crit_edge74, %entry.sw.bb_crit_edge75, %entry.sw.bb_crit_edge76, %entry.sw.bb_crit_edge77, %entry.sw.bb_crit_edge78, %entry.sw.bb_crit_edge79, %entry.sw.bb_crit_edge80, %entry.sw.bb_crit_edge81, %entry.sw.bb_crit_edge82, %entry.sw.bb_crit_edge83, %entry.sw.bb_crit_edge84
  %1 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p)
  %tobool.not.i = icmp eq i32 %p, 0
  %sub.i = sub nuw nsw i32 32, %p
  %shl.i = shl nsw i32 -1, %sub.i
  %and.i = and i32 %2, %shl.i
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %and.i
  %3 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond.i, ptr %i, align 4
  %arrayidx2 = getelementptr i32, ptr %i, i32 3
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %i, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %i, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge85, %entry.sw.bb5_crit_edge86, %entry.sw.bb5_crit_edge87, %entry.sw.bb5_crit_edge88, %entry.sw.bb5_crit_edge89, %entry.sw.bb5_crit_edge90, %entry.sw.bb5_crit_edge91, %entry.sw.bb5_crit_edge92, %entry.sw.bb5_crit_edge93, %entry.sw.bb5_crit_edge94, %entry.sw.bb5_crit_edge95, %entry.sw.bb5_crit_edge96, %entry.sw.bb5_crit_edge97, %entry.sw.bb5_crit_edge98, %entry.sw.bb5_crit_edge99, %entry.sw.bb5_crit_edge100, %entry.sw.bb5_crit_edge101, %entry.sw.bb5_crit_edge102, %entry.sw.bb5_crit_edge103, %entry.sw.bb5_crit_edge104, %entry.sw.bb5_crit_edge105, %entry.sw.bb5_crit_edge106, %entry.sw.bb5_crit_edge107, %entry.sw.bb5_crit_edge108, %entry.sw.bb5_crit_edge109, %entry.sw.bb5_crit_edge110, %entry.sw.bb5_crit_edge111, %entry.sw.bb5_crit_edge112, %entry.sw.bb5_crit_edge113, %entry.sw.bb5_crit_edge114, %entry.sw.bb5_crit_edge115
  %arrayidx6 = getelementptr i32, ptr %i, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %p)
  %tobool.not.i39 = icmp eq i32 %p, 32
  %sub.i40 = sub nuw nsw i32 64, %p
  %shl.i41 = shl nsw i32 -1, %sub.i40
  %and.i42 = and i32 %8, %shl.i41
  %cond.i43 = select i1 %tobool.not.i39, i32 0, i32 %and.i42
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i43, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr i32, ptr %i, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %i, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge116, %entry.sw.bb11_crit_edge117, %entry.sw.bb11_crit_edge118, %entry.sw.bb11_crit_edge119, %entry.sw.bb11_crit_edge120, %entry.sw.bb11_crit_edge121, %entry.sw.bb11_crit_edge122, %entry.sw.bb11_crit_edge123, %entry.sw.bb11_crit_edge124, %entry.sw.bb11_crit_edge125, %entry.sw.bb11_crit_edge126, %entry.sw.bb11_crit_edge127, %entry.sw.bb11_crit_edge128, %entry.sw.bb11_crit_edge129, %entry.sw.bb11_crit_edge130, %entry.sw.bb11_crit_edge131, %entry.sw.bb11_crit_edge132, %entry.sw.bb11_crit_edge133, %entry.sw.bb11_crit_edge134, %entry.sw.bb11_crit_edge135, %entry.sw.bb11_crit_edge136, %entry.sw.bb11_crit_edge137, %entry.sw.bb11_crit_edge138, %entry.sw.bb11_crit_edge139, %entry.sw.bb11_crit_edge140, %entry.sw.bb11_crit_edge141, %entry.sw.bb11_crit_edge142, %entry.sw.bb11_crit_edge143, %entry.sw.bb11_crit_edge144, %entry.sw.bb11_crit_edge145, %entry.sw.bb11_crit_edge146
  %arrayidx12 = getelementptr i32, ptr %i, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %p)
  %tobool.not.i44 = icmp eq i32 %p, 64
  %sub.i45 = sub nuw nsw i32 96, %p
  %shl.i46 = shl nsw i32 -1, %sub.i45
  %and.i47 = and i32 %13, %shl.i46
  %cond.i48 = select i1 %tobool.not.i44, i32 0, i32 %and.i47
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i48, ptr %arrayidx12, align 4
  %arrayidx16 = getelementptr i32, ptr %i, i32 3
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx16, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge147, %entry.sw.bb17_crit_edge148, %entry.sw.bb17_crit_edge149, %entry.sw.bb17_crit_edge150, %entry.sw.bb17_crit_edge151, %entry.sw.bb17_crit_edge152, %entry.sw.bb17_crit_edge153, %entry.sw.bb17_crit_edge154, %entry.sw.bb17_crit_edge155, %entry.sw.bb17_crit_edge156, %entry.sw.bb17_crit_edge157, %entry.sw.bb17_crit_edge158, %entry.sw.bb17_crit_edge159, %entry.sw.bb17_crit_edge160, %entry.sw.bb17_crit_edge161, %entry.sw.bb17_crit_edge162, %entry.sw.bb17_crit_edge163, %entry.sw.bb17_crit_edge164, %entry.sw.bb17_crit_edge165, %entry.sw.bb17_crit_edge166, %entry.sw.bb17_crit_edge167, %entry.sw.bb17_crit_edge168, %entry.sw.bb17_crit_edge169, %entry.sw.bb17_crit_edge170, %entry.sw.bb17_crit_edge171, %entry.sw.bb17_crit_edge172, %entry.sw.bb17_crit_edge173, %entry.sw.bb17_crit_edge174, %entry.sw.bb17_crit_edge175, %entry.sw.bb17_crit_edge176, %entry.sw.bb17_crit_edge177
  %arrayidx18 = getelementptr i32, ptr %i, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %p)
  %tobool.not.i49 = icmp eq i32 %p, 96
  %sub.i50 = sub nuw nsw i32 128, %p
  %shl.i51 = shl nsw i32 -1, %sub.i50
  %and.i52 = and i32 %17, %shl.i51
  %cond.i53 = select i1 %tobool.not.i49, i32 0, i32 %and.i52
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i53, ptr %arrayidx18, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb11, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @hash_dst(ptr nocapture noundef readonly %ht, ptr nocapture noundef readonly %dst) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rnd = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 6
  %0 = ptrtoint ptr %rnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rnd, align 4
  %add1.i = add i32 %1, -559038701
  %uglygep.i = getelementptr i8, ptr %dst, i32 12
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst, align 4
  %add2.i = add i32 %3, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %dst, i32 1
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %5, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %dst, i32 2
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %7, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %8 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uglygep.i, align 4
  %add2.1.i = add i32 %add23.i, %9
  %arrayidx3.1.i = getelementptr i8, ptr %dst, i32 16
  %10 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.1.i, align 4
  %add27.i = add i32 %add23.i, %11
  %add4.1.i = add i32 %add27.i, %xor22.i
  %arrayidx5.1.i = getelementptr i8, ptr %dst, i32 20
  %12 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.1.i, align 4
  %add6.1.i = add i32 %xor26.i, %13
  %sub.1.i = sub i32 %add2.1.i, %add6.1.i
  %or.i.1.i = tail call i32 @llvm.fshl.i32(i32 %add6.1.i, i32 %add6.1.i, i32 4) #15
  %xor.1.i = xor i32 %sub.1.i, %or.i.1.i
  %add7.1.i = add i32 %add6.1.i, %add4.1.i
  %sub8.1.i = sub i32 %add4.1.i, %xor.1.i
  %or.i1.1.i = tail call i32 @llvm.fshl.i32(i32 %xor.1.i, i32 %xor.1.i, i32 6) #15
  %xor10.1.i = xor i32 %sub8.1.i, %or.i1.1.i
  %add11.1.i = add i32 %xor.1.i, %add7.1.i
  %sub12.1.i = sub i32 %add7.1.i, %xor10.1.i
  %or.i2.1.i = tail call i32 @llvm.fshl.i32(i32 %xor10.1.i, i32 %xor10.1.i, i32 8) #15
  %xor14.1.i = xor i32 %sub12.1.i, %or.i2.1.i
  %add15.1.i = add i32 %xor10.1.i, %add11.1.i
  %sub16.1.i = sub i32 %add11.1.i, %xor14.1.i
  %or.i3.1.i = tail call i32 @llvm.fshl.i32(i32 %xor14.1.i, i32 %xor14.1.i, i32 16) #15
  %xor18.1.i = xor i32 %sub16.1.i, %or.i3.1.i
  %add19.1.i = add i32 %xor14.1.i, %add15.1.i
  %sub20.1.i = sub i32 %add15.1.i, %xor18.1.i
  %or.i4.1.i = tail call i32 @llvm.fshl.i32(i32 %xor18.1.i, i32 %xor18.1.i, i32 19) #15
  %xor22.1.i = xor i32 %sub20.1.i, %or.i4.1.i
  %add23.1.i = add i32 %xor18.1.i, %add19.1.i
  %sub24.1.i = sub i32 %add19.1.i, %xor22.1.i
  %or.i5.1.i = tail call i32 @llvm.fshl.i32(i32 %xor22.1.i, i32 %xor22.1.i, i32 4) #15
  %xor26.1.i = xor i32 %sub24.1.i, %or.i5.1.i
  %uglygep18.i = getelementptr i8, ptr %dst, i32 24
  %arrayidx29.i = getelementptr i8, ptr %dst, i32 32
  %14 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %xor26.1.i, %15
  %arrayidx32.i = getelementptr i8, ptr %dst, i32 28
  %16 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx32.i, align 4
  %add27.1.i = add i32 %add23.1.i, %17
  %add33.i = add i32 %add27.1.i, %xor22.1.i
  %18 = ptrtoint ptr %uglygep18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uglygep18.i, align 4
  %add36.i = add i32 %add23.1.i, %19
  %xor37.i = xor i32 %add30.i, %add33.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  %size = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %conv.i = zext i32 %sub57.i to i64
  %conv1.i = zext i32 %21 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  ret i32 %conv2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_proc_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hashlimit_mt_check_common(ptr nocapture noundef readonly %par, ptr nocapture noundef writeonly %hinfo, ptr nocapture noundef %cfg, ptr noundef %name, i32 noundef %revision) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %gc_interval = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 5
  %2 = ptrtoint ptr %gc_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gc_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %expire = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 6
  %4 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %expire, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %7)
  %cmp3 = icmp ugt i32 %7, 1048576
  br i1 %cmp3, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1048576, ptr %size, align 4
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4.if.end10_crit_edge, label %do.end

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %10) #18
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %max = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 4
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %12)
  %cmp11 = icmp ugt i32 %12, 1048576
  br i1 %cmp11, label %if.then12, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then12:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1048576, ptr %max, align 8
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs.8, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end24_crit_edge, label %do.end19

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %15) #18
  br label %if.end24

if.end24:                                         ; preds = %do.end19, %if.then12.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp25 = icmp eq i8 %17, 2
  %srcmask = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 8
  %18 = ptrtoint ptr %srcmask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %srcmask, align 8
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %19)
  %cmp29 = icmp ugt i8 %19, 32
  br i1 %cmp29, label %if.then27.cleanup_crit_edge, label %lor.lhs.false31

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false31:                                  ; preds = %if.then27
  %dstmask = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 9
  %20 = ptrtoint ptr %dstmask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dstmask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %cmp33 = icmp ugt i8 %21, 32
  br i1 %cmp33, label %lor.lhs.false31.cleanup_crit_edge, label %lor.lhs.false31.if.end48_crit_edge

lor.lhs.false31.if.end48_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %19)
  %cmp39 = icmp ugt i8 %19, -128
  br i1 %cmp39, label %if.else.cleanup_crit_edge, label %lor.lhs.false41

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false41:                                  ; preds = %if.else
  %dstmask42 = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 9
  %22 = ptrtoint ptr %dstmask42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dstmask42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %23)
  %cmp44 = icmp ugt i8 %23, -128
  br i1 %cmp44, label %lor.lhs.false41.cleanup_crit_edge, label %lor.lhs.false41.if.end48_crit_edge

lor.lhs.false41.if.end48_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false41.if.end48_crit_edge, %lor.lhs.false31.if.end48_crit_edge
  %mode = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 2
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %25)
  %tobool49.not = icmp ult i32 %25, 128
  br i1 %tobool49.not, label %if.end61, label %if.then50

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs.12, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.cleanup_crit_edge, label %do.end56

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %27) #18
  br label %cleanup

if.end61:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %revision)
  %cmp62 = icmp slt i32 %revision, 3
  %and65 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %or.cond = select i1 %cmp62, i1 true, i1 %tobool66.not
  br i1 %or.cond, label %if.else98, label %if.then67

if.then67:                                        ; preds = %if.end61
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %cfg, align 8
  %30 = add i64 %29, -4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4294967295, i64 %30)
  %31 = icmp ult i64 %30, -4294967295
  br i1 %31, label %if.then74, label %if.end84

if.then74:                                        ; preds = %if.then67
  %call75 = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs.16, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then74.cleanup_crit_edge, label %do.end80

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end80:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #17
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #18
  br label %cleanup

if.end84:                                         ; preds = %if.then67
  %interval = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 7
  %32 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp85 = icmp eq i32 %33, 0
  br i1 %cmp85, label %if.then87, label %if.end84.if.end145_crit_edge

if.end84.if.end145_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.then87:                                        ; preds = %if.end84
  %call88 = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs.20, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then87.cleanup_crit_edge, label %do.end93

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end93:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #17
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %cleanup

if.else98:                                        ; preds = %if.end61
  %and100 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.else120, label %if.then102

if.then102:                                       ; preds = %if.else98
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cfg, align 8
  %conv.i = and i64 %35, 4294967295
  %mul.i = mul nuw i64 %conv.i, 3355443200
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp106 = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp106, label %if.then108, label %if.then102.if.end145_crit_edge

if.then102.if.end145_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

if.then108:                                       ; preds = %if.then102
  %call109 = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs.24, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then108.cleanup_crit_edge, label %do.end114

if.then108.cleanup_crit_edge:                     ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end114:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cfg, align 8
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i64 noundef %37) #18
  br label %cleanup

if.else120:                                       ; preds = %if.else98
  %burst = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 1
  %38 = ptrtoint ptr %burst to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %burst, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp121 = icmp eq i64 %39, 0
  br i1 %cmp121, label %if.else120.if.then131_crit_edge, label %lor.lhs.false123

if.else120.if.then131_crit_edge:                  ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then131

lor.lhs.false123:                                 ; preds = %if.else120
  %40 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %cfg, align 8
  %mul = mul i64 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %revision)
  %cmp.i = icmp eq i32 %revision, 1
  %mul.i199 = select i1 %cmp.i, i64 25600, i64 109951162777600
  %cond.i = select i1 %cmp.i, i64 10000, i64 1000000
  %call7.i = tail call i64 @div64_u64(i64 noundef %mul.i199, i64 noundef %cond.i) #15
  %mul8.i = mul i64 %mul, %call7.i
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %cfg, align 8
  %call7.i203 = tail call i64 @div64_u64(i64 noundef %mul.i199, i64 noundef %cond.i) #15
  %mul8.i204 = mul i64 %call7.i203, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %mul8.i, i64 %mul8.i204)
  %cmp129 = icmp ult i64 %mul8.i, %mul8.i204
  br i1 %cmp129, label %lor.lhs.false123.if.then131_crit_edge, label %lor.lhs.false123.if.end145_crit_edge

lor.lhs.false123.if.end145_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end145

lor.lhs.false123.if.then131_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then131

if.then131:                                       ; preds = %lor.lhs.false123.if.then131_crit_edge, %if.else120.if.then131_crit_edge
  %call132 = tail call i32 @___ratelimit(ptr noundef nonnull @hashlimit_mt_check_common._rs.28, ptr noundef nonnull @__func__.hashlimit_mt_check_common) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then131.cleanup_crit_edge, label %do.end137

if.then131.cleanup_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end137:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cfg, align 8
  %46 = ptrtoint ptr %burst to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %burst, align 8
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %45, i64 noundef %47) #18
  br label %cleanup

if.end145:                                        ; preds = %lor.lhs.false123.if.end145_crit_edge, %if.then102.if.end145_crit_edge, %if.end84.if.end145_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @hashlimit_mutex, i32 noundef 0) #15
  %48 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %family, align 4
  %call147 = tail call fastcc ptr @htable_find_get(ptr noundef %1, ptr noundef %name, i8 noundef zeroext %49)
  %50 = ptrtoint ptr %hinfo to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call147, ptr %hinfo, align 4
  %cmp148 = icmp eq ptr %call147, null
  br i1 %cmp148, label %if.then150, label %if.end145.if.end157_crit_edge

if.end145.if.end157_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then150:                                       ; preds = %if.end145
  %51 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %family, align 4
  %call152 = tail call fastcc i32 @htable_create(ptr noundef %1, ptr noundef %cfg, ptr noundef %name, i8 noundef zeroext %52, ptr noundef %hinfo, i32 noundef %revision)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %if.then155, label %if.then150.if.end157_crit_edge

if.then150.if.end157_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end157

if.then155:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @hashlimit_mutex) #15
  br label %cleanup

if.end157:                                        ; preds = %if.then150.if.end157_crit_edge, %if.end145.if.end157_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hashlimit_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.then155, %do.end137, %if.then131.cleanup_crit_edge, %do.end114, %if.then108.cleanup_crit_edge, %do.end93, %if.then87.cleanup_crit_edge, %do.end80, %if.then74.cleanup_crit_edge, %do.end56, %if.then50.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false31.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call152, %if.then155 ], [ 0, %if.end157 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false31.cleanup_crit_edge ], [ -22, %if.then27.cleanup_crit_edge ], [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %do.end56 ], [ -22, %if.then50.cleanup_crit_edge ], [ -34, %do.end80 ], [ -34, %if.then74.cleanup_crit_edge ], [ -22, %do.end93 ], [ -22, %if.then87.cleanup_crit_edge ], [ -22, %do.end114 ], [ -22, %if.then108.cleanup_crit_edge ], [ -34, %do.end137 ], [ -34, %if.then131.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @htable_find_get(ptr noundef %net, ptr nocapture noundef readonly %name, i8 noundef zeroext %family) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hashlimit_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %hinfo.031 = load ptr, ptr %call, align 4
  %tobool2.not32 = icmp eq ptr %hinfo.031, null
  br i1 %tobool2.not32, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %hinfo.033 = phi ptr [ %hinfo.0, %for.inc.for.body_crit_edge ], [ %hinfo.031, %entry.for.body_crit_edge ]
  %name3 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo.033, i32 0, i32 10
  %1 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %2) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %family6 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo.033, i32 0, i32 2
  %3 = ptrtoint ptr %family6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %family)
  %cmp = icmp eq i8 %4, %family
  br i1 %cmp, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %use = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo.033, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #15, !srcloc !140
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !138

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !136

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %hinfo.033 to i32
  call void @__asan_load4_noabort(i32 %7)
  %hinfo.0 = load ptr, ptr %hinfo.033, align 4
  %tobool2.not = icmp eq ptr %hinfo.0, null
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %hinfo.030 = phi ptr [ %hinfo.033, %if.end15.sink.split.i.i.i ], [ %hinfo.033, %if.else.i.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %hinfo.030
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @htable_create(ptr noundef %net, ptr nocapture noundef readonly %cfg, ptr noundef %name, i8 noundef zeroext %family, ptr nocapture noundef writeonly %out_hinfo, i32 noundef %revision) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hashlimit_pernet(ptr noundef %net)
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %size2 = getelementptr inbounds %struct.hashlimit_cfg3, ptr %cfg, i32 0, i32 3
  %1 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = lshr i32 %0, 4
  %div144 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %0)
  %cmp = icmp ugt i32 %0, 262144
  %4 = tail call i32 @llvm.umax.i32(i32 %div144, i32 16)
  %5 = select i1 %cmp, i32 8192, i32 %4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %entry.if.end9_crit_edge
  %size.0 = phi i32 [ %5, %if.else ], [ %2, %entry.if.end9_crit_edge ]
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size.0, i32 4) #15
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 232) #15
  %retval.0.i148 = select i1 %7, i32 -1, i32 %spec.select.i
  %call11 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i148) #21
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %out_hinfo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %out_hinfo, align 4
  %cfg15 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %cfg15, ptr %cfg, i32 48)
  %size21 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %size21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size.0, ptr %size21, align 4
  %max = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23 = icmp eq i32 %13, 0
  br i1 %cmp23, label %if.then24, label %if.else29

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %mul = shl i32 %size.0, 3
  br label %if.end41.sink.split

if.else29:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %size.0)
  %cmp34 = icmp ult i32 %13, %size.0
  br i1 %cmp34, label %if.else29.if.end41.sink.split_crit_edge, label %if.else29.if.end41_crit_edge

if.else29.if.end41_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.else29.if.end41.sink.split_crit_edge:          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.else29.if.end41.sink.split_crit_edge, %if.then24
  %size.0.sink = phi i32 [ %mul, %if.then24 ], [ %size.0, %if.else29.if.end41.sink.split_crit_edge ]
  %14 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.0.sink, ptr %max, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else29.if.end41_crit_edge
  %15 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp44150.not = icmp eq i32 %16, 0
  br i1 %cmp44150.not, label %if.end41.for.end_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %i.0151 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 12, i32 %i.0151
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0151, 1
  %18 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size21, align 4
  %cmp44 = icmp ult i32 %inc, %19
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end41.for.end_crit_edge
  %use = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 1
  %call.i.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #15
  %20 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %use, align 4
  %count = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 7
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %count, align 8
  %family45 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 2
  %22 = ptrtoint ptr %family45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %family, ptr %family45, align 4
  %rnd_initialized = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 3
  %23 = ptrtoint ptr %rnd_initialized to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rnd_initialized, align 1
  %call46 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #15
  %name47 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 10
  %24 = ptrtoint ptr %name47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call46, ptr %name47, align 4
  %tobool49.not = icmp eq ptr %call46, null
  br i1 %tobool49.not, label %if.then50, label %do.body

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef nonnull %call11) #15
  br label %cleanup

do.body:                                          ; preds = %for.end
  %lock = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @htable_create.__key, i16 noundef signext 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %revision)
  %switch.selectcmp = icmp eq i32 %revision, 2
  %switch.select = select i1 %switch.selectcmp, ptr @dl_seq_ops_v2, ptr @dl_seq_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %revision)
  %switch.selectcmp146 = icmp eq i32 %revision, 1
  %switch.select147 = select i1 %switch.selectcmp146, ptr @dl_seq_ops_v1, ptr %switch.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %family)
  %cmp54 = icmp eq i8 %family, 2
  %ipt_hashlimit = getelementptr inbounds %struct.hashlimit_net, ptr %call, i32 0, i32 1
  %ip6t_hashlimit = getelementptr inbounds %struct.hashlimit_net, ptr %call, i32 0, i32 2
  %cond.in = select i1 %cmp54, ptr %ipt_hashlimit, ptr %ip6t_hashlimit
  %25 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %cond = load ptr, ptr %cond.in, align 4
  %call56 = tail call ptr @proc_create_seq_private(ptr noundef %name, i16 noundef zeroext 0, ptr noundef %cond, ptr noundef nonnull %switch.select147, i32 noundef 0, ptr noundef nonnull %call11) #15
  %pde = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 9
  %26 = ptrtoint ptr %pde to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call56, ptr %pde, align 8
  %cmp58 = icmp eq ptr %call56, null
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name47, align 4
  tail call void @kfree(ptr noundef %28) #15
  tail call void @vfree(ptr noundef %call11) #15
  br label %cleanup

if.end62:                                         ; preds = %do.body
  %net63 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 11
  %29 = ptrtoint ptr %net63 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %net, ptr %net63, align 8
  %gc_work = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 8
  tail call void @__init_work(ptr noundef %gc_work, i32 noundef 0) #15
  %30 = ptrtoint ptr %gc_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %gc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.41, ptr noundef nonnull @htable_create.__key.40, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry72 = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 8, i32 0, i32 1
  %31 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 8, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry72, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 8, i32 0, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @htable_gc, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.43, ptr noundef nonnull @htable_create.__key.42) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %34 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_interval = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %call11, i32 0, i32 4, i32 5
  %35 = ptrtoint ptr %gc_interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gc_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %36) #15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %gc_work, i32 noundef %call2.i) #15
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call, align 4
  %39 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %call11, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end62.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end62.hlist_add_head.exit_crit_edge:           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call11, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end62.hlist_add_head.exit_crit_edge
  %41 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call11, ptr %call, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call11, i32 0, i32 1
  %42 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call, ptr %pprev34.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.then60, %if.then50, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then60 ], [ 0, %hlist_add_head.exit ], [ -12, %if.then50 ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hashlimit_pernet(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = load i32, ptr @hashlimit_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !124) #15
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 696, ptr noundef nonnull @.str.37) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 45, ptr noundef nonnull @.str.35) #15
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 724, ptr noundef nonnull @.str.38) #15
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !142
  %9 = tail call i32 @llvm.read_register.i32(metadata !124) #15
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @htable_gc(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  tail call fastcc void @htable_selective_cleanup(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_interval = getelementptr i8, ptr %work, i32 -72
  %1 = ptrtoint ptr %gc_interval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gc_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %call2.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dl_seq_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %size = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %conv = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp.not = icmp slt i64 %7, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 4) #22
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  %conv7 = trunc i64 %12 to i32
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv7, ptr %call7.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end6 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dl_seq_stop(ptr nocapture noundef readonly %s, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %cmp.i = icmp ugt ptr %v, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %v) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dl_seq_next(ptr nocapture noundef readonly %s, ptr noundef %v, ptr nocapture noundef writeonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %v, align 4
  %conv = zext i32 %inc to i64
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %pos, align 8
  %size = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %10)
  %cmp.not = icmp ult i32 %inc, %10
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %v) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then ], [ %v, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dl_seq_show_v1(ptr noundef %s, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %arrayidx = getelementptr %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 12, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %family = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 2
  %count.i.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 3
  %size.i.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ent.035 = phi ptr [ %9, %for.body.lr.ph ], [ %42, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 54
  %16 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_private.i.i, align 4
  %lock.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %rateinfo.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4
  %19 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rateinfo.i.i, align 8
  %sub.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i.i = icmp eq i32 %18, %20
  br i1 %cmp.i.i, label %for.body.dl_seq_real_show_v1.exit_crit_edge, label %if.end.i.i

for.body.dl_seq_real_show_v1.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show_v1.exit

if.end.i.i:                                       ; preds = %for.body
  %mode.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %17, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 8
  %23 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %rateinfo.i.i, align 8
  %and25.i.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i
  %24 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %mul29.i.i = shl i32 %sub.i.i, 25
  %conv30.i.i = zext i32 %mul29.i.i to i64
  %add.i.i = add i64 %26, %conv30.i.i
  store i64 %add.i.i, ptr %24, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %add.i.i)
  %cmp35.not.i.i = icmp ult i64 %26, %add.i.i
  br i1 %cmp35.not.i.i, label %if.then27.i.i.if.end50.i.i_crit_edge, label %if.then37.i.i

if.then27.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.i.i

if.then37.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 3355443200, ptr %24, align 8
  br label %dl_seq_real_show_v1.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv44.i.i = zext i32 %sub.i.i to i64
  %mul45.i.i = shl nuw nsw i64 %conv44.i.i, 8
  %28 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %add48.i.i = add i64 %30, %mul45.i.i
  store i64 %add48.i.i, ptr %28, align 8
  %credit_cap.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %credit_cap.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %credit_cap.i.i, align 8
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else.i.i, %if.then27.i.i.if.end50.i.i_crit_edge
  %cap.0.i.i = phi i64 [ %32, %if.else.i.i ], [ 3355443200, %if.then27.i.i.if.end50.i.i_crit_edge ]
  %33 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %cap.0.i.i)
  %cmp53.i.i = icmp ugt i64 %35, %cap.0.i.i
  br i1 %cmp53.i.i, label %if.then55.i.i, label %if.end50.i.i.dl_seq_real_show_v1.exit_crit_edge

if.end50.i.i.dl_seq_real_show_v1.exit_crit_edge:  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show_v1.exit

if.then55.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %cap.0.i.i, ptr %33, align 8
  br label %dl_seq_real_show_v1.exit

dl_seq_real_show_v1.exit:                         ; preds = %if.then55.i.i, %if.end50.i.i.dl_seq_real_show_v1.exit_crit_edge, %if.then37.i.i, %for.body.dl_seq_real_show_v1.exit_crit_edge
  tail call fastcc void @dl_seq_print(ptr noundef nonnull %ent.035, i8 noundef zeroext %11, ptr noundef %s) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  %37 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count.i.i, align 4
  %39 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i9.i.not = icmp eq i32 %38, %40
  br i1 %cmp.i9.i.not, label %dl_seq_real_show_v1.exit.cleanup_crit_edge, label %for.inc

dl_seq_real_show_v1.exit.cleanup_crit_edge:       ; preds = %dl_seq_real_show_v1.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %dl_seq_real_show_v1.exit
  %41 = ptrtoint ptr %ent.035 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ent.035, align 8
  %tobool7.not = icmp eq ptr %42, null
  br i1 %tobool7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dl_seq_real_show_v1.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %dl_seq_real_show_v1.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dl_seq_print(ptr noundef %ent, i8 noundef zeroext %family, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %family, label %do.body [
    i8 2, label %sw.bb
    i8 10, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %expires = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 3
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expires, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %2, %3
  %div = sdiv i32 %sub, 100
  %dst = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1
  %src_port = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %src_port, align 8
  %conv2 = zext i16 %5 to i32
  %dst4 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %dst_port = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %dst_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dst_port, align 2
  %conv6 = zext i16 %7 to i32
  %8 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %credit_cap = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 4, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %credit_cap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %credit_cap, align 8
  %cost = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 4, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %cost to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cost, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %div, ptr noundef %dst, i32 noundef %conv2, ptr noundef %dst4, i32 noundef %conv6, i64 noundef %10, i64 noundef %12, i64 noundef %14) #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %expires10 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 3
  %15 = ptrtoint ptr %expires10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %expires10, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub11 = sub i32 %16, %17
  %div12 = sdiv i32 %sub11, 100
  %dst13 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1
  %src_port16 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %src_port16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %src_port16, align 8
  %conv17 = zext i16 %19 to i32
  %dst19 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1, i32 0, i32 0, i32 1
  %dst_port21 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %dst_port21 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dst_port21, align 2
  %conv22 = zext i16 %21 to i32
  %22 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %credit_cap26 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 4, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %credit_cap26 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %credit_cap26, align 8
  %cost28 = getelementptr inbounds %struct.dsthash_ent, ptr %ent, i32 0, i32 4, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %cost28 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %cost28, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %div12, ptr noundef %dst13, i32 noundef %conv17, ptr noundef %dst19, i32 noundef %conv22, i64 noundef %24, i64 noundef %26, i64 noundef %28) #15
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/xt_hashlimit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1121, 0\0A.popsection", ""() #15, !srcloc !143
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dl_seq_show_v2(ptr noundef %s, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %arrayidx = getelementptr %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 12, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %family = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 2
  %count.i.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 3
  %size.i.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ent.035 = phi ptr [ %9, %for.body.lr.ph ], [ %42, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 54
  %16 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_private.i.i, align 4
  %lock.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %rateinfo.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4
  %19 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rateinfo.i.i, align 8
  %sub.i.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i.i = icmp eq i32 %18, %20
  br i1 %cmp.i.i, label %for.body.dl_seq_real_show_v2.exit_crit_edge, label %if.end.i.i

for.body.dl_seq_real_show_v2.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show_v2.exit

if.end.i.i:                                       ; preds = %for.body
  %mode.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %17, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode.i, align 8
  %23 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %rateinfo.i.i, align 8
  %and25.i.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end.i.i
  %24 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %24, align 8
  %mul29.i.i = shl i32 %sub.i.i, 25
  %conv30.i.i = zext i32 %mul29.i.i to i64
  %add.i.i = add i64 %26, %conv30.i.i
  store i64 %add.i.i, ptr %24, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %add.i.i)
  %cmp35.not.i.i = icmp ult i64 %26, %add.i.i
  br i1 %cmp35.not.i.i, label %if.then27.i.i.if.end50.i.i_crit_edge, label %if.then37.i.i

if.then27.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.i.i

if.then37.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 3355443200, ptr %24, align 8
  br label %dl_seq_real_show_v2.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv44.i.i = zext i32 %sub.i.i to i64
  %mul45.i.i = shl i64 %conv44.i.i, 40
  %28 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %add48.i.i = add i64 %30, %mul45.i.i
  store i64 %add48.i.i, ptr %28, align 8
  %credit_cap.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %credit_cap.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %credit_cap.i.i, align 8
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else.i.i, %if.then27.i.i.if.end50.i.i_crit_edge
  %cap.0.i.i = phi i64 [ %32, %if.else.i.i ], [ 3355443200, %if.then27.i.i.if.end50.i.i_crit_edge ]
  %33 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %33, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %cap.0.i.i)
  %cmp53.i.i = icmp ugt i64 %35, %cap.0.i.i
  br i1 %cmp53.i.i, label %if.then55.i.i, label %if.end50.i.i.dl_seq_real_show_v2.exit_crit_edge

if.end50.i.i.dl_seq_real_show_v2.exit_crit_edge:  ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show_v2.exit

if.then55.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %cap.0.i.i, ptr %33, align 8
  br label %dl_seq_real_show_v2.exit

dl_seq_real_show_v2.exit:                         ; preds = %if.then55.i.i, %if.end50.i.i.dl_seq_real_show_v2.exit_crit_edge, %if.then37.i.i, %for.body.dl_seq_real_show_v2.exit_crit_edge
  tail call fastcc void @dl_seq_print(ptr noundef nonnull %ent.035, i8 noundef zeroext %11, ptr noundef %s) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  %37 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count.i.i, align 4
  %39 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i9.i.not = icmp eq i32 %38, %40
  br i1 %cmp.i9.i.not, label %dl_seq_real_show_v2.exit.cleanup_crit_edge, label %for.inc

dl_seq_real_show_v2.exit.cleanup_crit_edge:       ; preds = %dl_seq_real_show_v2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %dl_seq_real_show_v2.exit
  %41 = ptrtoint ptr %ent.035 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ent.035, align 8
  %tobool7.not = icmp eq ptr %42, null
  br i1 %tobool7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dl_seq_real_show_v2.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %dl_seq_real_show_v2.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dl_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v, align 4
  %arrayidx = getelementptr %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 12, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %family = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %5, i32 0, i32 2
  %count.i.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 3
  %size.i.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ent.035 = phi ptr [ %9, %for.body.lr.ph ], [ %52, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 54
  %16 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_private.i.i, align 4
  %lock.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %mode.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %17, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode.i, align 8
  %rateinfo.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4
  %21 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rateinfo.i.i, align 8
  %sub.i.i = sub i32 %18, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp.i.i = icmp eq i32 %18, %22
  br i1 %cmp.i.i, label %for.body.dl_seq_real_show.exit_crit_edge, label %if.end.i.i

for.body.dl_seq_real_show.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show.exit

if.end.i.i:                                       ; preds = %for.body
  %and.i.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %23 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %mul.i.i = mul i32 %25, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %mul.i.i)
  %cmp6.i.i = icmp ult i32 %sub.i.i, %mul.i.i
  br i1 %cmp6.i.i, label %if.then2.i.i.dl_seq_real_show.exit_crit_edge, label %if.end9.i.i

if.then2.i.i.dl_seq_real_show.exit_crit_edge:     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show.exit

if.end9.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i = zext i32 %mul.i.i to i64
  %conv5.i.i = zext i32 %sub.i.i to i64
  %26 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %18, ptr %rateinfo.i.i, align 8
  %current_rate.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %current_rate.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %current_rate.i.i, align 8
  %mul13.i.i = mul i64 %28, %conv.i.i
  %rate.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rate.i.i, align 8
  %mul16.i.i = mul i64 %30, %conv5.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul13.i.i, i64 %mul16.i.i)
  %cmp17.i.i = icmp ugt i64 %mul13.i.i, %mul16.i.i
  %conv18.i.i = zext i1 %cmp17.i.i to i32
  %prev_window.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %prev_window.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv18.i.i, ptr %prev_window.i.i, align 4
  %32 = ptrtoint ptr %current_rate.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %current_rate.i.i, align 8
  br label %dl_seq_real_show.exit

if.end22.i.i:                                     ; preds = %if.end.i.i
  %33 = ptrtoint ptr %rateinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %18, ptr %rateinfo.i.i, align 8
  %and25.i.i = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.else.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %if.end22.i.i
  %34 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %34, align 8
  %mul29.i.i = shl i32 %sub.i.i, 25
  %conv30.i.i = zext i32 %mul29.i.i to i64
  %add.i.i = add i64 %36, %conv30.i.i
  store i64 %add.i.i, ptr %34, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %add.i.i)
  %cmp35.not.i.i = icmp ult i64 %36, %add.i.i
  br i1 %cmp35.not.i.i, label %if.then27.i.i.if.end50.i.i_crit_edge, label %if.then37.i.i

if.then27.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50.i.i

if.then37.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 3355443200, ptr %34, align 8
  br label %dl_seq_real_show.exit

if.else.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv44.i.i = zext i32 %sub.i.i to i64
  %mul45.i.i = shl i64 %conv44.i.i, 40
  %38 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %add48.i.i = add i64 %40, %mul45.i.i
  store i64 %add48.i.i, ptr %38, align 8
  %credit_cap.i.i = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %credit_cap.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %credit_cap.i.i, align 8
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else.i.i, %if.then27.i.i.if.end50.i.i_crit_edge
  %cap.0.i.i = phi i64 [ %42, %if.else.i.i ], [ 3355443200, %if.then27.i.i.if.end50.i.i_crit_edge ]
  %43 = getelementptr inbounds %struct.dsthash_ent, ptr %ent.035, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %43, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %cap.0.i.i)
  %cmp53.i.i = icmp ugt i64 %45, %cap.0.i.i
  br i1 %cmp53.i.i, label %if.then55.i.i, label %if.end50.i.i.dl_seq_real_show.exit_crit_edge

if.end50.i.i.dl_seq_real_show.exit_crit_edge:     ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dl_seq_real_show.exit

if.then55.i.i:                                    ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %cap.0.i.i, ptr %43, align 8
  br label %dl_seq_real_show.exit

dl_seq_real_show.exit:                            ; preds = %if.then55.i.i, %if.end50.i.i.dl_seq_real_show.exit_crit_edge, %if.then37.i.i, %if.end9.i.i, %if.then2.i.i.dl_seq_real_show.exit_crit_edge, %for.body.dl_seq_real_show.exit_crit_edge
  tail call fastcc void @dl_seq_print(ptr noundef nonnull %ent.035, i8 noundef zeroext %11, ptr noundef %s) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #15
  %47 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i.i, align 4
  %49 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i9.i.not = icmp eq i32 %48, %50
  br i1 %cmp.i9.i.not, label %dl_seq_real_show.exit.cleanup_crit_edge, label %for.inc

dl_seq_real_show.exit.cleanup_crit_edge:          ; preds = %dl_seq_real_show.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %dl_seq_real_show.exit
  %51 = ptrtoint ptr %ent.035 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ent.035, align 8
  %tobool7.not = icmp eq ptr %52, null
  br i1 %tobool7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dl_seq_real_show.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %dl_seq_real_show.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htable_selective_cleanup(ptr noundef %ht, i1 noundef zeroext %select_all) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end22_crit_edge, label %for.body.lr.ph

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %lock = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 5
  %count.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %arrayidx = getelementptr %struct.xt_hashlimit_htable, ptr %ht, i32 0, i32 12, i32 %i.039
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not36 = icmp eq ptr %3, null
  br i1 %tobool3.not36, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %dh.037 = phi ptr [ %5, %for.inc.land.rhs_crit_edge ], [ %3, %for.body.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %dh.037 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dh.037, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %expires = getelementptr inbounds %struct.dsthash_ent, ptr %dh.037, i32 0, i32 3
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %expires, align 8
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp7 = icmp sgt i32 %sub, -1
  %brmerge = or i1 %cmp7, %select_all
  br i1 %brmerge, label %if.then, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %dh.037, i32 0, i32 1
  %9 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev2.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %5, ptr %10, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.dsthash_free.exit_crit_edge, label %do.body13.i.i.i

if.then.dsthash_free.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %dsthash_free.exit

do.body13.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %pprev14.i.i.i, align 4
  br label %dsthash_free.exit

dsthash_free.exit:                                ; preds = %do.body13.i.i.i, %if.then.dsthash_free.exit_crit_edge
  %13 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.dsthash_ent, ptr %dh.037, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @dsthash_free_rcu) #15
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 8
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %count.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %dsthash_free.exit, %land.rhs.for.inc_crit_edge
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  %inc = add nuw i32 %i.039, 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end22_crit_edge

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end22

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end22:                                        ; preds = %for.end.for.end22_crit_edge, %entry.for.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsthash_free_rcu(ptr noundef %head) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -136
  %0 = load ptr, ptr @hashlimit_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htable_put(ptr noundef %hinfo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %use = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 1
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %use, ptr noundef nonnull @hashlimit_mutex) #15
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %hinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hinfo, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %hinfo, i32 0, i32 1
  %2 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev2.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %1, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then.hlist_del.exit_crit_edge
  %6 = ptrtoint ptr %hinfo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %hinfo, align 4
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %net.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 11
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 8
  %call.i = tail call fastcc ptr @hashlimit_pernet(ptr noundef %9) #15
  %family.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 2
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.i = icmp eq i8 %11, 2
  %ipt_hashlimit.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i, i32 0, i32 1
  %ip6t_hashlimit.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i, i32 0, i32 2
  %parent.0.in.i = select i1 %cmp.i, ptr %ipt_hashlimit.i, ptr %ip6t_hashlimit.i
  %12 = ptrtoint ptr %parent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %parent.0.i = load ptr, ptr %parent.0.in.i, align 4
  %cmp2.not.i = icmp eq ptr %parent.0.i, null
  br i1 %cmp2.not.i, label %hlist_del.exit.htable_remove_proc_entry.exit_crit_edge, label %if.then4.i

hlist_del.exit.htable_remove_proc_entry.exit_crit_edge: ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %htable_remove_proc_entry.exit

if.then4.i:                                       ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %name.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 10
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  tail call void @remove_proc_entry(ptr noundef %14, ptr noundef nonnull %parent.0.i) #15
  br label %htable_remove_proc_entry.exit

htable_remove_proc_entry.exit:                    ; preds = %if.then4.i, %hlist_del.exit.htable_remove_proc_entry.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hashlimit_mutex) #15
  %gc_work = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 8
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc_work) #15
  tail call fastcc void @htable_selective_cleanup(ptr noundef %hinfo, i1 noundef zeroext true)
  %name = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo, i32 0, i32 10
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %16) #15
  tail call void @vfree(ptr noundef %hinfo) #15
  br label %if.end

if.end:                                           ; preds = %htable_remove_proc_entry.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hashlimit_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hashlimit_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %call, align 4
  %call.i = tail call fastcc ptr @hashlimit_pernet(ptr noundef %net) #15
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %1 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proc_net.i, align 4
  %call1.i = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.46, ptr noundef %2) #15
  %ipt_hashlimit.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ipt_hashlimit.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i, ptr %ipt_hashlimit.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.hashlimit_proc_net_init.exit_crit_edge, label %if.end.i

entry.hashlimit_proc_net_init.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_proc_net_init.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net.i, align 4
  %call4.i = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.47, ptr noundef %5) #15
  %ip6t_hashlimit.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %ip6t_hashlimit.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4.i, ptr %ip6t_hashlimit.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end.i.hashlimit_proc_net_init.exit_crit_edge

if.end.i.hashlimit_proc_net_init.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_proc_net_init.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.46, ptr noundef %8) #15
  br label %hashlimit_proc_net_init.exit

hashlimit_proc_net_init.exit:                     ; preds = %if.then7.i, %if.end.i.hashlimit_proc_net_init.exit_crit_edge, %entry.hashlimit_proc_net_init.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then7.i ], [ -12, %entry.hashlimit_proc_net_init.exit_crit_edge ], [ 0, %if.end.i.hashlimit_proc_net_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hashlimit_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @hashlimit_pernet(ptr noundef %net) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @hashlimit_mutex, i32 noundef 0) #15
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %hinfo.024.i = load ptr, ptr %call.i, align 4
  %tobool2.not25.i = icmp eq ptr %hinfo.024.i, null
  br i1 %tobool2.not25.i, label %entry.hashlimit_proc_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.hashlimit_proc_net_exit.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_proc_net_exit.exit

for.body.i:                                       ; preds = %htable_remove_proc_entry.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %hinfo.026.i = phi ptr [ %hinfo.0.i, %htable_remove_proc_entry.exit.i.for.body.i_crit_edge ], [ %hinfo.024.i, %entry.for.body.i_crit_edge ]
  %net.i.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo.026.i, i32 0, i32 11
  %1 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i.i, align 8
  %call.i.i = tail call fastcc ptr @hashlimit_pernet(ptr noundef %2) #15
  %family.i.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo.026.i, i32 0, i32 2
  %3 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 2
  %ipt_hashlimit.i.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i.i, i32 0, i32 1
  %ip6t_hashlimit.i.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i.i, i32 0, i32 2
  %parent.0.in.i.i = select i1 %cmp.i.i, ptr %ipt_hashlimit.i.i, ptr %ip6t_hashlimit.i.i
  %5 = ptrtoint ptr %parent.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %parent.0.i.i = load ptr, ptr %parent.0.in.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %parent.0.i.i, null
  br i1 %cmp2.not.i.i, label %for.body.i.htable_remove_proc_entry.exit.i_crit_edge, label %if.then4.i.i

for.body.i.htable_remove_proc_entry.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %htable_remove_proc_entry.exit.i

if.then4.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %name.i.i = getelementptr inbounds %struct.xt_hashlimit_htable, ptr %hinfo.026.i, i32 0, i32 10
  %6 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i.i, align 4
  tail call void @remove_proc_entry(ptr noundef %7, ptr noundef nonnull %parent.0.i.i) #15
  br label %htable_remove_proc_entry.exit.i

htable_remove_proc_entry.exit.i:                  ; preds = %if.then4.i.i, %for.body.i.htable_remove_proc_entry.exit.i_crit_edge
  %8 = ptrtoint ptr %hinfo.026.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %hinfo.0.i = load ptr, ptr %hinfo.026.i, align 4
  %tobool2.not.i = icmp eq ptr %hinfo.0.i, null
  br i1 %tobool2.not.i, label %htable_remove_proc_entry.exit.i.hashlimit_proc_net_exit.exit_crit_edge, label %htable_remove_proc_entry.exit.i.for.body.i_crit_edge

htable_remove_proc_entry.exit.i.for.body.i_crit_edge: ; preds = %htable_remove_proc_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

htable_remove_proc_entry.exit.i.hashlimit_proc_net_exit.exit_crit_edge: ; preds = %htable_remove_proc_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hashlimit_proc_net_exit.exit

hashlimit_proc_net_exit.exit:                     ; preds = %htable_remove_proc_entry.exit.i.hashlimit_proc_net_exit.exit_crit_edge, %entry.hashlimit_proc_net_exit.exit_crit_edge
  %ipt_hashlimit.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %ipt_hashlimit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ipt_hashlimit.i, align 4
  %ip6t_hashlimit.i = getelementptr inbounds %struct.hashlimit_net, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %ip6t_hashlimit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ip6t_hashlimit.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @hashlimit_mutex) #15
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %11 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.46, ptr noundef %12) #15
  %13 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.47, ptr noundef %14) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !95, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123}
!llvm.named.register.sp = !{!124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__UNIQUE_ID_file620, !1, !"__UNIQUE_ID_file620", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_hashlimit.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_license621, !1, !"__UNIQUE_ID_license621", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author622, !4, !"__UNIQUE_ID_author622", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_hashlimit.c", i32 48, i32 1}
!5 = !{ptr @__UNIQUE_ID_author623, !6, !"__UNIQUE_ID_author623", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_hashlimit.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_description624, !8, !"__UNIQUE_ID_description624", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_hashlimit.c", i32 50, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias625, !10, !"__UNIQUE_ID_alias625", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_hashlimit.c", i32 51, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias626, !12, !"__UNIQUE_ID_alias626", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_hashlimit.c", i32 52, i32 1}
!13 = !{ptr @__initcall__kmod_xt_hashlimit__631_1331_hashlimit_mt_init6, !14, !"__initcall__kmod_xt_hashlimit__631_1331_hashlimit_mt_init6", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_hashlimit.c", i32 1331, i32 1}
!15 = !{ptr @__exitcall_hashlimit_mt_exit, !16, !"__exitcall_hashlimit_mt_exit", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_hashlimit.c", i32 1332, i32 1}
!17 = !{ptr @hashlimit_cachep, !18, !"hashlimit_cachep", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_hashlimit.c", i32 175, i32 27}
!19 = !{ptr @hashlimit_mt_reg, !20, !"hashlimit_mt_reg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_hashlimit.c", i32 980, i32 24}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_hashlimit.c", i32 206, i32 3}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_hashlimit.c", i32 243, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dsthash_alloc_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @dsthash_alloc_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @dsthash_alloc_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_hashlimit.c", i32 249, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/xt_hashlimit.c", i32 515, i32 3}
!35 = !{ptr @user2rate._rs, !34, !"_rs", i1 false, i1 false}
!36 = !{ptr @__func__.user2rate, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @user2rate._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @user2rate._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @hashlimit_mt_check_common._rs, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../net/netfilter/xt_hashlimit.c", i32 850, i32 3}
!42 = !{ptr @__func__.hashlimit_mt_check_common, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hashlimit_mt_check_common._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @hashlimit_mt_check_common._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @hashlimit_mt_check_common._rs.8, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../net/netfilter/xt_hashlimit.c", i32 854, i32 3}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hashlimit_mt_check_common._entry.9, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @hashlimit_mt_check_common._entry_ptr.11, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @hashlimit_mt_check_common._rs.12, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../net/netfilter/xt_hashlimit.c", i32 865, i32 3}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hashlimit_mt_check_common._entry.13, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hashlimit_mt_check_common._entry_ptr.15, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @hashlimit_mt_check_common._rs.16, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../net/netfilter/xt_hashlimit.c", i32 873, i32 4}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hashlimit_mt_check_common._entry.17, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @hashlimit_mt_check_common._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @hashlimit_mt_check_common._rs.20, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../net/netfilter/xt_hashlimit.c", i32 878, i32 4}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @hashlimit_mt_check_common._entry.21, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @hashlimit_mt_check_common._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @hashlimit_mt_check_common._rs.24, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../net/netfilter/xt_hashlimit.c", i32 883, i32 4}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hashlimit_mt_check_common._entry.25, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @hashlimit_mt_check_common._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @hashlimit_mt_check_common._rs.28, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../net/netfilter/xt_hashlimit.c", i32 890, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @hashlimit_mt_check_common._entry.29, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @hashlimit_mt_check_common._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/netfilter/xt_hashlimit.c", i32 174, i32 8}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hashlimit_mutex, !77, !"hashlimit_mutex", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hashlimit_net_id, !92, !"hashlimit_net_id", i1 false, i1 false}
!92 = !{!"../net/netfilter/xt_hashlimit.c", i32 60, i32 21}
!93 = !{ptr @htable_create.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../net/netfilter/xt_hashlimit.c", i32 328, i32 2}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @htable_create.__key.40, !97, !"__key", i1 false, i1 false}
!97 = !{!"../net/netfilter/xt_hashlimit.c", i32 352, i32 2}
!98 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @htable_create.__key.42, !97, !"__key", i1 false, i1 false}
!100 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @dl_seq_ops_v1, !102, !"dl_seq_ops_v1", i1 false, i1 false}
!102 = !{!"../net/netfilter/xt_hashlimit.c", i32 1212, i32 36}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netfilter/xt_hashlimit.c", i32 1099, i32 17}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netfilter/xt_hashlimit.c", i32 1110, i32 17}
!107 = !{ptr @dl_seq_ops_v2, !108, !"dl_seq_ops_v2", i1 false, i1 false}
!108 = !{!"../net/netfilter/xt_hashlimit.c", i32 1219, i32 36}
!109 = !{ptr @dl_seq_ops, !110, !"dl_seq_ops", i1 false, i1 false}
!110 = !{!"../net/netfilter/xt_hashlimit.c", i32 1226, i32 36}
!111 = !{ptr @hashlimit_net_ops, !112, !"hashlimit_net_ops", i1 false, i1 false}
!112 = !{!"../net/netfilter/xt_hashlimit.c", i32 1285, i32 33}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/netfilter/xt_hashlimit.c", i32 1237, i32 44}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/xt_hashlimit.c", i32 1241, i32 45}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/netfilter/xt_hashlimit.c", i32 1305, i32 39}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/netfilter/xt_hashlimit.c", i32 1309, i32 3}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hashlimit_mt_init._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @hashlimit_mt_init._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{!"sp"}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i64 2158888707, i64 2158889200, i64 2158888744, i64 2158888800, i64 2158888834, i64 2158888858, i64 2158888899, i64 2158888920, i64 2158888948, i64 2158888982}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i8 0, i8 2}
!138 = !{!"branch_weights", i32 1, i32 2000}
!139 = !{i64 2151984090}
!140 = !{i64 2148374525, i64 2148374557, i64 2148374586, i64 2148374620, i64 2148374651, i64 2148374674}
!141 = !{i64 2149389154}
!142 = !{i64 2149389420}
!143 = !{i64 2158926835, i64 2158927329, i64 2158926872, i64 2158926928, i64 2158926962, i64 2158926986, i64 2158927027, i64 2158927048, i64 2158927076, i64 2158927110}
