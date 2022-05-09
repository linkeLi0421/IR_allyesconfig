; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bo90b5.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo90b5.c"
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

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo90b5.c\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nvc0_bo_move_copy = private unnamed_addr constant [18 x i8] c"nvc0_bo_move_copy\00", align 1
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x030c\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0310\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0314\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0318\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x031c\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0320\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0324\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0328\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%s/%08x:%s] %08x: %08x immd subc %d mthd 0x%04x data 0x%04x - %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0300\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 51, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo90b5.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 59, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_bo_move_copy(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %bo, ptr nocapture noundef readonly %old_reg, ptr nocapture noundef readonly %new_reg) local_unnamed_addr #0 align 64 {
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
  %tobool.not1811 = icmp eq i32 %3, 0
  br i1 %tobool.not1811, label %entry.cleanup1596_crit_edge, label %while.body.lr.ph

entry.cleanup1596_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1596

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
  %mem375 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %name381 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %src_offset.01814 = phi i64 [ %7, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %dst_offset.01813 = phi i64 [ %5, %while.body.lr.ph ], [ %add1595, %cleanup.while.body_crit_edge ]
  %page_count.01812 = phi i32 [ %3, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %8 = tail call i32 @llvm.umin.i32(i32 %page_count.01812, i32 8191)
  %9 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 10
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %12
  br i1 %cmp.not.i, label %while.body.if.end289_crit_edge, label %if.then.i

while.body.if.end289_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end289

if.then.i:                                        ; preds = %while.body
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %14(ptr noundef %1, i32 noundef 10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end289_crit_edge, label %if.then.i.cleanup1596_crit_edge

if.then.i.cleanup1596_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1596

if.then.i.if.end289_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end289

if.end289:                                        ; preds = %if.then.i.if.end289_crit_edge, %while.body.if.end289_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %16, i32 10
  %17 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp302.not = icmp ult ptr %16, %add.ptr4.i
  br i1 %cmp302.not, label %if.end289.if.end326_crit_edge, label %do.end320, !prof !36

if.end289.if.end326_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end326

do.end320:                                        ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end326

if.end326:                                        ; preds = %do.end320, %if.end289.if.end326_crit_edge
  %18 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur.i, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i, align 4
  %cmp339.not = icmp ult ptr %19, %21
  br i1 %cmp339.not, label %if.end326.if.end363_crit_edge, label %do.end357, !prof !36

if.end326.if.end363_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end363

do.end357:                                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end363

if.end363:                                        ; preds = %do.end357, %if.end326.if.end363_crit_edge
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur.i, align 4
  %24 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %26 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem375, align 8
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
  %38 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %31(ptr noundef %mem375, ptr noundef nonnull @.str.13, ptr noundef %35, i32 noundef %37, ptr noundef %39, i32 noundef %sub.ptr.sub, i32 noundef 537428163, i32 noundef 4, i32 noundef 780, i32 noundef 8, ptr noundef nonnull @__func__.nvc0_bo_move_copy) #3
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 537428163, ptr %41, align 4
  %shr = lshr i64 %src_offset.01814, 32
  %conv = trunc i64 %shr to i32
  %43 = load ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %seg.i, align 8
  %cmp399.not = icmp ult ptr %43, %45
  br i1 %cmp399.not, label %if.end363.if.end424_crit_edge, label %do.end418, !prof !36

if.end363.if.end424_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end424

do.end418:                                        ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end424

if.end424:                                        ; preds = %do.end418, %if.end363.if.end424_crit_edge
  %46 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i, align 4
  %48 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i, align 4
  %cmp438.not = icmp ult ptr %47, %49
  br i1 %cmp438.not, label %if.end424.if.end463_crit_edge, label %do.end457, !prof !36

if.end424.if.end463_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end463

do.end457:                                        ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end463

if.end463:                                        ; preds = %do.end457, %if.end424.if.end463_crit_edge
  %50 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i, align 4
  %52 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast481 = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast482 = ptrtoint ptr %53 to i32
  %sub.ptr.sub483 = sub i32 %sub.ptr.lhs.cast481, %sub.ptr.rhs.cast482
  %54 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem375, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %name495 = getelementptr inbounds %struct.nvif_object, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %name495 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name495, align 8
  %64 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %handle, align 4
  %66 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %59(ptr noundef %mem375, ptr noundef nonnull @.str.14, ptr noundef %63, i32 noundef %65, ptr noundef %67, i32 noundef %sub.ptr.sub483, i32 noundef %conv) #3
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %incdec.ptr504 = getelementptr i32, ptr %69, i32 1
  store ptr %incdec.ptr504, ptr %cur.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv, ptr %69, align 4
  %conv512 = trunc i64 %src_offset.01814 to i32
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %seg.i, align 8
  %cmp517.not = icmp ult ptr %71, %73
  br i1 %cmp517.not, label %if.end463.if.end542_crit_edge, label %do.end536, !prof !36

if.end463.if.end542_crit_edge:                    ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end542

do.end536:                                        ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end542

if.end542:                                        ; preds = %do.end536, %if.end463.if.end542_crit_edge
  %74 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cur.i, align 4
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i, align 4
  %cmp556.not = icmp ult ptr %75, %77
  br i1 %cmp556.not, label %if.end542.if.end581_crit_edge, label %do.end575, !prof !36

if.end542.if.end581_crit_edge:                    ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end581

do.end575:                                        ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end581

if.end581:                                        ; preds = %do.end575, %if.end542.if.end581_crit_edge
  %78 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i, align 4
  %80 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast599 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast600 = ptrtoint ptr %81 to i32
  %sub.ptr.sub601 = sub i32 %sub.ptr.lhs.cast599, %sub.ptr.rhs.cast600
  %82 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mem375, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %client, align 4
  %name613 = getelementptr inbounds %struct.nvif_object, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %name613 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name613, align 8
  %92 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %handle, align 4
  %94 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %87(ptr noundef %mem375, ptr noundef nonnull @.str.15, ptr noundef %91, i32 noundef %93, ptr noundef %95, i32 noundef %sub.ptr.sub601, i32 noundef %conv512) #3
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %incdec.ptr622 = getelementptr i32, ptr %97, i32 1
  store ptr %incdec.ptr622, ptr %cur.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv512, ptr %97, align 4
  %shr630 = lshr i64 %dst_offset.01813, 32
  %conv632 = trunc i64 %shr630 to i32
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %seg.i, align 8
  %cmp637.not = icmp ult ptr %99, %101
  br i1 %cmp637.not, label %if.end581.if.end662_crit_edge, label %do.end656, !prof !36

if.end581.if.end662_crit_edge:                    ; preds = %if.end581
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end662

do.end656:                                        ; preds = %if.end581
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end662

if.end662:                                        ; preds = %do.end656, %if.end581.if.end662_crit_edge
  %102 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur.i, align 4
  %104 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %end.i, align 4
  %cmp676.not = icmp ult ptr %103, %105
  br i1 %cmp676.not, label %if.end662.if.end701_crit_edge, label %do.end695, !prof !36

if.end662.if.end701_crit_edge:                    ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end701

do.end695:                                        ; preds = %if.end662
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end701

if.end701:                                        ; preds = %do.end695, %if.end662.if.end701_crit_edge
  %106 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cur.i, align 4
  %108 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast719 = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast720 = ptrtoint ptr %109 to i32
  %sub.ptr.sub721 = sub i32 %sub.ptr.lhs.cast719, %sub.ptr.rhs.cast720
  %110 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mem375, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %116 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %client, align 4
  %name733 = getelementptr inbounds %struct.nvif_object, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %name733 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name733, align 8
  %120 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %handle, align 4
  %122 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %115(ptr noundef %mem375, ptr noundef nonnull @.str.16, ptr noundef %119, i32 noundef %121, ptr noundef %123, i32 noundef %sub.ptr.sub721, i32 noundef %conv632) #3
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %incdec.ptr742 = getelementptr i32, ptr %125, i32 1
  store ptr %incdec.ptr742, ptr %cur.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv632, ptr %125, align 4
  %conv751 = trunc i64 %dst_offset.01813 to i32
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %seg.i, align 8
  %cmp756.not = icmp ult ptr %127, %129
  br i1 %cmp756.not, label %if.end701.if.end781_crit_edge, label %do.end775, !prof !36

if.end701.if.end781_crit_edge:                    ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end781

do.end775:                                        ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end781

if.end781:                                        ; preds = %do.end775, %if.end701.if.end781_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i, align 4
  %cmp795.not = icmp ult ptr %131, %133
  br i1 %cmp795.not, label %if.end781.if.end820_crit_edge, label %do.end814, !prof !36

if.end781.if.end820_crit_edge:                    ; preds = %if.end781
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end820

do.end814:                                        ; preds = %if.end781
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end820

if.end820:                                        ; preds = %do.end814, %if.end781.if.end820_crit_edge
  %134 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cur.i, align 4
  %136 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast838 = ptrtoint ptr %135 to i32
  %sub.ptr.rhs.cast839 = ptrtoint ptr %137 to i32
  %sub.ptr.sub840 = sub i32 %sub.ptr.lhs.cast838, %sub.ptr.rhs.cast839
  %138 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mem375, align 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %client, align 4
  %name852 = getelementptr inbounds %struct.nvif_object, ptr %145, i32 0, i32 2
  %146 = ptrtoint ptr %name852 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name852, align 8
  %148 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %handle, align 4
  %150 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %143(ptr noundef %mem375, ptr noundef nonnull @.str.17, ptr noundef %147, i32 noundef %149, ptr noundef %151, i32 noundef %sub.ptr.sub840, i32 noundef %conv751) #3
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %incdec.ptr861 = getelementptr i32, ptr %153, i32 1
  store ptr %incdec.ptr861, ptr %cur.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv751, ptr %153, align 4
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %seg.i, align 8
  %cmp873.not = icmp ult ptr %155, %157
  br i1 %cmp873.not, label %if.end820.if.end898_crit_edge, label %do.end892, !prof !36

if.end820.if.end898_crit_edge:                    ; preds = %if.end820
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end898

do.end892:                                        ; preds = %if.end820
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end898

if.end898:                                        ; preds = %do.end892, %if.end820.if.end898_crit_edge
  %158 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %end.i, align 4
  %cmp912.not = icmp ult ptr %159, %161
  br i1 %cmp912.not, label %if.end898.if.end937_crit_edge, label %do.end931, !prof !36

if.end898.if.end937_crit_edge:                    ; preds = %if.end898
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end937

do.end931:                                        ; preds = %if.end898
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end937

if.end937:                                        ; preds = %do.end931, %if.end898.if.end937_crit_edge
  %162 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur.i, align 4
  %164 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast955 = ptrtoint ptr %163 to i32
  %sub.ptr.rhs.cast956 = ptrtoint ptr %165 to i32
  %sub.ptr.sub957 = sub i32 %sub.ptr.lhs.cast955, %sub.ptr.rhs.cast956
  %166 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mem375, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %172 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %client, align 4
  %name969 = getelementptr inbounds %struct.nvif_object, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %name969 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name969, align 8
  %176 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %handle, align 4
  %178 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %171(ptr noundef %mem375, ptr noundef nonnull @.str.18, ptr noundef %175, i32 noundef %177, ptr noundef %179, i32 noundef %sub.ptr.sub957, i32 noundef 4096) #3
  %180 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cur.i, align 4
  %incdec.ptr978 = getelementptr i32, ptr %181, i32 1
  store ptr %incdec.ptr978, ptr %cur.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 4096, ptr %181, align 4
  %183 = load ptr, ptr %cur.i, align 4
  %184 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %seg.i, align 8
  %cmp990.not = icmp ult ptr %183, %185
  br i1 %cmp990.not, label %if.end937.if.end1015_crit_edge, label %do.end1009, !prof !36

if.end937.if.end1015_crit_edge:                   ; preds = %if.end937
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1015

do.end1009:                                       ; preds = %if.end937
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1015

if.end1015:                                       ; preds = %do.end1009, %if.end937.if.end1015_crit_edge
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %188 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i, align 4
  %cmp1029.not = icmp ult ptr %187, %189
  br i1 %cmp1029.not, label %if.end1015.if.end1054_crit_edge, label %do.end1048, !prof !36

if.end1015.if.end1054_crit_edge:                  ; preds = %if.end1015
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1054

do.end1048:                                       ; preds = %if.end1015
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end1054

if.end1054:                                       ; preds = %do.end1048, %if.end1015.if.end1054_crit_edge
  %190 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cur.i, align 4
  %192 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1072 = ptrtoint ptr %191 to i32
  %sub.ptr.rhs.cast1073 = ptrtoint ptr %193 to i32
  %sub.ptr.sub1074 = sub i32 %sub.ptr.lhs.cast1072, %sub.ptr.rhs.cast1073
  %194 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mem375, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %client, align 4
  %name1086 = getelementptr inbounds %struct.nvif_object, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %name1086 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name1086, align 8
  %204 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %handle, align 4
  %206 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %199(ptr noundef %mem375, ptr noundef nonnull @.str.19, ptr noundef %203, i32 noundef %205, ptr noundef %207, i32 noundef %sub.ptr.sub1074, i32 noundef 4096) #3
  %208 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1095 = getelementptr i32, ptr %209, i32 1
  store ptr %incdec.ptr1095, ptr %cur.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 4096, ptr %209, align 4
  %211 = load ptr, ptr %cur.i, align 4
  %212 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %seg.i, align 8
  %cmp1107.not = icmp ult ptr %211, %213
  br i1 %cmp1107.not, label %if.end1054.if.end1132_crit_edge, label %do.end1126, !prof !36

if.end1054.if.end1132_crit_edge:                  ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1132

do.end1126:                                       ; preds = %if.end1054
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1132

if.end1132:                                       ; preds = %do.end1126, %if.end1054.if.end1132_crit_edge
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %end.i, align 4
  %cmp1146.not = icmp ult ptr %215, %217
  br i1 %cmp1146.not, label %if.end1132.if.end1171_crit_edge, label %do.end1165, !prof !36

if.end1132.if.end1171_crit_edge:                  ; preds = %if.end1132
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1171

do.end1165:                                       ; preds = %if.end1132
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end1171

if.end1171:                                       ; preds = %do.end1165, %if.end1132.if.end1171_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1189 = ptrtoint ptr %219 to i32
  %sub.ptr.rhs.cast1190 = ptrtoint ptr %221 to i32
  %sub.ptr.sub1191 = sub i32 %sub.ptr.lhs.cast1189, %sub.ptr.rhs.cast1190
  %222 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mem375, align 8
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %228 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %client, align 4
  %name1203 = getelementptr inbounds %struct.nvif_object, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %name1203 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name1203, align 8
  %232 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %handle, align 4
  %234 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %227(ptr noundef %mem375, ptr noundef nonnull @.str.20, ptr noundef %231, i32 noundef %233, ptr noundef %235, i32 noundef %sub.ptr.sub1191, i32 noundef 4096) #3
  %236 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1212 = getelementptr i32, ptr %237, i32 1
  store ptr %incdec.ptr1212, ptr %cur.i, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 4096, ptr %237, align 4
  %239 = load ptr, ptr %cur.i, align 4
  %240 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %seg.i, align 8
  %cmp1224.not = icmp ult ptr %239, %241
  br i1 %cmp1224.not, label %if.end1171.if.end1249_crit_edge, label %do.end1243, !prof !36

if.end1171.if.end1249_crit_edge:                  ; preds = %if.end1171
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1249

do.end1243:                                       ; preds = %if.end1171
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1249

if.end1249:                                       ; preds = %do.end1243, %if.end1171.if.end1249_crit_edge
  %242 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cur.i, align 4
  %244 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %end.i, align 4
  %cmp1263.not = icmp ult ptr %243, %245
  br i1 %cmp1263.not, label %if.end1249.if.end1288_crit_edge, label %do.end1282, !prof !36

if.end1249.if.end1288_crit_edge:                  ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1288

do.end1282:                                       ; preds = %if.end1249
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %if.end1288

if.end1288:                                       ; preds = %do.end1282, %if.end1249.if.end1288_crit_edge
  %246 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cur.i, align 4
  %248 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1306 = ptrtoint ptr %247 to i32
  %sub.ptr.rhs.cast1307 = ptrtoint ptr %249 to i32
  %sub.ptr.sub1308 = sub i32 %sub.ptr.lhs.cast1306, %sub.ptr.rhs.cast1307
  %250 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mem375, align 8
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 4
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %256 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %client, align 4
  %name1320 = getelementptr inbounds %struct.nvif_object, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %name1320 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %name1320, align 8
  %260 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %handle, align 4
  %262 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %255(ptr noundef %mem375, ptr noundef nonnull @.str.21, ptr noundef %259, i32 noundef %261, ptr noundef %263, i32 noundef %sub.ptr.sub1308, i32 noundef %8) #3
  %264 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1329 = getelementptr i32, ptr %265, i32 1
  store ptr %incdec.ptr1329, ptr %cur.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %8, ptr %265, align 4
  %267 = load ptr, ptr %cur.i, align 4
  %268 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %seg.i, align 8
  %cmp1445.not = icmp ult ptr %267, %269
  br i1 %cmp1445.not, label %if.end1288.if.end1470_crit_edge, label %do.end1464, !prof !36

if.end1288.if.end1470_crit_edge:                  ; preds = %if.end1288
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1470

do.end1464:                                       ; preds = %if.end1288
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1470

if.end1470:                                       ; preds = %do.end1464, %if.end1288.if.end1470_crit_edge
  %270 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cur.i, align 4
  %272 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %end.i, align 4
  %cmp1484.not = icmp ult ptr %271, %273
  br i1 %cmp1484.not, label %if.end1470.cleanup_crit_edge, label %do.end1503, !prof !36

if.end1470.cleanup_crit_edge:                     ; preds = %if.end1470
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end1503:                                       ; preds = %if.end1470
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.12) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end1503, %if.end1470.cleanup_crit_edge
  %274 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %cur.i, align 4
  %276 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1527 = ptrtoint ptr %275 to i32
  %sub.ptr.rhs.cast1528 = ptrtoint ptr %277 to i32
  %sub.ptr.sub1529 = sub i32 %sub.ptr.lhs.cast1527, %sub.ptr.rhs.cast1528
  %278 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mem375, align 8
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %284 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %client, align 4
  %name1541 = getelementptr inbounds %struct.nvif_object, ptr %285, i32 0, i32 2
  %286 = ptrtoint ptr %name1541 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %name1541, align 8
  %288 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %handle, align 4
  %290 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %283(ptr noundef %mem375, ptr noundef nonnull @.str.22, ptr noundef %287, i32 noundef %289, ptr noundef %291, i32 noundef %sub.ptr.sub1529, i32 noundef -2129624896, i32 noundef 4, i32 noundef 768, i32 noundef 272, ptr noundef nonnull @__func__.nvc0_bo_move_copy) #3
  %292 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1550 = getelementptr i32, ptr %293, i32 1
  store ptr %incdec.ptr1550, ptr %cur.i, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 -2129624896, ptr %293, align 4
  %295 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1556 = getelementptr i32, ptr %295, i32 -1
  store ptr %incdec.ptr1556, ptr %cur.i, align 4
  %296 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1565 = ptrtoint ptr %incdec.ptr1556 to i32
  %sub.ptr.rhs.cast1566 = ptrtoint ptr %297 to i32
  %sub.ptr.sub1567 = sub i32 %sub.ptr.lhs.cast1565, %sub.ptr.rhs.cast1566
  %298 = ptrtoint ptr %mem375 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mem375, align 8
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %299, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %301, align 4
  %304 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %client, align 4
  %name1579 = getelementptr inbounds %struct.nvif_object, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %name1579 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %name1579, align 8
  %308 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %handle, align 4
  %310 = ptrtoint ptr %name381 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %name381, align 8
  tail call void (ptr, ptr, ...) %303(ptr noundef %mem375, ptr noundef nonnull @.str.23, ptr noundef %307, i32 noundef %309, ptr noundef %311, i32 noundef %sub.ptr.sub1567, i32 noundef 272) #3
  %312 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1588 = getelementptr i32, ptr %313, i32 1
  store ptr %incdec.ptr1588, ptr %cur.i, align 4
  %sub = sub i32 %page_count.01812, %8
  %mul1591 = shl nuw nsw i32 %8, 12
  %conv1592 = zext i32 %mul1591 to i64
  %add = add i64 %src_offset.01814, %conv1592
  %add1595 = add i64 %dst_offset.01813, %conv1592
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.cleanup1596_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.cleanup1596_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup1596

cleanup1596:                                      ; preds = %cleanup.cleanup1596_crit_edge, %if.then.i.cleanup1596_crit_edge, %entry.cleanup1596_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup1596_crit_edge ], [ %call.i, %if.then.i.cleanup1596_crit_edge ], [ 0, %cleanup.cleanup1596_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo90b5.c", i32 51, i32 3}
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
!15 = !{ptr @__func__.nvc0_bo_move_copy, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.22, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo90b5.c", i32 59, i32 3}
!26 = !{ptr @.str.23, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 2000, i32 1}
