; ModuleID = '/llk/IR_all_yes/fs/ceph/util.c_pt.bc'
source_filename = "../fs/ceph/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_file_layout_legacy = type { i32, i32, i32, i32, i32, i32, i32 }

@switch.table.ceph_flags_to_mode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 3], [16 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [18 x i8] c"../fs/ceph/util.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [32 x i8] c"switch.table.ceph_flags_to_mode\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.ceph_flags_to_mode], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceph_flags_to_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ceph_file_layout_is_valid(ptr nocapture noundef readonly %layout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %layout, align 8
  %stripe_count = getelementptr inbounds %struct.ceph_file_layout, ptr %layout, i32 0, i32 1
  %2 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stripe_count, align 4
  %object_size = getelementptr inbounds %struct.ceph_file_layout, ptr %layout, i32 0, i32 2
  %4 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %object_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %and = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %and4 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %or.cond26.not = or i1 %tobool2.not, %tobool5.not
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp = icmp ult i32 %5, %1
  %or.cond27 = select i1 %or.cond26.not, i1 true, i1 %cmp
  br i1 %or.cond27, label %if.end.cleanup_crit_edge, label %lor.lhs.false8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %rem = urem i32 %5, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool9.not = icmp eq i32 %rem, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not = icmp ne i32 %3, 0
  %. = zext i1 %tobool12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false8.cleanup_crit_edge ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ceph_file_layout_from_legacy(ptr nocapture noundef %fl, ptr nocapture noundef readonly %legacy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %legacy, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fl, align 8
  %fl_stripe_count = getelementptr inbounds %struct.ceph_file_layout_legacy, ptr %legacy, i32 0, i32 1
  %4 = ptrtoint ptr %fl_stripe_count to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %fl_stripe_count, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %stripe_count = getelementptr inbounds %struct.ceph_file_layout, ptr %fl, i32 0, i32 1
  %7 = ptrtoint ptr %stripe_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stripe_count, align 4
  %fl_object_size = getelementptr inbounds %struct.ceph_file_layout_legacy, ptr %legacy, i32 0, i32 2
  %8 = ptrtoint ptr %fl_object_size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %fl_object_size, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %object_size = getelementptr inbounds %struct.ceph_file_layout, ptr %fl, i32 0, i32 2
  %11 = ptrtoint ptr %object_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %object_size, align 8
  %fl_pg_pool = getelementptr inbounds %struct.ceph_file_layout_legacy, ptr %legacy, i32 0, i32 6
  %12 = ptrtoint ptr %fl_pg_pool to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %fl_pg_pool, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %conv = zext i32 %14 to i64
  %pool_id = getelementptr inbounds %struct.ceph_file_layout, ptr %fl, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8 = icmp eq i32 %5, 0
  %or.cond26 = select i1 %or.cond, i1 %cmp8, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12 = icmp eq i32 %9, 0
  %or.cond27 = select i1 %or.cond26, i1 %cmp12, i1 false
  %spec.store.select = select i1 %or.cond27, i64 -1, i64 %conv
  %15 = ptrtoint ptr %pool_id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %spec.store.select, ptr %pool_id, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ceph_file_layout_to_legacy(ptr nocapture noundef readonly %fl, ptr nocapture noundef writeonly %legacy) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %legacy to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %legacy, align 1
  %stripe_count = getelementptr inbounds %struct.ceph_file_layout, ptr %fl, i32 0, i32 1
  %4 = ptrtoint ptr %stripe_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stripe_count, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %fl_stripe_count = getelementptr inbounds %struct.ceph_file_layout_legacy, ptr %legacy, i32 0, i32 1
  %7 = ptrtoint ptr %fl_stripe_count to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %fl_stripe_count, align 1
  %object_size = getelementptr inbounds %struct.ceph_file_layout, ptr %fl, i32 0, i32 2
  %8 = ptrtoint ptr %object_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %object_size, align 8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %fl_object_size = getelementptr inbounds %struct.ceph_file_layout_legacy, ptr %legacy, i32 0, i32 2
  %11 = ptrtoint ptr %fl_object_size to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %fl_object_size, align 1
  %pool_id = getelementptr inbounds %struct.ceph_file_layout, ptr %fl, i32 0, i32 3
  %12 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pool_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp = icmp sgt i64 %13, -1
  %conv = trunc i64 %13 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %.sink = select i1 %cmp, i32 %14, i32 0
  %15 = getelementptr inbounds %struct.ceph_file_layout_legacy, ptr %legacy, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %.sink, ptr %15, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ceph_flags_to_mode(i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and1 = and i32 %flags, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ceph_flags_to_mode, i32 0, i32 %and1
  %0 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %0)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %switch.load, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ceph_caps_for_mode(i32 noundef %mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 3329
  %and1 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or4 = or i32 %spec.select, 13004
  %caps.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  %and6 = shl i32 %mode, 13
  %0 = and i32 %and6, 32768
  %1 = or i32 %caps.1, %0
  ret i32 %1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
