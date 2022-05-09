; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon.133, %struct.anon.134 }
%struct.anon.133 = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { %struct.nvkm_sclass, i32 }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nvkm_fault = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_fault_dtor, ptr null, ptr @nvkm_fault_oneinit, ptr null, ptr @nvkm_fault_init, ptr @nvkm_fault_fini, ptr @nvkm_fault_intr }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_fault_ntfy = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_fault_ntfy_ctor, ptr null, ptr @nvkm_fault_ntfy_init, ptr @nvkm_fault_ntfy_fini }, [16 x i8] zeroinitializer }, align 32
@nvkm_fault_oneinit_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: buffer %d: %d entries\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvkm_fault_oneinit_buffer\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_fault_oneinit_buffer._entry_ptr = internal global ptr @nvkm_fault_oneinit_buffer._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"nvkm_fault\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 163, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"nvkm_fault_ntfy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 56, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 102, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nvkm_fault_oneinit_buffer._entry, ptr @nvkm_fault_oneinit_buffer._entry_ptr, ptr @nvkm_fault, ptr @nvkm_fault_ntfy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fault to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fault_ntfy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_fault_oneinit_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_fault_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfault) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 288) #8
  %1 = ptrtoint ptr %pfault to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pfault, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %subdev = getelementptr inbounds %struct.nvkm_fault, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_fault, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #5
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %user = getelementptr inbounds %struct.nvkm_fault, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvkm_ufault_new, ptr %user, align 8
  %base = getelementptr inbounds %struct.nvkm_fault, ptr %call7.i.i, i32 0, i32 6, i32 1
  %user3 = getelementptr inbounds %struct.nvkm_fault_func, ptr %func, i32 0, i32 5
  %4 = call ptr @memcpy(ptr %base, ptr %user3, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ufault_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_fault_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nrpfb = getelementptr i8, ptr %subdev, i32 176
  tail call void @nvkm_notify_fini(ptr noundef %nrpfb) #5
  %event = getelementptr i8, ptr %subdev, i32 64
  tail call void @nvkm_event_fini(ptr noundef %event) #5
  %buffer_nr = getelementptr i8, ptr %subdev, i32 60
  %0 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer = getelementptr i8, ptr %subdev, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr %buffer, i32 0, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mem = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %3, i32 0, i32 6
  tail call void @nvkm_memory_unref(ptr noundef %mem) #5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %6 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_nr, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fault_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %device2.i = getelementptr i8, ptr %subdev, i32 4
  %debug.i = getelementptr i8, ptr %subdev, i32 32
  %name.i = getelementptr i8, ptr %subdev, i32 16
  %buffer_nr = getelementptr i8, ptr %subdev, i32 60
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %buffer = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %fault3.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %fault3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %fault3.i, align 8
  %id4.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %id4.i, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %info.i = getelementptr inbounds %struct.nvkm_fault_func, ptr %10, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info.i, align 4
  tail call void %12(ptr noundef nonnull %call7.i.i.i) #5
  %arrayidx.i = getelementptr i8, ptr %subdev, i32 52
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp ugt i32 %15, 3
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device2.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %entries.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entries.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef 0, i32 noundef %21) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %if.end.i.if.end10.i_crit_edge
  %entries13.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %entries13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %entries13.i, align 8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %entry_size.i = getelementptr inbounds %struct.nvkm_fault_func, ptr %25, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry_size.i, align 4
  %mul.i = mul i32 %27, %23
  %conv.i = zext i32 %mul.i to i64
  %mem.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i, i32 0, i32 6
  %call16.i = tail call i32 @nvkm_memory_new(ptr noundef %5, i32 noundef 0, i64 noundef %conv.i, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %mem.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %pin.i = getelementptr inbounds %struct.nvkm_fault_func, ptr %29, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pin.i, align 4
  %call22.i = tail call i64 %31(ptr noundef nonnull %call7.i.i.i) #5
  %addr.i = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call22.i, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call22.i)
  %cmp24.i = icmp eq i64 %call22.i, -1
  br i1 %cmp24.i, label %if.end19.i.cleanup_crit_edge, label %if.end

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %buffer_nr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %buffer.1 = getelementptr inbounds %struct.nvkm_fault_func, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %buffer.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp1.1 = icmp sgt i32 %37, 1
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %38 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 104) #8
  %tobool.not.i.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool.not.i.1, label %if.then.1.cleanup_crit_edge, label %if.end.i.1

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.1:                                       ; preds = %if.then.1
  %fault3.i.1 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i.1, i32 0, i32 1
  %41 = ptrtoint ptr %fault3.i.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr, ptr %fault3.i.1, align 8
  %id4.i.1 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i.1, i32 0, i32 2
  %42 = ptrtoint ptr %id4.i.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %id4.i.1, align 4
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %info.i.1 = getelementptr inbounds %struct.nvkm_fault_func, ptr %44, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %info.i.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %info.i.1, align 4
  tail call void %46(ptr noundef nonnull %call7.i.i.i.1) #5
  %arrayidx.i.1 = getelementptr i8, ptr %subdev, i32 56
  %47 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i.1, ptr %arrayidx.i.1, align 4
  %48 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp.i.1 = icmp ugt i32 %49, 3
  br i1 %cmp.i.1, label %do.end.i.1, label %if.end.i.1.if.end10.i.1_crit_edge

if.end.i.1.if.end10.i.1_crit_edge:                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.1

do.end.i.1:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device2.i, align 4
  %dev.i.1 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.1, align 8
  %entries.i.1 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i.1, i32 0, i32 3
  %54 = ptrtoint ptr %entries.i.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %entries.i.1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef 1, i32 noundef %55) #9
  br label %if.end10.i.1

if.end10.i.1:                                     ; preds = %do.end.i.1, %if.end.i.1.if.end10.i.1_crit_edge
  %entries13.i.1 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i.1, i32 0, i32 3
  %56 = ptrtoint ptr %entries13.i.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %entries13.i.1, align 8
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %entry_size.i.1 = getelementptr inbounds %struct.nvkm_fault_func, ptr %59, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %entry_size.i.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %entry_size.i.1, align 4
  %mul.i.1 = mul i32 %61, %57
  %conv.i.1 = zext i32 %mul.i.1 to i64
  %mem.i.1 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i.1, i32 0, i32 6
  %call16.i.1 = tail call i32 @nvkm_memory_new(ptr noundef %39, i32 noundef 0, i64 noundef %conv.i.1, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %mem.i.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %if.end19.i.1, label %if.end10.i.1.cleanup_crit_edge

if.end10.i.1.cleanup_crit_edge:                   ; preds = %if.end10.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.i.1:                                     ; preds = %if.end10.i.1
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr, align 4
  %pin.i.1 = getelementptr inbounds %struct.nvkm_fault_func, ptr %63, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %pin.i.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pin.i.1, align 4
  %call22.i.1 = tail call i64 %65(ptr noundef nonnull %call7.i.i.i.1) #5
  %addr.i.1 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %call7.i.i.i.1, i32 0, i32 7
  %66 = ptrtoint ptr %addr.i.1 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %call22.i.1, ptr %addr.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call22.i.1)
  %cmp24.i.1 = icmp eq i64 %call22.i.1, -1
  br i1 %cmp24.i.1, label %if.end19.i.1.cleanup_crit_edge, label %if.end.1

if.end19.i.1.cleanup_crit_edge:                   ; preds = %if.end19.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %if.end19.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %buffer_nr, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %68 = ptrtoint ptr %buffer_nr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buffer_nr, align 4
  %event = getelementptr i8, ptr %subdev, i32 64
  %call5 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fault_ntfy, i32 noundef 1, i32 noundef %69, ptr noundef %event) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %for.inc.1
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool10.not = icmp eq ptr %73, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 %73(ptr noundef %add.ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.end19.i.1.cleanup_crit_edge, %if.end10.i.1.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %for.inc.1.cleanup_crit_edge ], [ %call14, %if.then11 ], [ 0, %if.end8.cleanup_crit_edge ], [ %call16.i, %if.end10.i.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ -14, %if.end19.i.cleanup_crit_edge ], [ -12, %if.then.1.cleanup_crit_edge ], [ %call16.i.1, %if.end10.i.1.cleanup_crit_edge ], [ -14, %if.end19.i.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fault_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_fault_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fault_intr(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fault_ntfy_ctor(ptr nocapture noundef readonly %object, ptr nocapture noundef readnone %argv, i32 noundef %argc, ptr nocapture noundef writeonly %notify) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp = icmp eq i32 %argc, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size, align 4
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %1 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %types, align 4
  %id = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %object, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fault_ntfy_init(ptr nocapture noundef readonly %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -68
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %buffer1 = getelementptr i8, ptr %event, i32 -12
  %arrayidx = getelementptr [2 x ptr], ptr %buffer1, i32 0, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void %3(ptr noundef %5, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_fault_ntfy_fini(ptr nocapture noundef readonly %event, i32 noundef %type, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -68
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_fault_func, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %buffer1 = getelementptr i8, ptr %event, i32 -12
  %arrayidx = getelementptr [2 x ptr], ptr %buffer1, i32 0, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void %3(ptr noundef %5, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nvkm_fault, !1, !"nvkm_fault", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c", i32 163, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c", i32 102, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_fault_oneinit_buffer._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_fault_oneinit_buffer._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nvkm_fault_ntfy, !11, !"nvkm_fault_ntfy", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c", i32 56, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
