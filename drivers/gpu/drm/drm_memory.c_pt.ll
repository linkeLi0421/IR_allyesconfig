; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_memory.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_legacy_ioremap\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_ioremap\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_ioremap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_ioremap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_ioremap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_ioremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_ioremap_wc\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_ioremap_wc\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_ioremap_wc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_ioremap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_ioremap_wc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_ioremap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_legacy_ioremapfree\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_ioremapfree\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_ioremapfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_ioremapfree:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_ioremapfree\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_ioremapfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }

@__kstrtab_drm_legacy_ioremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_ioremap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_ioremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_ioremap to i32), ptr @__kstrtab_drm_legacy_ioremap, ptr @__kstrtabns_drm_legacy_ioremap }, section "___ksymtab+drm_legacy_ioremap", align 4
@__kstrtab_drm_legacy_ioremap_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_ioremap_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_ioremap_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_ioremap_wc to i32), ptr @__kstrtab_drm_legacy_ioremap_wc, ptr @__kstrtabns_drm_legacy_ioremap_wc }, section "___ksymtab+drm_legacy_ioremap_wc", align 4
@__kstrtab_drm_legacy_ioremapfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_ioremapfree = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_ioremapfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_ioremapfree to i32), ptr @__kstrtab_drm_legacy_ioremapfree, ptr @__kstrtabns_drm_legacy_ioremapfree }, section "___ksymtab+drm_legacy_ioremapfree", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_legacy_ioremap, ptr @__ksymtab_drm_legacy_ioremap_wc, ptr @__ksymtab_drm_legacy_ioremapfree], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ioremap(ptr nocapture noundef %map, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cant_use_aperture = getelementptr inbounds %struct.drm_agp_head, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cant_use_aperture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cant_use_aperture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map, align 4
  %size5 = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 1
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size5, align 4
  %call6 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %9) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true3.if.end_crit_edge
  %call6.sink = phi ptr [ %call6, %if.else ], [ null, %land.lhs.true3.if.end_crit_edge ]
  %handle7 = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 4
  %10 = ptrtoint ptr %handle7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.sink, ptr %handle7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ioremap_wc(ptr nocapture noundef %map, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %0 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %agp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %cant_use_aperture = getelementptr inbounds %struct.drm_agp_head, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cant_use_aperture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cant_use_aperture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true3

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %land.lhs.true3.if.end_crit_edge, label %land.lhs.true3.if.else_crit_edge

land.lhs.true3.if.else_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true3.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map, align 4
  %size5 = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 1
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size5, align 4
  %call6 = tail call ptr @ioremap_wc(i32 noundef %7, i32 noundef %9) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true3.if.end_crit_edge
  %call6.sink = phi ptr [ %call6, %if.else ], [ null, %land.lhs.true3.if.end_crit_edge ]
  %handle7 = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 4
  %10 = ptrtoint ptr %handle7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.sink, ptr %handle7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_legacy_ioremapfree(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %lor.lhs.false

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end9_crit_edge, label %if.end

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.end:                                           ; preds = %lor.lhs.false
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %4 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %cant_use_aperture = getelementptr inbounds %struct.drm_agp_head, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cant_use_aperture to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cant_use_aperture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.drm_local_map, ptr %map, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then6, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @vunmap(ptr noundef nonnull %1) #2
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @iounmap(ptr noundef nonnull %1) #2
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6, %lor.lhs.false.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_drm_legacy_ioremap, !1, !"__ksymtab_drm_legacy_ioremap", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_memory.c", i32 117, i32 1}
!2 = !{ptr @__ksymtab_drm_legacy_ioremap_wc, !3, !"__ksymtab_drm_legacy_ioremap_wc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_memory.c", i32 126, i32 1}
!4 = !{ptr @__ksymtab_drm_legacy_ioremapfree, !5, !"__ksymtab_drm_legacy_ioremapfree", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_memory.c", i32 138, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
