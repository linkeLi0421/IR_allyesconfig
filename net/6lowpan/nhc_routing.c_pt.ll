; ModuleID = '/llk/IR_all_yes/net/6lowpan/nhc_routing.c_pt.bc'
source_filename = "../net/6lowpan/nhc_routing.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lowpan_nhc = type { %struct.rb_node, ptr, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }

@__initcall__kmod_nhc_routing__480_21_nhc_routing_init6 = internal global ptr @nhc_routing_init, section ".initcall6.init", align 4
@nhc_routing = internal global { %struct.lowpan_nhc, [48 x i8] } { %struct.lowpan_nhc { %struct.rb_node zeroinitializer, ptr @.str, i8 43, i32 0, ptr @nhc_routing_val, ptr @nhc_routing_mask, i32 1, ptr @routing_nhid_setup, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__exitcall_nhc_routing_exit = internal global ptr @nhc_routing_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description481 = internal constant [72 x i8] c"nhc_routing.description=6LoWPAN next header RFC6282 Routing compression\00", section ".modinfo", align 1
@__UNIQUE_ID_file482 = internal constant [41 x i8] c"nhc_routing.file=net/6lowpan/nhc_routing\00", section ".modinfo", align 1
@__UNIQUE_ID_license483 = internal constant [24 x i8] c"nhc_routing.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RFC6282 Routing\00", [16 x i8] zeroinitializer }, align 32
@nhc_routing_val = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nhc_routing_mask = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"nhc_routing\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"nhc_routing_val\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"nhc_routing_mask\00", align 1
@___asan_gen_.11 = private constant [29 x i8] c"../net/6lowpan/nhc_routing.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 18, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_description481, ptr @__UNIQUE_ID_file482, ptr @__UNIQUE_ID_license483, ptr @__exitcall_nhc_routing_exit, ptr @__initcall__kmod_nhc_routing__480_21_nhc_routing_init6, ptr @nhc_routing_exit, ptr @nhc_routing, ptr @.str, ptr @nhc_routing_val, ptr @nhc_routing_mask], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhc_routing to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhc_routing_val to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhc_routing_mask to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nhc_routing_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @lowpan_nhc_add(ptr noundef nonnull @nhc_routing) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nhc_routing_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lowpan_nhc_del(ptr noundef nonnull @nhc_routing) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lowpan_nhc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_nhc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @routing_nhid_setup(ptr nocapture noundef readonly %nhc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -30, ptr %1, align 1
  %idmask = getelementptr inbounds %struct.lowpan_nhc, ptr %nhc, i32 0, i32 5
  %3 = ptrtoint ptr %idmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %idmask, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -2, ptr %4, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_nhc_routing__480_21_nhc_routing_init6, !1, !"__initcall__kmod_nhc_routing__480_21_nhc_routing_init6", i1 false, i1 false}
!1 = !{!"../net/6lowpan/nhc_routing.c", i32 21, i32 1}
!2 = !{ptr @__exitcall_nhc_routing_exit, !1, !"__exitcall_nhc_routing_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description481, !4, !"__UNIQUE_ID_description481", i1 false, i1 false}
!4 = !{!"../net/6lowpan/nhc_routing.c", i32 22, i32 1}
!5 = !{ptr @__UNIQUE_ID_file482, !6, !"__UNIQUE_ID_file482", i1 false, i1 false}
!6 = !{!"../net/6lowpan/nhc_routing.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_license483, !6, !"__UNIQUE_ID_license483", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/6lowpan/nhc_routing.c", i32 18, i32 1}
!10 = !{ptr @nhc_routing, !9, !"nhc_routing", i1 false, i1 false}
!11 = !{ptr @nhc_routing_val, !9, !"nhc_routing_val", i1 false, i1 false}
!12 = !{ptr @nhc_routing_mask, !9, !"nhc_routing_mask", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
