; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_options.c_pt.bc'
source_filename = "../net/ipv4/ip_options.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__ip_options_compile\22, \22a\22\09"
module asm "\09.weak\09__crc___ip_options_compile\09\09\09\09"
module asm "\09.long\09__crc___ip_options_compile\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_options_compile\22\09\09\09\09\09"
module asm "__kstrtabns___ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_options_compile\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_options_compile\09\09\09\09"
module asm "\09.long\09__crc_ip_options_compile\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_options_compile\22\09\09\09\09\09"
module asm "__kstrtabns_ip_options_compile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_options_rcv_srr\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_options_rcv_srr\09\09\09\09"
module asm "\09.long\09__crc_ip_options_rcv_srr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_options_rcv_srr:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_options_rcv_srr\22\09\09\09\09\09"
module asm "__kstrtabns_ip_options_rcv_srr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.146, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.146 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }

@__kstrtab___ip_options_compile = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_options_compile = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_options_compile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_options_compile to i32), ptr @__kstrtab___ip_options_compile, ptr @__kstrtabns___ip_options_compile }, section "___ksymtab+__ip_options_compile", align 4
@__kstrtab_ip_options_compile = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_options_compile = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_options_compile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_options_compile to i32), ptr @__kstrtab_ip_options_compile, ptr @__kstrtabns_ip_options_compile }, section "___ksymtab+ip_options_compile", align 4
@ip_forward_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\012IPv4: %s(): Argh! Destination lost!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_forward_options\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/ipv4/ip_options.c\00", [42 x i8] zeroinitializer }, align 32
@ip_forward_options._entry_ptr = internal global ptr @ip_forward_options._entry, section ".printk_index", align 4
@__kstrtab_ip_options_rcv_srr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_options_rcv_srr = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_options_rcv_srr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_options_rcv_srr to i32), ptr @__kstrtab_ip_options_rcv_srr, ptr @__kstrtabns_ip_options_rcv_srr }, section "___ksymtab+ip_options_rcv_srr", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 8, i64 7, i64 68, i64 131, i64 134, i64 137, i64 148]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private constant [25 x i8] c"../net/ipv4/ip_options.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 583, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1011, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 230, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 214, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 156, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 695, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 316, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 723, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab___ip_options_compile, ptr @__ksymtab_ip_options_compile, ptr @__ksymtab_ip_options_rcv_srr, ptr @ip_forward_options._entry, ptr @ip_forward_options._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_forward_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_options_build(ptr noundef %skb, ptr nocapture noundef readonly %opt, i32 noundef %daddr, ptr noundef %rt, i32 noundef %is_frag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %opt1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %4 = call ptr @memcpy(ptr %opt1, ptr %opt, i32 16)
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %__data = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 10
  %optlen = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 2
  %5 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %optlen, align 4
  %conv = zext i8 %6 to i32
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %__data, i32 %conv)
  %srr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %8 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i8 %9 to i32
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i, i32 %conv7
  %add = add nuw nsw i32 %conv7, 1
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %11 to i32
  %add.ptr12 = getelementptr i8, ptr %add.ptr8, i32 %conv11
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 -4
  %12 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %daddr, ptr %add.ptr13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_frag)
  %tobool14.not = icmp eq i32 %is_frag, 0
  br i1 %tobool14.not, label %if.then15, label %if.end60

if.then15:                                        ; preds = %if.end
  %rr_needaddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %rr_needaddr, align 4
  %14 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.then15.if.end27_crit_edge, label %if.then17

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %rr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %15 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rr, align 2
  %conv18 = zext i8 %16 to i32
  %add.ptr19 = getelementptr i8, ptr %add.ptr.i, i32 %conv18
  %add22 = add nuw nsw i32 %conv18, 2
  %arrayidx23 = getelementptr i8, ptr %add.ptr.i, i32 %add22
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %18 to i32
  %add.ptr25 = getelementptr i8, ptr %add.ptr19, i32 %conv24
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 -5
  tail call void @ip_rt_get_source(ptr noundef %add.ptr26, ptr noundef %skb, ptr noundef %rt) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then17, %if.then15.if.end27_crit_edge
  %19 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load28 = load i8, ptr %rr_needaddr, align 4
  %20 = and i8 %bf.load28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool31.not = icmp eq i8 %20, 0
  br i1 %tobool31.not, label %if.end27.if.end42_crit_edge, label %if.then32

if.end27.if.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %ts = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ts, align 1
  %conv33 = zext i8 %22 to i32
  %add.ptr34 = getelementptr i8, ptr %add.ptr.i, i32 %conv33
  %add37 = add nuw nsw i32 %conv33, 2
  %arrayidx38 = getelementptr i8, ptr %add.ptr.i, i32 %add37
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %24 to i32
  %add.ptr40 = getelementptr i8, ptr %add.ptr34, i32 %conv39
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 -9
  tail call void @ip_rt_get_source(ptr noundef %add.ptr41, ptr noundef %skb, ptr noundef %rt) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then32, %if.end27.if.end42_crit_edge
  %25 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load43 = load i8, ptr %rr_needaddr, align 4
  %26 = and i8 %bf.load43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not = icmp eq i8 %26, 0
  br i1 %tobool46.not, label %if.end42.cleanup_crit_edge, label %if.then47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 @inet_current_timestamp() #11
  %ts49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %27 = ptrtoint ptr %ts49 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ts49, align 1
  %conv50 = zext i8 %28 to i32
  %add.ptr51 = getelementptr i8, ptr %add.ptr.i, i32 %conv50
  %add54 = add nuw nsw i32 %conv50, 2
  %arrayidx55 = getelementptr i8, ptr %add.ptr.i, i32 %add54
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %30 to i32
  %add.ptr57 = getelementptr i8, ptr %add.ptr51, i32 %conv56
  %add.ptr58 = getelementptr i8, ptr %add.ptr57, i32 -5
  %31 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %call48, ptr %add.ptr58, align 1
  br label %cleanup

if.end60:                                         ; preds = %if.end
  %rr61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %32 = ptrtoint ptr %rr61 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rr61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool62.not = icmp eq i8 %33, 0
  br i1 %tobool62.not, label %if.end60.if.end76_crit_edge, label %if.then63

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %conv65 = zext i8 %33 to i32
  %add.ptr66 = getelementptr i8, ptr %add.ptr.i, i32 %conv65
  %add69 = add nuw nsw i32 %conv65, 1
  %arrayidx70 = getelementptr i8, ptr %add.ptr.i, i32 %add69
  %34 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %35 to i32
  %36 = call ptr @memset(ptr %add.ptr66, i32 1, i32 %conv71)
  %37 = ptrtoint ptr %rr61 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %rr61, align 2
  %rr_needaddr73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %38 = ptrtoint ptr %rr_needaddr73 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load74 = load i8, ptr %rr_needaddr73, align 4
  %bf.clear75 = and i8 %bf.load74, -17
  store i8 %bf.clear75, ptr %rr_needaddr73, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then63, %if.end60.if.end76_crit_edge
  %ts77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %39 = ptrtoint ptr %ts77 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ts77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool78.not = icmp eq i8 %40, 0
  br i1 %tobool78.not, label %if.end76.cleanup_crit_edge, label %if.then79

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %conv81 = zext i8 %40 to i32
  %add.ptr82 = getelementptr i8, ptr %add.ptr.i, i32 %conv81
  %add85 = add nuw nsw i32 %conv81, 1
  %arrayidx86 = getelementptr i8, ptr %add.ptr.i, i32 %add85
  %41 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %42 to i32
  %43 = call ptr @memset(ptr %add.ptr82, i32 1, i32 %conv87)
  %44 = ptrtoint ptr %ts77 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %ts77, align 1
  %ts_needtime89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %45 = ptrtoint ptr %ts_needtime89 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load90 = load i8, ptr %ts_needtime89, align 4
  %bf.clear95 = and i8 %bf.load90, -13
  store i8 %bf.clear95, ptr %ts_needtime89, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end76.cleanup_crit_edge, %if.then47, %if.end42.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_rt_get_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_current_timestamp() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ip_options_echo(ptr noundef %net, ptr nocapture noundef %dopt, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %sopt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dopt, i32 0, i32 16)
  %optlen1 = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 2
  %1 = ptrtoint ptr %optlen1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %optlen1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 %conv.i
  %__data = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 10
  %rr = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 4
  %7 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end41_crit_edge, label %if.then3

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then3:                                         ; preds = %if.end
  %conv5 = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv5, 1
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %add
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i32
  %add9 = add nuw nsw i32 %conv5, 2
  %arrayidx10 = getelementptr i8, ptr %add.ptr.i, i32 %add9
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %optlen12 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 2
  %13 = ptrtoint ptr %optlen12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %optlen12, align 4
  %add14 = add i8 %14, 20
  %rr16 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 4
  %15 = ptrtoint ptr %rr16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add14, ptr %rr16, align 2
  %16 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rr, align 2
  %conv18 = zext i8 %17 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv18
  %18 = call ptr @memcpy(ptr %__data, ptr %add.ptr, i32 %conv6)
  %rr_needaddr = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 6
  %19 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %rr_needaddr, align 4
  %20 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %10)
  %cmp21.not = icmp ugt i8 %12, %10
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp21.not
  br i1 %or.cond, label %if.then3.if.end35_crit_edge, label %if.then23

if.then3.if.end35_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then23:                                        ; preds = %if.then3
  %conv11 = zext i8 %12 to i32
  %add24 = add nuw nsw i32 %conv11, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %conv6)
  %cmp25 = icmp ugt i32 %add24, %conv6
  br i1 %cmp25, label %if.then23.cleanup_crit_edge, label %if.end28

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %add29 = add i8 %12, 4
  %arrayidx31 = getelementptr i8, ptr %__data, i32 2
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %add29, ptr %arrayidx31, align 1
  %rr_needaddr32 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 6
  %22 = ptrtoint ptr %rr_needaddr32 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load33 = load i8, ptr %rr_needaddr32, align 4
  %bf.set = or i8 %bf.load33, 16
  store i8 %bf.set, ptr %rr_needaddr32, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.then3.if.end35_crit_edge
  %add.ptr36 = getelementptr i8, ptr %__data, i32 %conv6
  %add39 = add i8 %14, %10
  %23 = ptrtoint ptr %optlen12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %add39, ptr %optlen12, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end35, %if.end.if.end41_crit_edge
  %dptr.0 = phi ptr [ %add.ptr36, %if.end35 ], [ %__data, %if.end.if.end41_crit_edge ]
  %ts = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 5
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool42.not = icmp eq i8 %25, 0
  br i1 %tobool42.not, label %if.end41.if.end132_crit_edge, label %if.then43

if.end41.if.end132_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then43:                                        ; preds = %if.end41
  %conv45 = zext i8 %25 to i32
  %add46 = add nuw nsw i32 %conv45, 1
  %arrayidx47 = getelementptr i8, ptr %add.ptr.i, i32 %add46
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %27 to i32
  %add51 = add nuw nsw i32 %conv45, 2
  %arrayidx52 = getelementptr i8, ptr %add.ptr.i, i32 %add51
  %28 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %29 to i32
  %optlen54 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 2
  %30 = ptrtoint ptr %optlen54 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %optlen54, align 4
  %add56 = add i8 %31, 20
  %ts58 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 5
  %32 = ptrtoint ptr %ts58 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add56, ptr %ts58, align 1
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ts, align 1
  %conv60 = zext i8 %34 to i32
  %add.ptr61 = getelementptr i8, ptr %add.ptr.i, i32 %conv60
  %35 = call ptr @memcpy(ptr %dptr.0, ptr %add.ptr61, i32 %conv48)
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %27)
  %cmp62.not = icmp ugt i8 %29, %27
  br i1 %cmp62.not, label %if.then43.if.end126_crit_edge, label %if.then64

if.then43.if.end126_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then64:                                        ; preds = %if.then43
  %ts_needaddr = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 6
  %36 = ptrtoint ptr %ts_needaddr to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load65 = load i8, ptr %ts_needaddr, align 4
  %37 = and i8 %bf.load65, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool68.not = icmp eq i8 %37, 0
  br i1 %tobool68.not, label %if.then64.if.end80_crit_edge, label %if.then69

if.then64.if.end80_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then69:                                        ; preds = %if.then64
  %add70 = add nuw nsw i32 %conv53, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add70, i32 %conv48)
  %cmp71 = icmp ugt i32 %add70, %conv48
  br i1 %cmp71, label %if.then69.cleanup_crit_edge, label %if.end74

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  %ts_needaddr75 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 6
  %38 = ptrtoint ptr %ts_needaddr75 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load76 = load i8, ptr %ts_needaddr75, align 4
  %bf.set78 = or i8 %bf.load76, 4
  store i8 %bf.set78, ptr %ts_needaddr75, align 4
  %add79 = add nuw nsw i32 %conv53, 4
  br label %if.end80

if.end80:                                         ; preds = %if.end74, %if.then64.if.end80_crit_edge
  %soffset.0 = phi i32 [ %add79, %if.end74 ], [ %conv53, %if.then64.if.end80_crit_edge ]
  %39 = ptrtoint ptr %ts_needaddr to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load81 = load i8, ptr %ts_needaddr, align 4
  %40 = and i8 %bf.load81, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool84.not = icmp eq i8 %40, 0
  br i1 %tobool84.not, label %if.end80.if.end123_crit_edge, label %if.then85

if.end80.if.end123_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then85:                                        ; preds = %if.end80
  %add86 = add nuw nsw i32 %soffset.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %conv48)
  %cmp87 = icmp ugt i32 %add86, %conv48
  br i1 %cmp87, label %if.then85.cleanup_crit_edge, label %if.end90

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end90:                                         ; preds = %if.then85
  %arrayidx91 = getelementptr i8, ptr %dptr.0, i32 3
  %41 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx91, align 1
  %43 = and i8 %42, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp93.not = icmp eq i8 %43, 3
  %ts_needtime101 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 6
  %44 = ptrtoint ptr %ts_needtime101 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load102 = load i8, ptr %ts_needtime101, align 4
  br i1 %cmp93.not, label %if.else, label %if.end90.if.end123.sink.split_crit_edge

if.end90.if.end123.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.sink.split

if.else:                                          ; preds = %if.end90
  %bf.clear103 = and i8 %bf.load102, -9
  %45 = ptrtoint ptr %ts_needtime101 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %bf.clear103, ptr %ts_needtime101, align 4
  %add105 = add nuw nsw i32 %soffset.0, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add105, i32 %conv48)
  %cmp106.not = icmp ugt i32 %add105, %conv48
  br i1 %cmp106.not, label %if.else.if.end123_crit_edge, label %if.then108

if.else.if.end123_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then108:                                       ; preds = %if.else
  %add.ptr109 = getelementptr i8, ptr %dptr.0, i32 %soffset.0
  %add.ptr110 = getelementptr i8, ptr %add.ptr109, i32 -1
  %46 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %addr.0.copyload = load i32, ptr %add.ptr110, align 1
  %call111 = tail call i32 @inet_addr_type(ptr noundef %net, i32 noundef %addr.0.copyload) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call111)
  %cmp112.not = icmp eq i32 %call111, 1
  br i1 %cmp112.not, label %if.then108.if.end123_crit_edge, label %if.then114

if.then108.if.end123_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then114:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %ts_needtime101 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load116 = load i8, ptr %ts_needtime101, align 4
  br label %if.end123.sink.split

if.end123.sink.split:                             ; preds = %if.then114, %if.end90.if.end123.sink.split_crit_edge
  %bf.load116.sink = phi i8 [ %bf.load116, %if.then114 ], [ %bf.load102, %if.end90.if.end123.sink.split_crit_edge ]
  %.sink = phi i32 [ 8, %if.then114 ], [ 4, %if.end90.if.end123.sink.split_crit_edge ]
  %bf.set118 = or i8 %bf.load116.sink, 8
  %48 = ptrtoint ptr %ts_needtime101 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %bf.set118, ptr %ts_needtime101, align 4
  %add119 = add nuw nsw i32 %soffset.0, %.sink
  br label %if.end123

if.end123:                                        ; preds = %if.end123.sink.split, %if.then108.if.end123_crit_edge, %if.else.if.end123_crit_edge, %if.end80.if.end123_crit_edge
  %soffset.2 = phi i32 [ %soffset.0, %if.else.if.end123_crit_edge ], [ %soffset.0, %if.end80.if.end123_crit_edge ], [ %soffset.0, %if.then108.if.end123_crit_edge ], [ %add119, %if.end123.sink.split ]
  %conv124 = trunc i32 %soffset.2 to i8
  %arrayidx125 = getelementptr i8, ptr %dptr.0, i32 2
  %49 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv124, ptr %arrayidx125, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.end123, %if.then43.if.end126_crit_edge
  %add.ptr127 = getelementptr i8, ptr %dptr.0, i32 %conv48
  %50 = ptrtoint ptr %optlen54 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %optlen54, align 4
  %add130 = add i8 %51, %27
  store i8 %add130, ptr %optlen54, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.end126, %if.end41.if.end132_crit_edge
  %dptr.1 = phi ptr [ %add.ptr127, %if.end126 ], [ %dptr.0, %if.end41.if.end132_crit_edge ]
  %srr = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 3
  %52 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool133.not = icmp eq i8 %53, 0
  br i1 %tobool133.not, label %if.end132.if.end200_crit_edge, label %if.then134

if.end132.if.end200_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then134:                                       ; preds = %if.end132
  %conv136 = zext i8 %53 to i32
  %add.ptr137 = getelementptr i8, ptr %add.ptr.i, i32 %conv136
  %arrayidx138 = getelementptr i8, ptr %add.ptr137, i32 1
  %54 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx138, align 1
  %arrayidx140 = getelementptr i8, ptr %add.ptr137, i32 2
  %56 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %55)
  %cmp142 = icmp ugt i8 %57, %55
  %conv139 = zext i8 %55 to i32
  %add145 = add nuw nsw i32 %conv139, 1
  %soffset.3 = select i1 %cmp142, i32 %add145, i32 %conv141
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %soffset.3)
  %cmp147 = icmp ugt i32 %soffset.3, 7
  br i1 %cmp147, label %if.then149, label %if.then134.if.end200_crit_edge

if.then134.if.end200_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then149:                                       ; preds = %if.then134
  %sub150 = add nsw i32 %soffset.3, -5
  %arrayidx151 = getelementptr i8, ptr %add.ptr137, i32 %sub150
  %58 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %faddr.0.copyload = load i32, ptr %arrayidx151, align 1
  %sub152 = add nsw i32 %soffset.3, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %soffset.3)
  %cmp153347 = icmp ugt i32 %soffset.3, 11
  br i1 %cmp153347, label %if.then149.for.body_crit_edge, label %if.then149.if.end170_crit_edge

if.then149.if.end170_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then149.for.body_crit_edge:                    ; preds = %if.then149
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then149.for.body_crit_edge
  %doffset.0349 = phi i32 [ %add160, %for.body.for.body_crit_edge ], [ 4, %if.then149.for.body_crit_edge ]
  %soffset.4348 = phi i32 [ %sub159, %for.body.for.body_crit_edge ], [ %sub152, %if.then149.for.body_crit_edge ]
  %sub155 = add nsw i32 %doffset.0349, -1
  %arrayidx156 = getelementptr i8, ptr %dptr.1, i32 %sub155
  %sub157 = add nsw i32 %soffset.4348, -1
  %arrayidx158 = getelementptr i8, ptr %add.ptr137, i32 %sub157
  %59 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %arrayidx158, align 1
  %61 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %arrayidx156, align 1
  %sub159 = add nsw i32 %soffset.4348, -4
  %add160 = add nuw nsw i32 %doffset.0349, 4
  %cmp153 = icmp ugt i32 %soffset.4348, 7
  br i1 %cmp153, label %for.body.for.body_crit_edge, label %for.body.if.end170_crit_edge

for.body.if.end170_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end170:                                        ; preds = %for.body.if.end170_crit_edge, %if.then149.if.end170_crit_edge
  %soffset.4.lcssa = phi i32 [ %sub152, %if.then149.if.end170_crit_edge ], [ %sub159, %for.body.if.end170_crit_edge ]
  %doffset.0.lcssa = phi i32 [ 4, %if.then149.if.end170_crit_edge ], [ %add160, %for.body.if.end170_crit_edge ]
  %62 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i, align 8
  %64 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %65 to i32
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %add162 = add nuw nsw i32 %soffset.4.lcssa, 3
  %arrayidx163 = getelementptr i8, ptr %add.ptr137, i32 %add162
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %saddr, ptr noundef dereferenceable(4) %arrayidx163, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp165 = icmp eq i32 %bcmp, 0
  %sub168 = add i32 %doffset.0.lcssa, -4
  %spec.select = select i1 %cmp165, i32 %sub168, i32 %doffset.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %spec.select)
  %cmp171 = icmp sgt i32 %spec.select, 3
  br i1 %cmp171, label %if.then173, label %if.end170.if.end200_crit_edge

if.end170.if.end200_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %dopt to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %faddr.0.copyload, ptr %dopt, align 4
  %67 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %add.ptr137, align 1
  %69 = ptrtoint ptr %dptr.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %dptr.1, align 1
  %add177 = or i32 %spec.select, 3
  %conv178 = trunc i32 %add177 to i8
  %arrayidx179 = getelementptr i8, ptr %dptr.1, i32 1
  %70 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv178, ptr %arrayidx179, align 1
  %arrayidx180 = getelementptr i8, ptr %dptr.1, i32 2
  %71 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 4, ptr %arrayidx180, align 1
  %add.ptr182 = getelementptr i8, ptr %dptr.1, i32 %add177
  %optlen183 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 2
  %72 = ptrtoint ptr %optlen183 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %optlen183, align 4
  %add185 = add i8 %73, 20
  %srr187 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 3
  %74 = ptrtoint ptr %srr187 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %add185, ptr %srr187, align 1
  %conv192 = add i8 %73, %conv178
  store i8 %conv192, ptr %optlen183, align 4
  %is_strictroute = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 6
  %75 = ptrtoint ptr %is_strictroute to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load193 = load i8, ptr %is_strictroute, align 4
  %bf.lshr194 = and i8 %bf.load193, -128
  %is_strictroute195 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 6
  %76 = ptrtoint ptr %is_strictroute195 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load196 = load i8, ptr %is_strictroute195, align 4
  %bf.clear197 = and i8 %bf.load196, 127
  %bf.set198 = or i8 %bf.clear197, %bf.lshr194
  store i8 %bf.set198, ptr %is_strictroute195, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then173, %if.end170.if.end200_crit_edge, %if.then134.if.end200_crit_edge, %if.end132.if.end200_crit_edge
  %dptr.3 = phi ptr [ %dptr.1, %if.end132.if.end200_crit_edge ], [ %add.ptr182, %if.then173 ], [ %dptr.1, %if.end170.if.end200_crit_edge ], [ %dptr.1, %if.then134.if.end200_crit_edge ]
  %cipso = getelementptr inbounds %struct.ip_options, ptr %sopt, i32 0, i32 8
  %77 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool201.not = icmp eq i8 %78, 0
  br i1 %tobool201.not, label %if.end200.if.end221_crit_edge, label %if.then202

if.end200.if.end221_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end221

if.then202:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %conv204 = zext i8 %78 to i32
  %add205 = add nuw nsw i32 %conv204, 1
  %arrayidx206 = getelementptr i8, ptr %add.ptr.i, i32 %add205
  %79 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %80 to i32
  %optlen208 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 2
  %81 = ptrtoint ptr %optlen208 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %optlen208, align 4
  %add210 = add i8 %82, 20
  %cipso212 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 8
  %83 = ptrtoint ptr %cipso212 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %add210, ptr %cipso212, align 2
  %84 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cipso, align 2
  %conv214 = zext i8 %85 to i32
  %add.ptr215 = getelementptr i8, ptr %add.ptr.i, i32 %conv214
  %86 = call ptr @memcpy(ptr %dptr.3, ptr %add.ptr215, i32 %conv207)
  %add.ptr216 = getelementptr i8, ptr %dptr.3, i32 %conv207
  %87 = load i8, ptr %optlen208, align 4
  %add219 = add i8 %87, %80
  store i8 %add219, ptr %optlen208, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then202, %if.end200.if.end221_crit_edge
  %dptr.4 = phi ptr [ %add.ptr216, %if.then202 ], [ %dptr.3, %if.end200.if.end221_crit_edge ]
  %optlen222 = getelementptr inbounds %struct.ip_options, ptr %dopt, i32 0, i32 2
  %88 = ptrtoint ptr %optlen222 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %optlen222, align 4
  %90 = and i8 %89, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool225.not351 = icmp eq i8 %90, 0
  br i1 %tobool225.not351, label %if.end221.cleanup_crit_edge, label %if.end221.while.body_crit_edge

if.end221.while.body_crit_edge:                   ; preds = %if.end221
  br label %while.body

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end221.while.body_crit_edge
  %dptr.5352 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %dptr.4, %if.end221.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %dptr.5352, i32 1
  %91 = ptrtoint ptr %dptr.5352 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %dptr.5352, align 1
  %92 = ptrtoint ptr %optlen222 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %optlen222, align 4
  %inc = add i8 %93, 1
  store i8 %inc, ptr %optlen222, align 4
  %94 = and i8 %inc, 3
  %tobool225.not = icmp eq i8 %94, 0
  br i1 %tobool225.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end221.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ -22, %if.then69.cleanup_crit_edge ], [ -22, %if.then85.cleanup_crit_edge ], [ 0, %if.end221.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_options_fragment(ptr nocapture noundef %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %optlen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp42.not = icmp eq i8 %1, 0
  br i1 %cmp42.not, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %conv = zext i8 %1 to i32
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.preheader
  %l.045 = phi i32 [ %l.0.be, %while.cond.backedge.while.body_crit_edge ], [ %conv, %while.body.preheader ]
  %optptr.043 = phi ptr [ %incdec.ptr, %while.cond.backedge.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %6 = ptrtoint ptr %optptr.043 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %optptr.043, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %sw.epilog [
    i8 0, label %while.body.cleanup_crit_edge
    i8 1, label %sw.bb5
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb5:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add nsw i32 %l.045, -1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end13, %sw.bb5
  %.sink = phi i32 [ 1, %sw.bb5 ], [ %conv6, %if.end13 ]
  %l.0.be = phi i32 [ %dec, %sw.bb5 ], [ %sub, %if.end13 ]
  %incdec.ptr = getelementptr i8, ptr %optptr.043, i32 %.sink
  %cmp = icmp sgt i32 %l.0.be, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog:                                        ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %optptr.043, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp7 = icmp ult i8 %10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %l.045, i32 %conv6)
  %cmp9 = icmp ult i32 %l.045, %conv6
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp9
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = call ptr @memset(ptr %optptr.043, i32 1, i32 %conv6)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %sub = sub nsw i32 %l.045, %conv6
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %ts = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ts, align 1
  %rr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %13 = ptrtoint ptr %rr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %rr, align 2
  %rr_needaddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %rr_needaddr, align 4
  %bf.clear19 = and i8 %bf.load, -29
  store i8 %bf.clear19, ptr %rr_needaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.epilog.cleanup_crit_edge, %while.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ip_options_compile(ptr noundef %net, ptr noundef %opt, ptr noundef %skb, ptr noundef writeonly %info) #0 align 64 {
entry:
  %optptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %optptr) #11
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

if.then.skb_rtable.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !40

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %if.then.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %arrayidx = getelementptr %struct.iphdr, ptr %add.ptr.i.i, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__data = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 10
  br label %if.end

if.end:                                           ; preds = %if.else, %skb_rtable.exit
  %storemerge = phi ptr [ %__data, %if.else ], [ %arrayidx, %skb_rtable.exit ]
  %rt.0 = phi ptr [ null, %if.else ], [ %5, %skb_rtable.exit ]
  %10 = ptrtoint ptr %optptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %storemerge, ptr %optptr, align 4
  %add.ptr = getelementptr i8, ptr %storemerge, i32 -20
  %optlen2 = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 2
  %11 = ptrtoint ptr %optlen2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %optlen2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp477530.not = icmp eq i8 %12, 0
  br i1 %cmp477530.not, label %if.end.cleanup362_crit_edge, label %for.body.lr.ph.lr.ph

if.end.cleanup362_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %conv = zext i8 %12 to i32
  %user_ns324 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %cipso = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 8
  %sub.ptr.rhs.cast332 = ptrtoint ptr %add.ptr to i32
  %router_alert = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 7
  %ts = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 5
  %ts_needtime238 = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 6
  %tobool191.not = icmp eq ptr %rt.0, null
  %rr = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 4
  %srr = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 3
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %sw.epilog348.for.body.lr.ph_crit_edge, %for.body.lr.ph.lr.ph
  %l.0.ph532 = phi i32 [ %conv, %for.body.lr.ph.lr.ph ], [ %sub349, %sw.epilog348.for.body.lr.ph_crit_edge ]
  %spec_dst.0.ph531 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %spec_dst.9, %sw.epilog348.for.body.lr.ph_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %sw.bb16.for.body_crit_edge, %for.body.lr.ph
  %l.0478 = phi i32 [ %l.0.ph532, %for.body.lr.ph ], [ %dec17, %sw.bb16.for.body_crit_edge ]
  %13 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %optptr, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %16, label %sw.epilog [
    i8 0, label %for.cond5.preheader
    i8 1, label %sw.bb16
  ]

for.cond5.preheader:                              ; preds = %for.body
  %storemerge441537 = getelementptr i8, ptr %14, i32 1
  %18 = ptrtoint ptr %optptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %storemerge441537, ptr %optptr, align 4
  %l.1538 = add nsw i32 %l.0478, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.1538)
  %cmp6539.not = icmp eq i32 %l.1538, 0
  br i1 %cmp6539.not, label %for.cond5.preheader.cleanup362_crit_edge, label %for.cond5.preheader.for.body8_crit_edge

for.cond5.preheader.for.body8_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body8

for.cond5.preheader.cleanup362_crit_edge:         ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.cond5.preheader.for.body8_crit_edge
  %l.1541 = phi i32 [ %l.1, %for.inc.for.body8_crit_edge ], [ %l.1538, %for.cond5.preheader.for.body8_crit_edge ]
  %storemerge441540 = phi ptr [ %storemerge441, %for.inc.for.body8_crit_edge ], [ %storemerge441537, %for.cond5.preheader.for.body8_crit_edge ]
  %19 = ptrtoint ptr %storemerge441540 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %storemerge441540, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp10.not = icmp eq i8 %20, 0
  br i1 %cmp10.not, label %for.body8.for.inc_crit_edge, label %if.then12

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then12:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %storemerge441540 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %storemerge441540, align 1
  %22 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ts_needtime238, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %ts_needtime238, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body8.for.inc_crit_edge
  %23 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %optptr, align 4
  %storemerge441 = getelementptr i8, ptr %24, i32 1
  store ptr %storemerge441, ptr %optptr, align 4
  %l.1 = add i32 %l.1541, -1
  %cmp6 = icmp sgt i32 %l.1, 0
  br i1 %cmp6, label %for.inc.for.body8_crit_edge, label %for.inc.cleanup362_crit_edge

for.inc.cleanup362_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

sw.bb16:                                          ; preds = %for.body
  %dec17 = add i32 %l.0478, -1
  %incdec.ptr18 = getelementptr i8, ptr %14, i32 1
  %25 = ptrtoint ptr %optptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr18, ptr %optptr, align 4
  %cmp = icmp sgt i32 %dec17, 0
  br i1 %cmp, label %sw.bb16.for.body_crit_edge, label %sw.bb16.cleanup362_crit_edge

sw.bb16.cleanup362_crit_edge:                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

sw.bb16.for.body_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.epilog:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %l.0478)
  %cmp19 = icmp slt i32 %l.0478, 2
  br i1 %cmp19, label %sw.epilog.error_crit_edge, label %if.end24, !prof !40

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end24:                                         ; preds = %sw.epilog
  %arrayidx25 = getelementptr i8, ptr %14, i32 1
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp27 = icmp ult i8 %27, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %l.0478, i32 %conv26)
  %cmp29 = icmp ult i32 %l.0478, %conv26
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp29
  br i1 %or.cond, label %if.end24.error_crit_edge, label %if.end32

if.end24.error_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end32:                                         ; preds = %if.end24
  %28 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %16, label %sw.default341 [
    i8 -119, label %if.end32.sw.bb34_crit_edge
    i8 -125, label %if.end32.sw.bb34_crit_edge722
    i8 7, label %sw.bb83
    i8 68, label %sw.bb135
    i8 -108, label %sw.bb300
    i8 -122, label %sw.bb321
  ]

if.end32.sw.bb34_crit_edge722:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34

if.end32.sw.bb34_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end32.sw.bb34_crit_edge, %if.end32.sw.bb34_crit_edge722
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp35 = icmp ult i8 %27, 3
  br i1 %cmp35, label %error.loopexit.split.loop.exit609, label %if.end39

if.end39:                                         ; preds = %sw.bb34
  %arrayidx40 = getelementptr i8, ptr %14, i32 2
  %29 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp42 = icmp ult i8 %30, 4
  br i1 %cmp42, label %error.loopexit.split.loop.exit, label %if.end46

if.end46:                                         ; preds = %if.end39
  %31 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool47.not = icmp eq i8 %32, 0
  br i1 %tobool47.not, label %if.end49, label %if.end46.error_crit_edge

if.end46.error_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end49:                                         ; preds = %if.end46
  br i1 %tobool.not, label %if.then51, label %if.end49.if.end72_crit_edge

if.end49.if.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp54.not = icmp ne i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp57 = icmp ult i8 %27, 7
  %or.cond442 = select i1 %cmp54.not, i1 true, i1 %cmp57
  br i1 %or.cond442, label %error.loopexit.split.loop.exit613, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.then51
  %sub = add nuw nsw i32 %conv26, 1
  %and = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end63, label %error.loopexit.split.loop.exit611

if.end63:                                         ; preds = %lor.lhs.false59
  %arrayidx64 = getelementptr i8, ptr %14, i32 3
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx64, align 1
  %35 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp65 = icmp ugt i8 %27, 7
  br i1 %cmp65, label %if.then67, label %if.end63.if.end72_crit_edge

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx69 = getelementptr i8, ptr %14, i32 7
  %sub70 = add nsw i32 %conv26, -7
  %36 = call ptr @memmove(ptr %arrayidx64, ptr %arrayidx69, i32 %sub70)
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end63.if.end72_crit_edge, %if.end49.if.end72_crit_edge
  %37 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %optptr, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %40)
  %cmp75 = icmp eq i8 %40, -119
  %41 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load78 = load i8, ptr %ts_needtime238, align 4
  %bf.shl = select i1 %cmp75, i8 -128, i8 0
  %bf.clear79 = and i8 %bf.load78, 127
  %bf.set80 = or i8 %bf.clear79, %bf.shl
  store i8 %bf.set80, ptr %ts_needtime238, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast332
  %conv81 = trunc i32 %sub.ptr.sub to i8
  %42 = ptrtoint ptr %srr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv81, ptr %srr, align 1
  br label %sw.epilog348

sw.bb83:                                          ; preds = %if.end32
  %43 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool84.not = icmp eq i8 %44, 0
  br i1 %tobool84.not, label %if.end86, label %sw.bb83.error_crit_edge

sw.bb83.error_crit_edge:                          ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end86:                                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp87 = icmp ult i8 %27, 3
  br i1 %cmp87, label %error.loopexit.split.loop.exit599, label %if.end91

if.end91:                                         ; preds = %if.end86
  %arrayidx92 = getelementptr i8, ptr %14, i32 2
  %45 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %46)
  %cmp94 = icmp ult i8 %46, 4
  br i1 %cmp94, label %error.loopexit.split.loop.exit601, label %if.end98

if.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %27)
  %cmp101.not = icmp ugt i8 %46, %27
  br i1 %cmp101.not, label %if.end98.if.end129_crit_edge, label %if.then103

if.end98.if.end129_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end129

if.then103:                                       ; preds = %if.end98
  %add = add nuw nsw i32 %conv93, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv26)
  %cmp106 = icmp ugt i32 %add, %conv26
  br i1 %cmp106, label %error.loopexit.split.loop.exit603, label %if.end110

if.end110:                                        ; preds = %if.then103
  br i1 %tobool191.not, label %if.end110.if.end121_crit_edge, label %if.then112

if.end110.if.end121_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec_dst.0.ph531)
  %cmp.i = icmp eq i32 %spec_dst.0.ph531, 0
  br i1 %cmp.i, label %if.then.i, label %if.then112.spec_dst_fill.exit_crit_edge

if.then112.spec_dst_fill.exit_crit_edge:          ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %spec_dst_fill.exit

if.then.i:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 @fib_compute_spec_dst(ptr noundef %skb) #11
  br label %spec_dst_fill.exit

spec_dst_fill.exit:                               ; preds = %if.then.i, %if.then112.spec_dst_fill.exit_crit_edge
  %spec_dst.1 = phi i32 [ %call.i, %if.then.i ], [ %spec_dst.0.ph531, %if.then112.spec_dst_fill.exit_crit_edge ]
  %47 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %optptr, align 4
  %arrayidx113 = getelementptr i8, ptr %48, i32 2
  %49 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %50 to i32
  %sub115 = add nsw i32 %conv114, -1
  %arrayidx116 = getelementptr i8, ptr %48, i32 %sub115
  %51 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %spec_dst.1, ptr %arrayidx116, align 1
  %52 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load118 = load i8, ptr %ts_needtime238, align 4
  %bf.set120 = or i8 %bf.load118, 32
  store i8 %bf.set120, ptr %ts_needtime238, align 4
  br label %if.end121

if.end121:                                        ; preds = %spec_dst_fill.exit, %if.end110.if.end121_crit_edge
  %spec_dst.2 = phi i32 [ %spec_dst.0.ph531, %if.end110.if.end121_crit_edge ], [ %spec_dst.1, %spec_dst_fill.exit ]
  %53 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %optptr, align 4
  %arrayidx122 = getelementptr i8, ptr %54, i32 2
  %55 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx122, align 1
  %add124 = add i8 %56, 4
  store i8 %add124, ptr %arrayidx122, align 1
  %57 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load126 = load i8, ptr %ts_needtime238, align 4
  %bf.set128 = or i8 %bf.load126, 16
  store i8 %bf.set128, ptr %ts_needtime238, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end121, %if.end98.if.end129_crit_edge
  %spec_dst.3 = phi i32 [ %spec_dst.0.ph531, %if.end98.if.end129_crit_edge ], [ %spec_dst.2, %if.end121 ]
  %58 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %optptr, align 4
  %sub.ptr.lhs.cast130 = ptrtoint ptr %59 to i32
  %sub.ptr.sub132 = sub i32 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast332
  %conv133 = trunc i32 %sub.ptr.sub132 to i8
  %60 = ptrtoint ptr %rr to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv133, ptr %rr, align 2
  br label %sw.epilog348

sw.bb135:                                         ; preds = %if.end32
  %61 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool136.not = icmp eq i8 %62, 0
  br i1 %tobool136.not, label %if.end138, label %sw.bb135.error_crit_edge

sw.bb135.error_crit_edge:                         ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end138:                                        ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp139 = icmp ult i8 %27, 4
  br i1 %cmp139, label %error.loopexit.split.loop.exit605, label %if.end143

if.end143:                                        ; preds = %if.end138
  %arrayidx144 = getelementptr i8, ptr %14, i32 2
  %63 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %64)
  %cmp146 = icmp ult i8 %64, 5
  br i1 %cmp146, label %if.end143.error_crit_edge, label %if.end150

if.end143.error_crit_edge:                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %27)
  %cmp153.not = icmp ugt i8 %64, %27
  br i1 %cmp153.not, label %if.else263, label %if.then155

if.then155:                                       ; preds = %if.end150
  %add158 = add nuw nsw i32 %conv145, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add158, i32 %conv26)
  %cmp159 = icmp ugt i32 %add158, %conv26
  br i1 %cmp159, label %if.then155.error_crit_edge, label %if.end163

if.then155.error_crit_edge:                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end163:                                        ; preds = %if.then155
  %arrayidx164 = getelementptr i8, ptr %14, i32 3
  %65 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx164, align 1
  %67 = and i8 %66, 15
  %and166 = zext i8 %67 to i32
  %68 = zext i32 %and166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and166, label %sw.default [
    i32 0, label %sw.bb167
    i32 1, label %sw.bb182
    i32 3, label %sw.bb213
  ]

sw.bb167:                                         ; preds = %if.end163
  %sub172 = add nsw i32 %conv145, -1
  %arrayidx173 = getelementptr i8, ptr %14, i32 %sub172
  %69 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load175 = load i8, ptr %ts_needtime238, align 4
  %bf.set177 = or i8 %bf.load175, 8
  store i8 %bf.set177, ptr %ts_needtime238, align 4
  %70 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx144, align 1
  %add180 = add i8 %71, 4
  store i8 %add180, ptr %arrayidx144, align 1
  br i1 %tobool.not, label %sw.bb167.if.end294_crit_edge, label %sw.bb167.sw.epilog251_crit_edge

sw.bb167.sw.epilog251_crit_edge:                  ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog251

sw.bb167.if.end294_crit_edge:                     ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

sw.bb182:                                         ; preds = %if.end163
  %add185 = add nuw nsw i32 %conv145, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add185, i32 %conv26)
  %cmp186 = icmp ugt i32 %add185, %conv26
  br i1 %cmp186, label %sw.bb182.error_crit_edge, label %if.end190

sw.bb182.error_crit_edge:                         ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end190:                                        ; preds = %sw.bb182
  br i1 %tobool191.not, label %if.end190.sw.epilog251.sink.split_crit_edge, label %if.then192

if.end190.sw.epilog251.sink.split_crit_edge:      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog251.sink.split

if.then192:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec_dst.0.ph531)
  %cmp.i445 = icmp eq i32 %spec_dst.0.ph531, 0
  br i1 %cmp.i445, label %if.then.i447, label %if.then192.spec_dst_fill.exit448_crit_edge

if.then192.spec_dst_fill.exit448_crit_edge:       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  br label %spec_dst_fill.exit448

if.then.i447:                                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #13
  %call.i446 = call i32 @fib_compute_spec_dst(ptr noundef %skb) #11
  br label %spec_dst_fill.exit448

spec_dst_fill.exit448:                            ; preds = %if.then.i447, %if.then192.spec_dst_fill.exit448_crit_edge
  %spec_dst.4 = phi i32 [ %call.i446, %if.then.i447 ], [ %spec_dst.0.ph531, %if.then192.spec_dst_fill.exit448_crit_edge ]
  %72 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %optptr, align 4
  %arrayidx193 = getelementptr i8, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %75 to i32
  %sub195 = add nsw i32 %conv194, -1
  %arrayidx196 = getelementptr i8, ptr %73, i32 %sub195
  %76 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %spec_dst.4, ptr %arrayidx196, align 1
  br label %sw.epilog251.sink.split.sink.split

sw.bb213:                                         ; preds = %if.end163
  %add216 = add nuw nsw i32 %conv145, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add216, i32 %conv26)
  %cmp217 = icmp ugt i32 %add216, %conv26
  br i1 %cmp217, label %sw.bb213.error_crit_edge, label %if.end221

sw.bb213.error_crit_edge:                         ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end221:                                        ; preds = %sw.bb213
  %sub224 = add nsw i32 %conv145, -1
  %arrayidx225 = getelementptr i8, ptr %14, i32 %sub224
  %77 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %addr.0.copyload = load i32, ptr %arrayidx225, align 1
  %call226 = call i32 @inet_addr_type(ptr noundef %net, i32 noundef %addr.0.copyload) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call226)
  %cmp227 = icmp eq i32 %call226, 1
  %brmerge = or i1 %tobool.not, %cmp227
  br i1 %brmerge, label %cleanup, label %if.end221.sw.epilog251.sink.split.sink.split_crit_edge

if.end221.sw.epilog251.sink.split.sink.split_crit_edge: ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog251.sink.split.sink.split

cleanup:                                          ; preds = %if.end221
  br i1 %cmp227, label %cleanup.if.end294_crit_edge, label %cleanup.sw.epilog251.sink.split_crit_edge

cleanup.sw.epilog251.sink.split_crit_edge:        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog251.sink.split

cleanup.if.end294_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

sw.default:                                       ; preds = %if.end163
  br i1 %tobool.not, label %land.lhs.true, label %sw.default.if.end294_crit_edge

sw.default.if.end294_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

land.lhs.true:                                    ; preds = %sw.default
  %78 = ptrtoint ptr %user_ns324 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %user_ns324, align 4
  %call247 = call zeroext i1 @ns_capable(ptr noundef %79, i32 noundef 13) #11
  br i1 %call247, label %land.lhs.true.if.end294_crit_edge, label %if.then248

land.lhs.true.if.end294_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

if.then248:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %optptr, align 4
  %add.ptr249 = getelementptr i8, ptr %81, i32 3
  br label %error

sw.epilog251.sink.split.sink.split:               ; preds = %if.end221.sw.epilog251.sink.split.sink.split_crit_edge, %spec_dst_fill.exit448
  %.sink674.ph = phi i8 [ 12, %spec_dst_fill.exit448 ], [ 8, %if.end221.sw.epilog251.sink.split.sink.split_crit_edge ]
  %spec_dst.6.ph.ph = phi i32 [ %spec_dst.4, %spec_dst_fill.exit448 ], [ %spec_dst.0.ph531, %if.end221.sw.epilog251.sink.split.sink.split_crit_edge ]
  %82 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %.sink677 = load ptr, ptr %optptr, align 4
  %arrayidx233 = getelementptr i8, ptr %.sink677, i32 2
  %83 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %84 to i32
  %add235 = add nuw nsw i32 %conv234, 3
  %arrayidx236 = getelementptr i8, ptr %.sink677, i32 %add235
  br label %sw.epilog251.sink.split

sw.epilog251.sink.split:                          ; preds = %sw.epilog251.sink.split.sink.split, %cleanup.sw.epilog251.sink.split_crit_edge, %if.end190.sw.epilog251.sink.split_crit_edge
  %.sink674 = phi i8 [ 12, %if.end190.sw.epilog251.sink.split_crit_edge ], [ 8, %cleanup.sw.epilog251.sink.split_crit_edge ], [ %.sink674.ph, %sw.epilog251.sink.split.sink.split ]
  %spec_dst.6.ph = phi i32 [ %spec_dst.0.ph531, %if.end190.sw.epilog251.sink.split_crit_edge ], [ %spec_dst.0.ph531, %cleanup.sw.epilog251.sink.split_crit_edge ], [ %spec_dst.6.ph.ph, %sw.epilog251.sink.split.sink.split ]
  %timeptr.4.ph = phi ptr [ null, %if.end190.sw.epilog251.sink.split_crit_edge ], [ null, %cleanup.sw.epilog251.sink.split_crit_edge ], [ %arrayidx236, %sw.epilog251.sink.split.sink.split ]
  %85 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load202 = load i8, ptr %ts_needtime238, align 4
  %bf.set208 = or i8 %bf.load202, %.sink674
  store i8 %bf.set208, ptr %ts_needtime238, align 4
  %86 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %86)
  %.sink = load ptr, ptr %optptr, align 4
  %arrayidx209 = getelementptr i8, ptr %.sink, i32 2
  %87 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx209, align 1
  %add244 = add i8 %88, 8
  store i8 %add244, ptr %arrayidx209, align 1
  br label %sw.epilog251

sw.epilog251:                                     ; preds = %sw.epilog251.sink.split, %sw.bb167.sw.epilog251_crit_edge
  %spec_dst.6 = phi i32 [ %spec_dst.0.ph531, %sw.bb167.sw.epilog251_crit_edge ], [ %spec_dst.6.ph, %sw.epilog251.sink.split ]
  %timeptr.4 = phi ptr [ %arrayidx173, %sw.bb167.sw.epilog251_crit_edge ], [ %timeptr.4.ph, %sw.epilog251.sink.split ]
  %tobool252.not = icmp eq ptr %timeptr.4, null
  br i1 %tobool252.not, label %sw.epilog251.if.end294_crit_edge, label %if.then253

sw.epilog251.if.end294_crit_edge:                 ; preds = %sw.epilog251
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

if.then253:                                       ; preds = %sw.epilog251
  call void @__sanitizer_cov_trace_pc() #13
  %call254 = call i32 @inet_current_timestamp() #11
  %89 = ptrtoint ptr %timeptr.4 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %call254, ptr %timeptr.4, align 1
  br label %if.end294.sink.split

if.else263:                                       ; preds = %if.end150
  %arrayidx264 = getelementptr i8, ptr %14, i32 3
  %90 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx264, align 1
  %conv265 = zext i8 %91 to i32
  %and266 = and i32 %conv265, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and266)
  %cmp267.not = icmp eq i32 %and266, 3
  br i1 %cmp267.not, label %if.else263.if.end294_crit_edge, label %if.then269

if.else263.if.end294_crit_edge:                   ; preds = %if.else263
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

if.then269:                                       ; preds = %if.else263
  %.mask = and i32 %conv265, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %.mask)
  %cmp272 = icmp eq i32 %.mask, 240
  %brmerge443 = or i1 %tobool.not, %cmp272
  br i1 %brmerge443, label %cleanup290, label %cleanup290.thread

cleanup290.thread:                                ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #13
  %shl = add nuw nsw i32 %.mask, 16
  %or = or i32 %shl, %and266
  %conv283 = trunc i32 %or to i8
  %92 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv283, ptr %arrayidx264, align 1
  br label %if.end294.sink.split

cleanup290:                                       ; preds = %if.then269
  br i1 %cmp272, label %cleanup290.error_crit_edge, label %cleanup290.if.end294_crit_edge

cleanup290.if.end294_crit_edge:                   ; preds = %cleanup290
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

cleanup290.error_crit_edge:                       ; preds = %cleanup290
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end294.sink.split:                             ; preds = %cleanup290.thread, %if.then253
  %spec_dst.8.ph = phi i32 [ %spec_dst.0.ph531, %cleanup290.thread ], [ %spec_dst.6, %if.then253 ]
  %93 = ptrtoint ptr %ts_needtime238 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load286 = load i8, ptr %ts_needtime238, align 4
  %bf.set288 = or i8 %bf.load286, 32
  store i8 %bf.set288, ptr %ts_needtime238, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.end294.sink.split, %cleanup290.if.end294_crit_edge, %if.else263.if.end294_crit_edge, %sw.epilog251.if.end294_crit_edge, %land.lhs.true.if.end294_crit_edge, %sw.default.if.end294_crit_edge, %cleanup.if.end294_crit_edge, %sw.bb167.if.end294_crit_edge
  %spec_dst.8 = phi i32 [ %spec_dst.0.ph531, %if.else263.if.end294_crit_edge ], [ %spec_dst.0.ph531, %cleanup290.if.end294_crit_edge ], [ %spec_dst.6, %sw.epilog251.if.end294_crit_edge ], [ %spec_dst.0.ph531, %sw.default.if.end294_crit_edge ], [ %spec_dst.0.ph531, %land.lhs.true.if.end294_crit_edge ], [ %spec_dst.0.ph531, %cleanup.if.end294_crit_edge ], [ %spec_dst.0.ph531, %sw.bb167.if.end294_crit_edge ], [ %spec_dst.8.ph, %if.end294.sink.split ]
  %94 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %optptr, align 4
  %sub.ptr.lhs.cast295 = ptrtoint ptr %95 to i32
  %sub.ptr.sub297 = sub i32 %sub.ptr.lhs.cast295, %sub.ptr.rhs.cast332
  %conv298 = trunc i32 %sub.ptr.sub297 to i8
  %96 = ptrtoint ptr %ts to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv298, ptr %ts, align 1
  br label %sw.epilog348

sw.bb300:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp301 = icmp ult i8 %27, 4
  br i1 %cmp301, label %error.loopexit.split.loop.exit607, label %if.end305

if.end305:                                        ; preds = %sw.bb300
  %arrayidx306 = getelementptr i8, ptr %14, i32 2
  %97 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx306, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp308 = icmp eq i8 %98, 0
  br i1 %cmp308, label %land.lhs.true310, label %if.end305.sw.epilog348_crit_edge

if.end305.sw.epilog348_crit_edge:                 ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog348

land.lhs.true310:                                 ; preds = %if.end305
  %arrayidx311 = getelementptr i8, ptr %14, i32 3
  %99 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx311, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp313 = icmp eq i8 %100, 0
  br i1 %cmp313, label %if.then315, label %land.lhs.true310.sw.epilog348_crit_edge

land.lhs.true310.sw.epilog348_crit_edge:          ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog348

if.then315:                                       ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast316 = ptrtoint ptr %14 to i32
  %sub.ptr.sub318 = sub i32 %sub.ptr.lhs.cast316, %sub.ptr.rhs.cast332
  %conv319 = trunc i32 %sub.ptr.sub318 to i8
  %101 = ptrtoint ptr %router_alert to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv319, ptr %router_alert, align 1
  br label %sw.epilog348

sw.bb321:                                         ; preds = %if.end32
  br i1 %tobool.not, label %land.lhs.true323, label %sw.bb321.lor.lhs.false326_crit_edge

sw.bb321.lor.lhs.false326_crit_edge:              ; preds = %sw.bb321
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false326

land.lhs.true323:                                 ; preds = %sw.bb321
  %102 = ptrtoint ptr %user_ns324 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %user_ns324, align 4
  %call325 = call zeroext i1 @ns_capable(ptr noundef %103, i32 noundef 13) #11
  br i1 %call325, label %land.lhs.true323.lor.lhs.false326_crit_edge, label %land.lhs.true323.if.then329_crit_edge

land.lhs.true323.if.then329_crit_edge:            ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then329

land.lhs.true323.lor.lhs.false326_crit_edge:      ; preds = %land.lhs.true323
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false326

lor.lhs.false326:                                 ; preds = %land.lhs.true323.lor.lhs.false326_crit_edge, %sw.bb321.lor.lhs.false326_crit_edge
  %104 = ptrtoint ptr %cipso to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cipso, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool328.not = icmp eq i8 %105, 0
  br i1 %tobool328.not, label %if.end330, label %lor.lhs.false326.if.then329_crit_edge

lor.lhs.false326.if.then329_crit_edge:            ; preds = %lor.lhs.false326
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then329

if.then329:                                       ; preds = %lor.lhs.false326.if.then329_crit_edge, %land.lhs.true323.if.then329_crit_edge
  %106 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %optptr, align 4
  br label %error

if.end330:                                        ; preds = %lor.lhs.false326
  %108 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %optptr, align 4
  %sub.ptr.lhs.cast331 = ptrtoint ptr %109 to i32
  %sub.ptr.sub333 = sub i32 %sub.ptr.lhs.cast331, %sub.ptr.rhs.cast332
  %conv334 = trunc i32 %sub.ptr.sub333 to i8
  %110 = ptrtoint ptr %cipso to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv334, ptr %cipso, align 2
  %call336 = call i32 @cipso_v4_validate(ptr noundef %skb, ptr noundef nonnull %optptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.end330.sw.epilog348_crit_edge, label %if.then338

if.end330.sw.epilog348_crit_edge:                 ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog348

if.then338:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %optptr, align 4
  br label %error

sw.default341:                                    ; preds = %if.end32
  br i1 %tobool.not, label %land.lhs.true343, label %sw.default341.sw.epilog348_crit_edge

sw.default341.sw.epilog348_crit_edge:             ; preds = %sw.default341
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog348

land.lhs.true343:                                 ; preds = %sw.default341
  %113 = ptrtoint ptr %user_ns324 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %user_ns324, align 4
  %call345 = call zeroext i1 @ns_capable(ptr noundef %114, i32 noundef 13) #11
  br i1 %call345, label %land.lhs.true343.sw.epilog348_crit_edge, label %if.then346

land.lhs.true343.sw.epilog348_crit_edge:          ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog348

if.then346:                                       ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %optptr, align 4
  br label %error

sw.epilog348:                                     ; preds = %land.lhs.true343.sw.epilog348_crit_edge, %sw.default341.sw.epilog348_crit_edge, %if.end330.sw.epilog348_crit_edge, %if.then315, %land.lhs.true310.sw.epilog348_crit_edge, %if.end305.sw.epilog348_crit_edge, %if.end294, %if.end129, %if.end72
  %spec_dst.9 = phi i32 [ %spec_dst.0.ph531, %land.lhs.true343.sw.epilog348_crit_edge ], [ %spec_dst.0.ph531, %sw.default341.sw.epilog348_crit_edge ], [ %spec_dst.0.ph531, %if.end330.sw.epilog348_crit_edge ], [ %spec_dst.0.ph531, %if.then315 ], [ %spec_dst.0.ph531, %land.lhs.true310.sw.epilog348_crit_edge ], [ %spec_dst.0.ph531, %if.end305.sw.epilog348_crit_edge ], [ %spec_dst.8, %if.end294 ], [ %spec_dst.3, %if.end129 ], [ %spec_dst.0.ph531, %if.end72 ]
  %sub349 = sub nsw i32 %l.0478, %conv26
  %117 = ptrtoint ptr %optptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %optptr, align 4
  %add.ptr350 = getelementptr i8, ptr %118, i32 %conv26
  store ptr %add.ptr350, ptr %optptr, align 4
  %cmp477 = icmp sgt i32 %sub349, 0
  br i1 %cmp477, label %sw.epilog348.for.body.lr.ph_crit_edge, label %sw.epilog348.cleanup362_crit_edge

sw.epilog348.cleanup362_crit_edge:                ; preds = %sw.epilog348
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

sw.epilog348.for.body.lr.ph_crit_edge:            ; preds = %sw.epilog348
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

error.loopexit.split.loop.exit:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx40.le = getelementptr i8, ptr %14, i32 2
  br label %error

error.loopexit.split.loop.exit599:                ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.le647 = getelementptr i8, ptr %14, i32 1
  br label %error

error.loopexit.split.loop.exit601:                ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx92.le635 = getelementptr i8, ptr %14, i32 2
  br label %error

error.loopexit.split.loop.exit603:                ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx92.le = getelementptr i8, ptr %14, i32 2
  br label %error

error.loopexit.split.loop.exit605:                ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.le645 = getelementptr i8, ptr %14, i32 1
  br label %error

error.loopexit.split.loop.exit607:                ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.le643 = getelementptr i8, ptr %14, i32 1
  br label %error

error.loopexit.split.loop.exit609:                ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.le641 = getelementptr i8, ptr %14, i32 1
  br label %error

error.loopexit.split.loop.exit611:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.le639 = getelementptr i8, ptr %14, i32 1
  br label %error

error.loopexit.split.loop.exit613:                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx25.le = getelementptr i8, ptr %14, i32 1
  br label %error

error:                                            ; preds = %error.loopexit.split.loop.exit613, %error.loopexit.split.loop.exit611, %error.loopexit.split.loop.exit609, %error.loopexit.split.loop.exit607, %error.loopexit.split.loop.exit605, %error.loopexit.split.loop.exit603, %error.loopexit.split.loop.exit601, %error.loopexit.split.loop.exit599, %error.loopexit.split.loop.exit, %if.then346, %if.then338, %if.then329, %cleanup290.error_crit_edge, %if.then248, %sw.bb213.error_crit_edge, %sw.bb182.error_crit_edge, %if.then155.error_crit_edge, %if.end143.error_crit_edge, %sw.bb135.error_crit_edge, %sw.bb83.error_crit_edge, %if.end46.error_crit_edge, %if.end24.error_crit_edge, %sw.epilog.error_crit_edge
  %pp_ptr.5 = phi ptr [ %116, %if.then346 ], [ %107, %if.then329 ], [ %112, %if.then338 ], [ %add.ptr249, %if.then248 ], [ %arrayidx40.le, %error.loopexit.split.loop.exit ], [ %arrayidx25.le647, %error.loopexit.split.loop.exit599 ], [ %arrayidx92.le635, %error.loopexit.split.loop.exit601 ], [ %arrayidx92.le, %error.loopexit.split.loop.exit603 ], [ %arrayidx25.le645, %error.loopexit.split.loop.exit605 ], [ %arrayidx25.le643, %error.loopexit.split.loop.exit607 ], [ %arrayidx25.le641, %error.loopexit.split.loop.exit609 ], [ %arrayidx25.le639, %error.loopexit.split.loop.exit611 ], [ %arrayidx25.le, %error.loopexit.split.loop.exit613 ], [ %arrayidx264, %cleanup290.error_crit_edge ], [ %arrayidx144, %sw.bb213.error_crit_edge ], [ %arrayidx144, %sw.bb182.error_crit_edge ], [ %arrayidx144, %if.then155.error_crit_edge ], [ %14, %if.end24.error_crit_edge ], [ %arrayidx144, %if.end143.error_crit_edge ], [ %14, %sw.bb135.error_crit_edge ], [ %14, %sw.bb83.error_crit_edge ], [ %14, %if.end46.error_crit_edge ], [ %14, %sw.epilog.error_crit_edge ]
  %tobool355.not = icmp eq ptr %info, null
  br i1 %tobool355.not, label %error.cleanup362_crit_edge, label %if.then356

error.cleanup362_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup362

if.then356:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast357 = ptrtoint ptr %pp_ptr.5 to i32
  %sub.ptr.rhs.cast358 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub359 = sub i32 %sub.ptr.lhs.cast357, %sub.ptr.rhs.cast358
  %shl360 = shl i32 %sub.ptr.sub359, 24
  %119 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %shl360, ptr %info, align 4
  br label %cleanup362

cleanup362:                                       ; preds = %if.then356, %error.cleanup362_crit_edge, %sw.epilog348.cleanup362_crit_edge, %sw.bb16.cleanup362_crit_edge, %for.inc.cleanup362_crit_edge, %for.cond5.preheader.cleanup362_crit_edge, %if.end.cleanup362_crit_edge
  %retval.0 = phi i32 [ -22, %if.then356 ], [ -22, %error.cleanup362_crit_edge ], [ 0, %if.end.cleanup362_crit_edge ], [ 0, %for.cond5.preheader.cleanup362_crit_edge ], [ 0, %for.inc.cleanup362_crit_edge ], [ 0, %sw.bb16.cleanup362_crit_edge ], [ 0, %sw.epilog348.cleanup362_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %optptr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cipso_v4_validate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_options_compile(ptr noundef %net, ptr noundef %opt, ptr noundef %skb) #0 align 64 {
entry:
  %info = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #11
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %info, align 4, !annotation !41
  %call = call i32 @__ip_options_compile(ptr noundef %net, ptr noundef %opt, ptr noundef %skb, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %tobool.not = icmp eq ptr %skb, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %info, align 4
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef nonnull %skb, i32 noundef 12, i32 noundef 0, i32 noundef %2, ptr noundef %opt.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ip_options_undo(ptr nocapture noundef %opt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %srr = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 3
  %0 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %__data = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 10
  %conv = zext i8 %1 to i32
  %add.ptr = getelementptr i8, ptr %__data, i32 %conv
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -20
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 7
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 3
  %arrayidx = getelementptr i8, ptr %add.ptr2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %3 to i32
  %sub = add nsw i32 %conv5, -7
  %4 = call ptr @memmove(ptr %add.ptr3, ptr %add.ptr4, i32 %sub)
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  %7 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rr_needaddr = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 6
  %8 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %rr_needaddr, align 4
  %9 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end.if.end23_crit_edge, label %if.then8

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %__data10 = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 10
  %rr = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 4
  %10 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rr, align 2
  %conv12 = zext i8 %11 to i32
  %add.ptr13 = getelementptr i8, ptr %__data10, i32 %conv12
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 -20
  %arrayidx15 = getelementptr i8, ptr %add.ptr14, i32 2
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  %sub17 = add i8 %13, -4
  store i8 %sub17, ptr %arrayidx15, align 1
  %conv20 = zext i8 %sub17 to i32
  %sub21 = add nsw i32 %conv20, -1
  %arrayidx22 = getelementptr i8, ptr %add.ptr14, i32 %sub21
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %arrayidx22, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then8, %if.end.if.end23_crit_edge
  %ts = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 5
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  br i1 %tobool24.not, label %if.end23.if.end70_crit_edge, label %if.then25

if.end23.if.end70_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then25:                                        ; preds = %if.end23
  %__data27 = getelementptr inbounds %struct.ip_options, ptr %opt, i32 0, i32 10
  %conv30 = zext i8 %16 to i32
  %add.ptr31 = getelementptr i8, ptr %__data27, i32 %conv30
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 -20
  %17 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load33 = load i8, ptr %rr_needaddr, align 4
  %18 = and i8 %bf.load33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %if.then25.if.end55_crit_edge, label %if.then37

if.then25.if.end55_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then37:                                        ; preds = %if.then25
  %arrayidx38 = getelementptr i8, ptr %add.ptr32, i32 2
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx38, align 1
  %sub40 = add i8 %20, -4
  store i8 %sub40, ptr %arrayidx38, align 1
  %conv43 = zext i8 %sub40 to i32
  %sub44 = add nsw i32 %conv43, -1
  %arrayidx45 = getelementptr i8, ptr %add.ptr32, i32 %sub44
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %arrayidx45, align 1
  %arrayidx46 = getelementptr i8, ptr %add.ptr32, i32 3
  %22 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx46, align 1
  %24 = and i8 %23, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp = icmp eq i8 %24, 3
  br i1 %cmp, label %if.then49, label %if.then37.if.end55_crit_edge

if.then37.if.end55_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then49:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx38, align 1
  %sub52 = add i8 %26, -4
  store i8 %sub52, ptr %arrayidx38, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.then37.if.end55_crit_edge, %if.then25.if.end55_crit_edge
  %27 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load56 = load i8, ptr %rr_needaddr, align 4
  %28 = and i8 %bf.load56, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool59.not = icmp eq i8 %28, 0
  br i1 %tobool59.not, label %if.end55.if.end70_crit_edge, label %if.then60

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx61 = getelementptr i8, ptr %add.ptr32, i32 2
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx61, align 1
  %sub63 = add i8 %30, -4
  store i8 %sub63, ptr %arrayidx61, align 1
  %conv66 = zext i8 %sub63 to i32
  %sub67 = add nsw i32 %conv66, -1
  %arrayidx68 = getelementptr i8, ptr %add.ptr32, i32 %sub67
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %arrayidx68, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then60, %if.end55.if.end70_crit_edge, %if.end23.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_options_get(ptr noundef %net, ptr nocapture noundef %optp, [2 x i32] %data.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %optlen, 27
  %add1 = and i32 %0, -4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %tobool2.not = icmp eq i32 %optlen, 0
  br i1 %tobool2.not, label %while.end.thread, label %land.lhs.true

while.end.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv53 = trunc i32 %optlen to i8
  %optlen1354 = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %optlen1354 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv53, ptr %optlen1354, align 16
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %__data = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 1
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %data.coerce, 0
  %2 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %data.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i37, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %optlen)
  %cmp9.i.i.i.i = icmp slt i32 %optlen, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end8.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.if.then6_crit_edge, label %if.then27.i.i.i.i, !prof !42

land.rhs16.i.i.i.i.if.then6_crit_edge:            ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then6

if.then.i.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  tail call void @__check_object_size(ptr noundef %__data, i32 noundef %optlen, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.then.i.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.i.i.if.then11.i.i.i.i_crit_edge:    ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %optlen, i32 -1226833920) #16, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !42

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__data, i32 noundef %optlen) #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !30) #11
  %and.i.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #7, !srcloc !44
  %and.i.i.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !46
  %call1.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %__data, ptr noundef %2, i32 noundef %optlen) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end7_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !42

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end7_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i44 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ %optlen, %if.then.i.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ %optlen, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i36 = sub i32 %optlen, %res.0.i.i.i.i44
  %add.ptr.i.i.i.i = getelementptr i8, ptr %__data, i32 %sub.i.i.i.i36
  %7 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i44)
  br label %if.then6

if.end.i.i37:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %8 = call ptr @memcpy(ptr %__data, ptr %2, i32 %optlen)
  br label %if.end7

if.then6:                                         ; preds = %if.then11.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.if.then6_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i37, %if.end.i.i.i.i.if.end7_crit_edge
  %and847 = and i32 %optlen, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and847)
  %tobool9.not48 = icmp eq i32 %and847, 0
  br i1 %tobool9.not48, label %while.end.thread56, label %while.end

while.end.thread56:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %conv58 = trunc i32 %optlen to i8
  %optlen1359 = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %optlen1359 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv58, ptr %optlen1359, align 16
  br label %land.lhs.true15

while.end:                                        ; preds = %if.end7
  %10 = add i32 %optlen, 24
  %uglygep = getelementptr i8, ptr %call9.i.i, i32 %10
  %11 = and i32 %optlen, 3
  %12 = xor i32 %11, 3
  %13 = sub nuw nsw i32 4, %11
  %14 = call ptr @memset(ptr %uglygep, i32 0, i32 %13)
  %15 = or i32 %12, %optlen
  %16 = add i32 %15, 1
  %conv = trunc i32 %16 to i8
  %optlen13 = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %optlen13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %optlen13, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %while.end.if.end20_crit_edge, label %while.end.land.lhs.true15_crit_edge

while.end.land.lhs.true15_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true15

while.end.if.end20_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true15:                                  ; preds = %while.end.land.lhs.true15_crit_edge, %while.end.thread56
  %opt12 = getelementptr inbounds %struct.ip_options_rcu, ptr %call9.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #11
  %18 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %info.i, align 4, !annotation !41
  %call.i = call i32 @__ip_options_compile(ptr noundef %net, ptr noundef %opt12, ptr noundef null, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end20_crit_edge, label %if.then19

land.lhs.true15.if.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true15.if.end20_crit_edge, %while.end.if.end20_crit_edge, %while.end.thread
  %19 = ptrtoint ptr %optp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %optp, align 4
  call void @kfree(ptr noundef %20) #11
  %21 = ptrtoint ptr %optp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i, ptr %optp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then6 ], [ -22, %if.then19 ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_forward_options(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !40

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
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
  %rr_needaddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %rr_needaddr, align 4
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %skb_rtable.exit.if.end_crit_edge, label %if.then

skb_rtable.exit.if.end_crit_edge:                 ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 14
  %12 = ptrtoint ptr %rr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rr, align 2
  %conv = zext i8 %13 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %15 to i32
  %sub = add nsw i32 %conv3, -5
  %arrayidx4 = getelementptr i8, ptr %add.ptr, i32 %sub
  tail call void @ip_rt_get_source(ptr noundef %arrayidx4, ptr noundef %skb, ptr noundef %5) #11
  %16 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load5 = load i8, ptr %rr_needaddr, align 4
  %bf.set = or i8 %bf.load5, 32
  store i8 %bf.set, ptr %rr_needaddr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %skb_rtable.exit.if.end_crit_edge
  %17 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load7 = load i8, ptr %rr_needaddr, align 4
  %18 = and i8 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  br i1 %tobool10.not, label %if.end.if.end71_crit_edge, label %if.then11

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then11:                                        ; preds = %if.end
  %srr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %19 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %srr, align 1
  %conv12 = zext i8 %20 to i32
  %add.ptr13 = getelementptr i8, ptr %add.ptr.i, i32 %conv12
  %arrayidx14 = getelementptr i8, ptr %add.ptr13, i32 2
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %22 to i32
  %arrayidx16 = getelementptr i8, ptr %add.ptr13, i32 1
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %24 to i32
  %nexthop = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp.not127 = icmp ugt i8 %22, %24
  %add128 = add nuw nsw i32 %conv15, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add128, i32 %conv17)
  %cmp19129 = icmp ugt i32 %add128, %conv17
  %or.cond130 = or i1 %cmp.not127, %cmp19129
  br i1 %or.cond130, label %if.then11.for.end_crit_edge, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  br label %if.end22

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %if.then11.if.end22_crit_edge
  %srrptr.0131 = phi i32 [ %add30, %for.inc.if.end22_crit_edge ], [ %conv15, %if.then11.if.end22_crit_edge ]
  %sub23 = add nsw i32 %srrptr.0131, -1
  %arrayidx24 = getelementptr i8, ptr %add.ptr13, i32 %sub23
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %nexthop, ptr noundef dereferenceable(4) %arrayidx24, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp26 = icmp eq i32 %bcmp, 0
  br i1 %cmp26, label %if.end22.if.then34_crit_edge, label %for.inc

if.end22.if.then34_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

for.inc:                                          ; preds = %if.end22
  %add30 = add nuw nsw i32 %srrptr.0131, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %conv17)
  %cmp.not = icmp ugt i32 %add30, %conv17
  %add = add nuw nsw i32 %srrptr.0131, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv17)
  %cmp19 = icmp ugt i32 %add, %conv17
  %or.cond = or i1 %cmp.not, %cmp19
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end22_crit_edge

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11.for.end_crit_edge
  %srrptr.0.lcssa = phi i32 [ %conv15, %if.then11.for.end_crit_edge ], [ %add30, %for.inc.for.end_crit_edge ]
  %cmp19.lcssa = phi i1 [ %cmp19129, %if.then11.for.end_crit_edge ], [ %cmp19, %for.inc.for.end_crit_edge ]
  br i1 %cmp19.lcssa, label %do.body, label %for.end.if.then34_crit_edge

for.end.if.then34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.then34:                                        ; preds = %for.end.if.then34_crit_edge, %if.end22.if.then34_crit_edge
  %srrptr.0.lcssa138 = phi i32 [ %srrptr.0.lcssa, %for.end.if.then34_crit_edge ], [ %srrptr.0131, %if.end22.if.then34_crit_edge ]
  %bf.set38 = or i8 %bf.load7, 32
  %25 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.set38, ptr %rr_needaddr, align 4
  %26 = ptrtoint ptr %nexthop to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nexthop, align 4
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %daddr, align 4
  %sub41 = add i32 %srrptr.0.lcssa138, -1
  %arrayidx42 = getelementptr i8, ptr %add.ptr13, i32 %sub41
  tail call void @ip_rt_get_source(ptr noundef %arrayidx42, ptr noundef %skb, ptr noundef %5) #11
  %33 = trunc i32 %srrptr.0.lcssa138 to i8
  %conv44 = add i8 %33, 4
  %34 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv44, ptr %arrayidx14, align 1
  br label %if.end54

do.body:                                          ; preds = %for.end
  %call46 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body.if.end54_crit_edge, label %do.end

do.body.if.end54_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  br label %if.end54

if.end54:                                         ; preds = %do.end, %do.body.if.end54_crit_edge, %if.then34
  %35 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load55 = load i8, ptr %rr_needaddr, align 4
  %36 = and i8 %bf.load55, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool58.not = icmp eq i8 %36, 0
  br i1 %tobool58.not, label %if.end54.if.end71_crit_edge, label %if.then59

if.end54.if.end71_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %ts = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 15
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ts, align 1
  %conv60 = zext i8 %38 to i32
  %add.ptr61 = getelementptr i8, ptr %add.ptr.i, i32 %conv60
  %arrayidx62 = getelementptr i8, ptr %add.ptr61, i32 2
  %39 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %40 to i32
  %sub64 = add nsw i32 %conv63, -9
  %arrayidx65 = getelementptr i8, ptr %add.ptr61, i32 %sub64
  tail call void @ip_rt_get_source(ptr noundef %arrayidx65, ptr noundef %skb, ptr noundef %5) #11
  %41 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load67 = load i8, ptr %rr_needaddr, align 4
  %bf.set69 = or i8 %bf.load67, 32
  store i8 %bf.set69, ptr %rr_needaddr, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then59, %if.end54.if.end71_crit_edge, %if.end.if.end71_crit_edge
  %42 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load73 = load i8, ptr %rr_needaddr, align 4
  %43 = and i8 %bf.load73, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool76.not = icmp eq i8 %43, 0
  br i1 %tobool76.not, label %if.end71.if.end83_crit_edge, label %if.then77

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear80 = and i8 %bf.load73, -33
  %44 = ptrtoint ptr %rr_needaddr to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %bf.clear80, ptr %rr_needaddr, align 4
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i, align 8
  %47 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i, align 4
  %conv.i.i125 = zext i16 %48 to i32
  %add.ptr.i.i126 = getelementptr i8, ptr %46, i32 %conv.i.i125
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i126) #11
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.end71.if.end83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_options_rcv_srr(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %srr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %4 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %srr, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %conv
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !40

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %and25.i.i = and i32 %10, -2
  %11 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not, label %skb_rtable.exit.cleanup_crit_edge, label %if.end

skb_rtable.exit.cleanup_crit_edge:                ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %skb_rtable.exit
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %12 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %rt_type = getelementptr inbounds %struct.rtable, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rt_type, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %14, label %if.end7.cleanup_crit_edge [
    i16 1, label %if.then11
    i16 2, label %if.end23
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %is_strictroute = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %16 = ptrtoint ptr %is_strictroute to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load12 = load i8, ptr %is_strictroute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load12)
  %tobool14.not = icmp sgt i8 %bf.load12, -1
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 12, i32 noundef 0, i32 noundef 268435456, ptr noundef %opt.i) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end7
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %arrayidx25 = getelementptr i8, ptr %add.ptr, i32 1
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp27.not151 = icmp ugt i8 %18, %20
  br i1 %cmp27.not151, label %if.end23.cleanup_crit_edge, label %for.body.lr.ph

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end23
  %conv24 = zext i8 %18 to i32
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %is_changed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.body.lr.ph
  %srrptr.0152 = phi i32 [ %conv24, %for.body.lr.ph ], [ %add58, %if.end56.for.body_crit_edge ]
  %add = add nuw nsw i32 %srrptr.0152, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv26)
  %cmp29 = icmp ugt i32 %add, %conv26
  br i1 %cmp29, label %if.then31, label %if.end35

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %srr, align 1
  %conv33 = zext i8 %22 to i32
  %add34 = shl nuw i32 %conv33, 24
  %shl = add i32 %add34, 33554432
  %opt.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 12, i32 noundef 0, i32 noundef %shl, ptr noundef %opt.i115) #11
  br label %cleanup

if.end35:                                         ; preds = %for.body
  %sub = add nsw i32 %srrptr.0152, -1
  %arrayidx36 = getelementptr i8, ptr %add.ptr, i32 %sub
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %nexthop.0.copyload = load i32, ptr %arrayidx36, align 1
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 8
  store i32 0, ptr %6, align 8
  %26 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saddr, align 4
  %28 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tos, align 1
  %30 = tail call i32 @llvm.read_register.i32(metadata !30) #11
  %and.i.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i116 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i116, label %if.end35.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i118

if.end35.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i118:                             ; preds = %if.end35
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i117 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i117, label %land.lhs.true.i.i118.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i118.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i118
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i118
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i118.rcu_read_lock.exit.i_crit_edge, %if.end35.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %nexthop.0.copyload, i32 noundef %27, i8 noundef zeroext %29, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %rcu_read_lock.exit.i.if.end5.i_crit_edge

rcu_read_lock.exit.i.if.end5.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %6, align 8
  %and.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.skb_dst_force.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.skb_dst_force.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_force.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_is_noref.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, !prof !40

land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_is_noref.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst_is_noref.exit.i.i

skb_dst_is_noref.exit.i.i:                        ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %tobool1.i.i.i = icmp ugt i32 %37, 1
  br i1 %tobool1.i.i.i, label %if.then.i9.i, label %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge

skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_force.exit.i

if.then.i9.i:                                     ; preds = %skb_dst_is_noref.exit.i.i
  %and.i2.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i9.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i9.i.skb_dst.exit.i.i_crit_edge:          ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i9.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !40

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then.i9.i.skb_dst.exit.i.i_crit_edge
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %6, align 8
  %and25.i.i.i = and i32 %39, -2
  %40 = inttoptr i32 %and25.i.i.i to ptr
  %call2.i.i119 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i119)
  %tobool.not.i10.i = icmp eq i32 %call2.i.i119, 0
  br i1 %tobool.not.i10.i, label %do.end.i.i120, label %skb_dst.exit.i.i.if.end.i.i_crit_edge, !prof !40

skb_dst.exit.i.i.if.end.i.i_crit_edge:            ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i120:                                    ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 316, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i120, %skb_dst.exit.i.i.if.end.i.i_crit_edge
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %40, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #11, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end.i.i.dst_hold_safe.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dst_hold_safe.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !50
  br label %dst_hold_safe.exit.i.i

dst_hold_safe.exit.i.i:                           ; preds = %do.end11.i.i.i.i.i.i.i, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge
  %spec.select.i.i = phi ptr [ null, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge ], [ %40, %do.end11.i.i.i.i.i.i.i ]
  %42 = ptrtoint ptr %spec.select.i.i to i32
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %6, align 8
  %tobool27.not.i.i = icmp eq ptr %spec.select.i.i, null
  %44 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool27.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear34.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear34.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  br label %skb_dst_force.exit.i

skb_dst_force.exit.i:                             ; preds = %dst_hold_safe.exit.i.i, %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge, %if.then.i.skb_dst_force.exit.i_crit_edge
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %6, align 8
  %and.i.i121 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i121)
  %tobool.not.i11.i = icmp eq i32 %and.i.i121, 0
  br i1 %tobool.not.i11.i, label %skb_dst_force.exit.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i13.i

skb_dst_force.exit.i.skb_dst.exit.i_crit_edge:    ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.lhs.true.i13.i:                              ; preds = %skb_dst_force.exit.i
  %call.i12.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool1.not.i.i122 = icmp eq i32 %call.i12.i, 0
  br i1 %tobool1.not.i.i122, label %land.rhs.i.i124, label %land.lhs.true.i13.i.skb_dst.exit.i_crit_edge

land.lhs.true.i13.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

land.rhs.i.i124:                                  ; preds = %land.lhs.true.i13.i
  %call2.i14.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14.i)
  %tobool3.not.i.i123 = icmp eq i32 %call2.i14.i, 0
  br i1 %tobool3.not.i.i123, label %do.end.i15.i, label %land.rhs.i.i124.skb_dst.exit.i_crit_edge, !prof !40

land.rhs.i.i124.skb_dst.exit.i_crit_edge:         ; preds = %land.rhs.i.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit.i

do.end.i15.i:                                     ; preds = %land.rhs.i.i124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i15.i, %land.rhs.i.i124.skb_dst.exit.i_crit_edge, %land.lhs.true.i13.i.skb_dst.exit.i_crit_edge, %skb_dst_force.exit.i.skb_dst.exit.i_crit_edge
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %tobool3.not.i = icmp ult i32 %48, 2
  %spec.select.i = select i1 %tobool3.not.i, i32 -22, i32 0
  br label %if.end5.i

if.end5.i:                                        ; preds = %skb_dst.exit.i, %rcu_read_lock.exit.i.if.end5.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %rcu_read_lock.exit.i.if.end5.i_crit_edge ], [ %spec.select.i, %skb_dst.exit.i ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i17.i, label %if.end5.i.ip_route_input.exit_crit_edge, label %land.lhs.true.i20.i

if.end5.i.ip_route_input.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_route_input.exit

land.lhs.true.i20.i:                              ; preds = %if.end5.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.ip_route_input.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.ip_route_input.exit_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_route_input.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.ip_route_input.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.ip_route_input.exit_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ip_route_input.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #11
  br label %ip_route_input.exit

ip_route_input.exit:                              ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.ip_route_input.exit_crit_edge, %land.lhs.true.i20.i.ip_route_input.exit_crit_edge, %if.end5.i.ip_route_input.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !51
  %49 = tail call i32 @llvm.read_register.i32(metadata !30) #11
  %and.i.i.i.i.i24.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %6, align 8
  %and.i.i125 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.not.i.i126, label %ip_route_input.exit.skb_rtable.exit136_crit_edge, label %land.lhs.true.i.i129

ip_route_input.exit.skb_rtable.exit136_crit_edge: ; preds = %ip_route_input.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit136

land.lhs.true.i.i129:                             ; preds = %ip_route_input.exit
  %call.i.i127 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127)
  %tobool1.not.i.i128 = icmp eq i32 %call.i.i127, 0
  br i1 %tobool1.not.i.i128, label %land.rhs.i.i132, label %land.lhs.true.i.i129.skb_rtable.exit136thread-pre-split_crit_edge

land.lhs.true.i.i129.skb_rtable.exit136thread-pre-split_crit_edge: ; preds = %land.lhs.true.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit136thread-pre-split

land.rhs.i.i132:                                  ; preds = %land.lhs.true.i.i129
  %call2.i.i130 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i130)
  %tobool3.not.i.i131 = icmp eq i32 %call2.i.i130, 0
  br i1 %tobool3.not.i.i131, label %do.end.i.i133, label %land.rhs.i.i132.skb_rtable.exit136thread-pre-split_crit_edge, !prof !40

land.rhs.i.i132.skb_rtable.exit136thread-pre-split_crit_edge: ; preds = %land.rhs.i.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_rtable.exit136thread-pre-split

do.end.i.i133:                                    ; preds = %land.rhs.i.i132
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_rtable.exit136thread-pre-split

skb_rtable.exit136thread-pre-split:               ; preds = %do.end.i.i133, %land.rhs.i.i132.skb_rtable.exit136thread-pre-split_crit_edge, %land.lhs.true.i.i129.skb_rtable.exit136thread-pre-split_crit_edge
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %6, align 8
  br label %skb_rtable.exit136

skb_rtable.exit136:                               ; preds = %skb_rtable.exit136thread-pre-split, %ip_route_input.exit.skb_rtable.exit136_crit_edge
  %56 = phi i32 [ %.pr, %skb_rtable.exit136thread-pre-split ], [ %54, %ip_route_input.exit.skb_rtable.exit136_crit_edge ]
  %and25.i.i134 = and i32 %56, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool39.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %skb_rtable.exit136.if.then48_crit_edge

skb_rtable.exit136.if.then48_crit_edge:           ; preds = %skb_rtable.exit136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

lor.lhs.false:                                    ; preds = %skb_rtable.exit136
  %57 = inttoptr i32 %and25.i.i134 to ptr
  %rt_type40 = getelementptr inbounds %struct.rtable, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %rt_type40 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %rt_type40, align 4
  %.off = add i16 %59, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end50, label %lor.lhs.false.if.then48_crit_edge

lor.lhs.false.if.then48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false.if.then48_crit_edge, %skb_rtable.exit136.if.then48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i137 = icmp ne i32 %56, 0
  %and.i.i138 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %tobool.not.i.i139 = icmp eq i32 %and.i.i138, 0
  %or.cond = and i1 %tobool.not.i137, %tobool.not.i.i139
  br i1 %or.cond, label %if.then.i.i141, label %if.then48.skb_dst_drop.exit_crit_edge

if.then48.skb_dst_drop.exit_crit_edge:            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst_drop.exit

if.then.i.i141:                                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %60 = inttoptr i32 %and25.i.i134 to ptr
  tail call void @dst_release(ptr noundef %60) #11
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i141, %if.then48.skb_dst_drop.exit_crit_edge
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %25, ptr %6, align 8
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i142 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i142, label %if.then.i143, label %if.end50.refdst_drop.exit_crit_edge

if.end50.refdst_drop.exit_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %refdst_drop.exit

if.then.i143:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i = and i32 %25, -2
  %62 = inttoptr i32 %and1.i to ptr
  tail call void @dst_release(ptr noundef %62) #11
  br label %refdst_drop.exit

refdst_drop.exit:                                 ; preds = %if.then.i143, %if.end50.refdst_drop.exit_crit_edge
  %63 = ptrtoint ptr %rt_type40 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %rt_type40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %64)
  %cmp53.not = icmp eq i16 %64, 2
  br i1 %cmp53.not, label %if.end56, label %if.then61

if.end56:                                         ; preds = %refdst_drop.exit
  %65 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %nexthop.0.copyload, ptr %daddr, align 4
  %66 = ptrtoint ptr %is_changed to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load57 = load i8, ptr %is_changed, align 4
  %bf.set = or i8 %bf.load57, 32
  store i8 %bf.set, ptr %is_changed, align 4
  %add58 = add nuw nsw i32 %srrptr.0152, 4
  %cmp27.not = icmp ugt i32 %add58, %conv26
  br i1 %cmp27.not, label %if.end56.cleanup_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then61:                                        ; preds = %refdst_drop.exit
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %is_changed to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load62 = load i8, ptr %is_changed, align 4
  %nexthop65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %nexthop65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %nexthop.0.copyload, ptr %nexthop65, align 4
  %bf.set69 = or i8 %bf.load62, 96
  store i8 %bf.set69, ptr %is_changed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end56.cleanup_crit_edge, %skb_dst_drop.exit, %if.then31, %if.end23.cleanup_crit_edge, %if.end16, %if.then11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %skb_rtable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end16 ], [ -22, %if.then31 ], [ -22, %skb_dst_drop.exit ], [ 0, %skb_rtable.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_compute_spec_dst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !27, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab___ip_options_compile, !1, !"__ksymtab___ip_options_compile", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_options.c", i32 476, i32 1}
!2 = !{ptr @__ksymtab_ip_options_compile, !3, !"__ksymtab_ip_options_compile", i1 false, i1 false}
!3 = !{!"../net/ipv4/ip_options.c", i32 489, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/ip_options.c", i32 583, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ip_forward_options._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ip_forward_options._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_ip_options_rcv_srr, !11, !"__ksymtab_ip_options_rcv_srr", i1 false, i1 false}
!11 = !{!"../net/ipv4/ip_options.c", i32 654, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/dst.h", i32 316, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2152504260, i64 2152504285}
!44 = !{i64 4999815}
!45 = !{i64 5000012}
!46 = !{i64 2152485245}
!47 = !{i64 2149397774}
!48 = !{i64 2148391105}
!49 = !{i64 876725, i64 876750, i64 876772, i64 876788, i64 876800, i64 876820, i64 876844, i64 876860, i64 876872}
!50 = !{i64 2148391293}
!51 = !{i64 2149398040}
