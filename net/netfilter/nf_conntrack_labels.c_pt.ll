; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_labels.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_labels.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_connlabels_replace\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_connlabels_replace\09\09\09\09"
module asm "\09.long\09__crc_nf_connlabels_replace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_connlabels_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_connlabels_replace\22\09\09\09\09\09"
module asm "__kstrtabns_nf_connlabels_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_connlabels_get\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_connlabels_get\09\09\09\09"
module asm "\09.long\09__crc_nf_connlabels_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_connlabels_get:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_connlabels_get\22\09\09\09\09\09"
module asm "__kstrtabns_nf_connlabels_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_connlabels_put\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_connlabels_put\09\09\09\09"
module asm "\09.long\09__crc_nf_connlabels_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_connlabels_put:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_connlabels_put\22\09\09\09\09\09"
module asm "__kstrtabns_nf_connlabels_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.135, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.131, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.131 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.121, i32, %struct.spinlock }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { ptr, ptr }
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

@__kstrtab_nf_connlabels_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_connlabels_replace = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_connlabels_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_connlabels_replace to i32), ptr @__kstrtab_nf_connlabels_replace, ptr @__kstrtabns_nf_connlabels_replace }, section "___ksymtab_gpl+nf_connlabels_replace", align 4
@nf_connlabels_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_nf_connlabels_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_connlabels_get = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_connlabels_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_connlabels_get to i32), ptr @__kstrtab_nf_connlabels_get, ptr @__kstrtabns_nf_connlabels_get }, section "___ksymtab_gpl+nf_connlabels_get", align 4
@__kstrtab_nf_connlabels_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_connlabels_put = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_connlabels_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_connlabels_put to i32), ptr @__kstrtab_nf_connlabels_put, ptr @__kstrtabns_nf_connlabels_put }, section "___ksymtab_gpl+nf_connlabels_put", align 4
@labels_extend = internal constant { %struct.nf_ct_ext_type, [20 x i8] } { %struct.nf_ct_ext_type { ptr null, i32 7, i8 16, i8 4 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_connlabels_lock\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"nf_connlabels_lock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"labels_extend\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 82, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [39 x i8] c"../net/netfilter/nf_conntrack_labels.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 14, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_nf_connlabels_get, ptr @__ksymtab_nf_connlabels_put, ptr @__ksymtab_nf_connlabels_replace, ptr @nf_connlabels_lock, ptr @labels_extend, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_connlabels_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @labels_extend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_connlabels_replace(ptr nocapture noundef readonly %ct, ptr nocapture noundef readonly %data, ptr noundef readonly %mask, i32 noundef %words32) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_ct_labels_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

nf_ct_labels_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_ct_labels_find.exit.cleanup_crit_edge, label %if.end

nf_ct_labels_find.exit.cleanup_crit_edge:         ; preds = %nf_ct_labels_find.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %nf_ct_labels_find.exit
  %mul = shl i32 %words32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul)
  %cmp = icmp ugt i32 %mul, 16
  %spec.select = select i1 %cmp, i32 4, i32 %words32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp357.not = icmp eq i32 %spec.select, 0
  br i1 %cmp357.not, label %if.end.for.body11.preheader_crit_edge, label %for.body.lr.ph

if.end.for.body11.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body11.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %tobool4.not = icmp eq ptr %mask, null
  br label %for.body

for.cond9.preheader:                              ; preds = %replace_u32.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp1061 = icmp ult i32 %spec.select, 4
  br i1 %cmp1061, label %for.cond9.preheader.for.body11.preheader_crit_edge, label %for.cond9.preheader.for.end16_crit_edge

for.cond9.preheader.for.end16_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end16

for.cond9.preheader.for.body11.preheader_crit_edge: ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.cond9.preheader.for.body11.preheader_crit_edge, %if.end.for.body11.preheader_crit_edge
  %changed.0.lcssa68 = phi i32 [ %or, %for.cond9.preheader.for.body11.preheader_crit_edge ], [ 0, %if.end.for.body11.preheader_crit_edge ]
  br label %for.body11

for.body:                                         ; preds = %replace_u32.exit.for.body_crit_edge, %for.body.lr.ph
  %changed.060 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %replace_u32.exit.for.body_crit_edge ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %replace_u32.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %add.ptr.i.i, i32 %i.058
  br i1 %tobool4.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx5 = getelementptr i32, ptr %mask, i32 %i.058
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %neg = xor i32 %5, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %neg, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %data, i32 %i.058
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %__cmpxchg.exit.i.do.body.i_crit_edge, %cond.end
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %9, %cond
  %xor.i = xor i32 %and.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %xor.i)
  %cmp.i = icmp eq i32 %9, %xor.i
  br i1 %cmp.i, label %do.body.i.replace_u32.exit_crit_edge, label %do.cond.i

do.body.i.replace_u32.exit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %replace_u32.exit

do.cond.i:                                        ; preds = %do.body.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.cond.i
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 %9, i32 %xor.i) #3, !srcloc !21
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !22
  %cmp18.not.i = icmp eq i32 %asmresult1.i.i, %9
  br i1 %cmp18.not.i, label %__cmpxchg.exit.i.replace_u32.exit_crit_edge, label %__cmpxchg.exit.i.do.body.i_crit_edge

__cmpxchg.exit.i.do.body.i_crit_edge:             ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

__cmpxchg.exit.i.replace_u32.exit_crit_edge:      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %replace_u32.exit

replace_u32.exit:                                 ; preds = %__cmpxchg.exit.i.replace_u32.exit_crit_edge, %do.body.i.replace_u32.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i.replace_u32.exit_crit_edge ], [ 1, %__cmpxchg.exit.i.replace_u32.exit_crit_edge ]
  %or = or i32 %retval.0.i, %changed.060
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.cond9.preheader, label %replace_u32.exit.for.body_crit_edge

replace_u32.exit.for.body_crit_edge:              ; preds = %replace_u32.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body11:                                       ; preds = %replace_u32.exit52.for.body11_crit_edge, %for.body11.preheader
  %i.162 = phi i32 [ %inc15, %replace_u32.exit52.for.body11_crit_edge ], [ %words32, %for.body11.preheader ]
  %arrayidx12 = getelementptr i32, ptr %add.ptr.i.i, i32 %i.162
  br label %do.body.i42

do.body.i42:                                      ; preds = %__cmpxchg.exit.i50.do.body.i42_crit_edge, %for.body11
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i41 = icmp eq i32 %12, 0
  br i1 %cmp.i41, label %do.body.i42.replace_u32.exit52_crit_edge, label %do.cond.i44

do.body.i42.replace_u32.exit52_crit_edge:         ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #5
  br label %replace_u32.exit52

do.cond.i44:                                      ; preds = %do.body.i42
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx12, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %arrayidx12, i32 1, i32 3, i32 1) #3
  br label %do.body.i.i47

do.body.i.i47:                                    ; preds = %do.body.i.i47.do.body.i.i47_crit_edge, %do.cond.i44
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx12, i32 %12, i32 0) #3, !srcloc !21
  %asmresult.i.i45 = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i46 = icmp eq i32 %asmresult.i.i45, 0
  br i1 %tobool.not.i.i46, label %__cmpxchg.exit.i50, label %do.body.i.i47.do.body.i.i47_crit_edge

do.body.i.i47.do.body.i.i47_crit_edge:            ; preds = %do.body.i.i47
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i47

__cmpxchg.exit.i50:                               ; preds = %do.body.i.i47
  %asmresult1.i.i48 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !22
  %cmp18.not.i49 = icmp eq i32 %asmresult1.i.i48, %12
  br i1 %cmp18.not.i49, label %__cmpxchg.exit.i50.replace_u32.exit52_crit_edge, label %__cmpxchg.exit.i50.do.body.i42_crit_edge

__cmpxchg.exit.i50.do.body.i42_crit_edge:         ; preds = %__cmpxchg.exit.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i42

__cmpxchg.exit.i50.replace_u32.exit52_crit_edge:  ; preds = %__cmpxchg.exit.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %replace_u32.exit52

replace_u32.exit52:                               ; preds = %__cmpxchg.exit.i50.replace_u32.exit52_crit_edge, %do.body.i42.replace_u32.exit52_crit_edge
  %inc15 = add nuw nsw i32 %i.162, 1
  %exitcond64.not = icmp eq i32 %inc15, 4
  br i1 %exitcond64.not, label %replace_u32.exit52.for.end16_crit_edge, label %replace_u32.exit52.for.body11_crit_edge

replace_u32.exit52.for.body11_crit_edge:          ; preds = %replace_u32.exit52
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body11

replace_u32.exit52.for.end16_crit_edge:           ; preds = %replace_u32.exit52
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end16

for.end16:                                        ; preds = %replace_u32.exit52.for.end16_crit_edge, %for.cond9.preheader.for.end16_crit_edge
  %changed.0.lcssa67 = phi i32 [ %or, %for.cond9.preheader.for.end16_crit_edge ], [ %changed.0.lcssa68, %replace_u32.exit52.for.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.0.lcssa67)
  %tobool17.not = icmp eq i32 %changed.0.lcssa67, 0
  br i1 %tobool17.not, label %for.end16.cleanup_crit_edge, label %if.then18

for.end16.cleanup_crit_edge:                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then18:                                        ; preds = %for.end16
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %14 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ct_net.i.i, align 4
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 40, i32 9
  %16 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then18.cleanup_crit_edge, label %if.end.i

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then18
  %18 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.i.not.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %21 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %cmp.i53 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i53, label %nf_ct_ecache_find.exit.i.cleanup_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.cleanup_crit_edge:       ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 10, ptr noundef nonnull %add.ptr.i.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %nf_ct_ecache_find.exit.i.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %for.end16.cleanup_crit_edge, %nf_ct_labels_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %nf_ct_labels_find.exit.cleanup_crit_edge ], [ 0, %for.end16.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge ], [ 0, %nf_ct_ecache_find.exit.i.cleanup_crit_edge ], [ 0, %if.end5.i ], [ -28, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_connlabels_get(ptr nocapture noundef %net, i32 noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %bits)
  %cmp = icmp ugt i32 %bits, 127
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @nf_connlabels_lock) #3
  %labels_used = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 11
  %0 = ptrtoint ptr %labels_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %labels_used, align 16
  %inc = add i32 %1, 1
  store i32 %inc, ptr %labels_used, align 16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nf_connlabels_lock) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_connlabels_put(ptr nocapture noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @nf_connlabels_lock) #3
  %labels_used = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 11
  %0 = ptrtoint ptr %labels_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %labels_used, align 16
  %dec = add i32 %1, -1
  store i32 %dec, ptr %labels_used, align 16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nf_connlabels_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_labels_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_ct_extend_register(ptr noundef nonnull @labels_extend) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_extend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_conntrack_labels_fini() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_ct_extend_unregister(ptr noundef nonnull @labels_extend) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_extend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_nf_connlabels_replace, !1, !"__ksymtab_nf_connlabels_replace", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_labels.c", i32 59, i32 1}
!2 = !{ptr @__ksymtab_nf_connlabels_get, !3, !"__ksymtab_nf_connlabels_get", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_labels.c", i32 72, i32 1}
!4 = !{ptr @__ksymtab_nf_connlabels_put, !5, !"__ksymtab_nf_connlabels_put", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_labels.c", i32 80, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_labels.c", i32 14, i32 8}
!8 = !{ptr @nf_connlabels_lock, !7, !"nf_connlabels_lock", i1 false, i1 false}
!9 = !{ptr @labels_extend, !10, !"labels_extend", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_labels.c", i32 82, i32 36}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2158002795}
!21 = !{i64 693199, i64 693220, i64 693243, i64 693262, i64 693281}
!22 = !{i64 2158003200}
