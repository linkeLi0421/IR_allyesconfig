; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_dccp.c_pt.bc'
source_filename = "../net/netfilter/xt_dccp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_dccp_info = type { [2 x i16], [2 x i16], i16, i16, i16, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [35 x i8] c"xt_dccp.file=net/netfilter/xt_dccp\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [20 x i8] c"xt_dccp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [52 x i8] c"xt_dccp.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [56 x i8] c"xt_dccp.description=Xtables: DCCP protocol packet match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [23 x i8] c"xt_dccp.alias=ipt_dccp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [24 x i8] c"xt_dccp.alias=ip6t_dccp\00", section ".modinfo", align 1
@dccp_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"dccp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @dccp_mt, ptr @dccp_mt_check, ptr null, ptr null, ptr null, i32 16, i32 0, i32 0, i16 33, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"dccp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @dccp_mt, ptr @dccp_mt_check, ptr null, ptr null, ptr null, i32 16, i32 0, i32 0, i16 33, i16 10 }], section ".data..read_mostly", align 4
@dccp_optbuf = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_xt_dccp__624_184_dccp_mt_init6 = internal global ptr @dccp_mt_init, section ".initcall6.init", align 4
@__exitcall_dccp_mt_exit = internal global ptr @dccp_mt_exit, section ".exitcall.exit", align 4
@dccp_buflock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dccp_buflock\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.1 = internal global [11 x i64] [i64 9, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.2 = internal global [11 x i64] [i64 9, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"dccp_optbuf\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 30, i32 23 }
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"dccp_buflock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [27 x i8] c"../net/netfilter/xt_dccp.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 31, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_dccp_mt_exit, ptr @__initcall__kmod_xt_dccp__624_184_dccp_mt_init6, ptr @dccp_mt_exit, ptr @dccp_optbuf, ptr @dccp_buflock, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_optbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_buflock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dccp_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_matches(ptr noundef nonnull @dccp_mt_reg, i32 noundef 2) #6
  %0 = load ptr, ptr @dccp_optbuf, align 4
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #9
  store ptr %call7.i, ptr @dccp_optbuf, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_matches(ptr noundef nonnull @dccp_mt_reg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out_kfree

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_kfree:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load ptr, ptr @dccp_optbuf, align 4
  tail call void @kfree(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out_kfree ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dccp_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_dh = alloca %struct.dccp_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_dh) #6
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %3 = call ptr @memset(ptr %_dh, i32 255, i32 12)
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %6 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 12
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !31

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then4_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_dh, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then4_crit_edge, label %lor.lhs.false.i.i.if.end5_crit_edge

lor.lhs.false.i.i.if.end5_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

lor.lhs.false.i.i.if.then4_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %cmp2 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp2, label %skb_header_pointer.exit.if.then4_crit_edge, label %skb_header_pointer.exit.if.end5_crit_edge

skb_header_pointer.exit.if.end5_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

skb_header_pointer.exit.if.then4_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %skb_header_pointer.exit.if.then4_crit_edge, %lor.lhs.false.i.i.if.then4_crit_edge, %if.end.i.i.if.then4_crit_edge
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end5:                                          ; preds = %skb_header_pointer.exit.if.end5_crit_edge, %lor.lhs.false.i.i.if.end5_crit_edge
  %retval.0.i.i130 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end5_crit_edge ], [ %_dh, %lor.lhs.false.i.i.if.end5_crit_edge ]
  %flags = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.end5.land.lhs.true_crit_edge, label %lor.lhs.false

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end5
  %invflags = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 3
  %19 = ptrtoint ptr %invflags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %invflags, align 2
  %21 = and i16 %20, 1
  %22 = zext i16 %21 to i32
  %23 = ptrtoint ptr %retval.0.i.i130 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %retval.0.i.i130, align 2
  %spts = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 1
  %25 = ptrtoint ptr %spts to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %spts, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp13.not = icmp ult i16 %24, %26
  br i1 %cmp13.not, label %lor.lhs.false.land.end_crit_edge, label %land.rhs

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx18 = getelementptr %struct.xt_dccp_info, ptr %2, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp20 = icmp ule i16 %24, %28
  %phi.cast119 = zext i1 %cmp20 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.land.end_crit_edge
  %29 = phi i32 [ 0, %lor.lhs.false.land.end_crit_edge ], [ %phi.cast119, %land.rhs ]
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %22)
  %tobool22.not = icmp eq i32 %29, %22
  br i1 %tobool22.not, label %land.end.cleanup_crit_edge, label %land.end.land.lhs.true_crit_edge

land.end.land.lhs.true_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %land.end.land.lhs.true_crit_edge, %if.end5.land.lhs.true_crit_edge
  %30 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool26.not = icmp eq i16 %30, 0
  br i1 %tobool26.not, label %land.lhs.true.land.lhs.true53_crit_edge, label %lor.lhs.false27

land.lhs.true.land.lhs.true53_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true53

lor.lhs.false27:                                  ; preds = %land.lhs.true
  %invflags28 = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 3
  %31 = ptrtoint ptr %invflags28 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %invflags28, align 2
  %33 = lshr i16 %32, 1
  %.lobit = and i16 %33, 1
  %34 = zext i16 %.lobit to i32
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 1
  %35 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dccph_dport, align 2
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %38)
  %cmp39.not = icmp ult i16 %36, %38
  br i1 %cmp39.not, label %lor.lhs.false27.land.end49_crit_edge, label %land.rhs41

lor.lhs.false27.land.end49_crit_edge:             ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end49

land.rhs41:                                       ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx45 = getelementptr [2 x i16], ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx45, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %40)
  %cmp47 = icmp ule i16 %36, %40
  %phi.cast = zext i1 %cmp47 to i32
  br label %land.end49

land.end49:                                       ; preds = %land.rhs41, %lor.lhs.false27.land.end49_crit_edge
  %41 = phi i32 [ 0, %lor.lhs.false27.land.end49_crit_edge ], [ %phi.cast, %land.rhs41 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %34)
  %tobool52.not = icmp eq i32 %41, %34
  br i1 %tobool52.not, label %land.end49.cleanup_crit_edge, label %land.end49.land.lhs.true53_crit_edge

land.end49.land.lhs.true53_crit_edge:             ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true53

land.end49.cleanup_crit_edge:                     ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true53:                                  ; preds = %land.end49.land.lhs.true53_crit_edge, %land.lhs.true.land.lhs.true53_crit_edge
  %42 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool57.not = icmp eq i16 %42, 0
  br i1 %tobool57.not, label %land.lhs.true53.land.rhs71_crit_edge, label %lor.lhs.false58

land.lhs.true53.land.rhs71_crit_edge:             ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs71

lor.lhs.false58:                                  ; preds = %land.lhs.true53
  %invflags59 = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 3
  %43 = ptrtoint ptr %invflags59 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %invflags59, align 2
  %typemask = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 4
  %45 = ptrtoint ptr %typemask to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %typemask, align 2
  %conv.i = zext i16 %46 to i32
  %dccph_type.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 5
  %47 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %dccph_type.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 1
  %bf.clear.i = and i8 %bf.lshr.i, 15
  %conv1.i = zext i8 %bf.clear.i to i32
  %shl.i = shl nuw nsw i32 1, %conv1.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %48 = and i16 %44, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %49 = icmp eq i16 %48, 0
  %tobool70.not = xor i1 %49, %tobool.i
  br i1 %tobool70.not, label %lor.lhs.false58.cleanup_crit_edge, label %lor.lhs.false58.land.rhs71_crit_edge

lor.lhs.false58.land.rhs71_crit_edge:             ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs71

lor.lhs.false58.cleanup_crit_edge:                ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs71:                                       ; preds = %lor.lhs.false58.land.rhs71_crit_edge, %land.lhs.true53.land.rhs71_crit_edge
  %50 = and i16 %17, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool75.not = icmp eq i16 %50, 0
  br i1 %tobool75.not, label %land.rhs71.cleanup_crit_edge, label %lor.rhs

land.rhs71.cleanup_crit_edge:                     ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs:                                          ; preds = %land.rhs71
  %invflags76 = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 3
  %51 = ptrtoint ptr %invflags76 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %invflags76, align 2
  %option = getelementptr inbounds %struct.xt_dccp_info, ptr %2, i32 0, i32 5
  %53 = ptrtoint ptr %option to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %option, align 2
  %55 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %thoff, align 4
  %hotdrop85 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %dccph_x.i.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 5
  %57 = ptrtoint ptr %dccph_x.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i.i.i = load i8, ptr %dccph_x.i.i.i.i, align 2
  %bf.lshr.i.i.i = lshr i8 %bf.load.i.i.i.i, 1
  %trunc.i.i.i = trunc i8 %bf.lshr.i.i.i to i4
  %58 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i.i.i, label %if.end35.i.i.i.i [
    i4 2, label %__dccp_hdr_len.exit.thread.i.i
    i4 4, label %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge
    i4 3, label %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge135
    i4 -8, label %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge136
    i4 -7, label %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge137
    i4 6, label %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge138
    i4 5, label %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge139
    i4 0, label %__dccp_hdr_len.exit.thread90.i.i
    i4 1, label %__dccp_hdr_len.exit.thread102.i.i
  ]

lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge139:     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge138:     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge137:     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge136:     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge135:     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge:        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

__dccp_hdr_len.exit.thread.i.i:                   ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear.i.i80.i.i = shl i8 %bf.load.i.i.i.i, 2
  %59 = and i8 %bf.clear.i.i80.i.i, 4
  %narrow.i.i81.i.i = add nuw nsw i8 %59, 12
  %add.i.i82.i.i = zext i8 %narrow.i.i81.i.i to i32
  %dccph_doff84.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 2
  %60 = ptrtoint ptr %dccph_doff84.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dccph_doff84.i.i, align 2
  %conv85.i.i = zext i8 %61 to i32
  %mul86.i.i = shl nuw nsw i32 %conv85.i.i, 2
  br label %__dccp_hdr_len.exit63.thread.i.i

__dccp_hdr_len.exit.thread90.i.i:                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear.i.i92.i.i = shl i8 %bf.load.i.i.i.i, 2
  %62 = and i8 %bf.clear.i.i92.i.i, 4
  %narrow.i.i93.i.i = add nuw nsw i8 %62, 12
  %add.i.i94.i.i = zext i8 %narrow.i.i93.i.i to i32
  %add.i95.i.i = add nuw nsw i32 %add.i.i94.i.i, 4
  %dccph_doff96.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 2
  %63 = ptrtoint ptr %dccph_doff96.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dccph_doff96.i.i, align 2
  %conv97.i.i = zext i8 %64 to i32
  %mul98.i.i = shl nuw nsw i32 %conv97.i.i, 2
  br label %__dccp_hdr_len.exit63.thread125.i.i

__dccp_hdr_len.exit.thread102.i.i:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear.i.i104.i.i = shl i8 %bf.load.i.i.i.i, 2
  %65 = and i8 %bf.clear.i.i104.i.i, 4
  %narrow.i.i105.i.i = add nuw nsw i8 %65, 12
  %add.i.i106.i.i = zext i8 %narrow.i.i105.i.i to i32
  %add.i107.i.i = add nuw nsw i32 %add.i.i106.i.i, 12
  %dccph_doff108.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 2
  %66 = ptrtoint ptr %dccph_doff108.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dccph_doff108.i.i, align 2
  %conv109.i.i = zext i8 %67 to i32
  %mul110.i.i = shl nuw nsw i32 %conv109.i.i, 2
  br label %__dccp_hdr_len.exit63.thread137.i.i

if.end35.i.i.i.i:                                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit.i.i

__dccp_hdr_len.exit.i.i:                          ; preds = %if.end35.i.i.i.i, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge135, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge136, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge137, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge138, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge139
  %retval.0.i.i.i.i = phi i32 [ 12, %if.end35.i.i.i.i ], [ 8, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge ], [ 8, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge135 ], [ 8, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge136 ], [ 8, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge137 ], [ 8, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge138 ], [ 8, %lor.rhs.__dccp_hdr_len.exit.i.i_crit_edge139 ]
  %bf.clear.i.i.i.i = shl i8 %bf.load.i.i.i.i, 2
  %68 = and i8 %bf.clear.i.i.i.i, 4
  %narrow.i.i.i.i = add nuw nsw i8 %68, 12
  %add.i.i.i.i = zext i8 %narrow.i.i.i.i to i32
  %add.i.i.i = add nuw nsw i32 %retval.0.i.i.i.i, %add.i.i.i.i
  %dccph_doff.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %retval.0.i.i130, i32 0, i32 2
  %69 = ptrtoint ptr %dccph_doff.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dccph_doff.i.i, align 2
  %conv.i.i = zext i8 %70 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 2
  %71 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.1)
  switch i4 %trunc.i.i.i, label %if.end35.i.i57.i.i [
    i4 2, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.thread.i.i_crit_edge
    i4 4, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge
    i4 3, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge140
    i4 -8, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge141
    i4 -7, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge142
    i4 6, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge143
    i4 5, label %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge144
    i4 0, label %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i
    i4 1, label %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i
  ]

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge144: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge143: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge142: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge141: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge140: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.thread.i.i_crit_edge: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.thread.i.i

__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i.i = add nuw nsw i32 %add.i.i.i.i, 4
  br label %__dccp_hdr_len.exit63.thread125.i.i

__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i: ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre154.i.i = add nuw nsw i32 %add.i.i.i.i, 12
  br label %__dccp_hdr_len.exit63.thread137.i.i

__dccp_hdr_len.exit63.thread125.i.i:              ; preds = %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i, %__dccp_hdr_len.exit.thread90.i.i
  %add.i62130.pre-phi.i.i = phi i32 [ %.pre.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i ], [ %add.i95.i.i, %__dccp_hdr_len.exit.thread90.i.i ]
  %mul101.i.i = phi i32 [ %mul.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i ], [ %mul98.i.i, %__dccp_hdr_len.exit.thread90.i.i ]
  %add.i100.i.i = phi i32 [ %add.i.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i ], [ %add.i95.i.i, %__dccp_hdr_len.exit.thread90.i.i ]
  %add.i.i99.i.i = phi i32 [ %add.i.i.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread125_crit_edge.i.i ], [ %add.i.i94.i.i, %__dccp_hdr_len.exit.thread90.i.i ]
  %sub131.i.i = sub nsw i32 %mul101.i.i, %add.i62130.pre-phi.i.i
  br label %if.then29.i.i69.i.i

__dccp_hdr_len.exit63.thread137.i.i:              ; preds = %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i, %__dccp_hdr_len.exit.thread102.i.i
  %add.i62142.pre-phi.i.i = phi i32 [ %.pre154.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i ], [ %add.i107.i.i, %__dccp_hdr_len.exit.thread102.i.i ]
  %mul113.i.i = phi i32 [ %mul.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i ], [ %mul110.i.i, %__dccp_hdr_len.exit.thread102.i.i ]
  %add.i112.i.i = phi i32 [ %add.i.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i ], [ %add.i107.i.i, %__dccp_hdr_len.exit.thread102.i.i ]
  %add.i.i111.i.i = phi i32 [ %add.i.i.i.i, %__dccp_hdr_len.exit.__dccp_hdr_len.exit63.thread137_crit_edge.i.i ], [ %add.i.i106.i.i, %__dccp_hdr_len.exit.thread102.i.i ]
  %sub143.i.i = sub nsw i32 %mul113.i.i, %add.i62142.pre-phi.i.i
  br label %if.then34.i.i70.i.i

if.end35.i.i57.i.i:                               ; preds = %__dccp_hdr_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit63.i.i

__dccp_hdr_len.exit63.thread.i.i:                 ; preds = %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.thread.i.i_crit_edge, %__dccp_hdr_len.exit.thread.i.i
  %mul89.ph.i.i = phi i32 [ %mul86.i.i, %__dccp_hdr_len.exit.thread.i.i ], [ %mul.i.i, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.thread.i.i_crit_edge ]
  %add.i88.ph.i.i = phi i32 [ %add.i.i82.i.i, %__dccp_hdr_len.exit.thread.i.i ], [ %add.i.i.i, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.thread.i.i_crit_edge ]
  %add.i.i87.ph.i.i = phi i32 [ %add.i.i82.i.i, %__dccp_hdr_len.exit.thread.i.i ], [ %add.i.i.i.i, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.thread.i.i_crit_edge ]
  %sub119.i.i = sub nsw i32 %mul89.ph.i.i, %add.i.i87.ph.i.i
  br label %__dccp_hdr_len.exit77.i.i

__dccp_hdr_len.exit63.i.i:                        ; preds = %if.end35.i.i57.i.i, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge140, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge141, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge142, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge143, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge144
  %retval.0.i.i58.i.i = phi i32 [ 12, %if.end35.i.i57.i.i ], [ 8, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge ], [ 8, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge140 ], [ 8, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge141 ], [ 8, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge142 ], [ 8, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge143 ], [ 8, %__dccp_hdr_len.exit.i.i.__dccp_hdr_len.exit63.i.i_crit_edge144 ]
  %add.i62.i.i = add nuw nsw i32 %retval.0.i.i58.i.i, %add.i.i.i.i
  %sub.i.i = sub nsw i32 %mul.i.i, %add.i62.i.i
  %72 = zext i4 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.2)
  switch i4 %trunc.i.i.i, label %if.end35.i.i71.i.i [
    i4 2, label %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge
    i4 4, label %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge
    i4 3, label %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge145
    i4 -8, label %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge146
    i4 -7, label %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge147
    i4 6, label %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge148
    i4 5, label %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge149
    i4 0, label %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge
    i4 1, label %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge
  ]

__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i.i70.i.i

__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29.i.i69.i.i

__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge149: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i68.i.i

__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge148: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i68.i.i

__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge147: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i68.i.i

__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge146: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i68.i.i

__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge145: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i68.i.i

__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i.i68.i.i

__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge: ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit77.i.i

if.then24.i.i68.i.i:                              ; preds = %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge, %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge145, %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge146, %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge147, %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge148, %__dccp_hdr_len.exit63.i.i.if.then24.i.i68.i.i_crit_edge149
  br label %__dccp_hdr_len.exit77.i.i

if.then29.i.i69.i.i:                              ; preds = %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge, %__dccp_hdr_len.exit63.thread125.i.i
  %sub136.i.i = phi i32 [ %sub131.i.i, %__dccp_hdr_len.exit63.thread125.i.i ], [ %sub.i.i, %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge ]
  %add.i62135.i.i = phi i32 [ %add.i62130.pre-phi.i.i, %__dccp_hdr_len.exit63.thread125.i.i ], [ %add.i62.i.i, %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge ]
  %add.i.i87134.i.i = phi i32 [ %add.i.i99.i.i, %__dccp_hdr_len.exit63.thread125.i.i ], [ %add.i.i.i.i, %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge ]
  %add.i88133.i.i = phi i32 [ %add.i100.i.i, %__dccp_hdr_len.exit63.thread125.i.i ], [ %add.i.i.i, %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge ]
  %mul89132.i.i = phi i32 [ %mul101.i.i, %__dccp_hdr_len.exit63.thread125.i.i ], [ %mul.i.i, %__dccp_hdr_len.exit63.i.i.if.then29.i.i69.i.i_crit_edge ]
  br label %__dccp_hdr_len.exit77.i.i

if.then34.i.i70.i.i:                              ; preds = %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge, %__dccp_hdr_len.exit63.thread137.i.i
  %sub148.i.i = phi i32 [ %sub143.i.i, %__dccp_hdr_len.exit63.thread137.i.i ], [ %sub.i.i, %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge ]
  %add.i62147.i.i = phi i32 [ %add.i62142.pre-phi.i.i, %__dccp_hdr_len.exit63.thread137.i.i ], [ %add.i62.i.i, %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge ]
  %add.i.i87146.i.i = phi i32 [ %add.i.i111.i.i, %__dccp_hdr_len.exit63.thread137.i.i ], [ %add.i.i.i.i, %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge ]
  %add.i88145.i.i = phi i32 [ %add.i112.i.i, %__dccp_hdr_len.exit63.thread137.i.i ], [ %add.i.i.i, %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge ]
  %mul89144.i.i = phi i32 [ %mul113.i.i, %__dccp_hdr_len.exit63.thread137.i.i ], [ %mul.i.i, %__dccp_hdr_len.exit63.i.i.if.then34.i.i70.i.i_crit_edge ]
  br label %__dccp_hdr_len.exit77.i.i

if.end35.i.i71.i.i:                               ; preds = %__dccp_hdr_len.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__dccp_hdr_len.exit77.i.i

__dccp_hdr_len.exit77.i.i:                        ; preds = %if.end35.i.i71.i.i, %if.then34.i.i70.i.i, %if.then29.i.i69.i.i, %if.then24.i.i68.i.i, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge, %__dccp_hdr_len.exit63.thread.i.i
  %sub124.i.i = phi i32 [ %sub.i.i, %if.then24.i.i68.i.i ], [ %sub136.i.i, %if.then29.i.i69.i.i ], [ %sub148.i.i, %if.then34.i.i70.i.i ], [ %sub.i.i, %if.end35.i.i71.i.i ], [ %sub.i.i, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge ], [ %sub119.i.i, %__dccp_hdr_len.exit63.thread.i.i ]
  %add.i62123.i.i = phi i32 [ %add.i62.i.i, %if.then24.i.i68.i.i ], [ %add.i62135.i.i, %if.then29.i.i69.i.i ], [ %add.i62147.i.i, %if.then34.i.i70.i.i ], [ %add.i62.i.i, %if.end35.i.i71.i.i ], [ %add.i62.i.i, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge ], [ %add.i.i87.ph.i.i, %__dccp_hdr_len.exit63.thread.i.i ]
  %add.i.i87122.i.i = phi i32 [ %add.i.i.i.i, %if.then24.i.i68.i.i ], [ %add.i.i87134.i.i, %if.then29.i.i69.i.i ], [ %add.i.i87146.i.i, %if.then34.i.i70.i.i ], [ %add.i.i.i.i, %if.end35.i.i71.i.i ], [ %add.i.i.i.i, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge ], [ %add.i.i87.ph.i.i, %__dccp_hdr_len.exit63.thread.i.i ]
  %add.i88121.i.i = phi i32 [ %add.i.i.i, %if.then24.i.i68.i.i ], [ %add.i88133.i.i, %if.then29.i.i69.i.i ], [ %add.i88145.i.i, %if.then34.i.i70.i.i ], [ %add.i.i.i, %if.end35.i.i71.i.i ], [ %add.i.i.i, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge ], [ %add.i88.ph.i.i, %__dccp_hdr_len.exit63.thread.i.i ]
  %mul89120.i.i = phi i32 [ %mul.i.i, %if.then24.i.i68.i.i ], [ %mul89132.i.i, %if.then29.i.i69.i.i ], [ %mul89144.i.i, %if.then34.i.i70.i.i ], [ %mul.i.i, %if.end35.i.i71.i.i ], [ %mul.i.i, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge ], [ %mul89.ph.i.i, %__dccp_hdr_len.exit63.thread.i.i ]
  %retval.0.i.i72.i.i = phi i32 [ 8, %if.then24.i.i68.i.i ], [ 4, %if.then29.i.i69.i.i ], [ 12, %if.then34.i.i70.i.i ], [ 12, %if.end35.i.i71.i.i ], [ 0, %__dccp_hdr_len.exit63.i.i.__dccp_hdr_len.exit77.i.i_crit_edge ], [ 0, %__dccp_hdr_len.exit63.thread.i.i ]
  %add.i76.i.i = add nuw nsw i32 %retval.0.i.i72.i.i, %add.i.i87122.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89120.i.i, i32 %add.i76.i.i)
  %cmp.i.i = icmp ult i32 %mul89120.i.i, %add.i76.i.i
  br i1 %cmp.i.i, label %__dccp_hdr_len.exit77.i.i.invalid.i.i_crit_edge, label %if.end.i.i120

__dccp_hdr_len.exit77.i.i.invalid.i.i_crit_edge:  ; preds = %__dccp_hdr_len.exit77.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %invalid.i.i

if.end.i.i120:                                    ; preds = %__dccp_hdr_len.exit77.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul89120.i.i, i32 %add.i62123.i.i)
  %tobool.not.i.i = icmp eq i32 %mul89120.i.i, %add.i62123.i.i
  br i1 %tobool.not.i.i, label %if.end.i.i120.match_option.exit_crit_edge, label %if.end8.i.i

if.end.i.i120.match_option.exit_crit_edge:        ; preds = %if.end.i.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %match_option.exit

if.end8.i.i:                                      ; preds = %if.end.i.i120
  call void @_raw_spin_lock_bh(ptr noundef nonnull @dccp_buflock) #6
  %add.i.i = add i32 %add.i88121.i.i, %56
  %73 = load ptr, ptr @dccp_optbuf, align 4
  %74 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i, align 4
  %76 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i, align 8
  %78 = add i32 %add.i.i, %77
  %sub.i4.i.i.i = sub i32 %75, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i.i.i, i32 %sub124.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, %sub124.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !31

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %80, i32 %add.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end8.i.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.partial.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.partial.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %partial.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i.i, ptr noundef %73, i32 noundef %sub124.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.partial.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.skb_header_pointer.exit.i.i_crit_edge

lor.lhs.false.i.i.i.i.skb_header_pointer.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_header_pointer.exit.i.i

lor.lhs.false.i.i.i.i.partial.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %partial.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i.skb_header_pointer.exit.i.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i78.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %73, %lor.lhs.false.i.i.i.i.skb_header_pointer.exit.i.i_crit_edge ]
  %cmp10.i.i = icmp eq ptr %retval.0.i.i78.i.i, null
  br i1 %cmp10.i.i, label %skb_header_pointer.exit.i.i.partial.i.i_crit_edge, label %for.cond.preheader.i.i

skb_header_pointer.exit.i.i.partial.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %partial.i.i

for.cond.preheader.i.i:                           ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub124.i.i)
  %cmp14152.not.i.i = icmp eq i32 %sub124.i.i, 0
  br i1 %cmp14152.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end32.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0153.i.i = phi i32 [ %i.1.i.i, %if.end32.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %retval.0.i.i78.i.i, i32 %i.0153.i.i
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %54)
  %cmp18.i.i = icmp eq i8 %82, %54
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end21.i.i

if.then20.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @dccp_buflock) #6
  br label %match_option.exit

if.end21.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp24.i.i = icmp ult i8 %82, 2
  %inc.i.i = add nuw i32 %i.0153.i.i, 1
  br i1 %cmp24.i.i, label %if.end21.i.i.if.end32.i.i_crit_edge, label %if.else.i.i

if.end21.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx28.i.i = getelementptr i8, ptr %retval.0.i.i78.i.i, i32 %inc.i.i
  %83 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx28.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool30.not.i.i = icmp eq i8 %84, 0
  %narrow.i.i = select i1 %tobool30.not.i.i, i8 1, i8 %84
  %conv29..i.i = zext i8 %narrow.i.i to i32
  %add31.i.i = add i32 %i.0153.i.i, %conv29..i.i
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else.i.i, %if.end21.i.i.if.end32.i.i_crit_edge
  %i.1.i.i = phi i32 [ %add31.i.i, %if.else.i.i ], [ %inc.i.i, %if.end21.i.i.if.end32.i.i_crit_edge ]
  %cmp14.i.i = icmp ult i32 %i.1.i.i, %sub124.i.i
  br i1 %cmp14.i.i, label %if.end32.i.i.for.body.i.i_crit_edge, label %if.end32.i.i.for.end.i.i_crit_edge

if.end32.i.i.for.end.i.i_crit_edge:               ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

if.end32.i.i.for.body.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end32.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @dccp_buflock) #6
  br label %match_option.exit

partial.i.i:                                      ; preds = %skb_header_pointer.exit.i.i.partial.i.i_crit_edge, %lor.lhs.false.i.i.i.i.partial.i.i_crit_edge, %if.end.i.i.i.i.partial.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @dccp_buflock) #6
  br label %invalid.i.i

invalid.i.i:                                      ; preds = %partial.i.i, %__dccp_hdr_len.exit77.i.i.invalid.i.i_crit_edge
  %85 = ptrtoint ptr %hotdrop85 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %hotdrop85, align 1
  br label %match_option.exit

match_option.exit:                                ; preds = %invalid.i.i, %for.end.i.i, %if.then20.i.i, %if.end.i.i120.match_option.exit_crit_edge
  %retval.0.i.i121 = phi i1 [ false, %invalid.i.i ], [ true, %if.then20.i.i ], [ false, %for.end.i.i ], [ false, %if.end.i.i120.match_option.exit_crit_edge ]
  %86 = and i16 %52, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %87 = icmp ne i16 %86, 0
  %tobool89 = xor i1 %87, %retval.0.i.i121
  br label %cleanup

cleanup:                                          ; preds = %match_option.exit, %land.rhs71.cleanup_crit_edge, %lor.lhs.false58.cleanup_crit_edge, %land.end49.cleanup_crit_edge, %land.end.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then4 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false58.cleanup_crit_edge ], [ false, %land.end49.cleanup_crit_edge ], [ false, %land.end.cleanup_crit_edge ], [ true, %land.rhs71.cleanup_crit_edge ], [ %tobool89, %match_option.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_dh) #6
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dccp_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %flags = getelementptr inbounds %struct.xt_dccp_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %invflags = getelementptr inbounds %struct.xt_dccp_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %invflags, align 2
  %conv1 = zext i16 %5 to i32
  %and2 = and i32 %conv1, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %conv, -1
  %and10 = and i32 %conv1, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_dccp.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_dccp.c", i32 22, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_dccp.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_dccp.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_dccp.c", i32 25, i32 1}
!11 = !{ptr @__initcall__kmod_xt_dccp__624_184_dccp_mt_init6, !12, !"__initcall__kmod_xt_dccp__624_184_dccp_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_dccp.c", i32 184, i32 1}
!13 = !{ptr @__exitcall_dccp_mt_exit, !14, !"__exitcall_dccp_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_dccp.c", i32 185, i32 1}
!15 = !{ptr @dccp_optbuf, !16, !"dccp_optbuf", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_dccp.c", i32 30, i32 23}
!17 = !{ptr @dccp_mt_reg, !18, !"dccp_mt_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_dccp.c", i32 137, i32 24}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_dccp.c", i32 31, i32 8}
!21 = !{ptr @dccp_buflock, !20, !"dccp_buflock", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
