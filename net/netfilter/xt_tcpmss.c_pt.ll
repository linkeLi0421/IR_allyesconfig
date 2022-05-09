; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_tcpmss.c_pt.bc'
source_filename = "../net/netfilter/xt_tcpmss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
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
%struct.xt_tcpmss_match_info = type { i16, i16, i8 }

@__UNIQUE_ID_file618 = internal constant [39 x i8] c"xt_tcpmss.file=net/netfilter/xt_tcpmss\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [22 x i8] c"xt_tcpmss.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [45 x i8] c"xt_tcpmss.author=Marc Boucher <marc@mbsi.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [45 x i8] c"xt_tcpmss.description=Xtables: TCP MSS match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [27 x i8] c"xt_tcpmss.alias=ipt_tcpmss\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [28 x i8] c"xt_tcpmss.alias=ip6t_tcpmss\00", section ".modinfo", align 1
@tcpmss_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"tcpmss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcpmss_mt, ptr null, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 6, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"tcpmss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcpmss_mt, ptr null, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 6, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_tcpmss__624_106_tcpmss_mt_init6 = internal global ptr @tcpmss_mt_init, section ".initcall6.init", align 4
@__exitcall_tcpmss_mt_exit = internal global ptr @tcpmss_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_tcpmss_mt_exit, ptr @__initcall__kmod_xt_tcpmss__624_106_tcpmss_mt_init6, ptr @tcpmss_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcpmss_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_matches(ptr noundef nonnull @tcpmss_mt_reg, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpmss_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @tcpmss_mt_reg, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tcpmss_mt(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %_opt = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #4
  %3 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_opt) #4
  %4 = call ptr @memset(ptr %_opt, i32 255, i32 40)
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %5 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %6, %10
  %sub.i4.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !26

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.dropit_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.dropit_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %6, ptr noundef nonnull %_tcph, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.dropit_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i.i.dropit_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %6
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.dropit_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_header_pointer.exit.dropit_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i118 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i118, i32 0, i32 4
  %14 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %doff, align 4
  %15 = lshr i16 %bf.load, 10
  %16 = and i16 %15, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp1 = icmp ult i16 %16, 20
  br i1 %cmp1, label %if.end.dropit_crit_edge, label %if.end4

if.end.dropit_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

if.end4:                                          ; preds = %if.end
  %mul = zext i16 %16 to i32
  %sub = add nsw i32 %mul, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end4.out_crit_edge, label %if.end11

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end11:                                         ; preds = %if.end4
  %17 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %thoff, align 4
  %add = add i32 %18, 20
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %23 = add i32 %20, -20
  %24 = add i32 %18, %22
  %sub.i4.i100 = sub i32 %23, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i100, i32 %sub)
  %cmp.not.i.i101 = icmp slt i32 %sub.i4.i100, %sub
  br i1 %cmp.not.i.i101, label %if.end.i.i106, label %skb_header_pointer.exit112, !prof !26

if.end.i.i106:                                    ; preds = %if.end11
  %tobool2.not.i.i105 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i105, label %if.end.i.i106.dropit_crit_edge, label %lor.lhs.false.i.i110

if.end.i.i106.dropit_crit_edge:                   ; preds = %if.end.i.i106
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

lor.lhs.false.i.i110:                             ; preds = %if.end.i.i106
  %call.i.i107 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_opt, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp3.i.i108 = icmp slt i32 %call.i.i107, 0
  br i1 %cmp3.i.i108, label %lor.lhs.false.i.i110.dropit_crit_edge, label %lor.lhs.false.i.i110.for.body.preheader_crit_edge

lor.lhs.false.i.i110.for.body.preheader_crit_edge: ; preds = %lor.lhs.false.i.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

lor.lhs.false.i.i110.dropit_crit_edge:            ; preds = %lor.lhs.false.i.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

skb_header_pointer.exit112:                       ; preds = %if.end11
  %data.i102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i102 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i102, align 4
  %add.ptr.i.i103 = getelementptr i8, ptr %26, i32 %add
  %cmp14 = icmp eq ptr %add.ptr.i.i103, null
  br i1 %cmp14, label %skb_header_pointer.exit112.dropit_crit_edge, label %skb_header_pointer.exit112.for.body.preheader_crit_edge

skb_header_pointer.exit112.for.body.preheader_crit_edge: ; preds = %skb_header_pointer.exit112
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

skb_header_pointer.exit112.dropit_crit_edge:      ; preds = %skb_header_pointer.exit112
  call void @__sanitizer_cov_trace_pc() #6
  br label %dropit

for.body.preheader:                               ; preds = %skb_header_pointer.exit112.for.body.preheader_crit_edge, %lor.lhs.false.i.i110.for.body.preheader_crit_edge
  %retval.0.i.i111134 = phi ptr [ %add.ptr.i.i103, %skb_header_pointer.exit112.for.body.preheader_crit_edge ], [ %_opt, %lor.lhs.false.i.i110.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %for.body.preheader
  %i.0129 = phi i32 [ %i.1, %if.end61.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %retval.0.i.i111134, i32 %i.0129
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp21 = icmp eq i8 %28, 2
  %sub23 = sub i32 %sub, %i.0129
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub23)
  %cmp24 = icmp ugt i32 %sub23, 3
  %or.cond = select i1 %cmp21, i1 %cmp24, i1 false
  br i1 %or.cond, label %land.lhs.true26, label %if.end50

land.lhs.true26:                                  ; preds = %for.body
  %add27 = add nuw i32 %i.0129, 1
  %arrayidx28 = getelementptr i8, ptr %retval.0.i.i111134, i32 %add27
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp30 = icmp eq i8 %30, 4
  br i1 %cmp30, label %if.then32, label %land.lhs.true26.if.else_crit_edge

land.lhs.true26.if.else_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true26
  %add33 = add i32 %i.0129, 2
  %arrayidx34 = getelementptr i8, ptr %retval.0.i.i111134, i32 %add33
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %conv35, 8
  %add36 = add i32 %i.0129, 3
  %arrayidx37 = getelementptr i8, ptr %retval.0.i.i111134, i32 %add36
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %34 to i32
  %or = or i32 %shl, %conv38
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %2, align 2
  %conv41 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv41)
  %cmp42.not = icmp ult i32 %or, %conv41
  br i1 %cmp42.not, label %if.then32.land.end_crit_edge, label %land.rhs

if.then32.land.end_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  %mss_max = getelementptr inbounds %struct.xt_tcpmss_match_info, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %mss_max to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mss_max, align 2
  %conv45 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv45)
  %cmp46 = icmp ule i32 %or, %conv45
  %phi.cast = zext i1 %cmp46 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then32.land.end_crit_edge
  %39 = phi i32 [ 0, %if.then32.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %invert = getelementptr inbounds %struct.xt_tcpmss_match_info, ptr %2, i32 0, i32 2
  %40 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %invert, align 2
  %conv48 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv48)
  %tobool49 = icmp ne i32 %39, %conv48
  br label %cleanup

if.end50:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp53 = icmp ult i8 %28, 2
  %inc = add nuw i32 %i.0129, 1
  br i1 %cmp53, label %if.end50.if.end61_crit_edge, label %if.end50.if.else_crit_edge

if.end50.if.else_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.else:                                          ; preds = %if.end50.if.else_crit_edge, %land.lhs.true26.if.else_crit_edge
  %add56.pre-phi = phi i32 [ %add27, %land.lhs.true26.if.else_crit_edge ], [ %inc, %if.end50.if.else_crit_edge ]
  %arrayidx57 = getelementptr i8, ptr %retval.0.i.i111134, i32 %add56.pre-phi
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool59.not = icmp eq i8 %43, 0
  %narrow = select i1 %tobool59.not, i8 1, i8 %43
  %conv58. = zext i8 %narrow to i32
  %add60 = add i32 %i.0129, %conv58.
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.end50.if.end61_crit_edge
  %i.1 = phi i32 [ %add60, %if.else ], [ %inc, %if.end50.if.end61_crit_edge ]
  %cmp18 = icmp ugt i32 %sub, %i.1
  br i1 %cmp18, label %if.end61.for.body_crit_edge, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

out:                                              ; preds = %if.end61.out_crit_edge, %if.end4.out_crit_edge
  %invert62 = getelementptr inbounds %struct.xt_tcpmss_match_info, ptr %2, i32 0, i32 2
  %44 = ptrtoint ptr %invert62 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %invert62, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool63 = icmp ne i8 %45, 0
  br label %cleanup

dropit:                                           ; preds = %skb_header_pointer.exit112.dropit_crit_edge, %lor.lhs.false.i.i110.dropit_crit_edge, %if.end.i.i106.dropit_crit_edge, %if.end.dropit_crit_edge, %skb_header_pointer.exit.dropit_crit_edge, %lor.lhs.false.i.i.dropit_crit_edge, %if.end.i.i.dropit_crit_edge
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %46 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

cleanup:                                          ; preds = %dropit, %out, %land.end
  %retval.0 = phi i1 [ false, %dropit ], [ %tobool49, %land.end ], [ %tobool63, %out ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_opt) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #4
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_tcpmss.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_tcpmss.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_tcpmss.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_tcpmss.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_tcpmss.c", i32 22, i32 1}
!11 = !{ptr @__initcall__kmod_xt_tcpmss__624_106_tcpmss_mt_init6, !12, !"__initcall__kmod_xt_tcpmss__624_106_tcpmss_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_tcpmss.c", i32 106, i32 1}
!13 = !{ptr @__exitcall_tcpmss_mt_exit, !14, !"__exitcall_tcpmss_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_tcpmss.c", i32 107, i32 1}
!15 = !{ptr @tcpmss_mt_reg, !16, !"tcpmss_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_tcpmss.c", i32 77, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
