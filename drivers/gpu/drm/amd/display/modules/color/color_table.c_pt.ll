; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/color/color_table.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fixed31_32 = type { i64 }

@pq_initialized = internal global { i8, [31 x i8] } zeroinitializer, align 32
@de_pg_initialized = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pq_table = internal global { [514 x %struct.fixed31_32], [1040 x i8] } zeroinitializer, align 32
@de_pq_table = internal global { [514 x %struct.fixed31_32], [1040 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"pq_initialized\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 30, i32 13 }
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"de_pg_initialized\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 31, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"pq_table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 28, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"de_pq_table\00", align 1
@___asan_gen_.12 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_table.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 29, i32 26 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @pq_initialized, ptr @de_pg_initialized, ptr @pq_table, ptr @de_pq_table], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pq_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_pg_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pq_table to i32), i32 4112, i32 5152, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_pq_table to i32), i32 4112, i32 5152, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mod_color_is_table_init(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.if.end5_crit_edge [
    i32 0, label %entry.if.end5.sink.split_crit_edge
    i32 1, label %if.then2
  ]

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.sink.split

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then2, %entry.if.end5.sink.split_crit_edge
  %pq_initialized.sink = phi ptr [ @de_pg_initialized, %if.then2 ], [ @pq_initialized, %entry.if.end5.sink.split_crit_edge ]
  %1 = ptrtoint ptr %pq_initialized.sink to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pq_initialized.sink, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry.if.end5_crit_edge
  %ret.1.off0 = phi i1 [ false, %entry.if.end5_crit_edge ], [ %tobool, %if.end5.sink.split ]
  ret i1 %ret.1.off0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mod_color_get_table(i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %spec.store.select = select i1 %cmp, ptr @pq_table, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp1 = icmp eq i32 %type, 1
  %spec.store.select4 = select i1 %cmp1, ptr @de_pq_table, ptr %spec.store.select
  ret ptr %spec.store.select4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mod_color_set_table_init_state(i32 noundef %type, i1 noundef zeroext %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %type, label %entry.if.end6_crit_edge [
    i32 0, label %entry.if.end6.sink.split_crit_edge
    i32 1, label %if.then3
  ]

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6.sink.split

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then3, %entry.if.end6.sink.split_crit_edge
  %pq_initialized.sink = phi ptr [ @de_pg_initialized, %if.then3 ], [ @pq_initialized, %entry.if.end6.sink.split_crit_edge ]
  %1 = ptrtoint ptr %pq_initialized.sink to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %pq_initialized.sink, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @pq_table, !1, !"pq_table", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_table.c", i32 28, i32 26}
!2 = !{ptr @de_pq_table, !3, !"de_pq_table", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_table.c", i32 29, i32 26}
!4 = !{ptr @pq_initialized, !5, !"pq_initialized", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_table.c", i32 30, i32 13}
!6 = !{ptr @de_pg_initialized, !7, !"de_pg_initialized", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/color/color_table.c", i32 31, i32 13}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
