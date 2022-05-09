; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_boa0b5.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_boa0b5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_vma = type { i64, i64 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nouveau_boa0b5.c\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nve0_bo_move_copy = private unnamed_addr constant [18 x i8] c"nve0_bo_move_copy\00", align 1
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_OFFSET_IN_UPPER\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_OFFSET_IN_LOWER\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_OFFSET_OUT_UPPER\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_OFFSET_OUT_LOWER\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_PITCH_IN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_PITCH_OUT\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_LINE_LENGTH_IN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_LINE_COUNT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%s/%08x:%s] %08x: %08x immd subc %d mthd 0x%04x data 0x%04x - %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NVA0B5_LAUNCH_DMA\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.nve0_bo_move_init = private unnamed_addr constant [18 x i8] c"nve0_bo_move_init\00", align 1
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0000\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 49, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 63, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nouveau_boa0b5.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 88, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nve0_bo_move_copy(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %bo, ptr nocapture noundef readonly %old_reg, ptr nocapture noundef readonly %new_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 10
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end284_crit_edge, label %if.then.i

entry.if.end284_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end284

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 10) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end284_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.if.end284_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end284

if.end284:                                        ; preds = %if.then.i.if.end284_crit_edge, %entry.if.end284_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 10
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end284.if.end320_crit_edge, label %do.end314, !prof !39

if.end284.if.end320_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end320

do.end314:                                        ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end320

if.end320:                                        ; preds = %do.end314, %if.end284.if.end320_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp333.not = icmp ult ptr %12, %14
  br i1 %cmp333.not, label %if.end320.if.end357_crit_edge, label %do.end351, !prof !39

if.end320.if.end357_crit_edge:                    ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end357

do.end351:                                        ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end357

if.end357:                                        ; preds = %do.end351, %if.end320.if.end357_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem369 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem369, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name375 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem369, ptr noundef nonnull @.str.13, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 537428224, i32 noundef 4, i32 noundef 1024, i32 noundef 8, ptr noundef nonnull @__func__.nve0_bo_move_copy) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 537428224, ptr %34, align 4
  %vma = getelementptr inbounds %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5
  %36 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %vma, align 8
  %shr = lshr i64 %37, 32
  %38 = trunc i64 %shr to i32
  %conv390 = and i32 %38, 255
  %39 = load ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seg.i, align 8
  %cmp395.not = icmp ult ptr %39, %41
  br i1 %cmp395.not, label %if.end357.if.end420_crit_edge, label %do.end414, !prof !39

if.end357.if.end420_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end420

do.end414:                                        ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end420

if.end420:                                        ; preds = %do.end414, %if.end357.if.end420_crit_edge
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i, align 4
  %cmp434.not = icmp ult ptr %43, %45
  br i1 %cmp434.not, label %if.end420.if.end459_crit_edge, label %do.end453, !prof !39

if.end420.if.end459_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end459

do.end453:                                        ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end459

if.end459:                                        ; preds = %do.end453, %if.end420.if.end459_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast477 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast478 = ptrtoint ptr %49 to i32
  %sub.ptr.sub479 = sub i32 %sub.ptr.lhs.cast477, %sub.ptr.rhs.cast478
  %50 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem369, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client, align 4
  %name491 = getelementptr inbounds %struct.nvif_object, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %name491 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name491, align 8
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %62 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %55(ptr noundef %mem369, ptr noundef nonnull @.str.14, ptr noundef %59, i32 noundef %61, ptr noundef %63, i32 noundef %sub.ptr.sub479, i32 noundef %conv390) #2
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %incdec.ptr500 = getelementptr i32, ptr %65, i32 1
  store ptr %incdec.ptr500, ptr %cur.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv390, ptr %65, align 4
  %67 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %vma, align 8
  %conv512 = trunc i64 %68 to i32
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %seg.i, align 8
  %cmp517.not = icmp ult ptr %69, %71
  br i1 %cmp517.not, label %if.end459.if.end542_crit_edge, label %do.end536, !prof !39

if.end459.if.end542_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end542

do.end536:                                        ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end542

if.end542:                                        ; preds = %do.end536, %if.end459.if.end542_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp556.not = icmp ult ptr %73, %75
  br i1 %cmp556.not, label %if.end542.if.end581_crit_edge, label %do.end575, !prof !39

if.end542.if.end581_crit_edge:                    ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end581

do.end575:                                        ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end581

if.end581:                                        ; preds = %do.end575, %if.end542.if.end581_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast599 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast600 = ptrtoint ptr %79 to i32
  %sub.ptr.sub601 = sub i32 %sub.ptr.lhs.cast599, %sub.ptr.rhs.cast600
  %80 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem369, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client, align 4
  %name613 = getelementptr inbounds %struct.nvif_object, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %name613 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name613, align 8
  %90 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle, align 4
  %92 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem369, ptr noundef nonnull @.str.15, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub601, i32 noundef %conv512) #2
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr622 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr622, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv512, ptr %95, align 4
  %arrayidx631 = getelementptr %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx631, align 8
  %shr633 = lshr i64 %98, 32
  %99 = trunc i64 %shr633 to i32
  %conv639 = and i32 %99, 255
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %seg.i, align 8
  %cmp644.not = icmp ult ptr %100, %102
  br i1 %cmp644.not, label %if.end581.if.end669_crit_edge, label %do.end663, !prof !39

if.end581.if.end669_crit_edge:                    ; preds = %if.end581
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end669

do.end663:                                        ; preds = %if.end581
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end669

if.end669:                                        ; preds = %do.end663, %if.end581.if.end669_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i, align 4
  %cmp683.not = icmp ult ptr %104, %106
  br i1 %cmp683.not, label %if.end669.if.end708_crit_edge, label %do.end702, !prof !39

if.end669.if.end708_crit_edge:                    ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end708

do.end702:                                        ; preds = %if.end669
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end708

if.end708:                                        ; preds = %do.end702, %if.end669.if.end708_crit_edge
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur.i, align 4
  %109 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast726 = ptrtoint ptr %108 to i32
  %sub.ptr.rhs.cast727 = ptrtoint ptr %110 to i32
  %sub.ptr.sub728 = sub i32 %sub.ptr.lhs.cast726, %sub.ptr.rhs.cast727
  %111 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mem369, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %117 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %client, align 4
  %name740 = getelementptr inbounds %struct.nvif_object, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %name740 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name740, align 8
  %121 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %handle, align 4
  %123 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %116(ptr noundef %mem369, ptr noundef nonnull @.str.16, ptr noundef %120, i32 noundef %122, ptr noundef %124, i32 noundef %sub.ptr.sub728, i32 noundef %conv639) #2
  %125 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cur.i, align 4
  %incdec.ptr749 = getelementptr i32, ptr %126, i32 1
  store ptr %incdec.ptr749, ptr %cur.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv639, ptr %126, align 4
  %128 = ptrtoint ptr %arrayidx631 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx631, align 8
  %conv761 = trunc i64 %129 to i32
  %130 = load ptr, ptr %cur.i, align 4
  %131 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %seg.i, align 8
  %cmp766.not = icmp ult ptr %130, %132
  br i1 %cmp766.not, label %if.end708.if.end791_crit_edge, label %do.end785, !prof !39

if.end708.if.end791_crit_edge:                    ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end791

do.end785:                                        ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end791

if.end791:                                        ; preds = %do.end785, %if.end708.if.end791_crit_edge
  %133 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cur.i, align 4
  %135 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %end.i, align 4
  %cmp805.not = icmp ult ptr %134, %136
  br i1 %cmp805.not, label %if.end791.if.end830_crit_edge, label %do.end824, !prof !39

if.end791.if.end830_crit_edge:                    ; preds = %if.end791
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end830

do.end824:                                        ; preds = %if.end791
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end830

if.end830:                                        ; preds = %do.end824, %if.end791.if.end830_crit_edge
  %137 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cur.i, align 4
  %139 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast848 = ptrtoint ptr %138 to i32
  %sub.ptr.rhs.cast849 = ptrtoint ptr %140 to i32
  %sub.ptr.sub850 = sub i32 %sub.ptr.lhs.cast848, %sub.ptr.rhs.cast849
  %141 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mem369, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %147 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %client, align 4
  %name862 = getelementptr inbounds %struct.nvif_object, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %name862 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name862, align 8
  %151 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %handle, align 4
  %153 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %146(ptr noundef %mem369, ptr noundef nonnull @.str.17, ptr noundef %150, i32 noundef %152, ptr noundef %154, i32 noundef %sub.ptr.sub850, i32 noundef %conv761) #2
  %155 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cur.i, align 4
  %incdec.ptr871 = getelementptr i32, ptr %156, i32 1
  store ptr %incdec.ptr871, ptr %cur.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv761, ptr %156, align 4
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %seg.i, align 8
  %cmp883.not = icmp ult ptr %158, %160
  br i1 %cmp883.not, label %if.end830.if.end908_crit_edge, label %do.end902, !prof !39

if.end830.if.end908_crit_edge:                    ; preds = %if.end830
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end908

do.end902:                                        ; preds = %if.end830
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end908

if.end908:                                        ; preds = %do.end902, %if.end830.if.end908_crit_edge
  %161 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur.i, align 4
  %163 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i, align 4
  %cmp922.not = icmp ult ptr %162, %164
  br i1 %cmp922.not, label %if.end908.if.end947_crit_edge, label %do.end941, !prof !39

if.end908.if.end947_crit_edge:                    ; preds = %if.end908
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end947

do.end941:                                        ; preds = %if.end908
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end947

if.end947:                                        ; preds = %do.end941, %if.end908.if.end947_crit_edge
  %165 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast965 = ptrtoint ptr %166 to i32
  %sub.ptr.rhs.cast966 = ptrtoint ptr %168 to i32
  %sub.ptr.sub967 = sub i32 %sub.ptr.lhs.cast965, %sub.ptr.rhs.cast966
  %169 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mem369, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %client, align 4
  %name979 = getelementptr inbounds %struct.nvif_object, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %name979 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name979, align 8
  %179 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %handle, align 4
  %181 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %174(ptr noundef %mem369, ptr noundef nonnull @.str.18, ptr noundef %178, i32 noundef %180, ptr noundef %182, i32 noundef %sub.ptr.sub967, i32 noundef 4096) #2
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cur.i, align 4
  %incdec.ptr988 = getelementptr i32, ptr %184, i32 1
  store ptr %incdec.ptr988, ptr %cur.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 4096, ptr %184, align 4
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %seg.i, align 8
  %cmp1000.not = icmp ult ptr %186, %188
  br i1 %cmp1000.not, label %if.end947.if.end1025_crit_edge, label %do.end1019, !prof !39

if.end947.if.end1025_crit_edge:                   ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1025

do.end1019:                                       ; preds = %if.end947
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end1025

if.end1025:                                       ; preds = %do.end1019, %if.end947.if.end1025_crit_edge
  %189 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur.i, align 4
  %191 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %end.i, align 4
  %cmp1039.not = icmp ult ptr %190, %192
  br i1 %cmp1039.not, label %if.end1025.if.end1064_crit_edge, label %do.end1058, !prof !39

if.end1025.if.end1064_crit_edge:                  ; preds = %if.end1025
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1064

do.end1058:                                       ; preds = %if.end1025
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end1064

if.end1064:                                       ; preds = %do.end1058, %if.end1025.if.end1064_crit_edge
  %193 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cur.i, align 4
  %195 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1082 = ptrtoint ptr %194 to i32
  %sub.ptr.rhs.cast1083 = ptrtoint ptr %196 to i32
  %sub.ptr.sub1084 = sub i32 %sub.ptr.lhs.cast1082, %sub.ptr.rhs.cast1083
  %197 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mem369, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %203 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %client, align 4
  %name1096 = getelementptr inbounds %struct.nvif_object, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %name1096 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %name1096, align 8
  %207 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %handle, align 4
  %209 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %202(ptr noundef %mem369, ptr noundef nonnull @.str.19, ptr noundef %206, i32 noundef %208, ptr noundef %210, i32 noundef %sub.ptr.sub1084, i32 noundef 4096) #2
  %211 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1105 = getelementptr i32, ptr %212, i32 1
  store ptr %incdec.ptr1105, ptr %cur.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 4096, ptr %212, align 4
  %214 = load ptr, ptr %cur.i, align 4
  %215 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %seg.i, align 8
  %cmp1117.not = icmp ult ptr %214, %216
  br i1 %cmp1117.not, label %if.end1064.if.end1142_crit_edge, label %do.end1136, !prof !39

if.end1064.if.end1142_crit_edge:                  ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1142

do.end1136:                                       ; preds = %if.end1064
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end1142

if.end1142:                                       ; preds = %do.end1136, %if.end1064.if.end1142_crit_edge
  %217 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %end.i, align 4
  %cmp1156.not = icmp ult ptr %218, %220
  br i1 %cmp1156.not, label %if.end1142.if.end1181_crit_edge, label %do.end1175, !prof !39

if.end1142.if.end1181_crit_edge:                  ; preds = %if.end1142
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1181

do.end1175:                                       ; preds = %if.end1142
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end1181

if.end1181:                                       ; preds = %do.end1175, %if.end1142.if.end1181_crit_edge
  %221 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur.i, align 4
  %223 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1199 = ptrtoint ptr %222 to i32
  %sub.ptr.rhs.cast1200 = ptrtoint ptr %224 to i32
  %sub.ptr.sub1201 = sub i32 %sub.ptr.lhs.cast1199, %sub.ptr.rhs.cast1200
  %225 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mem369, align 8
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %client, align 4
  %name1213 = getelementptr inbounds %struct.nvif_object, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %name1213 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %name1213, align 8
  %235 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %handle, align 4
  %237 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %230(ptr noundef %mem369, ptr noundef nonnull @.str.20, ptr noundef %234, i32 noundef %236, ptr noundef %238, i32 noundef %sub.ptr.sub1201, i32 noundef 4096) #2
  %239 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1222 = getelementptr i32, ptr %240, i32 1
  store ptr %incdec.ptr1222, ptr %cur.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 4096, ptr %240, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 1
  %242 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %num_pages, align 4
  %244 = load ptr, ptr %cur.i, align 4
  %245 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %seg.i, align 8
  %cmp1234.not = icmp ult ptr %244, %246
  br i1 %cmp1234.not, label %if.end1181.if.end1259_crit_edge, label %do.end1253, !prof !39

if.end1181.if.end1259_crit_edge:                  ; preds = %if.end1181
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1259

do.end1253:                                       ; preds = %if.end1181
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end1259

if.end1259:                                       ; preds = %do.end1253, %if.end1181.if.end1259_crit_edge
  %247 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cur.i, align 4
  %249 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %end.i, align 4
  %cmp1273.not = icmp ult ptr %248, %250
  br i1 %cmp1273.not, label %if.end1259.if.end1298_crit_edge, label %do.end1292, !prof !39

if.end1259.if.end1298_crit_edge:                  ; preds = %if.end1259
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1298

do.end1292:                                       ; preds = %if.end1259
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end1298

if.end1298:                                       ; preds = %do.end1292, %if.end1259.if.end1298_crit_edge
  %251 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cur.i, align 4
  %253 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1316 = ptrtoint ptr %252 to i32
  %sub.ptr.rhs.cast1317 = ptrtoint ptr %254 to i32
  %sub.ptr.sub1318 = sub i32 %sub.ptr.lhs.cast1316, %sub.ptr.rhs.cast1317
  %255 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mem369, align 8
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  %261 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %client, align 4
  %name1330 = getelementptr inbounds %struct.nvif_object, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %name1330 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %name1330, align 8
  %265 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %handle, align 4
  %267 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %260(ptr noundef %mem369, ptr noundef nonnull @.str.21, ptr noundef %264, i32 noundef %266, ptr noundef %268, i32 noundef %sub.ptr.sub1318, i32 noundef %243) #2
  %269 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1339 = getelementptr i32, ptr %270, i32 1
  store ptr %incdec.ptr1339, ptr %cur.i, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %243, ptr %270, align 4
  %272 = load ptr, ptr %cur.i, align 4
  %273 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %seg.i, align 8
  %cmp1456.not = icmp ult ptr %272, %274
  br i1 %cmp1456.not, label %if.end1298.if.end1481_crit_edge, label %do.end1475, !prof !39

if.end1298.if.end1481_crit_edge:                  ; preds = %if.end1298
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1481

do.end1475:                                       ; preds = %if.end1298
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end1481

if.end1481:                                       ; preds = %do.end1475, %if.end1298.if.end1481_crit_edge
  %275 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cur.i, align 4
  %277 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %end.i, align 4
  %cmp1495.not = icmp ult ptr %276, %278
  br i1 %cmp1495.not, label %if.end1481.if.end1520_crit_edge, label %do.end1514, !prof !39

if.end1481.if.end1520_crit_edge:                  ; preds = %if.end1481
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end1520

do.end1514:                                       ; preds = %if.end1481
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end1520

if.end1520:                                       ; preds = %do.end1514, %if.end1481.if.end1520_crit_edge
  %279 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %cur.i, align 4
  %281 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1538 = ptrtoint ptr %280 to i32
  %sub.ptr.rhs.cast1539 = ptrtoint ptr %282 to i32
  %sub.ptr.sub1540 = sub i32 %sub.ptr.lhs.cast1538, %sub.ptr.rhs.cast1539
  %283 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mem369, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %286, align 4
  %289 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %client, align 4
  %name1552 = getelementptr inbounds %struct.nvif_object, ptr %290, i32 0, i32 2
  %291 = ptrtoint ptr %name1552 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %name1552, align 8
  %293 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %handle, align 4
  %295 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %288(ptr noundef %mem369, ptr noundef nonnull @.str.22, ptr noundef %292, i32 noundef %294, ptr noundef %296, i32 noundef %sub.ptr.sub1540, i32 noundef -2088337216, i32 noundef 4, i32 noundef 768, i32 noundef 902, ptr noundef nonnull @__func__.nve0_bo_move_copy) #2
  %297 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1561 = getelementptr i32, ptr %298, i32 1
  store ptr %incdec.ptr1561, ptr %cur.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 -2088337216, ptr %298, align 4
  %300 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1567 = getelementptr i32, ptr %300, i32 -1
  store ptr %incdec.ptr1567, ptr %cur.i, align 4
  %301 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1576 = ptrtoint ptr %incdec.ptr1567 to i32
  %sub.ptr.rhs.cast1577 = ptrtoint ptr %302 to i32
  %sub.ptr.sub1578 = sub i32 %sub.ptr.lhs.cast1576, %sub.ptr.rhs.cast1577
  %303 = ptrtoint ptr %mem369 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mem369, align 8
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %304, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %306, align 4
  %309 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %client, align 4
  %name1590 = getelementptr inbounds %struct.nvif_object, ptr %310, i32 0, i32 2
  %311 = ptrtoint ptr %name1590 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %name1590, align 8
  %313 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %handle, align 4
  %315 = ptrtoint ptr %name375 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %name375, align 8
  tail call void (ptr, ptr, ...) %308(ptr noundef %mem369, ptr noundef nonnull @.str.23, ptr noundef %312, i32 noundef %314, ptr noundef %316, i32 noundef %sub.ptr.sub1578, i32 noundef 902) #2
  %317 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1599 = getelementptr i32, ptr %318, i32 1
  store ptr %incdec.ptr1599, ptr %cur.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1520, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1520 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nve0_bo_move_init(ptr nocapture noundef readonly %chan, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end73_crit_edge, label %if.then.i

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end73

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end73_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.if.end73_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end73

if.end73:                                         ; preds = %if.then.i.if.end73_crit_edge, %entry.if.end73_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end73.if.end109_crit_edge, label %do.end103, !prof !39

if.end73.if.end109_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end109

do.end103:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end73.if.end109_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp122.not = icmp ult ptr %12, %14
  br i1 %cmp122.not, label %if.end109.if.end146_crit_edge, label %do.end140, !prof !39

if.end109.if.end146_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end146

do.end140:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %if.end109.if.end146_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle163 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle163, align 4
  %name164 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 536969216, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @__func__.nve0_bo_move_init) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 536969216, ptr %34, align 4
  %and = and i32 %handle, 65535
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp181.not = icmp ult ptr %36, %38
  br i1 %cmp181.not, label %if.end146.if.end205_crit_edge, label %do.end199, !prof !39

if.end146.if.end205_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end205

do.end199:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.11) #2
  br label %if.end205

if.end205:                                        ; preds = %do.end199, %if.end146.if.end205_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp219.not = icmp ult ptr %40, %42
  br i1 %cmp219.not, label %if.end205.if.end243_crit_edge, label %do.end237, !prof !39

if.end205.if.end243_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end243

do.end237:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef nonnull @.str.12) #2
  br label %if.end243

if.end243:                                        ; preds = %do.end237, %if.end205.if.end243_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast261 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast262 = ptrtoint ptr %46 to i32
  %sub.ptr.sub263 = sub i32 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name275 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name275 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name275, align 8
  %57 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle163, align 4
  %59 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.24, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub263, i32 noundef %and) #2
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr284 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr284, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end243 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_boa0b5.c", i32 49, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__func__.nve0_bo_move_copy, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.22, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nouveau_boa0b5.c", i32 63, i32 2}
!26 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.nve0_bo_move_init, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_boa0b5.c", i32 88, i32 2}
!29 = !{ptr @.str.24, !28, !"<string literal>", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
