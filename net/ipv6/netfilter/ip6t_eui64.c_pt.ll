; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_eui64.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_eui64.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
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
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@__UNIQUE_ID_description618 = internal constant [57 x i8] c"ip6t_eui64.description=Xtables: IPv6 EUI64 address match\00", section ".modinfo", align 1
@__UNIQUE_ID_file619 = internal constant [46 x i8] c"ip6t_eui64.file=net/ipv6/netfilter/ip6t_eui64\00", section ".modinfo", align 1
@__UNIQUE_ID_license620 = internal constant [23 x i8] c"ip6t_eui64.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [54 x i8] c"ip6t_eui64.author=Andras Kis-Szabo <kisza@sch.bme.hu>\00", section ".modinfo", align 1
@eui64_mt6_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"eui64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @eui64_mt6, ptr null, ptr null, ptr null, ptr null, i32 4, i32 0, i32 7, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_eui64__622_70_eui64_mt6_init6 = internal global ptr @eui64_mt6_init, section ".initcall6.init", align 4
@__exitcall_eui64_mt6_exit = internal global ptr @eui64_mt6_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description618, ptr @__UNIQUE_ID_file619, ptr @__UNIQUE_ID_license620, ptr @__exitcall_eui64_mt6_exit, ptr @__initcall__kmod_ip6t_eui64__622_70_eui64_mt6_init6, ptr @eui64_mt6_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eui64_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @eui64_mt6_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eui64_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @eui64_mt6_reg) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @eui64_mt6(ptr nocapture noundef readonly %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %eui64 = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eui64) #5
  %0 = getelementptr inbounds [8 x i8], ptr %eui64, i32 0, i32 5
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %3 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %2, i32 %conv.i
  %cmp.not = icmp ult ptr %add.ptr.i, %2
  br i1 %cmp.not, label %entry.land.lhs.true3_crit_edge, label %land.lhs.true

entry.land.lhs.true3_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %cmp2.not = icmp ugt ptr %add.ptr, %6
  br i1 %cmp2.not, label %land.lhs.true.land.lhs.true3_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.land.lhs.true3_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true.land.lhs.true3_crit_edge, %entry.land.lhs.true3_crit_edge
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %7 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp4.not = icmp eq i16 %8, 0
  br i1 %cmp4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %9 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %10 = ptrtoint ptr %eui64 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1099478073344, ptr %eui64, align 8
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %12)
  %cmp8 = icmp eq i16 %12, -31011
  br i1 %cmp8, label %if.then10, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then10:                                        ; preds = %if.end
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i52 = zext i16 %14 to i32
  %add.ptr.i.i53 = getelementptr i8, ptr %2, i32 %conv.i.i52
  %15 = ptrtoint ptr %add.ptr.i.i53 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %add.ptr.i.i53, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask)
  %cmp13 = icmp eq i8 %bf.lshr.mask, 96
  br i1 %cmp13, label %if.then15, label %if.then10.if.end37_crit_edge

if.then10.if.end37_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then15:                                        ; preds = %if.then10
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1
  %16 = call ptr @memcpy(ptr %eui64, ptr %h_source, i32 3)
  %add.ptr24 = getelementptr %struct.ethhdr, ptr %add.ptr.i, i32 0, i32 1, i32 3
  %17 = call ptr @memcpy(ptr %0, ptr %add.ptr24, i32 3)
  %18 = ptrtoint ptr %eui64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %eui64, align 8
  %20 = xor i8 %19, 2
  store i8 %20, ptr %eui64, align 8
  %add.ptr31 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i53, i32 0, i32 5, i32 0, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr31, ptr noundef nonnull dereferenceable(8) %eui64, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then15.cleanup_crit_edge, label %if.then15.if.end37_crit_edge

if.then15.if.end37_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.then15.if.end37_crit_edge, %if.then10.if.end37_crit_edge, %if.end.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then15.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.end37 ], [ false, %if.then ], [ true, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eui64) #5
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__UNIQUE_ID_description618, !1, !"__UNIQUE_ID_description618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_eui64.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_file619, !3, !"__UNIQUE_ID_file619", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/ip6t_eui64.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_license620, !3, !"__UNIQUE_ID_license620", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author621, !6, !"__UNIQUE_ID_author621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_eui64.c", i32 17, i32 1}
!7 = !{ptr @__initcall__kmod_ip6t_eui64__622_70_eui64_mt6_init6, !8, !"__initcall__kmod_ip6t_eui64__622_70_eui64_mt6_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_eui64.c", i32 70, i32 1}
!9 = !{ptr @__exitcall_eui64_mt6_exit, !10, !"__exitcall_eui64_mt6_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_eui64.c", i32 71, i32 1}
!11 = !{ptr @eui64_mt6_reg, !12, !"eui64_mt6_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_eui64.c", i32 50, i32 24}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
