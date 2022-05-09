; ModuleID = '/llk/IR_all_yes/net/sunrpc/sysctl.c_pt.bc'
source_filename = "../net/sunrpc/sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rpc_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_debug\09\09\09\09"
module asm "\09.long\09__crc_rpc_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_debug\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfs_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_nfs_debug\09\09\09\09"
module asm "\09.long\09__crc_nfs_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_debug\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nfsd_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_nfsd_debug\09\09\09\09"
module asm "\09.long\09__crc_nfsd_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfsd_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22nfsd_debug\22\09\09\09\09\09"
module asm "__kstrtabns_nfsd_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nlm_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_nlm_debug\09\09\09\09"
module asm "\09.long\09__crc_nlm_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlm_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22nlm_debug\22\09\09\09\09\09"
module asm "__kstrtabns_nlm_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.26, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.26 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.27, i32, %struct.spinlock }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, ptr }
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

@rpc_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_rpc_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_debug to i32), ptr @__kstrtab_rpc_debug, ptr @__kstrtabns_rpc_debug }, section "___ksymtab_gpl+rpc_debug", align 4
@nfs_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nfs_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_debug to i32), ptr @__kstrtab_nfs_debug, ptr @__kstrtabns_nfs_debug }, section "___ksymtab_gpl+nfs_debug", align 4
@nfsd_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nfsd_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfsd_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_nfsd_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfsd_debug to i32), ptr @__kstrtab_nfsd_debug, ptr @__kstrtabns_nfsd_debug }, section "___ksymtab_gpl+nfsd_debug", align 4
@nlm_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nlm_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlm_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_nlm_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlm_debug to i32), ptr @__kstrtab_nlm_debug, ptr @__kstrtabns_nlm_debug }, section "___ksymtab_gpl+nlm_debug", align 4
@sunrpc_table_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sunrpc_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @debug_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunrpc\00", [25 x i8] zeroinitializer }, align 32
@debug_table = internal global { [6 x %struct.ctl_table], [40 x i8] } { [6 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @rpc_debug, i32 4, i16 420, ptr null, ptr @proc_dodebug, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr @nfs_debug, i32 4, i16 420, ptr null, ptr @proc_dodebug, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr @nfsd_debug, i32 4, i16 420, ptr null, ptr @proc_dodebug, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @nlm_debug, i32 4, i16 420, ptr null, ptr @proc_dodebug, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.6, ptr null, i32 256, i16 292, ptr null, ptr @proc_do_xprt, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rpc_debug\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfs_debug\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfsd_debug\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nlm_debug\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"transports\00", [21 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@init_net = external dso_local global %struct.net, align 128
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%04x\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"rpc_debug\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 29, i32 14 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"nfs_debug\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 32, i32 14 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"nfsd_debug\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 35, i32 14 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"nlm_debug\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 38, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"sunrpc_table_header\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 43, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"sunrpc_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 184, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 186, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"debug_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 146, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 148, i32 15 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 155, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 162, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 169, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 176, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [23 x i8] c"../net/sunrpc/sysctl.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 129, i32 25 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_nfs_debug, ptr @__ksymtab_nfsd_debug, ptr @__ksymtab_nlm_debug, ptr @__ksymtab_rpc_debug, ptr @rpc_debug, ptr @nfs_debug, ptr @nfsd_debug, ptr @nlm_debug, ptr @sunrpc_table_header, ptr @sunrpc_table, ptr @.str, ptr @debug_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfsd_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlm_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrpc_table_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunrpc_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_register_sysctl() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunrpc_table_header, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @register_sysctl_table(ptr noundef nonnull @sunrpc_table) #6
  store ptr %call, ptr @sunrpc_table_header, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_unregister_sysctl() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sunrpc_table_header, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_sysctl_table(ptr noundef nonnull %0) #6
  store ptr null, ptr @sunrpc_table_header, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dodebug(ptr nocapture noundef readonly %table, i32 noundef %write, ptr nocapture noundef %buffer, ptr nocapture noundef %lenp, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %tmpbuf = alloca [20 x i8], align 1
  %s = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tmpbuf) #6
  %0 = call ptr @memset(ptr %tmpbuf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #6
  %1 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %s, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp ne i64 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lenp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lenp, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %tobool1.not, label %if.else50, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %left.0107 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ %5, %if.end.land.rhs_crit_edge ]
  %p.0106 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %buffer, %if.end.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %p.0106 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p.0106, align 1
  %conv = zext i8 %8 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %if.end10.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %dec = add i32 %left.0107, -1
  %incdec.ptr = getelementptr i8, ptr %p.0106, i32 1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %while.body.done_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.done_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end10.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %left.0107)
  %cmp11 = icmp ugt i32 %left.0107, 19
  br i1 %cmp11, label %if.end10.critedge.cleanup_crit_edge, label %if.end14

if.end10.critedge.cleanup_crit_edge:              ; preds = %if.end10.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10.critedge
  %12 = call ptr @memcpy(ptr %tmpbuf, ptr %p.0106, i32 %left.0107)
  %arrayidx15 = getelementptr [20 x i8], ptr %tmpbuf, i32 0, i32 %left.0107
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx15, align 1
  %call = call i32 @simple_strtol(ptr noundef nonnull %tmpbuf, ptr noundef nonnull %s, i32 noundef 0) #6
  %14 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.end14.if.end44_crit_edge, label %if.then18

if.end14.if.end44_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then18:                                        ; preds = %if.end14
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %tmpbuf to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %left.0107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cond = icmp eq i32 %sub, 0
  br i1 %cond, label %if.then18.if.end44_crit_edge, label %land.lhs.true21

if.then18.if.end44_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true21:                                  ; preds = %if.then18
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv22 = zext i8 %17 to i32
  %arrayidx23 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv22
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx23, align 1
  %20 = and i8 %19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp26.not = icmp eq i8 %20, 0
  br i1 %cmp26.not, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.land.rhs32_crit_edge

land.lhs.true21.land.rhs32_crit_edge:             ; preds = %land.lhs.true21
  br label %land.rhs32

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs32:                                       ; preds = %while.body40.land.rhs32_crit_edge, %land.lhs.true21.land.rhs32_crit_edge
  %left.1109 = phi i32 [ %dec41, %while.body40.land.rhs32_crit_edge ], [ %sub, %land.lhs.true21.land.rhs32_crit_edge ]
  %21 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv33 = zext i8 %24 to i32
  %arrayidx34 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv33
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx34, align 1
  %27 = and i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp37.not = icmp eq i8 %27, 0
  br i1 %cmp37.not, label %land.rhs32.if.end44_crit_edge, label %while.body40

land.rhs32.if.end44_crit_edge:                    ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

while.body40:                                     ; preds = %land.rhs32
  %dec41 = add i32 %left.1109, -1
  %incdec.ptr42 = getelementptr i8, ptr %22, i32 1
  %28 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr42, ptr %s, align 4
  %tobool31.not = icmp eq i32 %dec41, 0
  br i1 %tobool31.not, label %while.body40.if.end44_crit_edge, label %while.body40.land.rhs32_crit_edge

while.body40.land.rhs32_crit_edge:                ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs32

while.body40.if.end44_crit_edge:                  ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end44:                                         ; preds = %while.body40.if.end44_crit_edge, %land.rhs32.if.end44_crit_edge, %if.then18.if.end44_crit_edge, %if.end14.if.end44_crit_edge
  %left.2 = phi i32 [ 0, %if.end14.if.end44_crit_edge ], [ 0, %if.then18.if.end44_crit_edge ], [ 0, %while.body40.if.end44_crit_edge ], [ %left.1109, %land.rhs32.if.end44_crit_edge ]
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call, ptr %30, align 4
  %32 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %table, align 4
  %call45 = call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(10) @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end44.done_crit_edge

if.end44.done_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void @rpc_show_tasks(ptr noundef nonnull @init_net) #6
  br label %done

if.else50:                                        ; preds = %if.end
  %data52 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %34 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data52, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmpbuf, ptr noundef nonnull @.str.7, i32 noundef %37)
  %38 = tail call i32 @llvm.umin.i32(i32 %call53, i32 %5)
  %39 = call ptr @memcpy(ptr %buffer, ptr %tmpbuf, i32 %38)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call53)
  %cmp60.not.not = icmp ugt i32 %5, %call53
  br i1 %cmp60.not.not, label %if.then62, label %if.else50.done_crit_edge

if.else50.done_crit_edge:                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then62:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %buffer, i32 %38
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 10, ptr %add.ptr, align 1
  %41 = xor i32 %38, -1
  %dec63 = add i32 %5, %41
  br label %done

done:                                             ; preds = %if.then62, %if.else50.done_crit_edge, %if.then48, %if.end44.done_crit_edge, %while.body.done_crit_edge
  %left.3 = phi i32 [ %left.2, %if.then48 ], [ %left.2, %if.end44.done_crit_edge ], [ %dec63, %if.then62 ], [ 0, %if.else50.done_crit_edge ], [ 0, %while.body.done_crit_edge ]
  %42 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lenp, align 4
  %sub66 = sub i32 %43, %left.3
  store i32 %sub66, ptr %lenp, align 4
  %conv67 = zext i32 %sub66 to i64
  %44 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ppos, align 8
  %add = add i64 %45, %conv67
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %done, %land.lhs.true21.cleanup_crit_edge, %if.end10.critedge.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %done ], [ 0, %if.then ], [ -22, %if.end10.critedge.cleanup_crit_edge ], [ -22, %land.lhs.true21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tmpbuf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_do_xprt(ptr nocapture noundef readnone %table, i32 noundef %write, ptr noundef %buffer, ptr nocapture noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %tmpbuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmpbuf) #6
  %0 = call ptr @memset(ptr %tmpbuf, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 @svc_print_xprts(ptr noundef nonnull %tmpbuf, i32 noundef 256) #6
  %3 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lenp, align 4
  %call3 = call i32 @memory_read_from_buffer(ptr noundef %buffer, i32 noundef %4, ptr noundef %ppos, ptr noundef nonnull %tmpbuf, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %5 = call i32 @llvm.smax.i32(i32 %call3, i32 0)
  %. = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %call3.sink = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %5, %if.end ]
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  %6 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3.sink, ptr %lenp, align 4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmpbuf) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_show_tasks(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_print_xprts(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_rpc_debug, !1, !"__ksymtab_rpc_debug", i1 false, i1 false}
!1 = !{!"../net/sunrpc/sysctl.c", i32 30, i32 1}
!2 = !{ptr @__ksymtab_nfs_debug, !3, !"__ksymtab_nfs_debug", i1 false, i1 false}
!3 = !{!"../net/sunrpc/sysctl.c", i32 33, i32 1}
!4 = !{ptr @__ksymtab_nfsd_debug, !5, !"__ksymtab_nfsd_debug", i1 false, i1 false}
!5 = !{!"../net/sunrpc/sysctl.c", i32 36, i32 1}
!6 = !{ptr @__ksymtab_nlm_debug, !7, !"__ksymtab_nlm_debug", i1 false, i1 false}
!7 = !{!"../net/sunrpc/sysctl.c", i32 39, i32 1}
!8 = !{ptr @rpc_debug, !9, !"rpc_debug", i1 false, i1 false}
!9 = !{!"../net/sunrpc/sysctl.c", i32 29, i32 14}
!10 = !{ptr @nfs_debug, !11, !"nfs_debug", i1 false, i1 false}
!11 = !{!"../net/sunrpc/sysctl.c", i32 32, i32 14}
!12 = !{ptr @nfsd_debug, !13, !"nfsd_debug", i1 false, i1 false}
!13 = !{!"../net/sunrpc/sysctl.c", i32 35, i32 14}
!14 = !{ptr @nlm_debug, !15, !"nlm_debug", i1 false, i1 false}
!15 = !{!"../net/sunrpc/sysctl.c", i32 38, i32 14}
!16 = !{ptr @sunrpc_table_header, !17, !"sunrpc_table_header", i1 false, i1 false}
!17 = !{!"../net/sunrpc/sysctl.c", i32 43, i32 33}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sunrpc/sysctl.c", i32 186, i32 15}
!20 = !{ptr @sunrpc_table, !21, !"sunrpc_table", i1 false, i1 false}
!21 = !{!"../net/sunrpc/sysctl.c", i32 184, i32 25}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sunrpc/sysctl.c", i32 148, i32 15}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sunrpc/sysctl.c", i32 155, i32 15}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sunrpc/sysctl.c", i32 162, i32 15}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sunrpc/sysctl.c", i32 169, i32 15}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sunrpc/sysctl.c", i32 176, i32 15}
!32 = !{ptr @debug_table, !33, !"debug_table", i1 false, i1 false}
!33 = !{!"../net/sunrpc/sysctl.c", i32 146, i32 25}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sunrpc/sysctl.c", i32 129, i32 25}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
