; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon, %struct.anon, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gm107_bar_func = internal constant { %struct.nvkm_bar_func, [48 x i8] } { %struct.nvkm_bar_func { ptr @gf100_bar_dtor, ptr @gf100_bar_oneinit, ptr null, %struct.anon { ptr @gf100_bar_bar1_init, ptr @gf100_bar_bar1_fini, ptr @gm107_bar_bar1_wait, ptr @gf100_bar_bar1_vmm }, %struct.anon { ptr @gf100_bar_bar2_init, ptr @gf100_bar_bar2_fini, ptr @gm107_bar_bar2_wait, ptr @gf100_bar_bar2_vmm }, ptr @g84_bar_flush }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 30, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"gm107_bar_func\00", align 1
@___asan_gen_.9 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 47, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @gm107_bar_func], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm107_bar_func to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm107_bar_bar1_wait(ptr nocapture noundef readonly %bar) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %2 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 5904
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end35_crit_edge, label %do.cond

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

do.cond:                                          ; preds = %do.body
  %call2 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call2, -1
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end13

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end13:                                         ; preds = %do.cond
  %6 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_wait, align 8
  %device15 = getelementptr inbounds %struct.nvkm_timer, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device15, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call16 = call ptr @dev_driver_string(ptr noundef %11) #3
  %12 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_wait, align 8
  %device19 = getelementptr inbounds %struct.nvkm_timer, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device19, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %do.end13.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16, ptr noundef %retval.0.i) #3
  br label %if.end35

if.end35:                                         ; preds = %dev_name.exit, %do.body.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm107_bar_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pbar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gf100_bar_new_(ptr noundef nonnull @gm107_bar_func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pbar) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_bar_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_bar_dtor(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_bar_oneinit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar1_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar1_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_bar_bar1_vmm(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar2_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_bar_bar2_fini(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gm107_bar_bar2_wait(ptr nocapture noundef readonly %bar) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %2 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 5904
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %and = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end35_crit_edge, label %do.cond

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

do.cond:                                          ; preds = %do.body
  %call2 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call2, -1
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end13

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end13:                                         ; preds = %do.cond
  %6 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_wait, align 8
  %device15 = getelementptr inbounds %struct.nvkm_timer, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device15, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call16 = call ptr @dev_driver_string(ptr noundef %11) #3
  %12 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_wait, align 8
  %device19 = getelementptr inbounds %struct.nvkm_timer, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device19, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end13.dev_name.exit_crit_edge

do.end13.dev_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %do.end13.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16, ptr noundef %retval.0.i) #3
  br label %if.end35

if.end35:                                         ; preds = %dev_name.exit, %do.body.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gf100_bar_bar2_vmm(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_bar_flush(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c", i32 30, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @gm107_bar_func, !4, !"gm107_bar_func", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gm107.c", i32 47, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 5385166}
!15 = !{i64 2156225617}
!16 = !{i64 2156228321}
