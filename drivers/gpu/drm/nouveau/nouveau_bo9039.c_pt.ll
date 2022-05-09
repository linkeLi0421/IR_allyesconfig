; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bo9039.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo9039.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_vma = type { i64, i64 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo9039.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nvc0_bo_move_m2mf = private unnamed_addr constant [18 x i8] c"nvc0_bo_move_m2mf\00", align 1
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_OFFSET_OUT_UPPER\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_OFFSET_OUT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_OFFSET_IN_UPPER\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_OFFSET_IN\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_PITCH_IN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_PITCH_OUT\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_LINE_LENGTH_IN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_LINE_COUNT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_LAUNCH_DMA\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.nvc0_bo_move_init = private unnamed_addr constant [18 x i8] c"nvc0_bo_move_init\00", align 1
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV9039_SET_OBJECT\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 56, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 61, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 70, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo9039.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 96, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_bo_move_m2mf(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %bo, ptr nocapture noundef readonly %old_reg, ptr nocapture noundef readonly %new_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 1
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not2081 = icmp eq i32 %3, 0
  br i1 %tobool.not2081, label %entry.cleanup1845_crit_edge, label %while.body.lr.ph

entry.cleanup1845_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1845

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx4 = getelementptr %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx4, align 8
  %vma = getelementptr inbounds %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vma, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %mem195 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %name201 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %src_offset.02084 = phi i64 [ %7, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %dst_offset.02083 = phi i64 [ %5, %while.body.lr.ph ], [ %add1844, %cleanup.while.body_crit_edge ]
  %page_count.02082 = phi i32 [ %3, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %8 = tail call i32 @llvm.umin.i32(i32 %page_count.02082, i32 2047)
  %9 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 12
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %12
  br i1 %cmp.not.i, label %while.body.if.end109_crit_edge, label %if.then.i

while.body.if.end109_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

if.then.i:                                        ; preds = %while.body
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %14(ptr noundef %1, i32 noundef 12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end109_crit_edge, label %if.then.i.cleanup1845_crit_edge

if.then.i.cleanup1845_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1845

if.then.i.if.end109_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

if.end109:                                        ; preds = %if.then.i.if.end109_crit_edge, %while.body.if.end109_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %16, i32 12
  %17 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp122.not = icmp ult ptr %16, %add.ptr4.i
  br i1 %cmp122.not, label %if.end109.if.end146_crit_edge, label %do.end140, !prof !37

if.end109.if.end146_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

do.end140:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %if.end109.if.end146_crit_edge
  %18 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur.i, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %cmp159.not = icmp ult ptr %19, %21
  br i1 %cmp159.not, label %if.end146.if.end183_crit_edge, label %do.end177, !prof !37

if.end146.if.end183_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end183

do.end177:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end183

if.end183:                                        ; preds = %do.end177, %if.end146.if.end183_crit_edge
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i, align 4
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem195, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 8
  %36 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle, align 4
  %38 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %31(ptr noundef %mem195, ptr noundef nonnull @.str.7, ptr noundef %35, i32 noundef %37, ptr noundef %39, i32 noundef %sub.ptr.sub, i32 noundef 537034894, i32 noundef 4, i32 noundef 568, i32 noundef 2, ptr noundef nonnull @__func__.nvc0_bo_move_m2mf) #3
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 537034894, ptr %41, align 4
  %shr = lshr i64 %dst_offset.02083, 32
  %43 = trunc i64 %shr to i32
  %conv216 = and i32 %43, 255
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %seg.i, align 8
  %cmp221.not = icmp ult ptr %44, %46
  br i1 %cmp221.not, label %if.end183.if.end246_crit_edge, label %do.end240, !prof !37

if.end183.if.end246_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end246

do.end240:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end246

if.end246:                                        ; preds = %do.end240, %if.end183.if.end246_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %cmp260.not = icmp ult ptr %48, %50
  br i1 %cmp260.not, label %if.end246.if.end285_crit_edge, label %do.end279, !prof !37

if.end246.if.end285_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end285

do.end279:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end285

if.end285:                                        ; preds = %do.end279, %if.end246.if.end285_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast303 = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast304 = ptrtoint ptr %54 to i32
  %sub.ptr.sub305 = sub i32 %sub.ptr.lhs.cast303, %sub.ptr.rhs.cast304
  %55 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem195, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client, align 4
  %name317 = getelementptr inbounds %struct.nvif_object, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %name317 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name317, align 8
  %65 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %handle, align 4
  %67 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %60(ptr noundef %mem195, ptr noundef nonnull @.str.8, ptr noundef %64, i32 noundef %66, ptr noundef %68, i32 noundef %sub.ptr.sub305, i32 noundef %conv216) #3
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %incdec.ptr326 = getelementptr i32, ptr %70, i32 1
  store ptr %incdec.ptr326, ptr %cur.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv216, ptr %70, align 4
  %conv335 = trunc i64 %dst_offset.02083 to i32
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %seg.i, align 8
  %cmp340.not = icmp ult ptr %72, %74
  br i1 %cmp340.not, label %if.end285.if.end365_crit_edge, label %do.end359, !prof !37

if.end285.if.end365_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end365

do.end359:                                        ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end365

if.end365:                                        ; preds = %do.end359, %if.end285.if.end365_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i, align 4
  %cmp379.not = icmp ult ptr %76, %78
  br i1 %cmp379.not, label %if.end365.if.end404_crit_edge, label %do.end398, !prof !37

if.end365.if.end404_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end404

do.end398:                                        ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end404

if.end404:                                        ; preds = %do.end398, %if.end365.if.end404_crit_edge
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %81 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast422 = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast423 = ptrtoint ptr %82 to i32
  %sub.ptr.sub424 = sub i32 %sub.ptr.lhs.cast422, %sub.ptr.rhs.cast423
  %83 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mem195, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client, align 4
  %name436 = getelementptr inbounds %struct.nvif_object, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %name436 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name436, align 8
  %93 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %handle, align 4
  %95 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %88(ptr noundef %mem195, ptr noundef nonnull @.str.9, ptr noundef %92, i32 noundef %94, ptr noundef %96, i32 noundef %sub.ptr.sub424, i32 noundef %conv335) #3
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %incdec.ptr445 = getelementptr i32, ptr %98, i32 1
  store ptr %incdec.ptr445, ptr %cur.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv335, ptr %98, align 4
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %seg.i, align 8
  %cmp696.not = icmp ult ptr %100, %102
  br i1 %cmp696.not, label %if.end404.if.end721_crit_edge, label %do.end715, !prof !37

if.end404.if.end721_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end721

do.end715:                                        ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end721

if.end721:                                        ; preds = %do.end715, %if.end404.if.end721_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i, align 4
  %cmp735.not = icmp ult ptr %104, %106
  br i1 %cmp735.not, label %if.end721.if.end760_crit_edge, label %do.end754, !prof !37

if.end721.if.end760_crit_edge:                    ; preds = %if.end721
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end760

do.end754:                                        ; preds = %if.end721
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end760

if.end760:                                        ; preds = %do.end754, %if.end721.if.end760_crit_edge
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur.i, align 4
  %109 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast778 = ptrtoint ptr %108 to i32
  %sub.ptr.rhs.cast779 = ptrtoint ptr %110 to i32
  %sub.ptr.sub780 = sub i32 %sub.ptr.lhs.cast778, %sub.ptr.rhs.cast779
  %111 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mem195, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %117 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %client, align 4
  %name792 = getelementptr inbounds %struct.nvif_object, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %name792 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name792, align 8
  %121 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %handle, align 4
  %123 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %116(ptr noundef %mem195, ptr noundef nonnull @.str.7, ptr noundef %120, i32 noundef %122, ptr noundef %124, i32 noundef %sub.ptr.sub780, i32 noundef 537297091, i32 noundef 4, i32 noundef 780, i32 noundef 6, ptr noundef nonnull @__func__.nvc0_bo_move_m2mf) #3
  %125 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cur.i, align 4
  %incdec.ptr801 = getelementptr i32, ptr %126, i32 1
  store ptr %incdec.ptr801, ptr %cur.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 537297091, ptr %126, align 4
  %shr809 = lshr i64 %src_offset.02084, 32
  %128 = trunc i64 %shr809 to i32
  %conv815 = and i32 %128, 255
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp820.not = icmp ult ptr %129, %131
  br i1 %cmp820.not, label %if.end760.if.end845_crit_edge, label %do.end839, !prof !37

if.end760.if.end845_crit_edge:                    ; preds = %if.end760
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end845

do.end839:                                        ; preds = %if.end760
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end845

if.end845:                                        ; preds = %do.end839, %if.end760.if.end845_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp859.not = icmp ult ptr %133, %135
  br i1 %cmp859.not, label %if.end845.if.end884_crit_edge, label %do.end878, !prof !37

if.end845.if.end884_crit_edge:                    ; preds = %if.end845
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end884

do.end878:                                        ; preds = %if.end845
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end884

if.end884:                                        ; preds = %do.end878, %if.end845.if.end884_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %138 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast902 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast903 = ptrtoint ptr %139 to i32
  %sub.ptr.sub904 = sub i32 %sub.ptr.lhs.cast902, %sub.ptr.rhs.cast903
  %140 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mem195, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %146 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %client, align 4
  %name916 = getelementptr inbounds %struct.nvif_object, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %name916 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name916, align 8
  %150 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle, align 4
  %152 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem195, ptr noundef nonnull @.str.14, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub904, i32 noundef %conv815) #3
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %incdec.ptr925 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr925, ptr %cur.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv815, ptr %155, align 4
  %conv934 = trunc i64 %src_offset.02084 to i32
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %seg.i, align 8
  %cmp939.not = icmp ult ptr %157, %159
  br i1 %cmp939.not, label %if.end884.if.end964_crit_edge, label %do.end958, !prof !37

if.end884.if.end964_crit_edge:                    ; preds = %if.end884
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end964

do.end958:                                        ; preds = %if.end884
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end964

if.end964:                                        ; preds = %do.end958, %if.end884.if.end964_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %end.i, align 4
  %cmp978.not = icmp ult ptr %161, %163
  br i1 %cmp978.not, label %if.end964.if.end1003_crit_edge, label %do.end997, !prof !37

if.end964.if.end1003_crit_edge:                   ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1003

do.end997:                                        ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1003

if.end1003:                                       ; preds = %do.end997, %if.end964.if.end1003_crit_edge
  %164 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cur.i, align 4
  %166 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1021 = ptrtoint ptr %165 to i32
  %sub.ptr.rhs.cast1022 = ptrtoint ptr %167 to i32
  %sub.ptr.sub1023 = sub i32 %sub.ptr.lhs.cast1021, %sub.ptr.rhs.cast1022
  %168 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mem195, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %174 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %client, align 4
  %name1035 = getelementptr inbounds %struct.nvif_object, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %name1035 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name1035, align 8
  %178 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %handle, align 4
  %180 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %173(ptr noundef %mem195, ptr noundef nonnull @.str.15, ptr noundef %177, i32 noundef %179, ptr noundef %181, i32 noundef %sub.ptr.sub1023, i32 noundef %conv934) #3
  %182 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1044 = getelementptr i32, ptr %183, i32 1
  store ptr %incdec.ptr1044, ptr %cur.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv934, ptr %183, align 4
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %seg.i, align 8
  %cmp1056.not = icmp ult ptr %185, %187
  br i1 %cmp1056.not, label %if.end1003.if.end1081_crit_edge, label %do.end1075, !prof !37

if.end1003.if.end1081_crit_edge:                  ; preds = %if.end1003
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1081

do.end1075:                                       ; preds = %if.end1003
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1081

if.end1081:                                       ; preds = %do.end1075, %if.end1003.if.end1081_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %end.i, align 4
  %cmp1095.not = icmp ult ptr %189, %191
  br i1 %cmp1095.not, label %if.end1081.if.end1120_crit_edge, label %do.end1114, !prof !37

if.end1081.if.end1120_crit_edge:                  ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1120

do.end1114:                                       ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1120

if.end1120:                                       ; preds = %do.end1114, %if.end1081.if.end1120_crit_edge
  %192 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cur.i, align 4
  %194 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1138 = ptrtoint ptr %193 to i32
  %sub.ptr.rhs.cast1139 = ptrtoint ptr %195 to i32
  %sub.ptr.sub1140 = sub i32 %sub.ptr.lhs.cast1138, %sub.ptr.rhs.cast1139
  %196 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mem195, align 8
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %202 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %client, align 4
  %name1152 = getelementptr inbounds %struct.nvif_object, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %name1152 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name1152, align 8
  %206 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %handle, align 4
  %208 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %201(ptr noundef %mem195, ptr noundef nonnull @.str.16, ptr noundef %205, i32 noundef %207, ptr noundef %209, i32 noundef %sub.ptr.sub1140, i32 noundef 4096) #3
  %210 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1161 = getelementptr i32, ptr %211, i32 1
  store ptr %incdec.ptr1161, ptr %cur.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 4096, ptr %211, align 4
  %213 = load ptr, ptr %cur.i, align 4
  %214 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %seg.i, align 8
  %cmp1173.not = icmp ult ptr %213, %215
  br i1 %cmp1173.not, label %if.end1120.if.end1198_crit_edge, label %do.end1192, !prof !37

if.end1120.if.end1198_crit_edge:                  ; preds = %if.end1120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1198

do.end1192:                                       ; preds = %if.end1120
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1198

if.end1198:                                       ; preds = %do.end1192, %if.end1120.if.end1198_crit_edge
  %216 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cur.i, align 4
  %218 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %end.i, align 4
  %cmp1212.not = icmp ult ptr %217, %219
  br i1 %cmp1212.not, label %if.end1198.if.end1237_crit_edge, label %do.end1231, !prof !37

if.end1198.if.end1237_crit_edge:                  ; preds = %if.end1198
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1237

do.end1231:                                       ; preds = %if.end1198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1237

if.end1237:                                       ; preds = %do.end1231, %if.end1198.if.end1237_crit_edge
  %220 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cur.i, align 4
  %222 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1255 = ptrtoint ptr %221 to i32
  %sub.ptr.rhs.cast1256 = ptrtoint ptr %223 to i32
  %sub.ptr.sub1257 = sub i32 %sub.ptr.lhs.cast1255, %sub.ptr.rhs.cast1256
  %224 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mem195, align 8
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %230 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %client, align 4
  %name1269 = getelementptr inbounds %struct.nvif_object, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %name1269 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %name1269, align 8
  %234 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %handle, align 4
  %236 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %229(ptr noundef %mem195, ptr noundef nonnull @.str.17, ptr noundef %233, i32 noundef %235, ptr noundef %237, i32 noundef %sub.ptr.sub1257, i32 noundef 4096) #3
  %238 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1278 = getelementptr i32, ptr %239, i32 1
  store ptr %incdec.ptr1278, ptr %cur.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 4096, ptr %239, align 4
  %241 = load ptr, ptr %cur.i, align 4
  %242 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %seg.i, align 8
  %cmp1290.not = icmp ult ptr %241, %243
  br i1 %cmp1290.not, label %if.end1237.if.end1315_crit_edge, label %do.end1309, !prof !37

if.end1237.if.end1315_crit_edge:                  ; preds = %if.end1237
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1315

do.end1309:                                       ; preds = %if.end1237
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1315

if.end1315:                                       ; preds = %do.end1309, %if.end1237.if.end1315_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %246 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %end.i, align 4
  %cmp1329.not = icmp ult ptr %245, %247
  br i1 %cmp1329.not, label %if.end1315.if.end1354_crit_edge, label %do.end1348, !prof !37

if.end1315.if.end1354_crit_edge:                  ; preds = %if.end1315
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1354

do.end1348:                                       ; preds = %if.end1315
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1354

if.end1354:                                       ; preds = %do.end1348, %if.end1315.if.end1354_crit_edge
  %248 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cur.i, align 4
  %250 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1372 = ptrtoint ptr %249 to i32
  %sub.ptr.rhs.cast1373 = ptrtoint ptr %251 to i32
  %sub.ptr.sub1374 = sub i32 %sub.ptr.lhs.cast1372, %sub.ptr.rhs.cast1373
  %252 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mem195, align 8
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %258 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %client, align 4
  %name1386 = getelementptr inbounds %struct.nvif_object, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %name1386 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name1386, align 8
  %262 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %handle, align 4
  %264 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %257(ptr noundef %mem195, ptr noundef nonnull @.str.18, ptr noundef %261, i32 noundef %263, ptr noundef %265, i32 noundef %sub.ptr.sub1374, i32 noundef 4096) #3
  %266 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1395 = getelementptr i32, ptr %267, i32 1
  store ptr %incdec.ptr1395, ptr %cur.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 4096, ptr %267, align 4
  %269 = load ptr, ptr %cur.i, align 4
  %270 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %seg.i, align 8
  %cmp1407.not = icmp ult ptr %269, %271
  br i1 %cmp1407.not, label %if.end1354.if.end1432_crit_edge, label %do.end1426, !prof !37

if.end1354.if.end1432_crit_edge:                  ; preds = %if.end1354
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1432

do.end1426:                                       ; preds = %if.end1354
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1432

if.end1432:                                       ; preds = %do.end1426, %if.end1354.if.end1432_crit_edge
  %272 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %end.i, align 4
  %cmp1446.not = icmp ult ptr %273, %275
  br i1 %cmp1446.not, label %if.end1432.if.end1471_crit_edge, label %do.end1465, !prof !37

if.end1432.if.end1471_crit_edge:                  ; preds = %if.end1432
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1471

do.end1465:                                       ; preds = %if.end1432
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1471

if.end1471:                                       ; preds = %do.end1465, %if.end1432.if.end1471_crit_edge
  %276 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cur.i, align 4
  %278 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1489 = ptrtoint ptr %277 to i32
  %sub.ptr.rhs.cast1490 = ptrtoint ptr %279 to i32
  %sub.ptr.sub1491 = sub i32 %sub.ptr.lhs.cast1489, %sub.ptr.rhs.cast1490
  %280 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mem195, align 8
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %286 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %client, align 4
  %name1503 = getelementptr inbounds %struct.nvif_object, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %name1503 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %name1503, align 8
  %290 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %handle, align 4
  %292 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %285(ptr noundef %mem195, ptr noundef nonnull @.str.19, ptr noundef %289, i32 noundef %291, ptr noundef %293, i32 noundef %sub.ptr.sub1491, i32 noundef %8) #3
  %294 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1512 = getelementptr i32, ptr %295, i32 1
  store ptr %incdec.ptr1512, ptr %cur.i, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %8, ptr %295, align 4
  %297 = load ptr, ptr %cur.i, align 4
  %298 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %seg.i, align 8
  %cmp1613.not = icmp ult ptr %297, %299
  br i1 %cmp1613.not, label %if.end1471.if.end1638_crit_edge, label %do.end1632, !prof !37

if.end1471.if.end1638_crit_edge:                  ; preds = %if.end1471
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1638

do.end1632:                                       ; preds = %if.end1471
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1638

if.end1638:                                       ; preds = %do.end1632, %if.end1471.if.end1638_crit_edge
  %300 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cur.i, align 4
  %302 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %end.i, align 4
  %cmp1652.not = icmp ult ptr %301, %303
  br i1 %cmp1652.not, label %if.end1638.if.end1677_crit_edge, label %do.end1671, !prof !37

if.end1638.if.end1677_crit_edge:                  ; preds = %if.end1638
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1677

do.end1671:                                       ; preds = %if.end1638
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1677

if.end1677:                                       ; preds = %do.end1671, %if.end1638.if.end1677_crit_edge
  %304 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cur.i, align 4
  %306 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1695 = ptrtoint ptr %305 to i32
  %sub.ptr.rhs.cast1696 = ptrtoint ptr %307 to i32
  %sub.ptr.sub1697 = sub i32 %sub.ptr.lhs.cast1695, %sub.ptr.rhs.cast1696
  %308 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %mem195, align 8
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %311, align 4
  %314 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %client, align 4
  %name1709 = getelementptr inbounds %struct.nvif_object, ptr %315, i32 0, i32 2
  %316 = ptrtoint ptr %name1709 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %name1709, align 8
  %318 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %handle, align 4
  %320 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %313(ptr noundef %mem195, ptr noundef nonnull @.str.7, ptr noundef %317, i32 noundef %319, ptr noundef %321, i32 noundef %sub.ptr.sub1697, i32 noundef 536969408, i32 noundef 4, i32 noundef 768, i32 noundef 1, ptr noundef nonnull @__func__.nvc0_bo_move_m2mf) #3
  %322 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1718 = getelementptr i32, ptr %323, i32 1
  store ptr %incdec.ptr1718, ptr %cur.i, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 536969408, ptr %323, align 4
  %325 = load ptr, ptr %cur.i, align 4
  %326 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %seg.i, align 8
  %cmp1730.not = icmp ult ptr %325, %327
  br i1 %cmp1730.not, label %if.end1677.if.end1755_crit_edge, label %do.end1749, !prof !37

if.end1677.if.end1755_crit_edge:                  ; preds = %if.end1677
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1755

do.end1749:                                       ; preds = %if.end1677
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1755

if.end1755:                                       ; preds = %do.end1749, %if.end1677.if.end1755_crit_edge
  %328 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %cur.i, align 4
  %330 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %end.i, align 4
  %cmp1769.not = icmp ult ptr %329, %331
  br i1 %cmp1769.not, label %if.end1755.cleanup_crit_edge, label %do.end1788, !prof !37

if.end1755.cleanup_crit_edge:                     ; preds = %if.end1755
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end1788:                                       ; preds = %if.end1755
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end1788, %if.end1755.cleanup_crit_edge
  %332 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %cur.i, align 4
  %334 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1812 = ptrtoint ptr %333 to i32
  %sub.ptr.rhs.cast1813 = ptrtoint ptr %335 to i32
  %sub.ptr.sub1814 = sub i32 %sub.ptr.lhs.cast1812, %sub.ptr.rhs.cast1813
  %336 = ptrtoint ptr %mem195 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %mem195, align 8
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %337, align 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %339, align 4
  %342 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %client, align 4
  %name1826 = getelementptr inbounds %struct.nvif_object, ptr %343, i32 0, i32 2
  %344 = ptrtoint ptr %name1826 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %name1826, align 8
  %346 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %handle, align 4
  %348 = ptrtoint ptr %name201 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %name201, align 8
  tail call void (ptr, ptr, ...) %341(ptr noundef %mem195, ptr noundef nonnull @.str.20, ptr noundef %345, i32 noundef %347, ptr noundef %349, i32 noundef %sub.ptr.sub1814, i32 noundef 1048848) #3
  %350 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1835 = getelementptr i32, ptr %351, i32 1
  store ptr %incdec.ptr1835, ptr %cur.i, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 1048848, ptr %351, align 4
  %sub = sub i32 %page_count.02082, %8
  %mul1840 = shl nuw nsw i32 %8, 12
  %conv1841 = zext i32 %mul1840 to i64
  %add = add i64 %src_offset.02084, %conv1841
  %add1844 = add i64 %dst_offset.02083, %conv1841
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.cleanup1845_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.cleanup1845_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1845

cleanup1845:                                      ; preds = %cleanup.cleanup1845_crit_edge, %if.then.i.cleanup1845_crit_edge, %entry.cleanup1845_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup1845_crit_edge ], [ %call.i, %if.then.i.cleanup1845_crit_edge ], [ 0, %cleanup.cleanup1845_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_bo_move_init(ptr nocapture noundef readonly %chan, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end73_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end73_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
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
  br i1 %cmp.not, label %if.end73.if.end109_crit_edge, label %do.end103, !prof !37

if.end73.if.end109_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

do.end103:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end73.if.end109_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp122.not = icmp ult ptr %12, %14
  br i1 %cmp122.not, label %if.end109.if.end146_crit_edge, label %do.end140, !prof !37

if.end109.if.end146_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

do.end140:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.6) #3
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 536969216, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @__func__.nvc0_bo_move_init) #3
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 536969216, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp181.not = icmp ult ptr %36, %38
  br i1 %cmp181.not, label %if.end146.if.end205_crit_edge, label %do.end199, !prof !37

if.end146.if.end205_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end205

do.end199:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end205

if.end205:                                        ; preds = %do.end199, %if.end146.if.end205_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp219.not = icmp ult ptr %40, %42
  br i1 %cmp219.not, label %if.end205.if.end243_crit_edge, label %do.end237, !prof !37

if.end205.if.end243_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end243

do.end237:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef nonnull @.str.6) #3
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
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub263, i32 noundef %handle) #3
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr284 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr284, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %handle, ptr %62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end243 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo9039.c", i32 56, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.nvc0_bo_move_m2mf, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo9039.c", i32 61, i32 3}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.14, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.15, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.16, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.20, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo9039.c", i32 70, i32 3}
!25 = !{ptr @__func__.nvc0_bo_move_init, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo9039.c", i32 96, i32 2}
!27 = !{ptr @.str.21, !26, !"<string literal>", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
