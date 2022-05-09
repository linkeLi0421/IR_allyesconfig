; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_mclass = type { i32, i32 }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_mmu_v0 = type { i8, i8, i8, i8, i16 }
%struct.nvif_mmu_heap_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nvif_mmu_type_v0 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.anon.0 = type { i64 }
%struct.anon.1 = type { i8, i8 }
%struct.nvif_mmu_kind_v0 = type { i8, i8, i16, [0 x i8] }

@nvif_mmu_ctor.mems = internal constant { [4 x %struct.nvif_mclass], [32 x i8] } { [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147446773, i32 -1 }, %struct.nvif_mclass { i32 -2147463157, i32 -1 }, %struct.nvif_mclass { i32 -2147483637, i32 -1 }, %struct.nvif_mclass zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nvifMmu\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"mems\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 40, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [38 x i8] c"../drivers/gpu/drm/nouveau/nvif/mmu.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 54, i32 47 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nvif_mmu_ctor.mems, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvif_mmu_ctor.mems to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvif_mmu_dtor(ptr noundef %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %kind = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 9
  %0 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kind, align 4
  tail call void @kfree(ptr noundef %1) #4
  %type = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  tail call void @kfree(ptr noundef %3) #4
  %heap = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 7
  %4 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %heap, align 4
  tail call void @kfree(ptr noundef %5) #4
  tail call void @nvif_object_dtor(ptr noundef %mmu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvif_mmu_ctor(ptr noundef %parent, ptr noundef %name, i32 noundef %oclass, ptr noundef %mmu) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nvif_mmu_v0, align 2
  %sclass = alloca ptr, align 4
  %args74 = alloca %struct.nvif_mmu_heap_v0, align 8
  %args95 = alloca %struct.nvif_mmu_type_v0, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %args) #4
  %0 = call ptr @memset(ptr %args, i32 255, i32 6)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %args, align 2
  %heap = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 7
  %2 = ptrtoint ptr %heap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %heap, align 4
  %type = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 8
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %type, align 8
  %kind = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 9
  %4 = ptrtoint ptr %kind to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %kind, align 4
  %tobool.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool.not, ptr @.str, ptr %name
  %call = call i32 @nvif_object_ctor(ptr noundef %parent, ptr noundef nonnull %spec.select, i32 noundef 0, i32 noundef %oclass, ptr noundef nonnull %args, i32 noundef 6, ptr noundef %mmu) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.if.then228_crit_edge

entry.if.then228_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then228

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %args, i32 0, i32 4
  %6 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %args, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %args, i32 0, i32 2
  %8 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %dmabits2 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 1
  %11 = ptrtoint ptr %dmabits2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dmabits2, align 8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 2
  %heap_nr3 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 2
  %14 = ptrtoint ptr %heap_nr3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %heap_nr3, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %6, align 1
  %type_nr4 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 3
  %17 = ptrtoint ptr %type_nr4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %type_nr4, align 2
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 2
  %kind_nr5 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 5
  %20 = ptrtoint ptr %kind_nr5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %kind_nr5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #4
  %21 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !13
  %call10 = call i32 @nvif_object_sclass_get(ptr noundef %mmu, ptr noundef nonnull %sclass) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp = icmp sgt i32 %call10, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end37.thread

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp16422.not = icmp eq i32 %call10, 0
  br i1 %cmp16422.not, label %for.cond.preheader.if.end37.thread397_crit_edge, label %for.body17.lr.ph

for.cond.preheader.if.end37.thread397_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.thread397

if.end37.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  br label %if.then228

for.body17.lr.ph:                                 ; preds = %for.cond.preheader
  %22 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sclass, align 4
  br label %for.body17

if.end37.thread397:                               ; preds = %for.inc.2.if.end37.thread397_crit_edge, %land.rhs.2.if.end37.thread397_crit_edge, %land.rhs.1.if.end37.thread397_crit_edge, %for.cond.preheader.if.end37.thread397_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  br label %if.then228

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %for.body17.lr.ph
  %j.0423 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc.for.body17_crit_edge ]
  %arrayidx20 = getelementptr %struct.nvif_sclass, ptr %23, i32 %j.0423
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147446773, i32 %25)
  %cmp22 = icmp eq i32 %25, -2147446773
  br i1 %cmp22, label %land.lhs.true, label %for.body17.for.inc_crit_edge

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body17
  %minver = getelementptr %struct.nvif_sclass, ptr %23, i32 %j.0423, i32 1
  %26 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp26.not = icmp sgt i32 %27, -1
  br i1 %cmp26.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true27

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true27:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %23, i32 %j.0423, i32 2
  %28 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp31.not = icmp slt i32 %29, -1
  br i1 %cmp31.not, label %land.lhs.true27.for.inc_crit_edge, label %land.lhs.true27.if.end40_crit_edge

land.lhs.true27.if.end40_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true27.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body17.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0423, 1
  %exitcond.not = icmp eq i32 %inc, %call10
  br i1 %exitcond.not, label %land.rhs.1, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17

land.rhs.1:                                       ; preds = %for.inc
  br i1 %cmp16422.not, label %land.rhs.1.if.end37.thread397_crit_edge, label %for.body17.lr.ph.1

land.rhs.1.if.end37.thread397_crit_edge:          ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.thread397

for.body17.lr.ph.1:                               ; preds = %land.rhs.1
  %30 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sclass, align 4
  br label %for.body17.1

for.body17.1:                                     ; preds = %for.inc.1.for.body17.1_crit_edge, %for.body17.lr.ph.1
  %j.0423.1 = phi i32 [ 0, %for.body17.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body17.1_crit_edge ]
  %arrayidx20.1 = getelementptr %struct.nvif_sclass, ptr %31, i32 %j.0423.1
  %32 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463157, i32 %33)
  %cmp22.1 = icmp eq i32 %33, -2147463157
  br i1 %cmp22.1, label %land.lhs.true.1, label %for.body17.1.for.inc.1_crit_edge

for.body17.1.for.inc.1_crit_edge:                 ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body17.1
  %minver.1 = getelementptr %struct.nvif_sclass, ptr %31, i32 %j.0423.1, i32 1
  %34 = ptrtoint ptr %minver.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp26.not.1 = icmp sgt i32 %35, -1
  br i1 %cmp26.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true27.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true27.1:                                ; preds = %land.lhs.true.1
  %maxver.1 = getelementptr %struct.nvif_sclass, ptr %31, i32 %j.0423.1, i32 2
  %36 = ptrtoint ptr %maxver.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maxver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp31.not.1 = icmp slt i32 %37, -1
  br i1 %cmp31.not.1, label %land.lhs.true27.1.for.inc.1_crit_edge, label %land.lhs.true27.1.if.end40_crit_edge

land.lhs.true27.1.if.end40_crit_edge:             ; preds = %land.lhs.true27.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

land.lhs.true27.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true27.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true27.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body17.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.0423.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %call10
  br i1 %exitcond.1.not, label %land.rhs.2, label %for.inc.1.for.body17.1_crit_edge

for.inc.1.for.body17.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17.1

land.rhs.2:                                       ; preds = %for.inc.1
  br i1 %cmp16422.not, label %land.rhs.2.if.end37.thread397_crit_edge, label %for.body17.lr.ph.2

land.rhs.2.if.end37.thread397_crit_edge:          ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.thread397

for.body17.lr.ph.2:                               ; preds = %land.rhs.2
  %38 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sclass, align 4
  br label %for.body17.2

for.body17.2:                                     ; preds = %for.inc.2.for.body17.2_crit_edge, %for.body17.lr.ph.2
  %j.0423.2 = phi i32 [ 0, %for.body17.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body17.2_crit_edge ]
  %arrayidx20.2 = getelementptr %struct.nvif_sclass, ptr %39, i32 %j.0423.2
  %40 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx20.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483637, i32 %41)
  %cmp22.2 = icmp eq i32 %41, -2147483637
  br i1 %cmp22.2, label %land.lhs.true.2, label %for.body17.2.for.inc.2_crit_edge

for.body17.2.for.inc.2_crit_edge:                 ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body17.2
  %minver.2 = getelementptr %struct.nvif_sclass, ptr %39, i32 %j.0423.2, i32 1
  %42 = ptrtoint ptr %minver.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp26.not.2 = icmp sgt i32 %43, -1
  br i1 %cmp26.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true27.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true27.2:                                ; preds = %land.lhs.true.2
  %maxver.2 = getelementptr %struct.nvif_sclass, ptr %39, i32 %j.0423.2, i32 2
  %44 = ptrtoint ptr %maxver.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp31.not.2 = icmp slt i32 %45, -1
  br i1 %cmp31.not.2, label %land.lhs.true27.2.for.inc.2_crit_edge, label %land.lhs.true27.2.if.end40_crit_edge

land.lhs.true27.2.if.end40_crit_edge:             ; preds = %land.lhs.true27.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

land.lhs.true27.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true27.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true27.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body17.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.0423.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %call10
  br i1 %exitcond.2.not, label %for.inc.2.if.end37.thread397_crit_edge, label %for.inc.2.for.body17.2_crit_edge

for.inc.2.for.body17.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17.2

for.inc.2.if.end37.thread397_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37.thread397

if.end40:                                         ; preds = %land.lhs.true27.2.if.end40_crit_edge, %land.lhs.true27.1.if.end40_crit_edge, %land.lhs.true27.if.end40_crit_edge
  %ret8.1.lcssa = phi i32 [ 2, %land.lhs.true27.2.if.end40_crit_edge ], [ 1, %land.lhs.true27.1.if.end40_crit_edge ], [ 0, %land.lhs.true27.if.end40_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  %arrayidx41 = getelementptr [4 x %struct.nvif_mclass], ptr @nvif_mmu_ctor.mems, i32 0, i32 %ret8.1.lcssa
  %46 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx41, align 4
  %mem = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 6
  %48 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %mem, align 8
  %49 = ptrtoint ptr %heap_nr3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %heap_nr3, align 1
  %conv = zext i8 %50 to i32
  %51 = shl nuw nsw i32 %conv, 3
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3264) #7
  %52 = ptrtoint ptr %heap to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8.i, ptr %heap, align 4
  %53 = ptrtoint ptr %type_nr4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type_nr4, align 2
  %conv47 = zext i8 %54 to i32
  %55 = shl nuw nsw i32 %conv47, 1
  %call8.i358 = call noalias align 128 ptr @__kmalloc(i32 noundef %55, i32 noundef 3264) #7
  %56 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call8.i358, ptr %type, align 8
  %57 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %heap, align 4
  %tobool51.not = icmp eq ptr %58, null
  %tobool53.not = icmp eq ptr %call8.i358, null
  %or.cond = select i1 %tobool51.not, i1 true, i1 %tobool53.not
  br i1 %or.cond, label %if.end40.if.then228_crit_edge, label %if.end7.i392

if.end40.if.then228_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then228

if.end7.i392:                                     ; preds = %if.end40
  %59 = ptrtoint ptr %kind_nr5 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %kind_nr5, align 4
  %conv57 = zext i16 %60 to i32
  %call8.i391 = call noalias align 128 ptr @__kmalloc(i32 noundef %conv57, i32 noundef 3264) #7
  %61 = ptrtoint ptr %kind to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i391, ptr %kind, align 4
  %tobool61.not = icmp eq ptr %call8.i391, null
  br i1 %tobool61.not, label %land.lhs.true62, label %if.end7.i392.if.end67_crit_edge

if.end7.i392.if.end67_crit_edge:                  ; preds = %if.end7.i392
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

land.lhs.true62:                                  ; preds = %if.end7.i392
  %62 = ptrtoint ptr %kind_nr5 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %kind_nr5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool65.not = icmp eq i16 %63, 0
  br i1 %tobool65.not, label %land.lhs.true62.if.end67_crit_edge, label %land.lhs.true62.if.then228_crit_edge

land.lhs.true62.if.then228_crit_edge:             ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then228

land.lhs.true62.if.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.end67:                                         ; preds = %land.lhs.true62.if.end67_crit_edge, %if.end7.i392.if.end67_crit_edge
  %64 = ptrtoint ptr %heap_nr3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %heap_nr3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp71430.not = icmp eq i8 %65, 0
  br i1 %cmp71430.not, label %if.end67.for.cond89.preheader_crit_edge, label %for.body73.lr.ph

if.end67.for.cond89.preheader_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond89.preheader

for.body73.lr.ph:                                 ; preds = %if.end67
  %66 = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %args74, i32 0, i32 1
  %67 = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %args74, i32 0, i32 2
  %68 = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %args74, i32 0, i32 3
  br label %for.body73

for.cond89.preheader:                             ; preds = %for.inc86.for.cond89.preheader_crit_edge, %if.end67.for.cond89.preheader_crit_edge
  %ret.0.lcssa = phi i32 [ -12, %if.end67.for.cond89.preheader_crit_edge ], [ 0, %for.inc86.for.cond89.preheader_crit_edge ]
  %69 = ptrtoint ptr %type_nr4 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %type_nr4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp92433.not = icmp eq i8 %70, 0
  br i1 %cmp92433.not, label %for.cond89.preheader.for.end197_crit_edge, label %for.body94.lr.ph

for.cond89.preheader.for.end197_crit_edge:        ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end197

for.body94.lr.ph:                                 ; preds = %for.cond89.preheader
  %71 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 1
  %72 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 2
  %73 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 3
  %74 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 4
  %75 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 5
  %76 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 6
  %77 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 7
  %78 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 8
  %79 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 9
  %80 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %args95, i32 0, i32 10
  br label %for.body94

for.body73:                                       ; preds = %for.inc86.for.body73_crit_edge, %for.body73.lr.ph
  %i.0431 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc87, %for.inc86.for.body73_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args74) #4
  %81 = ptrtoint ptr %args74 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %args74, align 8
  %conv76 = trunc i32 %i.0431 to i8
  %82 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv76, ptr %66, align 1
  %83 = call ptr @memset(ptr %67, i32 0, i32 14)
  %call78 = call i32 @nvif_object_mthd(ptr noundef %mmu, i32 noundef 0, ptr noundef nonnull %args74, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.inc86, label %cleanup

cleanup:                                          ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args74) #4
  br label %if.then228

for.inc86:                                        ; preds = %for.body73
  %84 = ptrtoint ptr %68 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %68, align 8
  %86 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %heap, align 4
  %arrayidx84 = getelementptr %struct.anon.0, ptr %87, i32 %i.0431
  %88 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %85, ptr %arrayidx84, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args74) #4
  %inc87 = add nuw nsw i32 %i.0431, 1
  %89 = ptrtoint ptr %heap_nr3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %heap_nr3, align 1
  %conv70 = zext i8 %90 to i32
  %cmp71 = icmp ult i32 %inc87, %conv70
  br i1 %cmp71, label %for.inc86.for.body73_crit_edge, label %for.inc86.for.cond89.preheader_crit_edge

for.inc86.for.cond89.preheader_crit_edge:         ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond89.preheader

for.inc86.for.body73_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body73

for.body94:                                       ; preds = %for.inc195.for.body94_crit_edge, %for.body94.lr.ph
  %i.1434 = phi i32 [ 0, %for.body94.lr.ph ], [ %inc196, %for.inc195.for.body94_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %args95) #4
  %91 = ptrtoint ptr %args95 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %args95, align 1
  %conv98 = trunc i32 %i.1434 to i8
  %92 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv98, ptr %71, align 1
  %93 = call ptr @memset(ptr %72, i32 0, i32 9)
  %call102 = call i32 @nvif_object_mthd(ptr noundef %mmu, i32 noundef 1, ptr noundef nonnull %args95, i32 noundef 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %cleanup192

if.end105:                                        ; preds = %for.body94
  %94 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %type, align 8
  %arrayidx107 = getelementptr %struct.anon.1, ptr %95, i32 %i.1434
  %96 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx107, align 1
  %97 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool110.not = icmp eq i8 %98, 0
  br i1 %tobool110.not, label %if.end105.if.end117_crit_edge, label %if.then111

if.end105.if.end117_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  %99 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %type, align 8
  %arrayidx113 = getelementptr %struct.anon.1, ptr %100, i32 %i.1434
  %101 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx113, align 1
  %103 = or i8 %102, 1
  store i8 %103, ptr %arrayidx113, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %if.end105.if.end117_crit_edge
  %104 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool119.not = icmp eq i8 %105, 0
  br i1 %tobool119.not, label %if.end117.if.end127_crit_edge, label %if.then120

if.end117.if.end127_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end127

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %type, align 8
  %arrayidx122 = getelementptr %struct.anon.1, ptr %107, i32 %i.1434
  %108 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx122, align 1
  %110 = or i8 %109, 2
  store i8 %110, ptr %arrayidx122, align 1
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %if.end117.if.end127_crit_edge
  %111 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool129.not = icmp eq i8 %112, 0
  br i1 %tobool129.not, label %if.end127.if.end137_crit_edge, label %if.then130

if.end127.if.end137_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end137

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  %113 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %type, align 8
  %arrayidx132 = getelementptr %struct.anon.1, ptr %114, i32 %i.1434
  %115 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx132, align 1
  %117 = or i8 %116, 4
  store i8 %117, ptr %arrayidx132, align 1
  br label %if.end137

if.end137:                                        ; preds = %if.then130, %if.end127.if.end137_crit_edge
  %118 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool139.not = icmp eq i8 %119, 0
  br i1 %tobool139.not, label %if.end137.if.end147_crit_edge, label %if.then140

if.end137.if.end147_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end147

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #6
  %120 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %type, align 8
  %arrayidx142 = getelementptr %struct.anon.1, ptr %121, i32 %i.1434
  %122 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx142, align 1
  %124 = or i8 %123, 8
  store i8 %124, ptr %arrayidx142, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.then140, %if.end137.if.end147_crit_edge
  %125 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool149.not = icmp eq i8 %126, 0
  br i1 %tobool149.not, label %if.end147.if.end157_crit_edge, label %if.then150

if.end147.if.end157_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then150:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #6
  %127 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %type, align 8
  %arrayidx152 = getelementptr %struct.anon.1, ptr %128, i32 %i.1434
  %129 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx152, align 1
  %131 = or i8 %130, 16
  store i8 %131, ptr %arrayidx152, align 1
  br label %if.end157

if.end157:                                        ; preds = %if.then150, %if.end147.if.end157_crit_edge
  %132 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool159.not = icmp eq i8 %133, 0
  br i1 %tobool159.not, label %if.end157.if.end167_crit_edge, label %if.then160

if.end157.if.end167_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then160:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %134 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %type, align 8
  %arrayidx162 = getelementptr %struct.anon.1, ptr %135, i32 %i.1434
  %136 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx162, align 1
  %138 = or i8 %137, 32
  store i8 %138, ptr %arrayidx162, align 1
  br label %if.end167

if.end167:                                        ; preds = %if.then160, %if.end157.if.end167_crit_edge
  %139 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool169.not = icmp eq i8 %140, 0
  br i1 %tobool169.not, label %if.end167.if.end177_crit_edge, label %if.then170

if.end167.if.end177_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end177

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  %141 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %type, align 8
  %arrayidx172 = getelementptr %struct.anon.1, ptr %142, i32 %i.1434
  %143 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx172, align 1
  %145 = or i8 %144, 64
  store i8 %145, ptr %arrayidx172, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.then170, %if.end167.if.end177_crit_edge
  %146 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool179.not = icmp eq i8 %147, 0
  br i1 %tobool179.not, label %if.end177.for.inc195_crit_edge, label %if.then180

if.end177.for.inc195_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc195

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #6
  %148 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %type, align 8
  %arrayidx182 = getelementptr %struct.anon.1, ptr %149, i32 %i.1434
  %150 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx182, align 1
  %152 = or i8 %151, -128
  store i8 %152, ptr %arrayidx182, align 1
  br label %for.inc195

cleanup192:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %args95) #4
  br label %if.then228

for.inc195:                                       ; preds = %if.then180, %if.end177.for.inc195_crit_edge
  %153 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %72, align 1
  %155 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %type, align 8
  %heap191 = getelementptr %struct.anon.1, ptr %156, i32 %i.1434, i32 1
  %157 = ptrtoint ptr %heap191 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %154, ptr %heap191, align 1
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %args95) #4
  %inc196 = add nuw nsw i32 %i.1434, 1
  %158 = ptrtoint ptr %type_nr4 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %type_nr4, align 2
  %conv91 = zext i8 %159 to i32
  %cmp92 = icmp ult i32 %inc196, %conv91
  br i1 %cmp92, label %for.inc195.for.body94_crit_edge, label %for.inc195.for.end197_crit_edge

for.inc195.for.end197_crit_edge:                  ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end197

for.inc195.for.body94_crit_edge:                  ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body94

for.end197:                                       ; preds = %for.inc195.for.end197_crit_edge, %for.cond89.preheader.for.end197_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0.lcssa, %for.cond89.preheader.for.end197_crit_edge ], [ 0, %for.inc195.for.end197_crit_edge ]
  %160 = ptrtoint ptr %kind_nr5 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %kind_nr5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %tobool199.not = icmp eq i16 %161, 0
  br i1 %tobool199.not, label %for.end197.done_crit_edge, label %if.then200

for.end197.done_crit_edge:                        ; preds = %for.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then200:                                       ; preds = %for.end197
  %conv203 = zext i16 %161 to i32
  %spec.select.i416 = add nuw nsw i32 %conv203, 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i416, i32 noundef 3264) #7
  %tobool206.not = icmp eq ptr %call9.i, null
  br i1 %tobool206.not, label %if.then200.if.then228_crit_edge, label %if.end209

if.then200.if.then228_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then228

if.end209:                                        ; preds = %if.then200
  %162 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %call9.i, align 128
  %163 = ptrtoint ptr %kind_nr5 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %kind_nr5, align 4
  %count = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %call9.i, i32 0, i32 2
  %165 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %count, align 2
  %call213 = call i32 @nvif_object_mthd(ptr noundef %mmu, i32 noundef 2, ptr noundef nonnull %call9.i, i32 noundef %spec.select.i416) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %cmp214 = icmp eq i32 %call213, 0
  br i1 %cmp214, label %if.then216, label %if.end209.if.end220_crit_edge

if.end209.if.end220_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end220

if.then216:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #6
  %166 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %kind, align 4
  %data = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %call9.i, i32 0, i32 3
  %168 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %count, align 2
  %conv219 = zext i16 %169 to i32
  %170 = call ptr @memcpy(ptr %167, ptr %data, i32 %conv219)
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %if.end209.if.end220_crit_edge
  %kind_inv = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %call9.i, i32 0, i32 1
  %171 = ptrtoint ptr %kind_inv to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %kind_inv, align 1
  %kind_inv221 = getelementptr inbounds %struct.nvif_mmu, ptr %mmu, i32 0, i32 4
  %173 = ptrtoint ptr %kind_inv221 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %kind_inv221, align 1
  call void @kfree(ptr noundef nonnull %call9.i) #4
  br label %done

done:                                             ; preds = %if.end220, %for.end197.done_crit_edge
  %ret.3 = phi i32 [ %ret.1.lcssa, %for.end197.done_crit_edge ], [ %call213, %if.end220 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool227.not = icmp eq i32 %ret.3, 0
  br i1 %tobool227.not, label %done.cleanup230_crit_edge, label %done.if.then228_crit_edge

done.if.then228_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then228

done.cleanup230_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup230

if.then228:                                       ; preds = %done.if.then228_crit_edge, %if.then200.if.then228_crit_edge, %cleanup192, %cleanup, %land.lhs.true62.if.then228_crit_edge, %if.end40.if.then228_crit_edge, %if.end37.thread397, %if.end37.thread, %entry.if.then228_crit_edge
  %ret.3414 = phi i32 [ %ret.3, %done.if.then228_crit_edge ], [ -19, %if.end37.thread397 ], [ -19, %if.end37.thread ], [ -12, %if.then200.if.then228_crit_edge ], [ -12, %if.end40.if.then228_crit_edge ], [ -12, %land.lhs.true62.if.then228_crit_edge ], [ %call102, %cleanup192 ], [ %call78, %cleanup ], [ %call, %entry.if.then228_crit_edge ]
  %174 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %kind, align 4
  call void @kfree(ptr noundef %175) #4
  %176 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %type, align 8
  call void @kfree(ptr noundef %177) #4
  %178 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %heap, align 4
  call void @kfree(ptr noundef %179) #4
  call void @nvif_object_dtor(ptr noundef %mmu) #4
  br label %cleanup230

cleanup230:                                       ; preds = %if.then228, %done.cleanup230_crit_edge
  %ret.3415 = phi i32 [ 0, %done.cleanup230_crit_edge ], [ %ret.3414, %if.then228 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %args) #4
  ret i32 %ret.3415
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nvif_mmu_ctor.mems, !1, !"mems", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/mmu.c", i32 40, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvif/mmu.c", i32 54, i32 47}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
