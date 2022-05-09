; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_osf.c_pt.bc'
source_filename = "../net/netfilter/xt_osf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.188, %union.anon.189, ptr, i32, i16, i8 }
%union.anon.188 = type { ptr }
%union.anon.189 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@xt_osf_match = internal global { %struct.xt_match, [52 x i8] } { %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"osf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_osf_match_packet, ptr null, ptr null, ptr null, ptr null, i32 48, i32 0, i32 7, i16 6, i16 2 }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_xt_osf__614_66_xt_osf_init6 = internal global ptr @xt_osf_init, section ".initcall6.init", align 4
@__exitcall_xt_osf_fini = internal global ptr @xt_osf_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file615 = internal constant [33 x i8] c"xt_osf.file=net/netfilter/xt_osf\00", section ".modinfo", align 1
@__UNIQUE_ID_license616 = internal constant [19 x i8] c"xt_osf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author617 = internal constant [49 x i8] c"xt_osf.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description618 = internal constant [52 x i8] c"xt_osf.description=Passive OS fingerprint matching.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias619 = internal constant [21 x i8] c"xt_osf.alias=ipt_osf\00", section ".modinfo", align 1
@__UNIQUE_ID_alias620 = internal constant [22 x i8] c"xt_osf.alias=ip6t_osf\00", section ".modinfo", align 1
@__UNIQUE_ID_alias621 = internal constant [32 x i8] c"xt_osf.alias=nfnetlink-subsys-5\00", section ".modinfo", align 1
@nf_osf_fingers = external dso_local global [2 x %struct.list_head], align 4
@xt_osf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013xt_osf: Failed to register OS fingerprint matching module (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xt_osf_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_osf.c\00", [41 x i8] zeroinitializer }, align 32
@xt_osf_init._entry_ptr = internal global ptr @xt_osf_init._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"xt_osf_match\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 34, i32 24 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [26 x i8] c"../net/netfilter/xt_osf.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 53, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias619, ptr @__UNIQUE_ID_alias620, ptr @__UNIQUE_ID_alias621, ptr @__UNIQUE_ID_author617, ptr @__UNIQUE_ID_description618, ptr @__UNIQUE_ID_file615, ptr @__UNIQUE_ID_license616, ptr @__exitcall_xt_osf_fini, ptr @__initcall__kmod_xt_osf__614_66_xt_osf_init6, ptr @xt_osf_fini, ptr @xt_osf_init._entry, ptr @xt_osf_init._entry_ptr, ptr @xt_osf_match, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_osf_match to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_osf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_osf_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_osf_match) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_osf_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_osf_match) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @xt_osf_match_packet(ptr noundef %skb, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf.i, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %conv.i = zext i8 %5 to i32
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out.i, align 4
  %10 = getelementptr inbounds %struct.xt_action_param, ptr %p, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 4
  %call5 = tail call zeroext i1 @nf_osf_match(ptr noundef %skb, i8 noundef zeroext %3, i32 noundef %conv.i, ptr noundef %7, ptr noundef %9, ptr noundef %12, ptr noundef %14, ptr noundef nonnull @nf_osf_fingers) #4
  ret i1 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_osf_match(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_xt_osf__614_66_xt_osf_init6, !1, !"__initcall__kmod_xt_osf__614_66_xt_osf_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_osf.c", i32 66, i32 1}
!2 = !{ptr @__exitcall_xt_osf_fini, !3, !"__exitcall_xt_osf_fini", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_osf.c", i32 67, i32 1}
!4 = !{ptr @__UNIQUE_ID_file615, !5, !"__UNIQUE_ID_file615", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_osf.c", i32 69, i32 1}
!6 = !{ptr @__UNIQUE_ID_license616, !5, !"__UNIQUE_ID_license616", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author617, !8, !"__UNIQUE_ID_author617", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_osf.c", i32 70, i32 1}
!9 = !{ptr @__UNIQUE_ID_description618, !10, !"__UNIQUE_ID_description618", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_osf.c", i32 71, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias619, !12, !"__UNIQUE_ID_alias619", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_osf.c", i32 72, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias620, !14, !"__UNIQUE_ID_alias620", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_osf.c", i32 73, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias621, !16, !"__UNIQUE_ID_alias621", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_osf.c", i32 74, i32 1}
!17 = !{ptr @xt_osf_match, !18, !"xt_osf_match", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_osf.c", i32 34, i32 24}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_osf.c", i32 53, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @xt_osf_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @xt_osf_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
