; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_pkttype.c_pt.bc'
source_filename = "../net/netfilter/xt_pkttype.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
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
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_pkttype_info = type { i32, i32 }

@__UNIQUE_ID_file489 = internal constant [41 x i8] c"xt_pkttype.file=net/netfilter/xt_pkttype\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [23 x i8] c"xt_pkttype.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author491 = internal constant [50 x i8] c"xt_pkttype.author=Michal Ludvig <michal@logix.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description492 = internal constant [61 x i8] c"xt_pkttype.description=Xtables: link layer packet type match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [29 x i8] c"xt_pkttype.alias=ipt_pkttype\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [30 x i8] c"xt_pkttype.alias=ip6t_pkttype\00", section ".modinfo", align 1
@pkttype_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"pkttype\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @pkttype_mt, ptr null, ptr null, ptr null, ptr null, i32 8, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_pkttype__495_60_pkttype_mt_init6 = internal global ptr @pkttype_mt_init, section ".initcall6.init", align 4
@__exitcall_pkttype_mt_exit = internal global ptr @pkttype_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_author491, ptr @__UNIQUE_ID_description492, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_license490, ptr @__exitcall_pkttype_mt_exit, ptr @__initcall__kmod_xt_pkttype__495_60_pkttype_mt_init6, ptr @pkttype_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pkttype_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_match(ptr noundef nonnull @pkttype_mt_reg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pkttype_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @pkttype_mt_reg) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pkttype_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %3 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = lshr i16 %bf.load, 13
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %bf.lshr)
  %cmp.not = icmp eq i16 %bf.lshr, 5
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bf.cast = zext i16 %bf.lshr to i32
  br label %if.end21

if.else:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp7 = icmp eq i8 %7, 2
  br i1 %cmp7, label %land.lhs.true, label %if.else.if.else13_crit_edge

if.else.if.else13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else13

land.lhs.true:                                    ; preds = %if.else
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %daddr, align 4
  %and.i = and i32 %13, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  br i1 %cmp.i, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.if.else13_crit_edge

land.lhs.true.if.else13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else13

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.else13:                                        ; preds = %land.lhs.true.if.else13_crit_edge, %if.else.if.else13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp16 = icmp eq i8 %7, 10
  %. = select i1 %cmp16, i32 2, i32 1
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %land.lhs.true.if.end21_crit_edge, %if.then
  %type.0 = phi i32 [ %bf.cast, %if.then ], [ 2, %land.lhs.true.if.end21_crit_edge ], [ %., %if.else13 ]
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %type.0, i32 %15)
  %cmp23 = icmp eq i32 %type.0, %15
  %conv24 = zext i1 %cmp23 to i32
  %invert = getelementptr inbounds %struct.xt_pkttype_info, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %invert to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %invert, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv24)
  %tobool = icmp ne i32 %17, %conv24
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_file489, !1, !"__UNIQUE_ID_file489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_pkttype.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_license490, !1, !"__UNIQUE_ID_license490", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author491, !4, !"__UNIQUE_ID_author491", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_pkttype.c", i32 17, i32 1}
!5 = !{ptr @__UNIQUE_ID_description492, !6, !"__UNIQUE_ID_description492", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_pkttype.c", i32 18, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_pkttype.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias494, !10, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_pkttype.c", i32 20, i32 1}
!11 = !{ptr @__initcall__kmod_xt_pkttype__495_60_pkttype_mt_init6, !12, !"__initcall__kmod_xt_pkttype__495_60_pkttype_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_pkttype.c", i32 60, i32 1}
!13 = !{ptr @__exitcall_pkttype_mt_exit, !14, !"__exitcall_pkttype_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_pkttype.c", i32 61, i32 1}
!15 = !{ptr @pkttype_mt_reg, !16, !"pkttype_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_pkttype.c", i32 41, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
