; ModuleID = '/llk/IR_all_yes/net/tipc/discover.c_pt.bc'
source_filename = "../net/tipc/discover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.113, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.113 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
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
%struct.tipc_media_addr = type { [32 x i8], i8, i8 }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tipc_bearer = type { ptr, i32, %struct.tipc_media_addr, [32 x i8], ptr, %struct.tipc_media_addr, %struct.packet_type, %struct.callback_head, i32, i32, i32, i32, i32, i32, ptr, i8, i32, %struct.refcount_struct }
%struct.callback_head = type { ptr, ptr }
%struct.tipc_media = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.tipc_discoverer = type { i32, %struct.tipc_media_addr, ptr, i32, i32, %struct.spinlock, ptr, %struct.timer_list, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@tipc_disc_rcv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tipc_disc_rcv = private unnamed_addr constant [14 x i8] c"tipc_disc_rcv\00", align 1
@tipc_disc_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.tipc_disc_rcv, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014tipc: Rcv corrupt discovery message\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/tipc/discover.c\00", [44 x i8] zeroinitializer }, align 32
@tipc_disc_rcv._entry_ptr = internal global ptr @tipc_disc_rcv._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tipc_disc_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&d->lock\00", [23 x i8] zeroinitializer }, align 32
@tipc_disc_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&d->timer)\00", [20 x i8] zeroinitializer }, align 32
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@disc_dupl_alert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014tipc: Duplicate %x using %s seen on <%s>\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disc_dupl_alert\00", [16 x i8] zeroinitializer }, align 32
@disc_dupl_alert._entry_ptr = internal global ptr @disc_dupl_alert._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 220, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 225, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 374, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 375, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 45, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [23 x i8] c"../net/tipc/discover.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 133, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @disc_dupl_alert._entry, ptr @disc_dupl_alert._entry_ptr, ptr @tipc_disc_rcv._entry, ptr @tipc_disc_rcv._entry_ptr, ptr @.str, ptr @tipc_disc_rcv._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tipc_disc_create.__key, ptr @.str.4, ptr @tipc_disc_create.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_disc_rcv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_disc_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_disc_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_disc_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disc_dupl_alert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_disc_rcv(ptr noundef %net, ptr noundef %skb, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %peer_id = alloca [16 x i8], align 1
  %maddr = alloca %struct.tipc_media_addr, align 1
  %dupl_addr = alloca i8, align 1
  %respond = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %5, 15
  %6 = trunc i32 %shr.i.i to i16
  %conv = and i16 %6, 8191
  %legacy_addr_format = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %legacy_addr_format to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %legacy_addr_format, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool = icmp ne i8 %8, 0
  %arrayidx.i.i119 = getelementptr [15 x i32], ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i119, align 4
  %and.i.i121 = and i32 %5, 65535
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %peer_id) #9
  %11 = call ptr @memset(ptr %peer_id, i32 0, i32 16)
  %arrayidx.i.i122 = getelementptr [15 x i32], ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i122 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i122, align 4
  %arrayidx.i.i123 = getelementptr [15 x i32], ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i123, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %maddr) #9
  %16 = call ptr @memset(ptr %maddr, i32 255, i32 34)
  %arrayidx.i.i124 = getelementptr [15 x i32], ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i124, align 4
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i126 = lshr i32 %20, 29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dupl_addr) #9
  %21 = ptrtoint ptr %dupl_addr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %dupl_addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %respond) #9
  %22 = ptrtoint ptr %respond to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %respond, align 1
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %entry.skb_linearize.exit_crit_edge, label %cond.true.i

entry.skb_linearize.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_linearize.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %24) #9
  br label %skb_linearize.exit

skb_linearize.exit:                               ; preds = %cond.true.i, %entry.skb_linearize.exit_crit_edge
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not = icmp eq i32 %27, 0
  br i1 %tobool13.not, label %if.else, label %if.then

if.then:                                          ; preds = %skb_linearize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %26, align 4
  %30 = lshr i32 %29, 19
  %shl.i.i.i = and i32 %30, 60
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %shl.i.i.i
  %31 = call ptr @memcpy(ptr %peer_id, ptr %add.ptr.i.i, i32 16)
  br label %if.end

if.else:                                          ; preds = %skb_linearize.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %peer_id, ptr noundef nonnull @.str, i32 noundef %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %media = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %32 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %media, align 4
  %msg2addr = getelementptr inbounds %struct.tipc_media, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %msg2addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg2addr, align 4
  %arrayidx.i = getelementptr [15 x i32], ptr %26, i32 0, i32 5
  %call18 = call i32 %35(ptr noundef %b, ptr noundef nonnull %maddr, ptr noundef %arrayidx.i) #9
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end.if.then22_crit_edge

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end
  %broadcast = getelementptr inbounds %struct.tipc_media_addr, ptr %maddr, i32 0, i32 2
  %36 = ptrtoint ptr %broadcast to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %broadcast, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool21.not = icmp eq i8 %37, 0
  br i1 %tobool21.not, label %if.end28, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end.if.then22_crit_edge
  %call23 = call i32 @___ratelimit(ptr noundef nonnull @tipc_disc_rcv._rs, ptr noundef nonnull @__func__.tipc_disc_rcv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %maddr, ptr noundef dereferenceable(34) %addr, i32 34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool30.not = icmp eq i32 %bcmp, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %net_id33 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 5
  %38 = ptrtoint ptr %net_id33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %net_id33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %39)
  %cmp.not = icmp eq i32 %15, %39
  br i1 %cmp.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %disc = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 14
  %40 = ptrtoint ptr %disc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disc, align 4
  %net1.i = getelementptr inbounds %struct.tipc_discoverer, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net1.i, align 4
  %call.i = call fastcc ptr @tipc_net(ptr noundef %43) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %addr_trial_end.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %addr_trial_end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %addr_trial_end.i, align 4
  %sub.i = sub i32 %44, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  %call.i.i128 = call fastcc ptr @tipc_net(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i126)
  %cmp3.i = icmp eq i32 %shr.i.i126, 3
  br i1 %cmp3.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %if.end36
  br i1 %cmp.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %trial_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %trial_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %trial_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %13)
  %cmp5.not.i = icmp eq i32 %48, %13
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %trial_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %10, ptr %trial_addr.i, align 4
  %skb.i = getelementptr inbounds %struct.tipc_discoverer, ptr %41, i32 0, i32 6
  %50 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i129 = getelementptr [15 x i32], ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %10, ptr %arrayidx.i.i.i129, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %55, 100
  %56 = ptrtoint ptr %addr_trial_end.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i, ptr %addr_trial_end.i, align 4
  br label %cleanup

if.end12.i:                                       ; preds = %if.end36
  %node_addr.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i128, i32 0, i32 1
  %57 = ptrtoint ptr %node_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %node_addr.i.i, align 4
  %cmp.not.i = xor i1 %cmp.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool14.not.i = icmp eq i32 %58, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %tobool14.not.i, i1 false
  br i1 %or.cond.i, label %if.then15.i, label %if.end12.i.if.end22.i_crit_edge

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %work.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %work.i) #9
  %skb17.i = getelementptr inbounds %struct.tipc_discoverer, ptr %41, i32 0, i32 6
  %60 = ptrtoint ptr %skb17.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skb17.i, align 4
  %data.i53.i = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 19
  %62 = ptrtoint ptr %data.i53.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i53.i, align 4
  %trial_addr19.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 2
  %64 = ptrtoint ptr %trial_addr19.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %trial_addr19.i, align 4
  %arrayidx.i.i54.i = getelementptr [15 x i32], ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx.i.i54.i, align 4
  %67 = load ptr, ptr %skb17.i, align 4
  %data.i55.i = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 19
  %68 = ptrtoint ptr %data.i55.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i55.i, align 4
  %arrayidx.i.i56.i = getelementptr [15 x i32], ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i56.i, align 4
  %and2.i.i.i = and i32 %71, 536870911
  store i32 %and2.i.i.i, ptr %arrayidx.i.i56.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i126)
  %cmp23.not.i = icmp eq i32 %shr.i.i126, 2
  br i1 %cmp23.not.i, label %if.end26.i, label %tipc_disc_addr_trial_msg.exit

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = call i32 @tipc_node_try_addr(ptr noundef %43, ptr noundef nonnull %peer_id, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.cleanup_crit_edge, label %if.then29.i

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @tipc_disc_msg_xmit(ptr noundef %43, i32 noundef 3, i32 noundef %18, i32 noundef %call27.i, ptr noundef nonnull %maddr, ptr noundef %b) #9
  br label %cleanup

tipc_disc_addr_trial_msg.exit:                    ; preds = %if.end22.i
  br i1 %cmp.i, label %tipc_disc_addr_trial_msg.exit.cleanup_crit_edge, label %if.end40

tipc_disc_addr_trial_msg.exit.cleanup_crit_edge:  ; preds = %tipc_disc_addr_trial_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %tipc_disc_addr_trial_msg.exit
  %call.i130 = call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i130, i32 0, i32 1
  %72 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %node_addr.i, align 4
  %call.i.i131 = call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_addr.i.i132 = getelementptr inbounds %struct.tipc_net, ptr %call.i.i131, i32 0, i32 1
  %74 = ptrtoint ptr %node_addr.i.i132 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %node_addr.i.i132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %18)
  %cmp.i133 = icmp ne i32 %75, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp ne i32 %18, 0
  %tobool43.not = and i1 %tobool.not.i, %cmp.i133
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @disc_dupl_alert(ptr noundef %b, i32 noundef %73, ptr noundef nonnull %maddr)
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %call47 = call zeroext i1 @tipc_in_scope(i1 noundef zeroext %tobool, i32 noundef %13, i32 noundef %73) #9
  br i1 %call47, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %domain = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 12
  %76 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %domain, align 4
  %call51 = call zeroext i1 @tipc_in_scope(i1 noundef zeroext %tobool, i32 noundef %77, i32 noundef %18) #9
  br i1 %call51, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @tipc_node_check_dest(ptr noundef %net, i32 noundef %18, ptr noundef nonnull %peer_id, ptr noundef %b, i16 noundef zeroext %conv, i32 noundef %and.i.i121, i32 noundef %3, ptr noundef nonnull %maddr, ptr noundef nonnull %respond, ptr noundef nonnull %dupl_addr) #9
  %78 = ptrtoint ptr %dupl_addr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dupl_addr, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool55.not = icmp eq i8 %79, 0
  br i1 %tobool55.not, label %if.end53.if.end57_crit_edge, label %if.then56

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @disc_dupl_alert(ptr noundef %b, i32 noundef %18, ptr noundef nonnull %maddr)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end53.if.end57_crit_edge
  %80 = ptrtoint ptr %respond to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %respond, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool58.not = icmp ne i8 %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %20)
  %cmp61.not = icmp ult i32 %20, 536870912
  %or.cond = select i1 %tobool58.not, i1 %cmp61.not, i1 false
  br i1 %or.cond, label %if.end64, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @tipc_disc_msg_xmit(ptr noundef %net, i32 noundef 1, i32 noundef %18, i32 noundef 0, ptr noundef nonnull %maddr, ptr noundef %b)
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end57.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then44, %tipc_disc_addr_trial_msg.exit.cleanup_crit_edge, %if.then29.i, %if.end26.i.cleanup_crit_edge, %if.end7.i, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end, %if.then22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %respond) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dupl_addr) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %maddr) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %peer_id) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tipc_net(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.8) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #9
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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disc_dupl_alert(ptr noundef %b, i32 noundef %node_addr, ptr noundef %media_addr) unnamed_addr #0 align 64 {
entry:
  %media_addr_str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %media_addr_str) #9
  %0 = call ptr @memset(ptr %media_addr_str, i32 255, i32 64)
  %call = call i32 @tipc_media_addr_printf(ptr noundef nonnull %media_addr_str, i32 noundef 64, ptr noundef %media_addr) #9
  %name = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 3
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %node_addr, ptr noundef nonnull %media_addr_str, ptr noundef %name) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %media_addr_str) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_in_scope(i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_check_dest(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tipc_disc_msg_xmit(ptr noundef %net, i32 noundef %mtyp, i32 noundef %dst, i32 noundef %sugg_addr, ptr noundef %maddr, ptr noundef %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tipc_buf_acquire(i32 noundef 76, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %domain.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 12
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain.i, align 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %trial_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %trial_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trial_addr.i, align 4
  tail call void @tipc_msg_init(i32 noundef %7, ptr noundef %5, i32 noundef 13, i32 noundef %mtyp, i32 noundef 60, i32 noundef %3) #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %and.i.i = and i32 %9, -1179648
  %or.i.i.i = or i32 %and.i.i, 1048652
  store i32 %or.i.i.i, ptr %5, align 4
  %random.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %random.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %random.i, align 4
  %and.i.i.i = and i32 %11, 32767
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %and2.i.i.i = and i32 %13, -268435456
  %or.i.i24.i = or i32 %and.i.i.i, %and2.i.i.i
  %or.i.i27.i = or i32 %or.i.i24.i, 134184960
  store i32 %or.i.i27.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i28.i = getelementptr [15 x i32], ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %arrayidx.i.i28.i, align 4
  %net_id.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %net_id.i, align 4
  %arrayidx.i.i29.i = getelementptr [15 x i32], ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.i.i29.i, align 4
  %media.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %18 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %media.i, align 4
  %addr2msg.i = getelementptr inbounds %struct.tipc_media, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr2msg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr2msg.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %5, i32 0, i32 5
  %addr.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %call3.i = tail call i32 %21(ptr noundef %arrayidx.i.i, ptr noundef %addr.i) #9
  %22 = ptrtoint ptr %random.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %random.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 8
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %25 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash_mix.i.i.i, align 8
  %xor.i.i = xor i32 %24, %23
  %xor2.i.i = xor i32 %xor.i.i, %26
  %arrayidx.i.i30.i = getelementptr [15 x i32], ptr %5, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xor2.i.i, ptr %arrayidx.i.i30.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_id_string.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %node_id_string.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %char0.i.i = load i8, ptr %node_id_string.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i = icmp eq i8 %char0.i.i, 0
  %.call.i.i = select i1 %tobool.not.i.i, ptr null, ptr %call.i.i
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %30, 19
  %shl.i.i.i.i = and i32 %31, 60
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %shl.i.i.i.i
  %32 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %.call.i.i, i32 16)
  %arrayidx.i.i1 = getelementptr [15 x i32], ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %arrayidx.i.i1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sugg_addr, ptr %arrayidx.i.i1, align 4
  %arrayidx.i.i2 = getelementptr [15 x i32], ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx.i.i2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dst, ptr %arrayidx.i.i2, align 4
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %35 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %identity, align 4
  tail call void @tipc_bearer_xmit_skb(ptr noundef %net, i32 noundef %36, ptr noundef nonnull %call, ptr noundef %maddr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_disc_add_dest(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %num_nodes = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_nodes, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %num_nodes, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_disc_remove_dest(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %num_nodes = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_nodes, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %num_nodes, align 4
  %timer_intv = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %timer_intv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_intv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %cmp2 = icmp ugt i32 %3, 100
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %timer_intv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 13, ptr %timer_intv, align 4
  %timer = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 13
  %call6 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_disc_create(ptr noundef %net, ptr noundef %b, ptr nocapture noundef readonly %dest, ptr nocapture noundef writeonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tipc_net(ptr noundef %net)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 152) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @tipc_buf_acquire(i32 noundef 76, i32 noundef 2592) #9
  %skb3 = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 6
  %1 = ptrtoint ptr %skb3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %skb3, align 8
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %domain.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 12
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %domain.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %trial_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %trial_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trial_addr.i, align 4
  tail call void @tipc_msg_init(i32 noundef %7, ptr noundef %5, i32 noundef 13, i32 noundef 0, i32 noundef 60, i32 noundef %3) #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %and.i.i = and i32 %9, -1179648
  %or.i.i.i = or i32 %and.i.i, 1048652
  store i32 %or.i.i.i, ptr %5, align 4
  %random.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %random.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %random.i, align 4
  %and.i.i.i = and i32 %11, 32767
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %and2.i.i.i = and i32 %13, -268435456
  %or.i.i24.i = or i32 %and.i.i.i, %and2.i.i.i
  %or.i.i27.i = or i32 %or.i.i24.i, 134184960
  store i32 %or.i.i27.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i28.i = getelementptr [15 x i32], ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %arrayidx.i.i28.i, align 4
  %net_id.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %net_id.i, align 4
  %arrayidx.i.i29.i = getelementptr [15 x i32], ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.i.i29.i, align 4
  %media.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %18 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %media.i, align 4
  %addr2msg.i = getelementptr inbounds %struct.tipc_media, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr2msg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr2msg.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %5, i32 0, i32 5
  %addr.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %call3.i = tail call i32 %21(ptr noundef %arrayidx.i.i, ptr noundef %addr.i) #9
  %22 = ptrtoint ptr %random.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %random.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 8
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %25 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hash_mix.i.i.i, align 8
  %xor.i.i = xor i32 %24, %23
  %xor2.i.i = xor i32 %xor.i.i, %26
  %arrayidx.i.i30.i = getelementptr [15 x i32], ptr %5, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %xor2.i.i, ptr %arrayidx.i.i30.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_id_string.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %node_id_string.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %char0.i.i = load i8, ptr %node_id_string.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i = icmp eq i8 %char0.i.i, 0
  %.call.i.i = select i1 %tobool.not.i.i, ptr null, ptr %call.i.i
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %30, 19
  %shl.i.i.i.i = and i32 %31, 60
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %shl.i.i.i.i
  %32 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %.call.i.i, i32 16)
  %call.i54 = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i54, i32 0, i32 1
  %33 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %node_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool10.not = icmp eq i32 %34, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 100
  %addr_trial_end = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 3
  %36 = ptrtoint ptr %addr_trial_end to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %addr_trial_end, align 4
  %37 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %skb3, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i55 = getelementptr [15 x i32], ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i55, align 4
  %and2.i.i = and i32 %42, 536870911
  %or.i.i = or i32 %and2.i.i, 1073741824
  store i32 %or.i.i, ptr %arrayidx.i.i55, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %dest16 = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 1
  %43 = call ptr @memcpy(ptr %dest16, ptr %dest, i32 34)
  %net17 = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 2
  %44 = ptrtoint ptr %net17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %net, ptr %net17, align 8
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %45 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %identity, align 4
  %47 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %call7.i, align 8
  %48 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %domain.i, align 4
  %domain18 = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 3
  %50 = ptrtoint ptr %domain18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %domain18, align 4
  %num_nodes = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 4
  %51 = ptrtoint ptr %num_nodes to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %num_nodes, align 8
  %timer_intv = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 8
  %52 = ptrtoint ptr %timer_intv to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 13, ptr %timer_intv, align 4
  %lock = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @tipc_disc_create.__key, i16 noundef signext 3) #9
  %timer = getelementptr inbounds %struct.tipc_discoverer, ptr %call7.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tipc_disc_timeout, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @tipc_disc_create.__key.5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %54 = ptrtoint ptr %timer_intv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %timer_intv, align 4
  %add26 = add i32 %55, %53
  %call27 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add26) #9
  %disc = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 14
  %56 = ptrtoint ptr %disc to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i, ptr %disc, align 4
  %57 = ptrtoint ptr %skb3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb3, align 8
  %call29 = tail call ptr @skb_clone(ptr noundef %58, i32 noundef 2592) #9
  %59 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call29, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tipc_buf_acquire(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_disc_timeout(ptr noundef %t) #0 align 64 {
entry:
  %maddr = alloca %struct.tipc_media_addr, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -100
  %net = getelementptr i8, ptr %t, i32 -60
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc ptr @tipc_net(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %maddr) #9
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %lock = getelementptr i8, ptr %t, i32 -48
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %domain = getelementptr i8, ptr %t, i32 -56
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain, align 4
  %and.i = and i32 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %num_nodes = getelementptr i8, ptr %t, i32 -52
  %6 = ptrtoint ptr %num_nodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %exit.thread

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

exit.thread:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %timer_intv = getelementptr i8, ptr %t, i32 48
  %8 = ptrtoint ptr %timer_intv to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %timer_intv, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %addr_trial_end = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %addr_trial_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_trial_end, align 4
  %sub = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.if.end13_crit_edge, label %land.lhs.true5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true5:                                   ; preds = %if.end
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %3) #9
  %node_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %node_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true5.if.end13_crit_edge

land.lhs.true5.if.end13_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 13
  %call10 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %work = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %work) #9
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = ptrtoint ptr %addr_trial_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_trial_end, align 4
  %sub15 = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp16 = icmp slt i32 %sub15, 0
  %timer_intv19 = getelementptr i8, ptr %t, i32 48
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %timer_intv19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 13, ptr %timer_intv19, align 4
  br label %exit

if.else:                                          ; preds = %if.end13
  %20 = ptrtoint ptr %timer_intv19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timer_intv19, align 4
  %mul = shl i32 %21, 1
  store i32 %mul, ptr %timer_intv19, align 4
  %num_nodes21 = getelementptr i8, ptr %t, i32 -52
  %22 = ptrtoint ptr %num_nodes21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_nodes21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %land.lhs.true33, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %mul)
  %cmp26 = icmp ugt i32 %mul, 6000
  br i1 %cmp26, label %land.lhs.true23.if.end41.sink.split_crit_edge, label %land.lhs.true23.if.end41_crit_edge

land.lhs.true23.if.end41_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true23.if.end41.sink.split_crit_edge:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.sink.split

land.lhs.true33:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %cmp36 = icmp ugt i32 %mul, 100
  br i1 %cmp36, label %land.lhs.true33.if.end41.sink.split_crit_edge, label %land.lhs.true33.if.end41_crit_edge

land.lhs.true33.if.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true33.if.end41.sink.split_crit_edge:    ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %land.lhs.true33.if.end41.sink.split_crit_edge, %land.lhs.true23.if.end41.sink.split_crit_edge
  %.sink = phi i32 [ 6000, %land.lhs.true23.if.end41.sink.split_crit_edge ], [ 100, %land.lhs.true33.if.end41.sink.split_crit_edge ]
  %24 = ptrtoint ptr %timer_intv19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %timer_intv19, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %land.lhs.true33.if.end41_crit_edge, %land.lhs.true23.if.end41_crit_edge
  %skb42 = getelementptr i8, ptr %t, i32 -4
  %25 = ptrtoint ptr %skb42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb42, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i = and i32 %30, 536870911
  store i32 %and2.i.i, ptr %arrayidx.i.i, align 4
  %31 = load ptr, ptr %skb42, align 4
  %data.i91 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %data.i91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i91, align 4
  %trial_addr = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %trial_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %trial_addr, align 4
  %arrayidx.i.i92 = getelementptr [15 x i32], ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.i.i92, align 4
  br label %exit

exit:                                             ; preds = %if.end41, %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %timer_intv48 = getelementptr i8, ptr %t, i32 48
  %38 = ptrtoint ptr %timer_intv48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timer_intv48, align 4
  %add49 = add i32 %39, %37
  %call50 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add49) #9
  %dest = getelementptr i8, ptr %t, i32 -96
  %40 = call ptr @memcpy(ptr %maddr, ptr %dest, i32 34)
  %skb51 = getelementptr i8, ptr %t, i32 -4
  %41 = ptrtoint ptr %skb51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb51, align 4
  %call52 = tail call ptr @skb_clone(ptr noundef %42, i32 noundef 2592) #9
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %tobool55.not = icmp eq ptr %call52, null
  br i1 %tobool55.not, label %exit.cleanup_crit_edge, label %if.then56

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @tipc_bearer_xmit_skb(ptr noundef %3, i32 noundef %44, ptr noundef nonnull %call52, ptr noundef nonnull %maddr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %exit.cleanup_crit_edge, %if.then8, %exit.thread
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %maddr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_disc_delete(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 7
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %skb = getelementptr inbounds %struct.tipc_discoverer, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %d) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_disc_reset(ptr noundef %net, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  %maddr = alloca %struct.tipc_media_addr, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disc = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 14
  %0 = ptrtoint ptr %disc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %maddr) #9
  %lock = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %skb1 = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb1, align 4
  %call.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %domain.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 12
  %4 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %trial_addr.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %trial_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trial_addr.i, align 4
  tail call void @tipc_msg_init(i32 noundef %9, ptr noundef %7, i32 noundef 13, i32 noundef 0, i32 noundef 60, i32 noundef %5) #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %and.i.i = and i32 %11, -1179648
  %or.i.i.i = or i32 %and.i.i, 1048652
  store i32 %or.i.i.i, ptr %7, align 4
  %random.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %random.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %random.i, align 4
  %and.i.i.i = and i32 %13, 32767
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  %and2.i.i.i = and i32 %15, -268435456
  %or.i.i24.i = or i32 %and.i.i.i, %and2.i.i.i
  %or.i.i27.i = or i32 %or.i.i24.i, 134184960
  store i32 %or.i.i27.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i28.i = getelementptr [15 x i32], ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %arrayidx.i.i28.i, align 4
  %net_id.i = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %net_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %net_id.i, align 4
  %arrayidx.i.i29.i = getelementptr [15 x i32], ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.i.i29.i, align 4
  %media.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 4
  %20 = ptrtoint ptr %media.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %media.i, align 4
  %addr2msg.i = getelementptr inbounds %struct.tipc_media, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %addr2msg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr2msg.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %7, i32 0, i32 5
  %addr.i = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 2
  %call3.i = tail call i32 %23(ptr noundef %arrayidx.i.i, ptr noundef %addr.i) #9
  %24 = ptrtoint ptr %random.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %random.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26) to i32))
  %26 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 8
  %hash_mix.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 26
  %27 = ptrtoint ptr %hash_mix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash_mix.i.i.i, align 8
  %xor.i.i = xor i32 %26, %25
  %xor2.i.i = xor i32 %xor.i.i, %28
  %arrayidx.i.i30.i = getelementptr [15 x i32], ptr %7, i32 0, i32 13
  %29 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %xor2.i.i, ptr %arrayidx.i.i30.i, align 4
  %call.i.i = tail call fastcc ptr @tipc_net(ptr noundef %net) #9
  %node_id_string.i.i = getelementptr inbounds %struct.tipc_net, ptr %call.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %node_id_string.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %char0.i.i = load i8, ptr %node_id_string.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i = icmp eq i8 %char0.i.i, 0
  %.call.i.i = select i1 %tobool.not.i.i, ptr null, ptr %call.i.i
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 4
  %33 = lshr i32 %32, 19
  %shl.i.i.i.i = and i32 %33, 60
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %shl.i.i.i.i
  %34 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %.call.i.i, i32 16)
  %net2 = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %net2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %net, ptr %net2, align 4
  %identity = getelementptr inbounds %struct.tipc_bearer, ptr %b, i32 0, i32 13
  %36 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %identity, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %1, align 4
  %39 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %domain.i, align 4
  %domain3 = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %domain3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %domain3, align 4
  %num_nodes = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %num_nodes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %num_nodes, align 4
  %timer_intv = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %timer_intv to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 13, ptr %timer_intv, align 4
  %dest = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %maddr, ptr %dest, i32 34)
  %timer = getelementptr inbounds %struct.tipc_discoverer, ptr %1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %45, 13
  %call5 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #9
  %46 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb1, align 4
  %call7 = tail call ptr @skb_clone(ptr noundef %47, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %identity to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %identity, align 4
  call void @tipc_bearer_xmit_skb(ptr noundef %net, i32 noundef %49, ptr noundef nonnull %call7, ptr noundef nonnull %maddr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %maddr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_xmit_skb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_node_try_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_media_addr_printf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_msg_init(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/discover.c", i32 220, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/discover.c", i32 225, i32 3}
!4 = !{ptr @tipc_disc_rcv._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.tipc_disc_rcv, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tipc_disc_rcv._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tipc_disc_rcv._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @tipc_disc_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/tipc/discover.c", i32 374, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tipc_disc_create.__key.5, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/tipc/discover.c", i32 375, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/tipc/discover.c", i32 133, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @disc_dupl_alert._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @disc_dupl_alert._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
!43 = !{i64 2150063981}
!44 = !{i64 2150064247}
