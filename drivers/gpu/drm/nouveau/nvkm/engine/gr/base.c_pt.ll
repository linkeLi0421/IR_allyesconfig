; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.81, %struct.anon.82, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.81 = type { ptr }
%struct.anon.82 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.118, [0 x %struct.nvkm_sclass] }
%struct.anon.118 = type { ptr, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.83 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.83 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }

@nvkm_gr = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_gr_dtor, ptr null, ptr @nvkm_gr_oneinit, ptr null, ptr @nvkm_gr_init, ptr @nvkm_gr_fini, ptr @nvkm_gr_intr, ptr @nvkm_gr_tile, ptr @nvkm_gr_chsw_load, %struct.anon.81 zeroinitializer, %struct.anon.82 { ptr @nvkm_gr_cclass_new, ptr @nvkm_gr_oclass_get }, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"nvkm_gr\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/base.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 164, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvkm_gr], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gr to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gr_ctxsw_inst(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 53
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %inst = getelementptr inbounds %struct.nvkm_gr_func, ptr %3, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %5(ptr noundef nonnull %1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gr_ctxsw_resume(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 53
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %resume = getelementptr inbounds %struct.nvkm_gr_func, ptr %3, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %5(ptr noundef nonnull %1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gr_ctxsw_pause(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gr1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 53
  %0 = ptrtoint ptr %gr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ctxsw = getelementptr inbounds %struct.nvkm_gr_func, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %ctxsw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctxsw, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %5(ptr noundef nonnull %1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvkm_gr_units(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr, align 4
  %units = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %units to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %units, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i64 %3(ptr noundef %gr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gr_tlb_flush(ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gr, align 4
  %tlb_flush = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tlb_flush to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tlb_flush, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %gr) #2
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gr_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr noundef %gr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %gr, align 4
  %engine = getelementptr inbounds %struct.nvkm_gr, ptr %gr, i32 0, i32 1
  %call = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %enable, ptr noundef %engine) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_gr_dtor(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call ptr %3(ptr noundef %add.ptr) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gr_oneinit(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oneinit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %add.ptr) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gr_init(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gr_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %3(ptr noundef %add.ptr, i1 noundef zeroext %suspend) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gr_intr(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gr_tile(ptr noundef %engine, i32 noundef %region, ptr noundef %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tile1 = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tile1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tile1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %3(ptr noundef %add.ptr, i32 noundef %region, ptr noundef %tile) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_gr_chsw_load(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %chsw_load = getelementptr inbounds %struct.nvkm_gr_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chsw_load to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chsw_load, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i1 %3(ptr noundef %add.ptr) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gr_cclass_new(ptr noundef %chan, ptr noundef %oclass, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %chan_new = getelementptr inbounds %struct.nvkm_gr_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chan_new to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_new, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %chan, ptr noundef %oclass, ptr noundef %pobject) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gr_oclass_get(ptr noundef %oclass, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %object_get = getelementptr inbounds %struct.nvkm_gr_func, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %object_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %object_get, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.while.cond_crit_edge, label %if.then

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %call = tail call i32 %5(ptr noundef %add.ptr, i32 noundef %index, ptr noundef %base) #2
  %oclass4 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %oclass4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %call.index = select i1 %tobool5.not, i32 %call, i32 %index
  br label %cleanup17

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %c.0 = phi i32 [ %inc, %while.body.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %oclass9 = getelementptr %struct.nvkm_gr_func, ptr %3, i32 0, i32 12, i32 %c.0, i32 2
  %8 = ptrtoint ptr %oclass9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %while.cond.cleanup17_crit_edge, label %while.body

while.cond.cleanup17_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup17

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp = icmp eq i32 %c.0, %index
  br i1 %cmp, label %if.then11, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %base12 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %arrayidx15 = getelementptr %struct.nvkm_gr_func, ptr %3, i32 0, i32 12, i32 %index
  %10 = call ptr @memcpy(ptr %base12, ptr %arrayidx15, i32 20)
  br label %cleanup17

cleanup17:                                        ; preds = %if.then11, %while.cond.cleanup17_crit_edge, %if.then
  %retval.1 = phi i32 [ %call.index, %if.then ], [ %index, %if.then11 ], [ %c.0, %while.cond.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nvkm_gr, !1, !"nvkm_gr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/base.c", i32 164, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
