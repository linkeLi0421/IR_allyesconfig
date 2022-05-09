; ModuleID = '/llk/IR_all_yes/drivers/net/phy/mdio_devres.c_pt.bc'
source_filename = "../drivers/net/phy/mdio_devres.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+devm_mdiobus_alloc_size\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_mdiobus_alloc_size\09\09\09\09"
module asm "\09.long\09__crc_devm_mdiobus_alloc_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mdiobus_alloc_size:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mdiobus_alloc_size\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mdiobus_alloc_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__devm_mdiobus_register\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_mdiobus_register\09\09\09\09"
module asm "\09.long\09__crc___devm_mdiobus_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_mdiobus_register\22\09\09\09\09\09"
module asm "__kstrtabns___devm_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+devm_of_mdiobus_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_of_mdiobus_register\09\09\09\09"
module asm "\09.long\09__crc_devm_of_mdiobus_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_mdiobus_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_mdiobus_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devm_mdiobus_free\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_devm_mdiobus_alloc_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mdiobus_alloc_size = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mdiobus_alloc_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mdiobus_alloc_size to i32), ptr @__kstrtab_devm_mdiobus_alloc_size, ptr @__kstrtabns_devm_mdiobus_alloc_size }, section "___ksymtab+devm_mdiobus_alloc_size", align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/phy/mdio_devres.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devm_mdiobus_unregister\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab___devm_mdiobus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_mdiobus_register = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_mdiobus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_mdiobus_register to i32), ptr @__kstrtab___devm_mdiobus_register, ptr @__kstrtabns___devm_mdiobus_register }, section "___ksymtab+__devm_mdiobus_register", align 4
@__kstrtab_devm_of_mdiobus_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_mdiobus_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_mdiobus_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_mdiobus_register to i32), ptr @__kstrtab_devm_of_mdiobus_register, ptr @__kstrtabns_devm_of_mdiobus_register }, section "___ksymtab+devm_of_mdiobus_register", align 4
@__UNIQUE_ID_file281 = internal constant [45 x i8] c"mdio_devres.file=drivers/net/phy/mdio_devres\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [24 x i8] c"mdio_devres.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 34, i32 7 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 79, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [33 x i8] c"../drivers/net/phy/mdio_devres.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 83, i32 7 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__ksymtab___devm_mdiobus_register, ptr @__ksymtab_devm_mdiobus_alloc_size, ptr @__ksymtab_devm_of_mdiobus_register, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_mdiobus_alloc_size(ptr noundef %dev, i32 noundef %sizeof_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mdiobus_free, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mdiobus_alloc_size(i32 noundef %sizeof_priv) #3
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @devres_free(ptr noundef nonnull %call) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #3
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_mdiobus_free(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %this) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %this, align 4
  tail call void @mdiobus_free(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__devm_mdiobus_register(ptr noundef %dev, ptr noundef %bus, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devres_find(ptr noundef %dev, ptr noundef nonnull @devm_mdiobus_free, ptr noundef nonnull @mdiobus_devres_match, ptr noundef %bus) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call24 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mdiobus_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #3
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @__mdiobus_register(ptr noundef %bus, ptr noundef %owner) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @devres_free(ptr noundef nonnull %call24) #3
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bus, ptr %call24, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call24) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call28, %if.then30 ], [ 0, %if.end31 ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mdiobus_devres_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %this, ptr noundef readnone %match_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %this, align 4
  %cmp = icmp eq ptr %1, %match_data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_mdiobus_unregister(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %this) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %this, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_of_mdiobus_register(ptr noundef %dev, ptr noundef %mdio, ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devres_find(ptr noundef %dev, ptr noundef nonnull @devm_mdiobus_free, ptr noundef nonnull @mdiobus_devres_match, ptr noundef %mdio) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call24 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_mdiobus_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #3
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @of_mdiobus_register(ptr noundef %mdio, ptr noundef %np) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @devres_free(ptr noundef nonnull %call24) #3
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdio, ptr %call24, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call24) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then30, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call28, %if.then30 ], [ 0, %if.end31 ], [ -12, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/mdio_devres.c", i32 34, i32 7}
!2 = !{ptr @__ksymtab_devm_mdiobus_alloc_size, !3, !"__ksymtab_devm_mdiobus_alloc_size", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/mdio_devres.c", i32 47, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/mdio_devres.c", i32 79, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/mdio_devres.c", i32 83, i32 7}
!8 = !{ptr @__ksymtab___devm_mdiobus_register, !9, !"__ksymtab___devm_mdiobus_register", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/mdio_devres.c", i32 97, i32 1}
!10 = !{ptr @__ksymtab_devm_of_mdiobus_register, !11, !"__ksymtab_devm_of_mdiobus_register", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/mdio_devres.c", i32 130, i32 1}
!12 = !{ptr @__UNIQUE_ID_file281, !13, !"__UNIQUE_ID_file281", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/mdio_devres.c", i32 133, i32 1}
!14 = !{ptr @__UNIQUE_ID_license282, !13, !"__UNIQUE_ID_license282", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
