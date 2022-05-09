; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_ltc_func = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@nvkm_ltc = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_ltc_dtor, ptr null, ptr @nvkm_ltc_oneinit, ptr null, ptr @nvkm_ltc_init, ptr null, ptr @nvkm_ltc_intr }, [36 x i8] zeroinitializer }, align 32
@nvkm_ltc_new_.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ltc->mutex\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"nvkm_ltc\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 121, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 139, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nvkm_ltc, ptr @nvkm_ltc_new_.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ltc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ltc_new_.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_ltc_tags_clear(ptr nocapture noundef readonly %device, i32 noundef %first, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ltc1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 34
  %0 = ptrtoint ptr %ltc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ltc1, align 4
  %add = add i32 %first, -1
  %sub = add i32 %add, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %first)
  %cmp = icmp ult i32 %sub, %first
  br i1 %cmp, label %entry.do.body4_crit_edge, label %lor.rhs, !prof !14

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body4

lor.rhs:                                          ; preds = %entry
  %num_tags = getelementptr inbounds %struct.nvkm_ltc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp2.not = icmp ult i32 %sub, %3
  br i1 %cmp2.not, label %do.end9, label %lor.rhs.do.body4_crit_edge, !prof !15

lor.rhs.do.body4_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body4

do.body4:                                         ; preds = %lor.rhs.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #3, !srcloc !16
  unreachable

do.end9:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #5
  %mutex = getelementptr inbounds %struct.nvkm_ltc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cbc_clear = getelementptr inbounds %struct.nvkm_ltc_func, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cbc_clear to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cbc_clear, align 4
  tail call void %7(ptr noundef %1, i32 noundef %first, i32 noundef %sub) #3
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cbc_wait = getelementptr inbounds %struct.nvkm_ltc_func, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %cbc_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cbc_wait, align 4
  tail call void %11(ptr noundef %1) #3
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_zbc_color_get(ptr noundef %ltc, i32 noundef returned %index, ptr noundef %color) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_ltc, ptr %ltc, i32 0, i32 10, i32 %index
  %0 = call ptr @memcpy(ptr %arrayidx, ptr %color, i32 16)
  %1 = ptrtoint ptr %ltc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ltc, align 4
  %zbc_clear_color = getelementptr inbounds %struct.nvkm_ltc_func, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %zbc_clear_color to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zbc_clear_color, align 4
  tail call void %4(ptr noundef %ltc, i32 noundef %index, ptr noundef %color) #3
  ret i32 %index
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_zbc_depth_get(ptr noundef %ltc, i32 noundef returned %index, i32 noundef %depth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_ltc, ptr %ltc, i32 0, i32 11, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %depth, ptr %arrayidx, align 4
  %1 = ptrtoint ptr %ltc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ltc, align 4
  %zbc_clear_depth = getelementptr inbounds %struct.nvkm_ltc_func, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %zbc_clear_depth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zbc_clear_depth, align 4
  tail call void %4(ptr noundef %ltc, i32 noundef %index, i32 noundef %depth) #3
  ret i32 %index
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_zbc_stencil_get(ptr noundef %ltc, i32 noundef returned %index, i32 noundef %stencil) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nvkm_ltc, ptr %ltc, i32 0, i32 12, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %stencil, ptr %arrayidx, align 4
  %1 = ptrtoint ptr %ltc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ltc, align 4
  %zbc_clear_stencil = getelementptr inbounds %struct.nvkm_ltc_func, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %zbc_clear_stencil to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %zbc_clear_stencil, align 4
  tail call void %4(ptr noundef %ltc, i32 noundef %index, i32 noundef %stencil) #3
  ret i32 %index
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_ltc_invalidate(ptr noundef %ltc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ltc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ltc, align 4
  %invalidate = getelementptr inbounds %struct.nvkm_ltc_func, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %invalidate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %invalidate, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %ltc) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_ltc_flush(ptr noundef %ltc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ltc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ltc, align 4
  %flush = getelementptr inbounds %struct.nvkm_ltc_func, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flush, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %ltc) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pltc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 560) #6
  %1 = ptrtoint ptr %pltc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pltc, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %subdev = getelementptr inbounds %struct.nvkm_ltc, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_ltc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %mutex = getelementptr inbounds %struct.nvkm_ltc, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_ltc_new_.__key) #3
  %zbc_min = getelementptr inbounds %struct.nvkm_ltc, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %zbc_min to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %zbc_min, align 8
  %zbc = getelementptr inbounds %struct.nvkm_ltc_func, ptr %func, i32 0, i32 5
  %4 = ptrtoint ptr %zbc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zbc, align 4
  %phi.bo = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp.inv = icmp sgt i32 %5, 15
  %cond = select i1 %cmp.inv, i32 15, i32 %phi.bo
  %zbc_max = getelementptr inbounds %struct.nvkm_ltc, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %zbc_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %zbc_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_ltc_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %tag_ram = getelementptr i8, ptr %subdev, i32 160
  tail call void @nvkm_memory_unref(ptr noundef %tag_ram) #3
  %mutex = getelementptr i8, ptr %subdev, i32 60
  tail call void @mutex_destroy(ptr noundef %mutex) #3
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ltc_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ltc_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %zbc_min = getelementptr i8, ptr %subdev, i32 164
  %0 = ptrtoint ptr %zbc_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zbc_min, align 4
  %zbc_max = getelementptr i8, ptr %subdev, i32 168
  %2 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zbc_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not28 = icmp sgt i32 %1, %3
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %zbc_color = getelementptr i8, ptr %subdev, i32 172
  %zbc_depth = getelementptr i8, ptr %subdev, i32 428
  %zbc_stencil = getelementptr i8, ptr %subdev, i32 492
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %zbc_clear_color = getelementptr inbounds %struct.nvkm_ltc_func, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %zbc_clear_color to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zbc_clear_color, align 4
  %arrayidx = getelementptr [16 x [4 x i32]], ptr %zbc_color, i32 0, i32 %i.029
  tail call void %7(ptr noundef %add.ptr, i32 noundef %i.029, ptr noundef %arrayidx) #3
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %zbc_clear_depth = getelementptr inbounds %struct.nvkm_ltc_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %zbc_clear_depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zbc_clear_depth, align 4
  %arrayidx2 = getelementptr [16 x i32], ptr %zbc_depth, i32 0, i32 %i.029
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  tail call void %11(ptr noundef %add.ptr, i32 noundef %i.029, i32 noundef %13) #3
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %zbc_clear_stencil = getelementptr inbounds %struct.nvkm_ltc_func, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %zbc_clear_stencil to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %zbc_clear_stencil, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx6 = getelementptr [16 x i32], ptr %zbc_stencil, i32 0, i32 %i.029
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6, align 4
  tail call void %17(ptr noundef %add.ptr, i32 noundef %i.029, i32 noundef %19) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add i32 %i.029, 1
  %20 = ptrtoint ptr %zbc_max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %zbc_max, align 4
  %cmp.not = icmp sgt i32 %inc, %21
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_ltc_func, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init, align 4
  tail call void %25(ptr noundef %add.ptr) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_ltc_intr(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_ltc_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @nvkm_ltc_new_.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c", i32 139, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvkm_ltc, !4, !"nvkm_ltc", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c", i32 121, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2156234926, i64 2156235436, i64 2156234963, i64 2156235019, i64 2156235053, i64 2156235077, i64 2156235118, i64 2156235139, i64 2156235167, i64 2156235201}
