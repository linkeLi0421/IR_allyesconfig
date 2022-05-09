; ModuleID = '/llk/IR_all_yes/net/dccp/timer.c_pt.bc'
source_filename = "../net/dccp/timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_timestamp\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_timestamp\09\09\09\09"
module asm "\09.long\09__crc_dccp_timestamp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }

@sysctl_dccp_request_retries = dso_local local_unnamed_addr global i32 6, section ".data..read_mostly", align 4
@sysctl_dccp_retries1 = dso_local local_unnamed_addr global i32 3, section ".data..read_mostly", align 4
@sysctl_dccp_retries2 = dso_local local_unnamed_addr global i32 15, section ".data..read_mostly", align 4
@dccp_init_xmit_timers.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&dp->dccps_xmit_timer)\00", [40 x i8] zeroinitializer }, align 32
@dccp_timestamp_seed = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__kstrtab_dccp_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_timestamp to i32), ptr @__kstrtab_dccp_timestamp, ptr @__kstrtabns_dccp_timestamp }, section "___ksymtab_gpl+dccp_timestamp", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@dccp_statistics = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sk_dst_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@dccp_keepalive_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dccp should not use a keepalive timer !\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dccp_keepalive_timer\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/dccp/timer.c\00", [47 x i8] zeroinitializer }, align 32
@dccp_keepalive_timer._entry_ptr = internal global ptr @dccp_keepalive_timer._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 248, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"dccp_timestamp_seed\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 253, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 1750, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 2067, i32 9 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 2112, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [20 x i8] c"../net/dccp/timer.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 165, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_dccp_timestamp, ptr @dccp_keepalive_timer._entry, ptr @dccp_keepalive_timer._entry_ptr, ptr @dccp_init_xmit_timers.__key, ptr @.str, ptr @dccp_timestamp_seed, ptr @.str.1, ptr @.str.3, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_init_xmit_timers.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_timestamp_seed to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_keepalive_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_init_xmit_timers(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_xmitlet = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 30
  tail call void @tasklet_setup(ptr noundef %dccps_xmitlet, ptr noundef nonnull @dccp_write_xmitlet) #8
  %dccps_xmit_timer = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %dccps_xmit_timer, ptr noundef nonnull @dccp_write_xmit_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @dccp_init_xmit_timers.__key) #8
  tail call void @inet_csk_init_xmit_timers(ptr noundef %sk, ptr noundef nonnull @dccp_write_timer, ptr noundef nonnull @dccp_delack_timer, ptr noundef nonnull @dccp_keepalive_timer) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_write_xmitlet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1772
  %sk_lock = getelementptr i8, ptr %t, i32 -1648
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #8
  %dep_map.i.i.i = getelementptr i8, ptr %t, i32 -1548
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %t, i32 -1632
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !49

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %t, i32 -1604
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dccps_xmit_timer = getelementptr i8, ptr %t, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 1
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %dccps_xmit_timer, i32 noundef %add) #8
  br label %if.end

if.else:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dccp_write_xmit(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1672
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @sk_free(ptr noundef %add.ptr) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_write_xmit_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_xmitlet = getelementptr i8, ptr %t, i32 -24
  tail call void @dccp_write_xmitlet(ptr noundef %dccps_xmitlet)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_init_xmit_timers(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_write_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1284
  %sk_lock = getelementptr i8, ptr %t, i32 -1160
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #8
  %dep_map.i.i.i = getelementptr i8, ptr %t, i32 -1060
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %t, i32 -1144
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !49

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %t, i32 -1116
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 5
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %add) #8
  br label %out

if.end:                                           ; preds = %sock_owned_by_user.exit
  %skc_state = getelementptr i8, ptr %t, i32 -1266
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp eq i8 %5, 7
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %icsk_pending = getelementptr i8, ptr %t, i32 146
  %6 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %icsk_pending, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end4

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %icsk_timeout = getelementptr i8, ptr %t, i32 -4
  %9 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %icsk_timeout, align 8
  %sub = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %10) #8
  br label %out

if.end10:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %icsk_pending, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cond = icmp eq i8 %7, 1
  br i1 %cond, label %sw.bb, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end10
  %12 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i.i = icmp eq i8 %13, 2
  br i1 %cmp.i.i, label %sw.bb.if.then.i.i30_crit_edge, label %lor.lhs.false.i.i

sw.bb.if.then.i.i30_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i30

lor.lhs.false.i.i:                                ; preds = %sw.bb
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %15)
  %cmp5.i.i = icmp eq i8 %15, 13
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.if.then.i.i30_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then.i.i30_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i30

if.then.i.i30:                                    ; preds = %lor.lhs.false.i.i.if.then.i.i30_crit_edge, %sw.bb.if.then.i.i30_crit_edge
  %icsk_retransmits.i.i = getelementptr i8, ptr %t, i32 145
  %16 = ptrtoint ptr %icsk_retransmits.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %icsk_retransmits.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp8.not.i.i = icmp eq i8 %17, 0
  br i1 %cmp8.not.i.i, label %if.then.i.i30.if.end.i.i_crit_edge, label %if.then10.i.i

if.then.i.i30.if.end.i.i_crit_edge:               ; preds = %if.then.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then10.i.i:                                    ; preds = %if.then.i.i30
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dst_negative_advice(ptr noundef %add.ptr) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then10.i.i, %if.then.i.i30.if.end.i.i_crit_edge
  %icsk_syn_retries.i.i = getelementptr i8, ptr %t, i32 148
  %18 = ptrtoint ptr %icsk_syn_retries.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %icsk_syn_retries.i.i, align 8
  %conv11.i.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i31 = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i.if.end18.sink.split.i.i_crit_edge, label %if.end.i.i.if.end18.i.i_crit_edge

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.end.i.i.if.end18.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split.i.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %icsk_retransmits12.i.i = getelementptr i8, ptr %t, i32 145
  %20 = ptrtoint ptr %icsk_retransmits12.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %icsk_retransmits12.i.i, align 1
  %conv13.i.i = zext i8 %21 to i32
  %22 = load i32, ptr @sysctl_dccp_retries1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv13.i.i)
  %cmp14.not.i.i = icmp sgt i32 %22, %conv13.i.i
  br i1 %cmp14.not.i.i, label %if.else.i.i.if.end18.sink.split.i.i_crit_edge, label %if.then16.i.i

if.else.i.i.if.end18.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @dst_negative_advice(ptr noundef %add.ptr) #8
  br label %if.end18.sink.split.i.i

if.end18.sink.split.i.i:                          ; preds = %if.then16.i.i, %if.else.i.i.if.end18.sink.split.i.i_crit_edge, %if.end.i.i.if.end18.sink.split.i.i_crit_edge
  %sysctl_dccp_request_retries.sink.i.i = phi ptr [ @sysctl_dccp_request_retries, %if.end.i.i.if.end18.sink.split.i.i_crit_edge ], [ @sysctl_dccp_retries2, %if.then16.i.i ], [ @sysctl_dccp_retries2, %if.else.i.i.if.end18.sink.split.i.i_crit_edge ]
  %23 = ptrtoint ptr %sysctl_dccp_request_retries.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sysctl_dccp_request_retries.sink.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end18.sink.split.i.i, %if.end.i.i.if.end18.i.i_crit_edge
  %retry_until.0.i.i = phi i32 [ %conv11.i.i, %if.end.i.i.if.end18.i.i_crit_edge ], [ %24, %if.end18.sink.split.i.i ]
  %icsk_retransmits19.i.i = getelementptr i8, ptr %t, i32 145
  %25 = ptrtoint ptr %icsk_retransmits19.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %icsk_retransmits19.i.i, align 1
  %conv20.i.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retry_until.0.i.i, i32 %conv20.i.i)
  %cmp21.not.i.i = icmp sgt i32 %retry_until.0.i.i, %conv20.i.i
  br i1 %cmp21.not.i.i, label %if.end.i, label %dccp_write_timeout.exit.i

dccp_write_timeout.exit.i:                        ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sk_err_soft.i.i.i = getelementptr i8, ptr %t, i32 -588
  %27 = ptrtoint ptr %sk_err_soft.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_err_soft.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i32 = icmp eq i32 %28, 0
  %..i.i.i = select i1 %tobool.not.i.i.i32, i32 110, i32 %28
  %sk_err.i.i.i = getelementptr i8, ptr %t, i32 -592
  %29 = ptrtoint ptr %sk_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %..i.i.i, ptr %sk_err.i.i.i, align 4
  tail call void @sk_error_report(ptr noundef %add.ptr) #8
  %call.i.i.i = tail call i32 @dccp_send_reset(ptr noundef %add.ptr, i32 noundef 2) #8
  tail call void @dccp_done(ptr noundef %add.ptr) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %30 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx8.i.i.i, align 4
  %add.i.i.i = add i32 %37, %31
  %38 = inttoptr i32 %add.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add9.i.i.i = add i32 %40, 1
  store i32 %add9.i.i.i, ptr %38, align 4
  br label %out

if.end.i:                                         ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.i = icmp eq i8 %26, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %41 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx.i = getelementptr [15 x i32], ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %arrayidx.i to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i, align 4
  %arrayidx12.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx12.i, align 4
  %add.i = add i32 %48, %42
  %49 = inttoptr i32 %add.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add13.i = add i32 %51, 1
  store i32 %add13.i, ptr %49, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then3.i, %if.end.i.if.end18.i_crit_edge
  %call19.i = tail call i32 @dccp_retransmit_skb(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.not.i = icmp eq i32 %call19.i, 0
  br i1 %cmp20.not.i, label %if.end33.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %icsk_retransmits19.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %icsk_retransmits19.i.i, align 1
  %dec.i = add i8 %53, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp25.i = icmp eq i8 %dec.i, 0
  %spec.select.i = select i1 %cmp25.i, i8 1, i8 %dec.i
  %54 = ptrtoint ptr %icsk_retransmits19.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select.i, ptr %icsk_retransmits19.i.i, align 1
  %icsk_rto.i = getelementptr i8, ptr %t, i32 96
  %55 = ptrtoint ptr %icsk_rto.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %icsk_rto.i, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 50) #8
  %58 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %icsk_pending, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %59, %57
  %60 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i.i, ptr %icsk_timeout, align 8
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %add.i.i) #8
  br label %out

if.end33.i:                                       ; preds = %if.end18.i
  %icsk_backoff.i = getelementptr i8, ptr %t, i32 147
  %61 = ptrtoint ptr %icsk_backoff.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %icsk_backoff.i, align 1
  %inc.i = add i8 %62, 1
  store i8 %inc.i, ptr %icsk_backoff.i, align 1
  %icsk_rto34.i = getelementptr i8, ptr %t, i32 96
  %63 = ptrtoint ptr %icsk_rto34.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %icsk_rto34.i, align 4
  %shl.i = shl i32 %64, 1
  %65 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 6400) #8
  %66 = ptrtoint ptr %icsk_rto34.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %icsk_rto34.i, align 4
  %67 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %icsk_pending, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add.i68.i = add i32 %68, %65
  %69 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add.i68.i, ptr %icsk_timeout, align 8
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %add.i68.i) #8
  %70 = ptrtoint ptr %icsk_retransmits19.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %icsk_retransmits19.i.i, align 1
  %conv45.i = zext i8 %71 to i32
  %72 = load i32, ptr @sysctl_dccp_retries1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv45.i)
  %cmp46.i = icmp slt i32 %72, %conv45.i
  br i1 %cmp46.i, label %if.then48.i, label %if.end33.i.out_crit_edge

if.end33.i.out_crit_edge:                         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then48.i:                                      ; preds = %if.end33.i
  %skc_tx_queue_mapping.i.i.i.i = getelementptr i8, ptr %t, i32 -1192
  %73 = ptrtoint ptr %skc_tx_queue_mapping.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i.i.i, align 4
  %sk_dst_pending_confirm.i.i.i = getelementptr i8, ptr %t, i32 -764
  %74 = ptrtoint ptr %sk_dst_pending_confirm.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %sk_dst_pending_confirm.i.i.i, align 8
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.then48.i.__sk_dst_reset.exit.i_crit_edge

if.then48.i.__sk_dst_reset.exit.i_crit_edge:      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_reset.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.then48.i
  %dep_map2.i.i.i.i = getelementptr i8, ptr %t, i32 -1144
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.lhs.true.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.__sk_dst_reset.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.__sk_dst_reset.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_reset.exit.i

land.lhs.true.i.i.i:                              ; preds = %lockdep_sock_is_held.exit.i.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i71.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i71.i, label %land.lhs.true.i.i.i.__sk_dst_reset.exit.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.__sk_dst_reset.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_reset.exit.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b1.i.i.i = load i1, ptr @__sk_dst_set.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true2.i.i.i.__sk_dst_reset.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.__sk_dst_reset.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_reset.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2113, ptr noundef nonnull @.str.9) #8
  br label %__sk_dst_reset.exit.i

__sk_dst_reset.exit.i:                            ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.__sk_dst_reset.exit.i_crit_edge, %land.lhs.true.i.i.i.__sk_dst_reset.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.__sk_dst_reset.exit.i_crit_edge, %if.then48.i.__sk_dst_reset.exit.i_crit_edge
  %sk_dst_cache.i.i.i = getelementptr i8, ptr %t, i32 -856
  %75 = ptrtoint ptr %sk_dst_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sk_dst_cache.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %77 = ptrtoint ptr %sk_dst_cache.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr null, ptr %sk_dst_cache.i.i.i, align 4
  tail call void @dst_release(ptr noundef %76) #8
  br label %out

out:                                              ; preds = %__sk_dst_reset.exit.i, %if.end33.i.out_crit_edge, %if.then22.i, %dccp_write_timeout.exit.i, %if.end10.out_crit_edge, %if.then7, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1184
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @sk_free(ptr noundef %add.ptr) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_delack_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1332
  %sk_lock = getelementptr i8, ptr %t, i32 -1208
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #8
  %dep_map.i.i.i = getelementptr i8, ptr %t, i32 -1108
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr i8, ptr %t, i32 -1192
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !49

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr i8, ptr %t, i32 -1164
  %1 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %skc_net.i = getelementptr i8, ptr %t, i32 -1296
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %net_statistics = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 30, i32 3
  %5 = ptrtoint ptr %net_statistics to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_statistics, align 4
  %arrayidx = getelementptr [126 x i32], ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %arrayidx to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %13, %7
  %14 = inttoptr i32 %add to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13 = add i32 %16, 1
  store i32 %add13, ptr %14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add18 = add i32 %17, 4
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %add18) #8
  br label %out

if.end:                                           ; preds = %sock_owned_by_user.exit
  %skc_state = getelementptr i8, ptr %t, i32 -1314
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp = icmp eq i8 %19, 7
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %icsk_ack = getelementptr i8, ptr %t, i32 104
  %20 = ptrtoint ptr %icsk_ack to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %icsk_ack, align 4
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end22

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end22:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr i8, ptr %t, i32 112
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout, align 4
  %sub = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sk_reset_timer(ptr noundef %add.ptr, ptr noundef %t, i32 noundef %25) #8
  br label %out

if.end30:                                         ; preds = %if.end22
  %26 = and i8 %21, -3
  %27 = ptrtoint ptr %icsk_ack to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %icsk_ack, align 4
  %28 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  br i1 %tobool37.not, label %if.end30.out_crit_edge, label %if.then38

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then38:                                        ; preds = %if.end30
  %pingpong.i = getelementptr i8, ptr %t, i32 106
  %29 = ptrtoint ptr %pingpong.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pingpong.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp.i = icmp ugt i8 %30, 2
  br i1 %cmp.i, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %ato = getelementptr i8, ptr %t, i32 108
  %31 = ptrtoint ptr %ato to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ato, align 4
  %shl = shl i32 %32, 1
  %icsk_rto = getelementptr i8, ptr %t, i32 48
  %33 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %icsk_rto, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %34)
  %36 = ptrtoint ptr %ato to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ato, align 4
  br label %if.end49

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %pingpong.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %pingpong.i, align 2
  %ato48 = getelementptr i8, ptr %t, i32 108
  %38 = ptrtoint ptr %ato48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %ato48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then40
  tail call void @dccp_send_ack(ptr noundef %add.ptr) #8
  %skc_net.i106 = getelementptr i8, ptr %t, i32 -1296
  %39 = ptrtoint ptr %skc_net.i106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %skc_net.i106, align 4
  %net_statistics64 = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 30, i32 3
  %41 = ptrtoint ptr %net_statistics64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_statistics64, align 4
  %arrayidx66 = getelementptr [126 x i32], ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %arrayidx66 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !39) #8
  %and.i107 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i107 to ptr
  %cpu69 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu69, align 4
  %arrayidx70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx70, align 4
  %add71 = add i32 %49, %43
  %50 = inttoptr i32 %add71 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add72 = add i32 %52, 1
  store i32 %add72, ptr %50, align 4
  br label %out

out:                                              ; preds = %if.end49, %if.end30.out_crit_edge, %if.then26, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -1232
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @sk_free(ptr noundef %add.ptr) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_keepalive_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  %skc_refcnt.i = getelementptr i8, ptr %t, i32 -432
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !49

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @sk_free(ptr noundef %add.ptr) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_timestamp() #0 align 64 {
if.end180:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %0 = load i64, ptr @dccp_timestamp_seed, align 8
  %sub.i = sub i64 %call.i, %0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %1 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %1, i32 0) #12, !srcloc !54
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %1, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !55
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %3, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %div81262 = lshr i64 %cond213.i.i.i, 1
  %4 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div81262, i64 3689348814741910323) #12, !srcloc !56
  %5 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div81262, i64 %4) #12, !srcloc !57
  %extract.t263 = trunc i64 %5 to i32
  ret i32 %extract.t263
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_timestamping_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  store i64 %call.i, ptr @dccp_timestamp_seed, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_write_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_retransmit_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dst_negative_advice(ptr noundef %sk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sk_txhash.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 42
  %0 = ptrtoint ptr %sk_txhash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_txhash.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.sk_rethink_txhash.exit_crit_edge, label %if.then.i

entry.sk_rethink_txhash.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sk_rethink_txhash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @prandom_u32() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 %call.i.i.i
  %2 = ptrtoint ptr %sk_txhash.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %..i.i.i, ptr %sk_txhash.i, align 4
  br label %sk_rethink_txhash.exit

sk_rethink_txhash.exit:                           ; preds = %if.then.i, %entry.sk_rethink_txhash.exit_crit_edge
  %sk_dst_cache.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %3 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %sk_dst_cache.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i2 = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i2, label %lockdep_sock_is_held.exit.i.i, label %sk_rethink_txhash.exit.__sk_dst_get.exit.i_crit_edge

sk_rethink_txhash.exit.__sk_dst_get.exit.i_crit_edge: ; preds = %sk_rethink_txhash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

lockdep_sock_is_held.exit.i.i:                    ; preds = %sk_rethink_txhash.exit
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %lor.lhs.false.i.i, label %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

lor.lhs.false.i.i:                                ; preds = %lockdep_sock_is_held.exit.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge

lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b11.i.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i.i, label %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sk_dst_get.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2068, ptr noundef nonnull @.str.3) #8
  br label %__sk_dst_get.exit.i

__sk_dst_get.exit.i:                              ; preds = %if.then.i.i, %land.lhs.true5.i.i.__sk_dst_get.exit.i_crit_edge, %land.lhs.true.i.i.__sk_dst_get.exit.i_crit_edge, %lor.lhs.false.i.i.__sk_dst_get.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.__sk_dst_get.exit.i_crit_edge, %sk_rethink_txhash.exit.__sk_dst_get.exit.i_crit_edge
  %tobool.not.i3 = icmp eq ptr %4, null
  br i1 %tobool.not.i3, label %__sk_dst_get.exit.i.__dst_negative_advice.exit_crit_edge, label %land.lhs.true.i

__sk_dst_get.exit.i.__dst_negative_advice.exit_crit_edge: ; preds = %__sk_dst_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__dst_negative_advice.exit

land.lhs.true.i:                                  ; preds = %__sk_dst_get.exit.i
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %negative_advice.i = getelementptr inbounds %struct.dst_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %negative_advice.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %negative_advice.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.__dst_negative_advice.exit_crit_edge, label %if.then.i4

land.lhs.true.i.__dst_negative_advice.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__dst_negative_advice.exit

if.then.i4:                                       ; preds = %land.lhs.true.i
  %call4.i = tail call ptr %8(ptr noundef nonnull %4) #8
  %cmp.not.i = icmp eq ptr %call4.i, %4
  br i1 %cmp.not.i, label %if.then.i4.__dst_negative_advice.exit_crit_edge, label %do.body.i

if.then.i4.__dst_negative_advice.exit_crit_edge:  ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #10
  br label %__dst_negative_advice.exit

do.body.i:                                        ; preds = %if.then.i4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  %9 = ptrtoint ptr %sk_dst_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call4.i, ptr %sk_dst_cache.i.i, align 4
  %skc_tx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 16
  %10 = ptrtoint ptr %skc_tx_queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %skc_tx_queue_mapping.i.i, align 4
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 29
  %11 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sk_dst_pending_confirm.i, align 8
  br label %__dst_negative_advice.exit

__dst_negative_advice.exit:                       ; preds = %do.body.i, %if.then.i4.__dst_negative_advice.exit_crit_edge, %land.lhs.true.i.__dst_negative_advice.exit_crit_edge, %__sk_dst_get.exit.i.__dst_negative_advice.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_send_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_send_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @sysctl_dccp_request_retries, !1, !"sysctl_dccp_request_retries", i1 false, i1 false}
!1 = !{!"../net/dccp/timer.c", i32 16, i32 6}
!2 = !{ptr @sysctl_dccp_retries1, !3, !"sysctl_dccp_retries1", i1 false, i1 false}
!3 = !{!"../net/dccp/timer.c", i32 17, i32 6}
!4 = !{ptr @sysctl_dccp_retries2, !5, !"sysctl_dccp_retries2", i1 false, i1 false}
!5 = !{!"../net/dccp/timer.c", i32 18, i32 6}
!6 = !{ptr @dccp_init_xmit_timers.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/dccp/timer.c", i32 248, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_dccp_timestamp, !10, !"__ksymtab_dccp_timestamp", i1 false, i1 false}
!10 = !{!"../net/dccp/timer.c", i32 267, i32 1}
!11 = !{ptr @dccp_timestamp_seed, !12, !"dccp_timestamp_seed", i1 false, i1 false}
!12 = !{!"../net/dccp/timer.c", i32 253, i32 16}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/net/sock.h", i32 1750, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/dccp/timer.c", i32 99, i32 3}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/net/sock.h", i32 2067, i32 9}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/net/inet_connection_sock.h", i32 223, i32 3}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !22, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/inet_connection_sock.h", i32 238, i32 3}
!29 = distinct !{null, !28, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/net/sock.h", i32 2112, i32 12}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/dccp/timer.c", i32 165, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dccp_keepalive_timer._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @dccp_keepalive_timer._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148374246}
!51 = !{i64 2148288710, i64 2148288742, i64 2148288771, i64 2148288805, i64 2148288836, i64 2148288859}
!52 = !{i64 2149310526}
!53 = !{i64 2156767271}
!54 = !{i64 1189705, i64 1189732, i64 1189754, i64 1189782}
!55 = !{i64 1190113, i64 1190140, i64 1190173, i64 1190194, i64 1190221, i64 1190247}
!56 = !{i64 1189588, i64 1189615}
!57 = !{i64 1189928, i64 1189955, i64 1189989, i64 1190010}
!58 = !{i64 2156758362}
