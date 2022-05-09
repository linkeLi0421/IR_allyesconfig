; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon, %struct.anon, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }

@nvkm_bar = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_bar_dtor, ptr null, ptr @nvkm_bar_oneinit, ptr null, ptr @nvkm_bar_init, ptr @nvkm_bar_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_bar_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&bar->lock\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"nvkm_bar\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 128, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 141, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nvkm_bar, ptr @nvkm_bar_ctor.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_bar to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_bar_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_bar_flush(ptr noundef %bar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bar, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 4
  %flush = getelementptr inbounds %struct.nvkm_bar_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flush, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %3(ptr noundef nonnull %bar) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_bar_bar1_vmm(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bar = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 36
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %vmm = getelementptr inbounds %struct.nvkm_bar_func, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmm, align 4
  %call = tail call ptr %5(ptr noundef %1) #2
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar1_reset(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 36
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bar12 = getelementptr inbounds %struct.nvkm_bar_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bar12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar12, align 4
  tail call void %5(ptr noundef nonnull %1) #2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %wait = getelementptr inbounds %struct.nvkm_bar_func, ptr %7, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wait, align 4
  tail call void %9(ptr noundef nonnull %1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_bar_bar2_vmm(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 36
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %bar2 = getelementptr inbounds %struct.nvkm_bar, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bar2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bar2, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %vmm = getelementptr inbounds %struct.nvkm_bar_func, ptr %5, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmm, align 4
  %call = tail call ptr %7(ptr noundef nonnull %1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar2_reset(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 36
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bar2 = getelementptr inbounds %struct.nvkm_bar, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bar2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bar2, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %bar23 = getelementptr inbounds %struct.nvkm_bar_func, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bar23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar23, align 4
  tail call void %7(ptr noundef nonnull %1) #2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %wait = getelementptr inbounds %struct.nvkm_bar_func, ptr %9, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait, align 4
  tail call void %11(ptr noundef nonnull %1) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar2_fini(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 36
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bar2 = getelementptr inbounds %struct.nvkm_bar, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bar2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bar2, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %fini = getelementptr inbounds %struct.nvkm_bar_func, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fini, align 4
  tail call void %7(ptr noundef nonnull %1) #2
  %8 = ptrtoint ptr %bar2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bar2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_bar_bar2_init(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 36
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %oneinit = getelementptr inbounds %struct.nvkm_bar, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %oneinit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oneinit, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %bar2 = getelementptr inbounds %struct.nvkm_bar, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bar2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bar2, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %bar26 = getelementptr inbounds %struct.nvkm_bar_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %bar26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar26, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %land.lhs.true5.if.end_crit_edge, label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %9(ptr noundef nonnull %1) #2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %wait = getelementptr inbounds %struct.nvkm_bar_func, ptr %11, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait, align 4
  tail call void %13(ptr noundef nonnull %1) #2
  %14 = ptrtoint ptr %bar2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bar2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_bar_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %bar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_bar, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #2
  %0 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %bar, align 4
  %lock = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_bar_ctor.__key, i16 noundef signext 3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_bar_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bar1.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nvkm_bar_bar2_fini.exit_crit_edge, label %land.lhs.true.i

entry.nvkm_bar_bar2_fini.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %nvkm_bar_bar2_fini.exit

land.lhs.true.i:                                  ; preds = %entry
  %bar2.i = getelementptr inbounds %struct.nvkm_bar, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bar2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bar2.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.nvkm_bar_bar2_fini.exit_crit_edge, label %if.then.i

land.lhs.true.i.nvkm_bar_bar2_fini.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nvkm_bar_bar2_fini.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %fini.i = getelementptr inbounds %struct.nvkm_bar_func, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fini.i, align 4
  tail call void %9(ptr noundef nonnull %3) #2
  %10 = ptrtoint ptr %bar2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bar2.i, align 4
  br label %nvkm_bar_bar2_fini.exit

nvkm_bar_bar2_fini.exit:                          ; preds = %if.then.i, %land.lhs.true.i.nvkm_bar_bar2_fini.exit_crit_edge, %entry.nvkm_bar_bar2_fini.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call = tail call ptr %14(ptr noundef %add.ptr) #2
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_bar_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_bar_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oneinit, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_bar_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %bar1 = getelementptr inbounds %struct.nvkm_bar_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar1, align 4
  tail call void %3(ptr noundef %add.ptr) #2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %wait = getelementptr inbounds %struct.nvkm_bar_func, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  tail call void %7(ptr noundef %add.ptr) #2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %init4 = getelementptr inbounds %struct.nvkm_bar_func, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %init4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init4, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %11(ptr noundef %add.ptr) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_bar_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_bar_func, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %3(ptr noundef %add.ptr) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @nvkm_bar_ctor.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c", i32 141, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvkm_bar, !4, !"nvkm_bar", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/base.c", i32 128, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 0, i8 2}
