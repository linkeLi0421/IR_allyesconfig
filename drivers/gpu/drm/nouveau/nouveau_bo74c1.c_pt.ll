; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bo74c1.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo74c1.c"
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

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo74c1.c\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv84_bo_move_exec = private unnamed_addr constant [18 x i8] c"nv84_bo_move_exec\00", align 1
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0304\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0308\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x030c\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0310\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0314\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0318\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo74c1.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 47, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv84_bo_move_exec(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %bo, ptr nocapture noundef readonly %old_reg, ptr nocapture noundef readonly %new_reg) local_unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 7
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end224_crit_edge, label %if.then.i

entry.if.end224_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end224

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 7) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end224_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.if.end224_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end224

if.end224:                                        ; preds = %if.then.i.if.end224_crit_edge, %entry.if.end224_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 7
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end224.if.end260_crit_edge, label %do.end254, !prof !29

if.end224.if.end260_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end260

do.end254:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end260

if.end260:                                        ; preds = %do.end254, %if.end224.if.end260_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp273.not = icmp ult ptr %12, %14
  br i1 %cmp273.not, label %if.end260.if.end297_crit_edge, label %do.end291, !prof !29

if.end260.if.end297_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end297

do.end291:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end297

if.end297:                                        ; preds = %do.end291, %if.end260.if.end297_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem309 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem309, align 8
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
  %name315 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem309, ptr noundef nonnull @.str.11, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 1606404, i32 noundef 4, i32 noundef 772, i32 noundef 6, ptr noundef nonnull @__func__.nv84_bo_move_exec) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1606404, ptr %34, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 1
  %36 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %37, 12
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp332.not = icmp ult ptr %38, %40
  br i1 %cmp332.not, label %if.end297.if.end356_crit_edge, label %do.end350, !prof !29

if.end297.if.end356_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end356

do.end350:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end356

if.end356:                                        ; preds = %do.end350, %if.end297.if.end356_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp370.not = icmp ult ptr %42, %44
  br i1 %cmp370.not, label %if.end356.if.end394_crit_edge, label %do.end388, !prof !29

if.end356.if.end394_crit_edge:                    ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end394

do.end388:                                        ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end394

if.end394:                                        ; preds = %do.end388, %if.end356.if.end394_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast412 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast413 = ptrtoint ptr %48 to i32
  %sub.ptr.sub414 = sub i32 %sub.ptr.lhs.cast412, %sub.ptr.rhs.cast413
  %49 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem309, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name426 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name426 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name426, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem309, ptr noundef nonnull @.str.12, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub414, i32 noundef %shl) #2
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr435 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr435, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl, ptr %64, align 4
  %vma = getelementptr inbounds %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5
  %66 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %vma, align 8
  %shr = lshr i64 %67, 32
  %conv = trunc i64 %shr to i32
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %seg.i, align 8
  %cmp448.not = icmp ult ptr %68, %70
  br i1 %cmp448.not, label %if.end394.if.end473_crit_edge, label %do.end467, !prof !29

if.end394.if.end473_crit_edge:                    ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end473

do.end467:                                        ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end473

if.end473:                                        ; preds = %do.end467, %if.end394.if.end473_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %cmp487.not = icmp ult ptr %72, %74
  br i1 %cmp487.not, label %if.end473.if.end512_crit_edge, label %do.end506, !prof !29

if.end473.if.end512_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end512

do.end506:                                        ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end512

if.end512:                                        ; preds = %do.end506, %if.end473.if.end512_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast530 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast531 = ptrtoint ptr %78 to i32
  %sub.ptr.sub532 = sub i32 %sub.ptr.lhs.cast530, %sub.ptr.rhs.cast531
  %79 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem309, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client, align 4
  %name544 = getelementptr inbounds %struct.nvif_object, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %name544 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name544, align 8
  %89 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle, align 4
  %91 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %84(ptr noundef %mem309, ptr noundef nonnull @.str.13, ptr noundef %88, i32 noundef %90, ptr noundef %92, i32 noundef %sub.ptr.sub532, i32 noundef %conv) #2
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %incdec.ptr553 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr553, ptr %cur.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv, ptr %94, align 4
  %96 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %vma, align 8
  %conv564 = trunc i64 %97 to i32
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %seg.i, align 8
  %cmp569.not = icmp ult ptr %98, %100
  br i1 %cmp569.not, label %if.end512.if.end594_crit_edge, label %do.end588, !prof !29

if.end512.if.end594_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end594

do.end588:                                        ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end594

if.end594:                                        ; preds = %do.end588, %if.end512.if.end594_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i, align 4
  %cmp608.not = icmp ult ptr %102, %104
  br i1 %cmp608.not, label %if.end594.if.end633_crit_edge, label %do.end627, !prof !29

if.end594.if.end633_crit_edge:                    ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end633

do.end627:                                        ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end633

if.end633:                                        ; preds = %do.end627, %if.end594.if.end633_crit_edge
  %105 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast651 = ptrtoint ptr %106 to i32
  %sub.ptr.rhs.cast652 = ptrtoint ptr %108 to i32
  %sub.ptr.sub653 = sub i32 %sub.ptr.lhs.cast651, %sub.ptr.rhs.cast652
  %109 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mem309, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client, align 4
  %name665 = getelementptr inbounds %struct.nvif_object, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %name665 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name665, align 8
  %119 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %handle, align 4
  %121 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %114(ptr noundef %mem309, ptr noundef nonnull @.str.14, ptr noundef %118, i32 noundef %120, ptr noundef %122, i32 noundef %sub.ptr.sub653, i32 noundef %conv564) #2
  %123 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cur.i, align 4
  %incdec.ptr674 = getelementptr i32, ptr %124, i32 1
  store ptr %incdec.ptr674, ptr %cur.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv564, ptr %124, align 4
  %arrayidx683 = getelementptr %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5, i32 1
  %126 = ptrtoint ptr %arrayidx683 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx683, align 8
  %shr685 = lshr i64 %127, 32
  %conv687 = trunc i64 %shr685 to i32
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %seg.i, align 8
  %cmp692.not = icmp ult ptr %128, %130
  br i1 %cmp692.not, label %if.end633.if.end717_crit_edge, label %do.end711, !prof !29

if.end633.if.end717_crit_edge:                    ; preds = %if.end633
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end717

do.end711:                                        ; preds = %if.end633
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end717

if.end717:                                        ; preds = %do.end711, %if.end633.if.end717_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %end.i, align 4
  %cmp731.not = icmp ult ptr %132, %134
  br i1 %cmp731.not, label %if.end717.if.end756_crit_edge, label %do.end750, !prof !29

if.end717.if.end756_crit_edge:                    ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end756

do.end750:                                        ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end756

if.end756:                                        ; preds = %do.end750, %if.end717.if.end756_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %137 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast774 = ptrtoint ptr %136 to i32
  %sub.ptr.rhs.cast775 = ptrtoint ptr %138 to i32
  %sub.ptr.sub776 = sub i32 %sub.ptr.lhs.cast774, %sub.ptr.rhs.cast775
  %139 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem309, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %client, align 4
  %name788 = getelementptr inbounds %struct.nvif_object, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %name788 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name788, align 8
  %149 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %handle, align 4
  %151 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %144(ptr noundef %mem309, ptr noundef nonnull @.str.15, ptr noundef %148, i32 noundef %150, ptr noundef %152, i32 noundef %sub.ptr.sub776, i32 noundef %conv687) #2
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %incdec.ptr797 = getelementptr i32, ptr %154, i32 1
  store ptr %incdec.ptr797, ptr %cur.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv687, ptr %154, align 4
  %156 = ptrtoint ptr %arrayidx683 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx683, align 8
  %conv809 = trunc i64 %157 to i32
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %seg.i, align 8
  %cmp814.not = icmp ult ptr %158, %160
  br i1 %cmp814.not, label %if.end756.if.end839_crit_edge, label %do.end833, !prof !29

if.end756.if.end839_crit_edge:                    ; preds = %if.end756
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end839

do.end833:                                        ; preds = %if.end756
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end839

if.end839:                                        ; preds = %do.end833, %if.end756.if.end839_crit_edge
  %161 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cur.i, align 4
  %163 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i, align 4
  %cmp853.not = icmp ult ptr %162, %164
  br i1 %cmp853.not, label %if.end839.if.end878_crit_edge, label %do.end872, !prof !29

if.end839.if.end878_crit_edge:                    ; preds = %if.end839
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end878

do.end872:                                        ; preds = %if.end839
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end878

if.end878:                                        ; preds = %do.end872, %if.end839.if.end878_crit_edge
  %165 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %cur.i, align 4
  %167 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast896 = ptrtoint ptr %166 to i32
  %sub.ptr.rhs.cast897 = ptrtoint ptr %168 to i32
  %sub.ptr.sub898 = sub i32 %sub.ptr.lhs.cast896, %sub.ptr.rhs.cast897
  %169 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mem309, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %client, align 4
  %name910 = getelementptr inbounds %struct.nvif_object, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %name910 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name910, align 8
  %179 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %handle, align 4
  %181 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %174(ptr noundef %mem309, ptr noundef nonnull @.str.16, ptr noundef %178, i32 noundef %180, ptr noundef %182, i32 noundef %sub.ptr.sub898, i32 noundef %conv809) #2
  %183 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cur.i, align 4
  %incdec.ptr919 = getelementptr i32, ptr %184, i32 1
  store ptr %incdec.ptr919, ptr %cur.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %conv809, ptr %184, align 4
  %186 = load ptr, ptr %cur.i, align 4
  %187 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %seg.i, align 8
  %cmp931.not = icmp ult ptr %186, %188
  br i1 %cmp931.not, label %if.end878.if.end956_crit_edge, label %do.end950, !prof !29

if.end878.if.end956_crit_edge:                    ; preds = %if.end878
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end956

do.end950:                                        ; preds = %if.end878
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end956

if.end956:                                        ; preds = %do.end950, %if.end878.if.end956_crit_edge
  %189 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cur.i, align 4
  %191 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %end.i, align 4
  %cmp970.not = icmp ult ptr %190, %192
  br i1 %cmp970.not, label %if.end956.if.end995_crit_edge, label %do.end989, !prof !29

if.end956.if.end995_crit_edge:                    ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end995

do.end989:                                        ; preds = %if.end956
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.10) #2
  br label %if.end995

if.end995:                                        ; preds = %do.end989, %if.end956.if.end995_crit_edge
  %193 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cur.i, align 4
  %195 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1013 = ptrtoint ptr %194 to i32
  %sub.ptr.rhs.cast1014 = ptrtoint ptr %196 to i32
  %sub.ptr.sub1015 = sub i32 %sub.ptr.lhs.cast1013, %sub.ptr.rhs.cast1014
  %197 = ptrtoint ptr %mem309 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mem309, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %203 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %client, align 4
  %name1027 = getelementptr inbounds %struct.nvif_object, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %name1027 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %name1027, align 8
  %207 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %handle, align 4
  %209 = ptrtoint ptr %name315 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %name315, align 8
  tail call void (ptr, ptr, ...) %202(ptr noundef %mem309, ptr noundef nonnull @.str.17, ptr noundef %206, i32 noundef %208, ptr noundef %210, i32 noundef %sub.ptr.sub1015, i32 noundef 0) #2
  %211 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1036 = getelementptr i32, ptr %212, i32 1
  store ptr %incdec.ptr1036, ptr %cur.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %212, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end995, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end995 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo74c1.c", i32 47, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.nv84_bo_move_exec, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
