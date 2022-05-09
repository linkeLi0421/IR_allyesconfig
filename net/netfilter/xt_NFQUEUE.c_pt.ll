; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_NFQUEUE.c_pt.bc'
source_filename = "../net/netfilter/xt_NFQUEUE.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.xt_NFQ_info_v1 = type { i16, i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_NFQ_info_v3 = type { i16, i16, i16 }
%struct.xt_NFQ_info_v2 = type { i16, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }

@__UNIQUE_ID_author489 = internal constant [55 x i8] c"xt_NFQUEUE.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description490 = internal constant [61 x i8] c"xt_NFQUEUE.description=Xtables: packet forwarding to netlink\00", section ".modinfo", align 1
@__UNIQUE_ID_file491 = internal constant [41 x i8] c"xt_NFQUEUE.file=net/netfilter/xt_NFQUEUE\00", section ".modinfo", align 1
@__UNIQUE_ID_license492 = internal constant [23 x i8] c"xt_NFQUEUE.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [29 x i8] c"xt_NFQUEUE.alias=ipt_NFQUEUE\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [30 x i8] c"xt_NFQUEUE.alias=ip6t_NFQUEUE\00", section ".modinfo", align 1
@__UNIQUE_ID_alias495 = internal constant [30 x i8] c"xt_NFQUEUE.alias=arpt_NFQUEUE\00", section ".modinfo", align 1
@nfqueue_tg_reg = internal global [4 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NFQUEUE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @nfqueue_tg, ptr null, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NFQUEUE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @nfqueue_tg_v1, ptr @nfqueue_tg_check, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NFQUEUE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @nfqueue_tg_v2, ptr @nfqueue_tg_check, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NFQUEUE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @nfqueue_tg_v3, ptr @nfqueue_tg_check, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_NFQUEUE__496_157_nfqueue_tg_init6 = internal global ptr @nfqueue_tg_init, section ".initcall6.init", align 4
@__exitcall_nfqueue_tg_exit = internal global ptr @nfqueue_tg_exit, section ".exitcall.exit", align 4
@jhash_initval = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@nfqueue_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.nfqueue_tg_check = private unnamed_addr constant [17 x i8] c"nfqueue_tg_check\00", align 1
@nfqueue_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.nfqueue_tg_check, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016xt_NFQUEUE: number of total queues is 0\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/xt_NFQUEUE.c\00", [37 x i8] zeroinitializer }, align 32
@nfqueue_tg_check._entry_ptr = internal global ptr @nfqueue_tg_check._entry, section ".printk_index", align 4
@nfqueue_tg_check._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nfqueue_tg_check._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.nfqueue_tg_check, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016xt_NFQUEUE: number of queues (%u) out of range (got %u)\0A\00", [37 x i8] zeroinitializer }, align 32
@nfqueue_tg_check._entry_ptr.6 = internal global ptr @nfqueue_tg_check._entry.4, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 68, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [30 x i8] c"../net/netfilter/xt_NFQUEUE.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 73, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_alias495, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description490, ptr @__UNIQUE_ID_file491, ptr @__UNIQUE_ID_license492, ptr @__exitcall_nfqueue_tg_exit, ptr @__initcall__kmod_xt_NFQUEUE__496_157_nfqueue_tg_init6, ptr @nfqueue_tg_check._entry, ptr @nfqueue_tg_check._entry.4, ptr @nfqueue_tg_check._entry_ptr, ptr @nfqueue_tg_check._entry_ptr.6, ptr @nfqueue_tg_exit, ptr @nfqueue_tg_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nfqueue_tg_check._rs.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqueue_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqueue_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqueue_tg_check._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfqueue_tg_check._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfqueue_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xt_unregister_targets(ptr noundef nonnull @nfqueue_tg_reg, i32 noundef 4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqueue_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @nfqueue_tg_reg, i32 noundef 4) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfqueue_tg(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, 3
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqueue_tg_v1(ptr noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv = zext i16 %4 to i32
  %queues_total = getelementptr inbounds %struct.xt_NFQ_info_v1, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %queues_total to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queues_total, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp = icmp ugt i16 %6, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf.i, align 1
  %11 = load i32, ptr @jhash_initval, align 4
  %call5 = tail call fastcc i32 @nfqueue_hash(ptr noundef %skb, i16 noundef zeroext %4, i16 noundef zeroext %6, i8 noundef zeroext %10, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %queue.0 = phi i32 [ %call5, %if.then ], [ %conv, %entry.if.end_crit_edge ]
  %shl = shl i32 %queue.0, 16
  %or = or i32 %shl, 3
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqueue_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %.pr.i = load i32, ptr @jhash_initval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp1.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp1.i, label %entry.while.body.i_crit_edge, label %entry.init_hashrandom.exit_crit_edge

entry.init_hashrandom.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_hashrandom.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call.i = tail call i32 @prandom_u32() #9
  store i32 %call.i, ptr @jhash_initval, align 4
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.init_hashrandom.exit_crit_edge

while.body.i.init_hashrandom.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_hashrandom.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

init_hashrandom.exit:                             ; preds = %while.body.i.init_hashrandom.exit_crit_edge, %entry.init_hashrandom.exit_crit_edge
  %queues_total = getelementptr inbounds %struct.xt_NFQ_info_v3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %queues_total to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queues_total, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %init_hashrandom.exit
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @nfqueue_tg_check._rs, ptr noundef nonnull @__func__.nfqueue_tg_check) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end4:                                          ; preds = %init_hashrandom.exit
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %conv7 = zext i16 %5 to i32
  %add = add nuw nsw i32 %sub, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp8 = icmp ugt i32 %add, 65535
  br i1 %cmp8, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end4
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @nfqueue_tg_check._rs.3, ptr noundef nonnull @__func__.nfqueue_tg_check) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %do.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %queues_total to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queues_total, align 2
  %conv19 = zext i16 %7 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv19, i32 noundef %add) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end4
  %target = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 3
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target, align 4
  %revision = getelementptr inbounds %struct.xt_target, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end22.if.end41_crit_edge [
    i8 2, label %land.lhs.true
    i8 3, label %land.lhs.true36
  ]

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end22
  %flags = getelementptr inbounds %struct.xt_NFQ_info_v3, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp27 = icmp ugt i16 %14, 1
  br i1 %cmp27, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true36:                                  ; preds = %if.end22
  %flags37 = getelementptr inbounds %struct.xt_NFQ_info_v3, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %flags37 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %16)
  %tobool39.not = icmp ult i16 %16, 4
  br i1 %tobool39.not, label %land.lhs.true36.if.end41_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true36.if.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true36.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end22.if.end41_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %land.lhs.true36.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end16, %if.then10.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -34, %do.end16 ], [ -34, %if.then10.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqueue_tg_v2(ptr noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv.i = zext i16 %4 to i32
  %queues_total.i = getelementptr inbounds %struct.xt_NFQ_info_v1, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %queues_total.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queues_total.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.i = icmp ugt i16 %6, 1
  br i1 %cmp.i, label %if.then.i, label %entry.nfqueue_tg_v1.exit_crit_edge

entry.nfqueue_tg_v1.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfqueue_tg_v1.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state.i.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf.i.i, align 1
  %11 = load i32, ptr @jhash_initval, align 4
  %call5.i = tail call fastcc i32 @nfqueue_hash(ptr noundef %skb, i16 noundef zeroext %4, i16 noundef zeroext %6, i8 noundef zeroext %10, i32 noundef %11) #9
  br label %nfqueue_tg_v1.exit

nfqueue_tg_v1.exit:                               ; preds = %if.then.i, %entry.nfqueue_tg_v1.exit_crit_edge
  %queue.0.i = phi i32 [ %call5.i, %if.then.i ], [ %conv.i, %entry.nfqueue_tg_v1.exit_crit_edge ]
  %shl.i = shl i32 %queue.0.i, 16
  %bypass = getelementptr inbounds %struct.xt_NFQ_info_v2, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %bypass to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bypass, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  %spec.select.v = select i1 %tobool.not, i32 3, i32 32771
  %spec.select = or i32 %spec.select.v, %shl.i
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfqueue_tg_v3(ptr noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv = zext i16 %4 to i32
  %queues_total = getelementptr inbounds %struct.xt_NFQ_info_v3, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %queues_total to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queues_total, align 2
  %conv1 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp = icmp ugt i16 %6, 1
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.xt_NFQ_info_v3, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %9 = and i16 %8, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i32 @llvm.read_register.i32(metadata !34) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu5 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu5, align 4
  %rem = srem i32 %13, %conv1
  %add = add nsw i32 %rem, %conv
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pf.i, align 1
  %18 = load i32, ptr @jhash_initval, align 4
  %call13 = tail call fastcc i32 @nfqueue_hash(ptr noundef %skb, i16 noundef zeroext %4, i16 noundef zeroext %6, i8 noundef zeroext %17, i32 noundef %18)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4, %entry.if.end14_crit_edge
  %queue.0 = phi i32 [ %add, %if.then4 ], [ %call13, %if.else ], [ %conv, %entry.if.end14_crit_edge ]
  %shl = shl i32 %queue.0, 16
  %flags16 = getelementptr inbounds %struct.xt_NFQ_info_v3, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %flags16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags16, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool19.not = icmp eq i16 %21, 0
  %spec.select.v = select i1 %tobool19.not, i32 3, i32 32771
  %spec.select = or i32 %spec.select.v, %shl
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfqueue_hash(ptr noundef %skb, i16 noundef zeroext %queue, i16 noundef zeroext %queues_total, i8 noundef zeroext %family, i32 noundef %initval) unnamed_addr #5 align 64 {
entry:
  %_ip6h.i = alloca %struct.ipv6hdr, align 4
  %_iph.i = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = zext i8 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %family, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb6
    i8 7, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %daddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i = icmp ult i32 %6, %8
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol.i, align 1
  %conv.i = zext i8 %10 to i32
  %add1.i.i = add i32 %initval, -559038725
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = add i32 %6, %add1.i.i
  %add1.i.i.i = add i32 %8, %add1.i.i
  %add2.i.i.i = add i32 %add1.i.i, %conv.i
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #9
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #9
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #9
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #9
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #9
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #9
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #9
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  br label %hash_v4.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i19.i = add i32 %8, %add1.i.i
  %add1.i.i20.i = add i32 %6, %add1.i.i
  %add2.i.i21.i = add i32 %add1.i.i, %conv.i
  %xor.i.i22.i = xor i32 %add2.i.i21.i, %add1.i.i20.i
  %or.i.i.i23.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i20.i, i32 %add1.i.i20.i, i32 14) #9
  %sub.i.i24.i = sub i32 %xor.i.i22.i, %or.i.i.i23.i
  %xor3.i.i25.i = xor i32 %sub.i.i24.i, %add.i.i19.i
  %or.i52.i.i26.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i24.i, i32 %sub.i.i24.i, i32 11) #9
  %sub5.i.i27.i = sub i32 %xor3.i.i25.i, %or.i52.i.i26.i
  %xor6.i.i28.i = xor i32 %sub5.i.i27.i, %add1.i.i20.i
  %or.i53.i.i29.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i27.i, i32 %sub5.i.i27.i, i32 25) #9
  %sub8.i.i30.i = sub i32 %xor6.i.i28.i, %or.i53.i.i29.i
  %xor9.i.i31.i = xor i32 %sub8.i.i30.i, %sub.i.i24.i
  %or.i54.i.i32.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i30.i, i32 %sub8.i.i30.i, i32 16) #9
  %sub11.i.i33.i = sub i32 %xor9.i.i31.i, %or.i54.i.i32.i
  %xor12.i.i34.i = xor i32 %sub11.i.i33.i, %sub5.i.i27.i
  %or.i55.i.i35.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i33.i, i32 %sub11.i.i33.i, i32 4) #9
  %sub14.i.i36.i = sub i32 %xor12.i.i34.i, %or.i55.i.i35.i
  %xor15.i.i37.i = xor i32 %sub14.i.i36.i, %sub8.i.i30.i
  %or.i56.i.i38.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i36.i, i32 %sub14.i.i36.i, i32 14) #9
  %sub17.i.i39.i = sub i32 %xor15.i.i37.i, %or.i56.i.i38.i
  %xor18.i.i40.i = xor i32 %sub17.i.i39.i, %sub11.i.i33.i
  %or.i57.i.i41.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i39.i, i32 %sub17.i.i39.i, i32 24) #9
  %sub20.i.i42.i = sub i32 %xor18.i.i40.i, %or.i57.i.i41.i
  br label %hash_v4.exit

hash_v4.exit:                                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub20.i.i.i, %if.then.i ], [ %sub20.i.i42.i, %if.end.i ]
  %conv.i31 = zext i32 %retval.0.i to i64
  %conv1.i = zext i16 %queues_total to i64
  %mul.i = mul nuw nsw i64 %conv.i31, %conv1.i
  %shr.i = lshr i64 %mul.i, 32
  %11 = trunc i64 %shr.i to i16
  %conv5 = add i16 %11, %queue
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i32, align 8
  %network_header.i.i33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i33 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i33, align 4
  %conv.i.i34 = zext i16 %15 to i32
  %add.ptr.i.i35 = getelementptr i8, ptr %13, i32 %conv.i.i34
  %arrayidx.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35, i32 0, i32 5, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35, i32 0, i32 6, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19) #9
  %21 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19) #9
  %arrayidx17.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35, i32 0, i32 5, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx20.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i35, i32 0, i32 6, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20.i, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25) #9
  %add1.i.i36 = add i32 %initval, -559038725
  %add.i.i.i37 = add i32 %20, %add1.i.i36
  %add1.i.i.i38 = add i32 %21, %add1.i.i36
  %add2.i.i.i39 = add i32 %26, %add1.i.i36
  %xor.i.i.i40 = xor i32 %add2.i.i.i39, %add1.i.i.i38
  %or.i.i.i.i41 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i38, i32 %add1.i.i.i38, i32 14) #9
  %sub.i.i.i42 = sub i32 %xor.i.i.i40, %or.i.i.i.i41
  %xor3.i.i.i43 = xor i32 %sub.i.i.i42, %add.i.i.i37
  %or.i52.i.i.i44 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i42, i32 %sub.i.i.i42, i32 11) #9
  %sub5.i.i.i45 = sub i32 %xor3.i.i.i43, %or.i52.i.i.i44
  %xor6.i.i.i46 = xor i32 %sub5.i.i.i45, %add1.i.i.i38
  %or.i53.i.i.i47 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i45, i32 %sub5.i.i.i45, i32 25) #9
  %sub8.i.i.i48 = sub i32 %xor6.i.i.i46, %or.i53.i.i.i47
  %xor9.i.i.i49 = xor i32 %sub8.i.i.i48, %sub.i.i.i42
  %or.i54.i.i.i50 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i48, i32 %sub8.i.i.i48, i32 16) #9
  %sub11.i.i.i51 = sub i32 %xor9.i.i.i49, %or.i54.i.i.i50
  %xor12.i.i.i52 = xor i32 %sub11.i.i.i51, %sub5.i.i.i45
  %or.i55.i.i.i53 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i51, i32 %sub11.i.i.i51, i32 4) #9
  %sub14.i.i.i54 = sub i32 %xor12.i.i.i52, %or.i55.i.i.i53
  %xor15.i.i.i55 = xor i32 %sub14.i.i.i54, %sub8.i.i.i48
  %or.i56.i.i.i56 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i54, i32 %sub14.i.i.i54, i32 14) #9
  %sub17.i.i.i57 = sub i32 %xor15.i.i.i55, %or.i56.i.i.i56
  %xor18.i.i.i58 = xor i32 %sub17.i.i.i57, %sub11.i.i.i51
  %or.i57.i.i.i59 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i57, i32 %sub17.i.i.i57, i32 24) #9
  %sub20.i.i.i60 = sub i32 %xor18.i.i.i58, %or.i57.i.i.i59
  %conv.i61 = zext i32 %sub20.i.i.i60 to i64
  %conv1.i62 = zext i16 %queues_total to i64
  %mul.i63 = mul nuw nsw i64 %conv.i61, %conv1.i62
  %shr.i64 = lshr i64 %mul.i63, 32
  %27 = trunc i64 %shr.i64 to i16
  %conv13 = add i16 %27, %queue
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6h.i) #9
  %28 = call ptr @memset(ptr %_ip6h.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i) #9
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = call ptr @memset(ptr %_iph.i, i32 255, i32 20)
  %30 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %32 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %33 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %h_proto.i, align 1
  %36 = zext i16 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %35, label %sw.bb14.hash_bridge.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb4.i
  ]

sw.bb14.hash_bridge.exit_crit_edge:               ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

sw.bb.i:                                          ; preds = %sw.bb14
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %37 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i22.i = zext i16 %38 to i32
  %add.ptr.i.i23.i = getelementptr i8, ptr %31, i32 %conv.i.i22.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i23.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %41 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i.i, align 8
  %45 = add i32 %44, %sub.ptr.sub.i.i
  %sub.i4.i.i = sub i32 %42, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !44

if.end.i.i.i:                                     ; preds = %sw.bb.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.hash_bridge.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.hash_bridge.exit_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_iph.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.hash_bridge.exit_crit_edge, label %lor.lhs.false.i.i.i.if.then.i68_crit_edge

lor.lhs.false.i.i.i.if.then.i68_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i68

lor.lhs.false.i.i.i.hash_bridge.exit_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

skb_header_pointer.exit.i:                        ; preds = %sw.bb.i
  %add.ptr.i.i25.i = getelementptr i8, ptr %40, i32 %sub.ptr.sub.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i25.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.hash_bridge.exit_crit_edge, label %skb_header_pointer.exit.i.if.then.i68_crit_edge

skb_header_pointer.exit.i.if.then.i68_crit_edge:  ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i68

skb_header_pointer.exit.i.hash_bridge.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

if.then.i68:                                      ; preds = %skb_header_pointer.exit.i.if.then.i68_crit_edge, %lor.lhs.false.i.i.i.if.then.i68_crit_edge
  %retval.0.i.i79.i = phi ptr [ %add.ptr.i.i25.i, %skb_header_pointer.exit.i.if.then.i68_crit_edge ], [ %_iph.i, %lor.lhs.false.i.i.i.if.then.i68_crit_edge ]
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i79.i, i32 0, i32 8
  %46 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %saddr.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i79.i, i32 0, i32 9
  %48 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %daddr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.i.i = icmp ult i32 %47, %49
  %protocol.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i79.i, i32 0, i32 6
  %50 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %protocol.i.i, align 1
  %conv.i.i66 = zext i8 %51 to i32
  %add1.i.i.i67 = add i32 %initval, -559038725
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i.i = add i32 %47, %add1.i.i.i67
  %add1.i.i.i.i = add i32 %49, %add1.i.i.i67
  %add2.i.i.i.i = add i32 %add1.i.i.i67, %conv.i.i66
  %xor.i.i.i.i = xor i32 %add2.i.i.i.i, %add1.i.i.i.i
  %or.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #9
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #9
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #9
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #9
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #9
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #9
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i57.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #9
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i57.i.i.i.i
  br label %hash_bridge.exit

if.end.i.i:                                       ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i19.i.i = add i32 %49, %add1.i.i.i67
  %add1.i.i20.i.i = add i32 %47, %add1.i.i.i67
  %add2.i.i21.i.i = add i32 %add1.i.i.i67, %conv.i.i66
  %xor.i.i22.i.i = xor i32 %add2.i.i21.i.i, %add1.i.i20.i.i
  %or.i.i.i23.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i20.i.i, i32 %add1.i.i20.i.i, i32 14) #9
  %sub.i.i24.i.i = sub i32 %xor.i.i22.i.i, %or.i.i.i23.i.i
  %xor3.i.i25.i.i = xor i32 %sub.i.i24.i.i, %add.i.i19.i.i
  %or.i52.i.i26.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i24.i.i, i32 %sub.i.i24.i.i, i32 11) #9
  %sub5.i.i27.i.i = sub i32 %xor3.i.i25.i.i, %or.i52.i.i26.i.i
  %xor6.i.i28.i.i = xor i32 %sub5.i.i27.i.i, %add1.i.i20.i.i
  %or.i53.i.i29.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i27.i.i, i32 %sub5.i.i27.i.i, i32 25) #9
  %sub8.i.i30.i.i = sub i32 %xor6.i.i28.i.i, %or.i53.i.i29.i.i
  %xor9.i.i31.i.i = xor i32 %sub8.i.i30.i.i, %sub.i.i24.i.i
  %or.i54.i.i32.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i30.i.i, i32 %sub8.i.i30.i.i, i32 16) #9
  %sub11.i.i33.i.i = sub i32 %xor9.i.i31.i.i, %or.i54.i.i32.i.i
  %xor12.i.i34.i.i = xor i32 %sub11.i.i33.i.i, %sub5.i.i27.i.i
  %or.i55.i.i35.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i33.i.i, i32 %sub11.i.i33.i.i, i32 4) #9
  %sub14.i.i36.i.i = sub i32 %xor12.i.i34.i.i, %or.i55.i.i35.i.i
  %xor15.i.i37.i.i = xor i32 %sub14.i.i36.i.i, %sub8.i.i30.i.i
  %or.i56.i.i38.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i36.i.i, i32 %sub14.i.i36.i.i, i32 14) #9
  %sub17.i.i39.i.i = sub i32 %xor15.i.i37.i.i, %or.i56.i.i38.i.i
  %xor18.i.i40.i.i = xor i32 %sub17.i.i39.i.i, %sub11.i.i33.i.i
  %or.i57.i.i41.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i39.i.i, i32 %sub17.i.i39.i.i, i32 24) #9
  %sub20.i.i42.i.i = sub i32 %xor18.i.i40.i.i, %or.i57.i.i41.i.i
  br label %hash_bridge.exit

sw.bb4.i:                                         ; preds = %sw.bb14
  %network_header.i.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header.i.i27.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i27.i, align 4
  %conv.i.i28.i = zext i16 %53 to i32
  %add.ptr.i.i29.i = getelementptr i8, ptr %31, i32 %conv.i.i28.i
  %data.i30.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i30.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i30.i, align 4
  %sub.ptr.lhs.cast.i31.i = ptrtoint ptr %add.ptr.i.i29.i to i32
  %sub.ptr.rhs.cast.i32.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i33.i = sub i32 %sub.ptr.lhs.cast.i31.i, %sub.ptr.rhs.cast.i32.i
  %len.i.i34.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i.i34.i, align 4
  %data_len.i.i35.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %58 = ptrtoint ptr %data_len.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i.i35.i, align 8
  %60 = add i32 %59, %sub.ptr.sub.i33.i
  %sub.i4.i36.i = sub i32 %57, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i36.i)
  %cmp.not.i.i37.i = icmp slt i32 %sub.i4.i36.i, 40
  br i1 %cmp.not.i.i37.i, label %if.end.i.i42.i, label %skb_header_pointer.exit48.i, !prof !44

if.end.i.i42.i:                                   ; preds = %sw.bb4.i
  %tobool2.not.i.i41.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i41.i, label %if.end.i.i42.i.hash_bridge.exit_crit_edge, label %lor.lhs.false.i.i46.i

if.end.i.i42.i.hash_bridge.exit_crit_edge:        ; preds = %if.end.i.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

lor.lhs.false.i.i46.i:                            ; preds = %if.end.i.i42.i
  %call.i.i43.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i33.i, ptr noundef nonnull %_ip6h.i, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i)
  %cmp3.i.i44.i = icmp slt i32 %call.i.i43.i, 0
  br i1 %cmp3.i.i44.i, label %lor.lhs.false.i.i46.i.hash_bridge.exit_crit_edge, label %lor.lhs.false.i.i46.i.if.then8.i_crit_edge

lor.lhs.false.i.i46.i.if.then8.i_crit_edge:       ; preds = %lor.lhs.false.i.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

lor.lhs.false.i.i46.i.hash_bridge.exit_crit_edge: ; preds = %lor.lhs.false.i.i46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

skb_header_pointer.exit48.i:                      ; preds = %sw.bb4.i
  %add.ptr.i.i39.i = getelementptr i8, ptr %55, i32 %sub.ptr.sub.i33.i
  %tobool7.not.i = icmp eq ptr %add.ptr.i.i39.i, null
  br i1 %tobool7.not.i, label %skb_header_pointer.exit48.i.hash_bridge.exit_crit_edge, label %skb_header_pointer.exit48.i.if.then8.i_crit_edge

skb_header_pointer.exit48.i.if.then8.i_crit_edge: ; preds = %skb_header_pointer.exit48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

skb_header_pointer.exit48.i.hash_bridge.exit_crit_edge: ; preds = %skb_header_pointer.exit48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_bridge.exit

if.then8.i:                                       ; preds = %skb_header_pointer.exit48.i.if.then8.i_crit_edge, %lor.lhs.false.i.i46.i.if.then8.i_crit_edge
  %retval.0.i.i4786.i = phi ptr [ %add.ptr.i.i39.i, %skb_header_pointer.exit48.i.if.then8.i_crit_edge ], [ %_ip6h.i, %lor.lhs.false.i.i46.i.if.then8.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i, i32 0, i32 6, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2.i.i, align 4
  %65 = call i32 @llvm.umin.i32(i32 %62, i32 %64) #9
  %66 = call i32 @llvm.umax.i32(i32 %62, i32 %64) #9
  %arrayidx17.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx17.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.ipv6hdr, ptr %retval.0.i.i4786.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx20.i.i, align 4
  %71 = call i32 @llvm.umin.i32(i32 %68, i32 %70) #9
  %add1.i.i49.i = add i32 %initval, -559038725
  %add.i.i.i50.i = add i32 %65, %add1.i.i49.i
  %add1.i.i.i51.i = add i32 %66, %add1.i.i49.i
  %add2.i.i.i52.i = add i32 %71, %add1.i.i49.i
  %xor.i.i.i53.i = xor i32 %add2.i.i.i52.i, %add1.i.i.i51.i
  %or.i.i.i.i54.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i51.i, i32 %add1.i.i.i51.i, i32 14) #9
  %sub.i.i.i55.i = sub i32 %xor.i.i.i53.i, %or.i.i.i.i54.i
  %xor3.i.i.i56.i = xor i32 %sub.i.i.i55.i, %add.i.i.i50.i
  %or.i52.i.i.i57.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i55.i, i32 %sub.i.i.i55.i, i32 11) #9
  %sub5.i.i.i58.i = sub i32 %xor3.i.i.i56.i, %or.i52.i.i.i57.i
  %xor6.i.i.i59.i = xor i32 %sub5.i.i.i58.i, %add1.i.i.i51.i
  %or.i53.i.i.i60.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i58.i, i32 %sub5.i.i.i58.i, i32 25) #9
  %sub8.i.i.i61.i = sub i32 %xor6.i.i.i59.i, %or.i53.i.i.i60.i
  %xor9.i.i.i62.i = xor i32 %sub8.i.i.i61.i, %sub.i.i.i55.i
  %or.i54.i.i.i63.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i61.i, i32 %sub8.i.i.i61.i, i32 16) #9
  %sub11.i.i.i64.i = sub i32 %xor9.i.i.i62.i, %or.i54.i.i.i63.i
  %xor12.i.i.i65.i = xor i32 %sub11.i.i.i64.i, %sub5.i.i.i58.i
  %or.i55.i.i.i66.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i64.i, i32 %sub11.i.i.i64.i, i32 4) #9
  %sub14.i.i.i67.i = sub i32 %xor12.i.i.i65.i, %or.i55.i.i.i66.i
  %xor15.i.i.i68.i = xor i32 %sub14.i.i.i67.i, %sub8.i.i.i61.i
  %or.i56.i.i.i69.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i67.i, i32 %sub14.i.i.i67.i, i32 14) #9
  %sub17.i.i.i70.i = sub i32 %xor15.i.i.i68.i, %or.i56.i.i.i69.i
  %xor18.i.i.i71.i = xor i32 %sub17.i.i.i70.i, %sub11.i.i.i64.i
  %or.i57.i.i.i72.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i70.i, i32 %sub17.i.i.i70.i, i32 24) #9
  %sub20.i.i.i73.i = sub i32 %xor18.i.i.i71.i, %or.i57.i.i.i72.i
  br label %hash_bridge.exit

hash_bridge.exit:                                 ; preds = %if.then8.i, %skb_header_pointer.exit48.i.hash_bridge.exit_crit_edge, %lor.lhs.false.i.i46.i.hash_bridge.exit_crit_edge, %if.end.i.i42.i.hash_bridge.exit_crit_edge, %if.end.i.i, %if.then.i.i, %skb_header_pointer.exit.i.hash_bridge.exit_crit_edge, %lor.lhs.false.i.i.i.hash_bridge.exit_crit_edge, %if.end.i.i.i.hash_bridge.exit_crit_edge, %sw.bb14.hash_bridge.exit_crit_edge
  %retval.0.i69 = phi i32 [ %sub20.i.i.i73.i, %if.then8.i ], [ 0, %skb_header_pointer.exit48.i.hash_bridge.exit_crit_edge ], [ 0, %skb_header_pointer.exit.i.hash_bridge.exit_crit_edge ], [ 0, %sw.bb14.hash_bridge.exit_crit_edge ], [ %sub20.i.i.i.i, %if.then.i.i ], [ %sub20.i.i42.i.i, %if.end.i.i ], [ 0, %if.end.i.i.i.hash_bridge.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.i.hash_bridge.exit_crit_edge ], [ 0, %if.end.i.i42.i.hash_bridge.exit_crit_edge ], [ 0, %lor.lhs.false.i.i46.i.hash_bridge.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6h.i) #9
  %conv.i70 = zext i32 %retval.0.i69 to i64
  %conv1.i71 = zext i16 %queues_total to i64
  %mul.i72 = mul nuw nsw i64 %conv.i70, %conv1.i71
  %shr.i73 = lshr i64 %mul.i72, 32
  %72 = trunc i64 %shr.i73 to i16
  %conv20 = add i16 %72, %queue
  br label %sw.epilog

sw.epilog:                                        ; preds = %hash_bridge.exit, %sw.bb6, %hash_v4.exit, %entry.sw.epilog_crit_edge
  %queue.addr.0 = phi i16 [ %queue, %entry.sw.epilog_crit_edge ], [ %conv20, %hash_bridge.exit ], [ %conv13, %sw.bb6 ], [ %conv5, %hash_v4.exit ]
  %conv21 = zext i16 %queue.addr.0 to i32
  ret i32 %conv21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_author489, !1, !"__UNIQUE_ID_author489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description490, !3, !"__UNIQUE_ID_description490", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file491, !5, !"__UNIQUE_ID_file491", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license492, !5, !"__UNIQUE_ID_license492", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias494, !10, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 23, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias495, !12, !"__UNIQUE_ID_alias495", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 24, i32 1}
!13 = !{ptr @__initcall__kmod_xt_NFQUEUE__496_157_nfqueue_tg_init6, !14, !"__initcall__kmod_xt_NFQUEUE__496_157_nfqueue_tg_init6", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 157, i32 1}
!15 = !{ptr @__exitcall_nfqueue_tg_exit, !16, !"__exitcall_nfqueue_tg_exit", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 158, i32 1}
!17 = !{ptr @nfqueue_tg_reg, !18, !"nfqueue_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 110, i32 25}
!19 = !{ptr @jhash_initval, !20, !"jhash_initval", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 26, i32 12}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 68, i32 3}
!23 = !{ptr @nfqueue_tg_check._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.nfqueue_tg_check, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nfqueue_tg_check._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @nfqueue_tg_check._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @nfqueue_tg_check._rs.3, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_NFQUEUE.c", i32 73, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nfqueue_tg_check._entry.4, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nfqueue_tg_check._entry_ptr.6, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
