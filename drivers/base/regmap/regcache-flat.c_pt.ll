; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regcache-flat.c_pt.bc'
source_filename = "../drivers/base/regmap/regcache-flat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.reg_default = type { i32, i32 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flat\00", [27 x i8] zeroinitializer }, align 32
@regcache_flat_ops = dso_local global { %struct.regcache_ops, [60 x i8] } { %struct.regcache_ops { ptr @.str, i32 3, ptr @regcache_flat_init, ptr @regcache_flat_exit, ptr null, ptr @regcache_flat_read, ptr @regcache_flat_write, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 78, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"regcache_flat_ops\00", align 1
@___asan_gen_.5 = private constant [39 x i8] c"../drivers/base/regmap/regcache-flat.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 76, i32 21 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @regcache_flat_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_flat_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_flat_init(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %reg_stride_order = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 46
  %0 = ptrtoint ptr %reg_stride_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_stride_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %max_register = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 25
  %2 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_register, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %shr.i.i = lshr i32 %3, %1
  %add = add i32 %shr.i.i, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !13

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cache535 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %6 = ptrtoint ptr %cache535 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cache535, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #8
  %cache5 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %8 = ptrtoint ptr %cache5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %cache5, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %num_reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %9 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_reg_defaults, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1137.not = icmp eq i32 %10, 0
  br i1 %cmp1137.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %11 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_defaults, align 4
  %13 = ptrtoint ptr %reg_stride_order to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg_stride_order, align 4
  %15 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_reg_defaults, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reg_default, ptr %12, i32 %i.038
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %shr.i.i33 = lshr i32 %18, %14
  %def = getelementptr %struct.reg_default, ptr %12, i32 %i.038, i32 1
  %19 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def, align 4
  %arrayidx16 = getelementptr i32, ptr %call8.i.i, i32 %shr.i.i33
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx16, align 4
  %inc = add nuw i32 %i.038, 1
  %cmp11 = icmp ult i32 %inc, %16
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regcache_flat_exit(ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cache, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regcache_flat_read(ptr nocapture noundef readonly %map, i32 noundef %reg, ptr nocapture noundef writeonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache1, align 4
  %reg_stride_order.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 46
  %2 = ptrtoint ptr %reg_stride_order.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_stride_order.i.i, align 4
  %shr.i.i = lshr i32 %reg, %3
  %arrayidx = getelementptr i32, ptr %1, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regcache_flat_write(ptr nocapture noundef readonly %map, i32 noundef %reg, i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cache1 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %0 = ptrtoint ptr %cache1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache1, align 4
  %reg_stride_order.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 46
  %2 = ptrtoint ptr %reg_stride_order.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_stride_order.i.i, align 4
  %shr.i.i = lshr i32 %reg, %3
  %arrayidx = getelementptr i32, ptr %1, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %value, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regcache-flat.c", i32 78, i32 10}
!2 = !{ptr @regcache_flat_ops, !3, !"regcache_flat_ops", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regcache-flat.c", i32 76, i32 21}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
