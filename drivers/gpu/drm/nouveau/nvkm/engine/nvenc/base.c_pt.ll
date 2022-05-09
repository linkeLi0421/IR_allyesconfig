; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/nvenc/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/nvenc/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.137, %struct.anon.138, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.137 = type { ptr }
%struct.anon.138 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_nvenc = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.139 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.139 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.135, %struct.anon.136, %struct.nvkm_engine }
%struct.anon.135 = type { i32, ptr, i32, i8 }
%struct.anon.136 = type { i32, ptr, i32, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_nvenc_fwif = type { i32, ptr, ptr }

@nvkm_nvenc = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_nvenc_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.137 zeroinitializer, %struct.anon.138 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Nvenc\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Nv%sFw\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Nv%sFwVer\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"nvkm_nvenc\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 35, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/nvenc/base.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 54, i32 9 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @nvkm_nvenc, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_nvenc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_nvenc_new_(ptr noundef %fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pnvenc) local_unnamed_addr #0 align 64 {
entry:
  %_option = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 656) #8
  %1 = ptrtoint ptr %pnvenc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pnvenc, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %engine = getelementptr inbounds %struct.nvkm_nvenc, ptr %call7.i.i, i32 0, i32 1
  %call1 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_nvenc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %subdev = getelementptr inbounds %struct.nvkm_nvenc, ptr %call7.i.i, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %_option) #5
  %2 = call ptr @memset(ptr %_option, i32 255, i32 32)
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %device7 = getelementptr inbounds %struct.nvkm_nvenc, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device7, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfgopt, align 4
  %call9 = call i32 @nvkm_longopt(ptr noundef %6, ptr noundef nonnull %_option, i32 noundef -2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9)
  %cmp = icmp sgt i32 %call9, -2
  br i1 %cmp, label %if.end4.land.rhs_crit_edge, label %13

if.end4.land.rhs_crit_edge:                       ; preds = %if.end4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end4.land.rhs_crit_edge
  %_next.0135 = phi ptr [ %incdec.ptr, %for.body.land.rhs_crit_edge ], [ %fwif, %if.end4.land.rhs_crit_edge ]
  %load = getelementptr inbounds %struct.nvkm_nvenc_fwif, ptr %_next.0135, i32 0, i32 1
  %7 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %load, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %land.rhs.if.then55_crit_edge, label %for.body

land.rhs.if.then55_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

for.body:                                         ; preds = %land.rhs
  %9 = ptrtoint ptr %_next.0135 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_next.0135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call9)
  %cmp13 = icmp ne i32 %10, %call9
  %incdec.ptr = getelementptr %struct.nvkm_nvenc_fwif, ptr %_next.0135, i32 1
  %tobool11.not142 = icmp eq ptr %_next.0135, null
  %tobool11.not = select i1 %cmp13, i1 true, i1 %tobool11.not142
  br i1 %tobool11.not, label %for.body.land.rhs_crit_edge, label %cond.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %11 = ptrtoint ptr %_next.0135 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_next.0135, align 4
  br label %14

13:                                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call21112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %_option, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %14

14:                                               ; preds = %13, %cond.end
  %.sink158 = phi i32 [ %12, %cond.end ], [ -1, %13 ]
  %_fwif.2110120 = phi ptr [ %_next.0135, %cond.end ], [ null, %13 ]
  %15 = phi ptr [ %_next.0135, %cond.end ], [ %fwif, %13 ]
  %16 = ptrtoint ptr %device7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device7, align 4
  %cfgopt26 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %cfgopt26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfgopt26, align 4
  %call28 = call i32 @nvkm_longopt(ptr noundef %19, ptr noundef nonnull %_option, i32 noundef %.sink158) #5
  %load35136 = getelementptr inbounds %struct.nvkm_nvenc_fwif, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %load35136 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %load35136, align 4
  %tobool36.not137 = icmp eq ptr %21, null
  br i1 %tobool36.not137, label %.if.end57_crit_edge, label %for.body37.lr.ph

.if.end57_crit_edge:                              ; preds = %14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

for.body37.lr.ph:                                 ; preds = %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp38 = icmp sgt i32 %call28, -1
  br label %for.body37

for.body37:                                       ; preds = %for.inc50.for.body37_crit_edge, %for.body37.lr.ph
  %22 = phi ptr [ %21, %for.body37.lr.ph ], [ %26, %for.inc50.for.body37_crit_edge ]
  %_next.1138 = phi ptr [ %15, %for.body37.lr.ph ], [ %incdec.ptr51, %for.inc50.for.body37_crit_edge ]
  br i1 %cmp38, label %if.end53, label %cond.end42

cond.end42:                                       ; preds = %for.body37
  %23 = ptrtoint ptr %_next.1138 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_next.1138, align 4
  %call45 = call i32 %22(ptr noundef nonnull %call7.i.i, i32 noundef %24, ptr noundef %_next.1138) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %cond.end42.if.end57_crit_edge, label %for.inc50

cond.end42.if.end57_crit_edge:                    ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

for.inc50:                                        ; preds = %cond.end42
  %incdec.ptr51 = getelementptr %struct.nvkm_nvenc_fwif, ptr %_next.1138, i32 1
  %load35 = getelementptr %struct.nvkm_nvenc_fwif, ptr %_next.1138, i32 1, i32 1
  %25 = ptrtoint ptr %load35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %load35, align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %for.inc50.if.then55_crit_edge, label %for.inc50.for.body37_crit_edge

for.inc50.for.body37_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body37

for.inc50.if.then55_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.end53:                                         ; preds = %for.body37
  %call45125 = call i32 %21(ptr noundef nonnull %call7.i.i, i32 noundef %call28, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45125)
  %tobool54.not = icmp eq i32 %call45125, 0
  br i1 %tobool54.not, label %if.end53.if.end57_crit_edge, label %if.end53.if.then55_crit_edge

if.end53.if.then55_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then55:                                        ; preds = %if.end53.if.then55_crit_edge, %for.inc50.if.then55_crit_edge, %land.rhs.if.then55_crit_edge
  %_ret.2131 = phi i32 [ %call45125, %if.end53.if.then55_crit_edge ], [ %call45, %for.inc50.if.then55_crit_edge ], [ -22, %land.rhs.if.then55_crit_edge ]
  %27 = inttoptr i32 %_ret.2131 to ptr
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end53.if.end57_crit_edge, %cond.end42.if.end57_crit_edge, %.if.end57_crit_edge
  %_fwif.4 = phi ptr [ %27, %if.then55 ], [ %15, %if.end53.if.end57_crit_edge ], [ %_fwif.2110120, %.if.end57_crit_edge ], [ %_next.1138, %cond.end42.if.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %_option) #5
  %cmp.i = icmp ugt ptr %_fwif.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end57.cleanup_crit_edge, label %if.end60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %func = getelementptr inbounds %struct.nvkm_nvenc_fwif, ptr %_fwif.4, i32 0, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %func, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 4
  %name = getelementptr inbounds %struct.nvkm_nvenc, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 4
  %falcon = getelementptr inbounds %struct.nvkm_nvenc, ptr %call7.i.i, i32 0, i32 2
  %call68 = call i32 @nvkm_falcon_ctor(ptr noundef %32, ptr noundef %subdev, ptr noundef %name, i32 noundef 0, ptr noundef %falcon) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end57.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %if.end60 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

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
define internal ptr @nvkm_nvenc_dtor(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %falcon = getelementptr i8, ptr %engine, i32 200
  tail call void @nvkm_falcon_dtor(ptr noundef %falcon) #5
  ret ptr %add.ptr
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
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/nvenc/base.c", i32 54, i32 9}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvkm_nvenc, !5, !"nvkm_nvenc", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/nvenc/base.c", i32 35, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
