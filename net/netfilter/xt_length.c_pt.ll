; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_length.c_pt.bc'
source_filename = "../net/netfilter/xt_length.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.142, %union.anon.143, ptr, i32, i16, i8 }
%union.anon.142 = type { ptr }
%union.anon.143 = type { ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_length_info = type { i16, i16, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }

@__UNIQUE_ID_author509 = internal constant [57 x i8] c"xt_length.author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description510 = internal constant [64 x i8] c"xt_length.description=Xtables: Packet length (Layer3,4,5) match\00", section ".modinfo", align 1
@__UNIQUE_ID_file511 = internal constant [39 x i8] c"xt_length.file=net/netfilter/xt_length\00", section ".modinfo", align 1
@__UNIQUE_ID_license512 = internal constant [22 x i8] c"xt_length.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias513 = internal constant [27 x i8] c"xt_length.alias=ipt_length\00", section ".modinfo", align 1
@__UNIQUE_ID_alias514 = internal constant [28 x i8] c"xt_length.alias=ip6t_length\00", section ".modinfo", align 1
@length_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"length\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @length_mt, ptr null, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"length\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @length_mt6, ptr null, ptr null, ptr null, ptr null, i32 6, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_length__515_66_length_mt_init6 = internal global ptr @length_mt_init, section ".initcall6.init", align 4
@__exitcall_length_mt_exit = internal global ptr @length_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias513, ptr @__UNIQUE_ID_alias514, ptr @__UNIQUE_ID_author509, ptr @__UNIQUE_ID_description510, ptr @__UNIQUE_ID_file511, ptr @__UNIQUE_ID_license512, ptr @__exitcall_length_mt_exit, ptr @__initcall__kmod_xt_length__515_66_length_mt_init6, ptr @length_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @length_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_matches(ptr noundef nonnull @length_mt_reg, i32 noundef 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @length_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @length_mt_reg, i32 noundef 2) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @length_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tot_len, align 2
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.not = icmp ult i16 %8, %10
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %max = getelementptr inbounds %struct.xt_length_info, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %12)
  %cmp5 = icmp ule i16 %8, %12
  %phi.cast = zext i1 %cmp5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %13 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %invert = getelementptr inbounds %struct.xt_length_info, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %invert, align 2
  %conv7 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv7)
  %tobool = icmp ne i32 %13, %conv7
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @length_mt6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %payload_len, align 4
  %add = add i16 %8, 40
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %10)
  %cmp.not = icmp ult i16 %add, %10
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %max = getelementptr inbounds %struct.xt_length_info, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %12)
  %cmp7 = icmp ule i16 %add, %12
  %phi.cast = zext i1 %cmp7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %13 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %invert = getelementptr inbounds %struct.xt_length_info, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %invert, align 2
  %conv9 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv9)
  %tobool = icmp ne i32 %13, %conv9
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author509, !1, !"__UNIQUE_ID_author509", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_length.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description510, !3, !"__UNIQUE_ID_description510", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_length.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file511, !5, !"__UNIQUE_ID_file511", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_length.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license512, !5, !"__UNIQUE_ID_license512", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias513, !8, !"__UNIQUE_ID_alias513", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_length.c", i32 17, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias514, !10, !"__UNIQUE_ID_alias514", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_length.c", i32 18, i32 1}
!11 = !{ptr @__initcall__kmod_xt_length__515_66_length_mt_init6, !12, !"__initcall__kmod_xt_length__515_66_length_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_length.c", i32 66, i32 1}
!13 = !{ptr @__exitcall_length_mt_exit, !14, !"__exitcall_length_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_length.c", i32 67, i32 1}
!15 = !{ptr @length_mt_reg, !16, !"length_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_length.c", i32 39, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
