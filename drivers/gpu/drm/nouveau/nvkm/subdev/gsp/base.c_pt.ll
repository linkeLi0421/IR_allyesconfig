; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gsp_fwif = type { i32, ptr, ptr }
%struct.nvkm_gsp = type { %struct.nvkm_subdev, %struct.nvkm_falcon }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.136, %struct.anon.137, %struct.nvkm_engine }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.anon.137 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.140 }
%struct.anon.140 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }

@nvkm_gsp = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_gsp_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Gsp\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [9 x i8] c"nvkm_gsp\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 37, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 52, i32 9 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @nvkm_gsp, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gsp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gsp_new_(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pgsp) local_unnamed_addr #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 504) #8
  %1 = ptrtoint ptr %pgsp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgsp, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_gsp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #5
  %2 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %device3 = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device3, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfgopt, align 4
  %call5 = call i32 @nvkm_longopt(ptr noundef %6, ptr noundef nonnull %_option, i32 noundef -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call5)
  %cmp = icmp sgt i32 %call5, -2
  br i1 %cmp, label %if.end.land.rhs_crit_edge, label %13

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %_next.0125 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %fwif, %if.end.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.nvkm_gsp_fwif, ptr %_next.0125, i32 0, i32 1
  %7 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %load, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %land.rhs.if.then51_crit_edge, label %for.body

land.rhs.if.then51_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

for.body:                                         ; preds = %land.rhs
  %9 = ptrtoint ptr %_next.0125 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_next.0125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call5)
  %cmp9 = icmp ne i32 %10, %call5
  %incdec.ptr = getelementptr %struct.nvkm_gsp_fwif, ptr %_next.0125, i32 1
  %tobool7.not132 = icmp eq ptr %_next.0125, null
  %tobool7.not = select i1 %cmp9, i1 true, i1 %tobool7.not132
  br i1 %tobool7.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %11 = ptrtoint ptr %_next.0125 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0125, align 4
  br label %14

13:                                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call17102 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %14

14:                                               ; preds = %13, %cond.end
  %.sink148 = phi i32 [ %12, %cond.end ], [ -1, %13 ]
  %_fwif.2100110 = phi ptr [ %_next.0125, %cond.end ], [ null, %13 ]
  %15 = phi ptr [ %_next.0125, %cond.end ], [ %fwif, %13 ]
  %16 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device3, align 4
  %cfgopt22 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %cfgopt22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfgopt22, align 4
  %call24 = call i32 @nvkm_longopt(ptr noundef %19, ptr noundef nonnull %_option, i32 noundef %.sink148) #5
  %load31126 = getelementptr inbounds %struct.nvkm_gsp_fwif, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %load31126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %load31126, align 4
  %tobool32.not127 = icmp eq ptr %21, null
  br i1 %tobool32.not127, label %.if.end53_crit_edge, label %for.body33.lr.ph

.if.end53_crit_edge:                              ; preds = %14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

for.body33.lr.ph:                                 ; preds = %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp34 = icmp sgt i32 %call24, -1
  br label %for.body33

for.body33:                                       ; preds = %for.inc46.for.body33_crit_edge, %for.body33.lr.ph
  %22 = phi ptr [ %21, %for.body33.lr.ph ], [ %26, %for.inc46.for.body33_crit_edge ]
  %_next.1128 = phi ptr [ %15, %for.body33.lr.ph ], [ %incdec.ptr47, %for.inc46.for.body33_crit_edge ]
  br i1 %cmp34, label %if.end49, label %cond.end38

cond.end38:                                       ; preds = %for.body33
  %23 = ptrtoint ptr %_next.1128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_next.1128, align 4
  %call41 = call i32 %22(ptr noundef nonnull %call7.i.i, i32 noundef %24, ptr noundef %_next.1128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %cond.end38.if.end53_crit_edge, label %for.inc46

cond.end38.if.end53_crit_edge:                    ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

for.inc46:                                        ; preds = %cond.end38
  %incdec.ptr47 = getelementptr %struct.nvkm_gsp_fwif, ptr %_next.1128, i32 1
  %load31 = getelementptr %struct.nvkm_gsp_fwif, ptr %_next.1128, i32 1, i32 1
  %25 = ptrtoint ptr %load31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %load31, align 4
  %tobool32.not = icmp eq ptr %26, null
  br i1 %tobool32.not, label %for.inc46.if.then51_crit_edge, label %for.inc46.for.body33_crit_edge

for.inc46.for.body33_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body33

for.inc46.if.then51_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.end49:                                         ; preds = %for.body33
  %call41115 = call i32 %21(ptr noundef nonnull %call7.i.i, i32 noundef %call24, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41115)
  %tobool50.not = icmp eq i32 %call41115, 0
  br i1 %tobool50.not, label %if.end49.if.end53_crit_edge, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %for.inc46.if.then51_crit_edge, %land.rhs.if.then51_crit_edge
  %_ret.2121 = phi i32 [ %call41115, %if.end49.if.then51_crit_edge ], [ %call41, %for.inc46.if.then51_crit_edge ], [ -22, %land.rhs.if.then51_crit_edge ]
  %27 = inttoptr i32 %_ret.2121 to ptr
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge, %cond.end38.if.end53_crit_edge, %.if.end53_crit_edge
  %_fwif.4 = phi ptr [ %27, %if.then51 ], [ %15, %if.end49.if.end53_crit_edge ], [ %_fwif.2100110, %.if.end53_crit_edge ], [ %_next.1128, %cond.end38.if.end53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #5
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %_fwif.4 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %flcn = getelementptr inbounds %struct.nvkm_gsp_fwif, ptr %_fwif.4, i32 0, i32 2
  %29 = ptrtoint ptr %flcn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %flcn, align 4
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  %falcon = getelementptr inbounds %struct.nvkm_gsp, ptr %call7.i.i, i32 0, i32 1
  %call61 = call i32 @nvkm_falcon_ctor(ptr noundef %30, ptr noundef nonnull %call7.i.i, ptr noundef %name, i32 noundef 0, ptr noundef %falcon) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then55 ], [ %call61, %if.end57 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_gsp_dtor(ptr noundef returned %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %falcon = getelementptr inbounds %struct.nvkm_gsp, ptr %subdev, i32 0, i32 1
  tail call void @nvkm_falcon_dtor(ptr noundef %falcon) #5
  ret ptr %subdev
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c", i32 52, i32 9}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvkm_gsp, !5, !"nvkm_gsp", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c", i32 37, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
