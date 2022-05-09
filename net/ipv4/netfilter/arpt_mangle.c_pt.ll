; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/arpt_mangle.c_pt.bc'
source_filename = "../net/ipv4/netfilter/arpt_mangle.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
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
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.arpt_mangle = type { [16 x i8], [16 x i8], %union.anon.147, %union.anon.148, i8, i32 }
%union.anon.147 = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%union.anon.148 = type { %struct.in_addr }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file474 = internal constant [48 x i8] c"arpt_mangle.file=net/ipv4/netfilter/arpt_mangle\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [24 x i8] c"arpt_mangle.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author476 = internal constant [58 x i8] c"arpt_mangle.author=Bart De Schuymer <bdschuym@pandora.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [60 x i8] c"arpt_mangle.description=arptables arp payload mangle target\00", section ".modinfo", align 1
@arpt_mangle_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"mangle\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @target, ptr @checkentry, ptr null, ptr null, ptr null, i32 48, i32 0, i32 0, i16 0, i16 3 }, section ".data..read_mostly", align 4
@__initcall__kmod_arpt_mangle__478_91_arpt_mangle_init6 = internal global ptr @arpt_mangle_init, section ".initcall6.init", align 4
@__exitcall_arpt_mangle_fini = internal global ptr @arpt_mangle_fini, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__exitcall_arpt_mangle_fini, ptr @__initcall__kmod_arpt_mangle__478_91_arpt_mangle_init6, ptr @arpt_mangle_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arpt_mangle_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_target(ptr noundef nonnull @arpt_mangle_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arpt_mangle_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @arpt_mangle_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @target(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ar_pln, align 1
  %conv = zext i8 %10 to i32
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ar_hln, align 2
  %conv3 = zext i8 %12 to i32
  %flags = getelementptr inbounds %struct.arpt_mangle, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp = icmp ugt i8 %12, 16
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %lor.lhs.false

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then6
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %conv3
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i, align 8
  %cmp10 = icmp ugt ptr %add.ptr8, %17
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %2, i32 %conv3)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end.if.end14_crit_edge
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %conv3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 4
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %if.end14.if.end30_crit_edge, label %if.then20

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp21 = icmp ugt i8 %10, 4
  br i1 %cmp21, label %if.then20.cleanup_crit_edge, label %lor.lhs.false23

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false23:                                  ; preds = %if.then20
  %add.ptr24 = getelementptr i8, ptr %add.ptr15, i32 %conv
  %tail.i107 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i107 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i107, align 8
  %cmp26 = icmp ugt ptr %add.ptr24, %23
  br i1 %cmp26, label %lor.lhs.false23.cleanup_crit_edge, label %if.end29

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #6
  %u_s = getelementptr inbounds %struct.arpt_mangle, ptr %2, i32 0, i32 2
  %24 = call ptr @memcpy(ptr %add.ptr15, ptr %u_s, i32 %conv)
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end14.if.end30_crit_edge
  %add.ptr31 = getelementptr i8, ptr %add.ptr15, i32 %conv
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags, align 4
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not = icmp eq i8 %27, 0
  br i1 %tobool35.not, label %if.end30.if.end47_crit_edge, label %if.then36

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %12)
  %cmp37 = icmp ugt i8 %12, 16
  br i1 %cmp37, label %if.then36.cleanup_crit_edge, label %lor.lhs.false39

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false39:                                  ; preds = %if.then36
  %add.ptr40 = getelementptr i8, ptr %add.ptr31, i32 %conv3
  %tail.i108 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i108, align 8
  %cmp42 = icmp ugt ptr %add.ptr40, %29
  br i1 %cmp42, label %lor.lhs.false39.cleanup_crit_edge, label %if.end45

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #6
  %tgt_devaddr = getelementptr inbounds %struct.arpt_mangle, ptr %2, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %add.ptr31, ptr %tgt_devaddr, i32 %conv3)
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end30.if.end47_crit_edge
  %add.ptr48 = getelementptr i8, ptr %add.ptr31, i32 %conv3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 4
  %33 = and i8 %32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool52.not = icmp eq i8 %33, 0
  br i1 %tobool52.not, label %if.end47.if.end63_crit_edge, label %if.then53

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp54 = icmp ugt i8 %10, 4
  br i1 %cmp54, label %if.then53.cleanup_crit_edge, label %lor.lhs.false56

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false56:                                  ; preds = %if.then53
  %add.ptr57 = getelementptr i8, ptr %add.ptr48, i32 %conv
  %tail.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i109 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i109, align 8
  %cmp59 = icmp ugt ptr %add.ptr57, %35
  br i1 %cmp59, label %lor.lhs.false56.cleanup_crit_edge, label %if.end62

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #6
  %u_t = getelementptr inbounds %struct.arpt_mangle, ptr %2, i32 0, i32 3
  %36 = call ptr @memcpy(ptr %add.ptr48, ptr %u_t, i32 %conv)
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end47.if.end63_crit_edge
  %target = getelementptr inbounds %struct.arpt_mangle, ptr %2, i32 0, i32 5
  %37 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %lor.lhs.false56.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %if.end63 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %lor.lhs.false23.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ 0, %lor.lhs.false39.cleanup_crit_edge ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %lor.lhs.false56.cleanup_crit_edge ], [ 0, %if.then53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @checkentry(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %flags = getelementptr inbounds %struct.arpt_mangle, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %target = getelementptr inbounds %struct.arpt_mangle, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %switch.tableidx = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  %spec.select = select i1 %6, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__UNIQUE_ID_file474, !1, !"__UNIQUE_ID_file474", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/arpt_mangle.c", i32 8, i32 1}
!2 = !{ptr @__UNIQUE_ID_license475, !1, !"__UNIQUE_ID_license475", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author476, !4, !"__UNIQUE_ID_author476", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/arpt_mangle.c", i32 9, i32 1}
!5 = !{ptr @__UNIQUE_ID_description477, !6, !"__UNIQUE_ID_description477", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/arpt_mangle.c", i32 10, i32 1}
!7 = !{ptr @__initcall__kmod_arpt_mangle__478_91_arpt_mangle_init6, !8, !"__initcall__kmod_arpt_mangle__478_91_arpt_mangle_init6", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/arpt_mangle.c", i32 91, i32 1}
!9 = !{ptr @__exitcall_arpt_mangle_fini, !10, !"__exitcall_arpt_mangle_fini", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/arpt_mangle.c", i32 92, i32 1}
!11 = !{ptr @arpt_mangle_reg, !12, !"arpt_mangle_reg", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/arpt_mangle.c", i32 72, i32 25}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
