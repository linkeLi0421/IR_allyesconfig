; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_entity.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_entity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_route = type { i32, i32, i32, [5 x i32], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@vsp1_routes = internal constant { [25 x %struct.vsp1_route], [252 x i8] } { [25 x %struct.vsp1_route] [%struct.vsp1_route { i32 0, i32 0, i32 8272, [5 x i32] [i32 38, i32 39, i32 0, i32 0, i32 0], i32 0 }, %struct.vsp1_route { i32 1, i32 0, i32 8268, [5 x i32] [i32 23, i32 24, i32 25, i32 26, i32 49], i32 27 }, %struct.vsp1_route { i32 2, i32 0, i32 8256, [5 x i32] [i32 29, i32 0, i32 0, i32 0, i32 0], i32 29 }, %struct.vsp1_route { i32 3, i32 0, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 4, i32 0, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 5, i32 0, i32 8264, [5 x i32] [i32 31, i32 0, i32 0, i32 0, i32 0], i32 31 }, %struct.vsp1_route { i32 6, i32 0, i32 8260, [5 x i32] [i32 30, i32 0, i32 0, i32 0, i32 0], i32 30 }, %struct.vsp1_route { i32 7, i32 0, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 7, i32 1, i32 0, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 8, i32 0, i32 8252, [5 x i32] [i32 22, i32 0, i32 0, i32 0, i32 0], i32 22 }, %struct.vsp1_route { i32 9, i32 0, i32 8192, [5 x i32] zeroinitializer, i32 0 }, %struct.vsp1_route { i32 9, i32 1, i32 8196, [5 x i32] zeroinitializer, i32 1 }, %struct.vsp1_route { i32 9, i32 2, i32 8200, [5 x i32] zeroinitializer, i32 2 }, %struct.vsp1_route { i32 9, i32 3, i32 8204, [5 x i32] zeroinitializer, i32 3 }, %struct.vsp1_route { i32 9, i32 4, i32 8208, [5 x i32] zeroinitializer, i32 4 }, %struct.vsp1_route { i32 10, i32 0, i32 8228, [5 x i32] [i32 16, i32 0, i32 0, i32 0, i32 0], i32 16 }, %struct.vsp1_route { i32 11, i32 0, i32 8232, [5 x i32] [i32 17, i32 0, i32 0, i32 0, i32 0], i32 17 }, %struct.vsp1_route { i32 11, i32 1, i32 8236, [5 x i32] [i32 18, i32 0, i32 0, i32 0, i32 0], i32 18 }, %struct.vsp1_route { i32 11, i32 2, i32 8240, [5 x i32] [i32 19, i32 0, i32 0, i32 0, i32 0], i32 19 }, %struct.vsp1_route { i32 12, i32 0, i32 8308, [5 x i32] [i32 12, i32 0, i32 0, i32 0, i32 0], i32 12 }, %struct.vsp1_route { i32 12, i32 1, i32 8312, [5 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0], i32 13 }, %struct.vsp1_route { i32 13, i32 0, i32 0, [5 x i32] [i32 56, i32 0, i32 0, i32 0, i32 0], i32 56 }, %struct.vsp1_route { i32 13, i32 1, i32 0, [5 x i32] [i32 57, i32 0, i32 0, i32 0, i32 0], i32 57 }, %struct.vsp1_route { i32 13, i32 2, i32 0, [5 x i32] [i32 58, i32 0, i32 0, i32 0, i32 0], i32 58 }, %struct.vsp1_route { i32 13, i32 3, i32 0, [5 x i32] [i32 59, i32 0, i32 0, i32 0, i32 0], i32 59 }], [252 x i8] zeroinitializer }, align 32
@vsp1_entity_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&entity->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"vsp1_routes\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 580, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 631, i32 2 }
@___asan_gen_.14 = private constant [45 x i8] c"../drivers/media/platform/vsp1/vsp1_entity.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 669, i32 47 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 998, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @vsp1_routes, ptr @vsp1_entity_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_routes to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_entity_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_entity_route_setup(ptr nocapture noundef readonly %entity, ptr nocapture noundef readonly %pipe, ptr noundef %dlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end19 [
    i32 3, label %if.then
    i32 4, label %if.then7
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sources = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 10
  %3 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sources, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %output = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %output, align 4
  %index = getelementptr inbounds %struct.vsp1_entity, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %shl = shl i32 %10, 8
  %route2 = getelementptr inbounds %struct.vsp1_entity, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %route2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %route2, align 4
  %output3 = getelementptr inbounds %struct.vsp1_route, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %output3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %output3, align 4
  %or = or i32 %14, %shl
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 8276, i32 noundef %or) #8
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sources9 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 10
  %15 = ptrtoint ptr %sources9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sources9, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %output11 = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 12
  %19 = ptrtoint ptr %output11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %output11, align 4
  %index13 = getelementptr inbounds %struct.vsp1_entity, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %index13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index13, align 4
  %shl14 = shl i32 %22, 8
  %route15 = getelementptr inbounds %struct.vsp1_entity, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %route15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %route15, align 4
  %output16 = getelementptr inbounds %struct.vsp1_route, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %output16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %output16, align 4
  %or18 = or i32 %26, %shl14
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 8280, i32 noundef %or18) #8
  br label %cleanup

if.end19:                                         ; preds = %entry
  %route20 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 4
  %27 = ptrtoint ptr %route20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %route20, align 4
  %reg = getelementptr inbounds %struct.vsp1_route, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp21 = icmp eq i32 %30, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %sink = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 11
  %31 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sink, align 4
  %route24 = getelementptr inbounds %struct.vsp1_entity, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %route24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %route24, align 4
  %sink_pad = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 12
  %35 = ptrtoint ptr %sink_pad to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sink_pad, align 4
  %arrayidx25 = getelementptr %struct.vsp1_route, ptr %34, i32 0, i32 3, i32 %36
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27 = icmp eq i32 %1, 0
  %or29 = or i32 %38, 268435456
  %spec.select = select i1 %cmp27, i32 %or29, i32 %38
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %30, i32 noundef %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.then7, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_entity_configure_stream(ptr noundef %entity, ptr noundef %pipe, ptr noundef %dl, ptr noundef %dlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %configure_stream = getelementptr inbounds %struct.vsp1_entity_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %configure_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure_stream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %entity, ptr noundef %pipe, ptr noundef %dl, ptr noundef %dlb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_entity_configure_frame(ptr noundef %entity, ptr noundef %pipe, ptr noundef %dl, ptr noundef %dlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %configure_frame = getelementptr inbounds %struct.vsp1_entity_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %configure_frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure_frame, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %entity, ptr noundef %pipe, ptr noundef %dl, ptr noundef %dlb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_entity_configure_partition(ptr noundef %entity, ptr noundef %pipe, ptr noundef %dl, ptr noundef %dlb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %configure_partition = getelementptr inbounds %struct.vsp1_entity_operations, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %configure_partition to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure_partition, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %entity, ptr noundef %pipe, ptr noundef %dl, ptr noundef %dlb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vsp1_entity_get_pad_config(ptr nocapture noundef readonly %entity, ptr noundef readnone %sd_state, i32 noundef %which) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %which)
  %cond = icmp eq i32 %which, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %sw.bb ], [ %sd_state, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_entity_get_pad_format(ptr nocapture noundef readonly %entity, ptr nocapture noundef readonly %sd_state, i32 noundef %pad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pad)
  %cmp.not.i = icmp ugt i32 %conv.i, %pad
  br i1 %cmp.not.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !18

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %pad, %entry.v4l2_subdev_get_try_format.exit_crit_edge ]
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 %spec.select.i
  ret ptr %arrayidx.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_entity_get_pad_selection(ptr nocapture noundef readonly %entity, ptr nocapture noundef readonly %sd_state, i32 noundef %pad, i32 noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %target to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %target, label %entry.return_crit_edge [
    i32 256, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %num_pads.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 0, i32 5
  %1 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %pad)
  %cmp.not.i = icmp ugt i32 %conv.i, %pad
  br i1 %cmp.not.i, label %sw.bb.v4l2_subdev_get_try_compose.exit_crit_edge, label %do.end.i, !prof !18

sw.bb.v4l2_subdev_get_try_compose.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_compose.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1034, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_compose.exit

v4l2_subdev_get_try_compose.exit:                 ; preds = %do.end.i, %sw.bb.v4l2_subdev_get_try_compose.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %pad, %sw.bb.v4l2_subdev_get_try_compose.exit_crit_edge ]
  %3 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_state, align 4
  %try_compose.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %4, i32 %spec.select.i, i32 2
  br label %return

sw.bb1:                                           ; preds = %entry
  %num_pads.i7 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 0, i32 5
  %5 = ptrtoint ptr %num_pads.i7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_pads.i7, align 4
  %conv.i8 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i8, i32 %pad)
  %cmp.not.i9 = icmp ugt i32 %conv.i8, %pad
  br i1 %cmp.not.i9, label %sw.bb1.v4l2_subdev_get_try_crop.exit_crit_edge, label %do.end.i10, !prof !18

sw.bb1.v4l2_subdev_get_try_crop.exit_crit_edge:   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %v4l2_subdev_get_try_crop.exit

do.end.i10:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i10, %sw.bb1.v4l2_subdev_get_try_crop.exit_crit_edge
  %spec.select.i11 = phi i32 [ 0, %do.end.i10 ], [ %pad, %sw.bb1.v4l2_subdev_get_try_crop.exit_crit_edge ]
  %7 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %8, i32 %spec.select.i11, i32 1
  br label %return

return:                                           ; preds = %v4l2_subdev_get_try_crop.exit, %v4l2_subdev_get_try_compose.exit, %entry.return_crit_edge
  %retval.0 = phi ptr [ %try_crop.i, %v4l2_subdev_get_try_crop.exit ], [ %try_compose.i, %v4l2_subdev_get_try_compose.exit ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_entity_init_cfg(ptr noundef %subdev, ptr noundef %sd_state) local_unnamed_addr #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #8
  %num_pads = getelementptr inbounds %struct.media_entity, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp38.not = icmp eq i16 %1, 1
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pad2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %tobool.not = icmp eq ptr %sd_state, null
  %cond = zext i1 %tobool.not to i32
  %tobool3.not = icmp eq ptr %subdev, null
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %subdev, i32 0, i32 6
  %2 = getelementptr inbounds i8, ptr %format, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %for.body.lr.ph
  %pad.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end23.for.body_crit_edge ]
  %3 = call ptr @memset(ptr %2, i32 0, i32 80)
  %4 = ptrtoint ptr %pad2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pad.039, ptr %pad2, align 4
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %format, align 4
  br i1 %tobool3.not, label %for.body.if.end23_crit_edge, label %if.else

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else:                                          ; preds = %for.body
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %pad4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %pad4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pad4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.else.if.end23_crit_edge, label %land.lhs.true

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_fmt, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %land.lhs.true.if.end23_crit_edge, label %if.else10

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.else10.if.else17_crit_edge, label %land.lhs.true12

if.else10.if.else17_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

land.lhs.true12:                                  ; preds = %if.else10
  %set_fmt13 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %set_fmt13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_fmt13, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else17_crit_edge, label %land.lhs.true12.if.end23.sink.split_crit_edge

land.lhs.true12.if.end23.sink.split_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

land.lhs.true12.if.else17_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true12.if.else17_crit_edge, %if.else10.if.else17_crit_edge
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else17, %land.lhs.true12.if.end23.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else17 ], [ %14, %land.lhs.true12.if.end23.sink.split_crit_edge ]
  %call21 = call i32 %.sink(ptr noundef nonnull %subdev, ptr noundef %sd_state, ptr noundef nonnull %format) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %land.lhs.true.if.end23_crit_edge, %if.else.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %inc = add nuw i32 %pad.039, 1
  %15 = ptrtoint ptr %num_pads to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_pads, align 4
  %conv = zext i16 %16 to i32
  %sub = add nsw i32 %conv, -1
  %cmp = icmp ult i32 %inc, %sub
  br i1 %cmp, label %if.end23.for.body_crit_edge, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef %subdev, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %sw.bb.i, label %entry.vsp1_entity_get_pad_config.exit_crit_edge

entry.vsp1_entity_get_pad_config.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_config.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config.i = getelementptr i8, ptr %subdev, i32 196
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  br label %vsp1_entity_get_pad_config.exit

vsp1_entity_get_pad_config.exit:                  ; preds = %sw.bb.i, %entry.vsp1_entity_get_pad_config.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %sw.bb.i ], [ %sd_state, %entry.vsp1_entity_get_pad_config.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %vsp1_entity_get_pad_config.exit.cleanup_crit_edge, label %if.end

vsp1_entity_get_pad_config.exit.cleanup_crit_edge: ; preds = %vsp1_entity_get_pad_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %vsp1_entity_get_pad_config.exit
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.vsp1_entity_get_pad_format.exit_crit_edge, label %do.end.i.i, !prof !18

if.end.vsp1_entity_get_pad_format.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_format.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_format.exit

vsp1_entity_get_pad_format.exit:                  ; preds = %do.end.i.i, %if.end.vsp1_entity_get_pad_format.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.end.vsp1_entity_get_pad_format.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  %10 = call ptr @memcpy(ptr %format, ptr %arrayidx.i.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %vsp1_entity_get_pad_format.exit, %vsp1_entity_get_pad_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vsp1_entity_get_pad_format.exit ], [ -22, %vsp1_entity_get_pad_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef %subdev, ptr noundef readonly %sd_state, ptr nocapture noundef %code, ptr nocapture noundef readonly %codes, i32 noundef %ncodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ncodes)
  %cmp1.not = icmp ult i32 %3, %ncodes
  br i1 %cmp1.not, label %if.end, label %if.then.cleanup18_crit_edge

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i32, ptr %codes, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %code4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %6 = ptrtoint ptr %code4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code4, align 4
  br label %cleanup18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end7, label %if.else.cleanup18_crit_edge

if.else.cleanup18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end7:                                          ; preds = %if.else
  %which = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 3
  %7 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond.i = icmp eq i32 %8, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end7.vsp1_entity_get_pad_config.exit_crit_edge

if.end7.vsp1_entity_get_pad_config.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_config.exit

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %config.i = getelementptr i8, ptr %subdev, i32 196
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  br label %vsp1_entity_get_pad_config.exit

vsp1_entity_get_pad_config.exit:                  ; preds = %sw.bb.i, %if.end7.vsp1_entity_get_pad_config.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %sw.bb.i ], [ %sd_state, %if.end7.vsp1_entity_get_pad_config.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %vsp1_entity_get_pad_config.exit.cleanup18_crit_edge, label %if.end11

vsp1_entity_get_pad_config.exit.cleanup18_crit_edge: ; preds = %vsp1_entity_get_pad_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end11:                                         ; preds = %vsp1_entity_get_pad_config.exit
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %11 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not.i.i.not = icmp eq i16 %12, 0
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.end11.vsp1_entity_get_pad_format.exit_crit_edge, !prof !19

if.end11.vsp1_entity_get_pad_format.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_format.exit

do.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_format.exit

vsp1_entity_get_pad_format.exit:                  ; preds = %do.end.i.i, %if.end11.vsp1_entity_get_pad_format.exit_crit_edge
  %13 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retval.0.i, align 4
  %code13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %code13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code13, align 4
  %code14 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %17 = ptrtoint ptr %code14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %code14, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup18

cleanup18:                                        ; preds = %vsp1_entity_get_pad_format.exit, %vsp1_entity_get_pad_config.exit.cleanup18_crit_edge, %if.else.cleanup18_crit_edge, %if.end, %if.then.cleanup18_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup18_crit_edge ], [ -22, %vsp1_entity_get_pad_config.exit.cleanup18_crit_edge ], [ -22, %if.else.cleanup18_crit_edge ], [ 0, %vsp1_entity_get_pad_format.exit ], [ 0, %if.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef %subdev, ptr noundef readonly %sd_state, ptr nocapture noundef %fse, i32 noundef %min_width, i32 noundef %min_height, i32 noundef %max_width, i32 noundef %max_height) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %0 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %sw.bb.i, label %entry.vsp1_entity_get_pad_config.exit_crit_edge

entry.vsp1_entity_get_pad_config.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_config.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config.i = getelementptr i8, ptr %subdev, i32 196
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  br label %vsp1_entity_get_pad_config.exit

vsp1_entity_get_pad_config.exit:                  ; preds = %sw.bb.i, %entry.vsp1_entity_get_pad_config.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %sw.bb.i ], [ %sd_state, %entry.vsp1_entity_get_pad_config.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %vsp1_entity_get_pad_config.exit.cleanup_crit_edge, label %if.end

vsp1_entity_get_pad_config.exit.cleanup_crit_edge: ; preds = %vsp1_entity_get_pad_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %vsp1_entity_get_pad_config.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.vsp1_entity_get_pad_format.exit_crit_edge, label %do.end.i.i, !prof !18

if.end.vsp1_entity_get_pad_format.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_format.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_format.exit

vsp1_entity_get_pad_format.exit:                  ; preds = %do.end.i.i, %if.end.vsp1_entity_get_pad_format.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.end.vsp1_entity_get_pad_format.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %10 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %vsp1_entity_get_pad_format.exit.done_crit_edge

vsp1_entity_get_pad_format.exit.done_crit_edge:   ; preds = %vsp1_entity_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

lor.lhs.false:                                    ; preds = %vsp1_entity_get_pad_format.exit
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %code, align 4
  %code4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %code4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp eq i32 %13, %15
  br i1 %cmp.not, label %if.end6, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end6:                                          ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %min_width10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %18 = ptrtoint ptr %min_width10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %min_width, ptr %min_width10, align 4
  %max_width11 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %19 = ptrtoint ptr %max_width11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %max_width, ptr %max_width11, align 4
  %min_height12 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %20 = ptrtoint ptr %min_height12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %min_height, ptr %min_height12, align 4
  br label %done.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %min_width14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %23 = ptrtoint ptr %min_width14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %min_width14, align 4
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %max_width16 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %25 = ptrtoint ptr %max_width16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_width16, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %min_height17 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %28 = ptrtoint ptr %min_height17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %min_height17, align 4
  %29 = load i32, ptr %height, align 4
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.else, %if.then9
  %max_height.sink = phi i32 [ %max_height, %if.then9 ], [ %29, %if.else ]
  %max_height13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %30 = ptrtoint ptr %max_height13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %max_height.sink, ptr %max_height13, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %lor.lhs.false.done_crit_edge, %vsp1_entity_get_pad_format.exit.done_crit_edge
  %ret.0 = phi i32 [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %vsp1_entity_get_pad_format.exit.done_crit_edge ], [ 0, %done.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %vsp1_entity_get_pad_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %vsp1_entity_get_pad_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef %subdev, ptr noundef readonly %sd_state, ptr nocapture noundef %fmt, ptr nocapture noundef readonly %codes, i32 noundef %ncodes, i32 noundef %min_width, i32 noundef %min_height, i32 noundef %max_width, i32 noundef %max_height) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %sw.bb.i, label %entry.vsp1_entity_get_pad_config.exit_crit_edge

entry.vsp1_entity_get_pad_config.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_config.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %config.i = getelementptr i8, ptr %subdev, i32 196
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  br label %vsp1_entity_get_pad_config.exit

vsp1_entity_get_pad_config.exit:                  ; preds = %sw.bb.i, %entry.vsp1_entity_get_pad_config.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %sw.bb.i ], [ %sd_state, %entry.vsp1_entity_get_pad_config.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %vsp1_entity_get_pad_config.exit.done_crit_edge, label %if.end

vsp1_entity_get_pad_config.exit.done_crit_edge:   ; preds = %vsp1_entity_get_pad_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %vsp1_entity_get_pad_config.exit
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %num_pads.i.i = getelementptr i8, ptr %subdev, i32 32
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %5, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.vsp1_entity_get_pad_format.exit_crit_edge, label %do.end.i.i, !prof !18

if.end.vsp1_entity_get_pad_format.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_format.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_format.exit

vsp1_entity_get_pad_format.exit:                  ; preds = %do.end.i.i, %if.end.vsp1_entity_get_pad_format.exit_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %5, %if.end.vsp1_entity_get_pad_format.exit_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %9, i32 %spec.select.i.i
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pad, align 4
  %source_pad = getelementptr i8, ptr %subdev, i32 -16
  %12 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %source_pad, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %vsp1_entity_get_pad_format.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncodes)
  %cmp7136.not = icmp eq i32 %ncodes, 0
  br i1 %cmp7136.not, label %for.cond.preheader.cond.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %code, align 4
  br label %for.body

if.then4:                                         ; preds = %vsp1_entity_get_pad_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %format5, ptr %arrayidx.i.i, i32 48)
  br label %done

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %codes, i32 %i.0137
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp9 = icmp eq i32 %15, %18
  br i1 %cmp9, label %cond.end.loopexit.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc, %ncodes
  br i1 %exitcond.not, label %for.inc.cond.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cond.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end.loopexit.split.loop.exit:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le = getelementptr i32, ptr %codes, i32 %i.0137
  br label %cond.end

cond.end:                                         ; preds = %cond.end.loopexit.split.loop.exit, %for.inc.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %cond.in = phi ptr [ %codes, %for.cond.preheader.cond.end_crit_edge ], [ %arrayidx.le, %cond.end.loopexit.split.loop.exit ], [ %codes, %for.inc.cond.end_crit_edge ]
  %19 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %cond = load i32, ptr %cond.in, align 4
  %code15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %code15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %code15, align 4
  %format16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %21 = ptrtoint ptr %format16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format16, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 %min_width)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %max_width)
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i.i, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %min_height)
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %max_height)
  %height42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %height42 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %height42, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %colorspace, align 4
  %33 = call ptr @memcpy(ptr %format16, ptr %arrayidx.i.i, i32 48)
  %34 = ptrtoint ptr %source_pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %source_pad, align 4
  %36 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i119 = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i.i119)
  %cmp.not.i.i120 = icmp ult i32 %35, %conv.i.i119
  br i1 %cmp.not.i.i120, label %cond.end.vsp1_entity_get_pad_format.exit124_crit_edge, label %do.end.i.i121, !prof !18

cond.end.vsp1_entity_get_pad_format.exit124_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_format.exit124

do.end.i.i121:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 998, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_format.exit124

vsp1_entity_get_pad_format.exit124:               ; preds = %do.end.i.i121, %cond.end.vsp1_entity_get_pad_format.exit124_crit_edge
  %spec.select.i.i122 = phi i32 [ 0, %do.end.i.i121 ], [ %35, %cond.end.vsp1_entity_get_pad_format.exit124_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %retval.0.i, align 4
  %arrayidx.i.i123 = getelementptr %struct.v4l2_subdev_pad_config, ptr %39, i32 %spec.select.i.i122
  %40 = call ptr @memcpy(ptr %arrayidx.i.i123, ptr %format16, i32 48)
  %41 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pad, align 4
  %43 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_pads.i.i, align 4
  %conv.i8.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv.i8.i)
  %cmp.not.i9.i = icmp ult i32 %42, %conv.i8.i
  br i1 %cmp.not.i9.i, label %vsp1_entity_get_pad_format.exit124.vsp1_entity_get_pad_selection.exit_crit_edge, label %do.end.i10.i, !prof !18

vsp1_entity_get_pad_format.exit124.vsp1_entity_get_pad_selection.exit_crit_edge: ; preds = %vsp1_entity_get_pad_format.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_selection.exit

do.end.i10.i:                                     ; preds = %vsp1_entity_get_pad_format.exit124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1016, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_selection.exit

vsp1_entity_get_pad_selection.exit:               ; preds = %do.end.i10.i, %vsp1_entity_get_pad_format.exit124.vsp1_entity_get_pad_selection.exit_crit_edge
  %spec.select.i11.i = phi i32 [ 0, %do.end.i10.i ], [ %42, %vsp1_entity_get_pad_format.exit124.vsp1_entity_get_pad_selection.exit_crit_edge ]
  %45 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retval.0.i, align 4
  %try_crop.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %46, i32 %spec.select.i11.i, i32 1
  %47 = ptrtoint ptr %try_crop.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %try_crop.i.i, align 4
  %top = getelementptr %struct.v4l2_subdev_pad_config, ptr %46, i32 %spec.select.i11.i, i32 1, i32 1
  %48 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %top, align 4
  %49 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i123, align 4
  %width50 = getelementptr %struct.v4l2_subdev_pad_config, ptr %46, i32 %spec.select.i11.i, i32 1, i32 2
  %51 = ptrtoint ptr %width50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %width50, align 4
  %height51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i123, i32 0, i32 1
  %52 = ptrtoint ptr %height51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height51, align 4
  %height52 = getelementptr %struct.v4l2_subdev_pad_config, ptr %46, i32 %spec.select.i11.i, i32 1, i32 3
  %54 = ptrtoint ptr %height52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %height52, align 4
  %55 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pad, align 4
  %57 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i127 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv.i.i127)
  %cmp.not.i.i128 = icmp ult i32 %56, %conv.i.i127
  br i1 %cmp.not.i.i128, label %vsp1_entity_get_pad_selection.exit.vsp1_entity_get_pad_selection.exit133_crit_edge, label %do.end.i.i130, !prof !18

vsp1_entity_get_pad_selection.exit.vsp1_entity_get_pad_selection.exit133_crit_edge: ; preds = %vsp1_entity_get_pad_selection.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_get_pad_selection.exit133

do.end.i.i130:                                    ; preds = %vsp1_entity_get_pad_selection.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1034, i32 noundef 9, ptr noundef null) #8
  br label %vsp1_entity_get_pad_selection.exit133

vsp1_entity_get_pad_selection.exit133:            ; preds = %do.end.i.i130, %vsp1_entity_get_pad_selection.exit.vsp1_entity_get_pad_selection.exit133_crit_edge
  %spec.select.i.i131 = phi i32 [ 0, %do.end.i.i130 ], [ %56, %vsp1_entity_get_pad_selection.exit.vsp1_entity_get_pad_selection.exit133_crit_edge ]
  %59 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %retval.0.i, align 4
  %try_compose.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %60, i32 %spec.select.i.i131, i32 2
  %61 = ptrtoint ptr %try_compose.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %try_compose.i.i, align 4
  %top56 = getelementptr %struct.v4l2_subdev_pad_config, ptr %60, i32 %spec.select.i.i131, i32 2, i32 1
  %62 = ptrtoint ptr %top56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %top56, align 4
  %63 = ptrtoint ptr %arrayidx.i.i123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i123, align 4
  %width58 = getelementptr %struct.v4l2_subdev_pad_config, ptr %60, i32 %spec.select.i.i131, i32 2, i32 2
  %65 = ptrtoint ptr %width58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %width58, align 4
  %66 = ptrtoint ptr %height51 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height51, align 4
  %height60 = getelementptr %struct.v4l2_subdev_pad_config, ptr %60, i32 %spec.select.i.i131, i32 2, i32 3
  %68 = ptrtoint ptr %height60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %height60, align 4
  br label %done

done:                                             ; preds = %vsp1_entity_get_pad_selection.exit133, %if.then4, %vsp1_entity_get_pad_config.exit.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 0, %vsp1_entity_get_pad_selection.exit133 ], [ -22, %vsp1_entity_get_pad_config.exit.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vsp1_entity_link_setup(ptr nocapture noundef readnone %entity, ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %remote, i32 noundef %flags) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %entity.i7 = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 1
  %2 = ptrtoint ptr %entity.i7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity.i7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %route.i = getelementptr i8, ptr %3, i32 -44
  %4 = ptrtoint ptr %route.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %route.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.then
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %entity3.i = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %6 = ptrtoint ptr %entity3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity3.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %7, i32 -60
  %type.i = getelementptr i8, ptr %7, i32 -52
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %9, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then2.i.return_crit_edge, label %if.then7.i

if.then2.i.return_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then7.i:                                       ; preds = %if.then2.i
  %sink8.i = getelementptr i8, ptr %3, i32 -8
  %10 = ptrtoint ptr %sink8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sink8.i, align 4
  %tobool9.not.i = icmp eq ptr %11, null
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then7.i.return_crit_edge

if.then7.i.return_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end11.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sink8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i27.i, ptr %sink8.i, align 4
  %index.i = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 2
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %index.i, align 4
  %conv.i = zext i16 %14 to i32
  br label %cleanup18.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sink15.i = getelementptr i8, ptr %3, i32 -8
  %15 = ptrtoint ptr %sink15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %sink15.i, align 4
  br label %cleanup18.sink.split.i

cleanup18.sink.split.i:                           ; preds = %if.else.i, %if.end11.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %conv.i, %if.end11.i ]
  %sink_pad16.i = getelementptr i8, ptr %3, i32 -4
  %16 = ptrtoint ptr %sink_pad16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %sink_pad16.i, align 4
  br label %return

if.else:                                          ; preds = %entry
  %and.i8 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  %sources9.i = getelementptr i8, ptr %3, i32 -12
  %17 = ptrtoint ptr %sources9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sources9.i, align 4
  %index10.i = getelementptr inbounds %struct.media_pad, ptr %local, i32 0, i32 2
  %19 = ptrtoint ptr %index10.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %index10.i, align 4
  %idxprom11.i = zext i16 %20 to i32
  %arrayidx12.i = getelementptr ptr, ptr %18, i32 %idxprom11.i
  br i1 %tobool.not.i9, label %if.else.cleanup.sink.split.i_crit_edge, label %if.then.i

if.else.cleanup.sink.split.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then.i:                                        ; preds = %if.else
  %entity1.i = getelementptr inbounds %struct.media_pad, ptr %remote, i32 0, i32 1
  %21 = ptrtoint ptr %entity1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entity1.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %22, i32 -60
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12.i, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %if.then.i.cleanup.sink.split.i_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.cleanup.sink.split.i_crit_edge, %if.else.cleanup.sink.split.i_crit_edge
  %add.ptr.i20.sink.i = phi ptr [ %add.ptr.i20.i, %if.then.i.cleanup.sink.split.i_crit_edge ], [ null, %if.else.cleanup.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i20.sink.i, ptr %arrayidx12.i, align 4
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %if.then.i.return_crit_edge, %cleanup18.sink.split.i, %if.then7.i.return_crit_edge, %if.then2.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.return_crit_edge ], [ 0, %if.then2.i.return_crit_edge ], [ -16, %if.then7.i.return_crit_edge ], [ 0, %cleanup18.sink.split.i ], [ -16, %if.then.i.return_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_entity_remote_pad(ptr noundef readonly %pad) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %entity = getelementptr inbounds %struct.media_pad, ptr %pad, i32 0, i32 1
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  %links = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn43 = load ptr, ptr %links, align 4
  %cmp.not44 = icmp eq ptr %.pn43, %links
  br i1 %cmp.not44, label %entry.cleanup25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn43, %entry.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn45, i32 20
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = getelementptr i8, ptr %.pn45, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp4 = icmp eq ptr %7, %pad
  %8 = getelementptr i8, ptr %.pn45, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  br i1 %cmp4, label %if.end.cleanup25_crit_edge, label %if.end6

if.end.cleanup25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end6:                                          ; preds = %if.end
  %cmp7.not = icmp eq ptr %10, %pad
  br i1 %cmp7.not, label %if.end9, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %entity10 = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %entity10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end9.cleanup25_crit_edge, label %is_media_entity_v4l2_subdev.exit

if.end9.cleanup25_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

is_media_entity_v4l2_subdev.exit:                 ; preds = %if.end9
  %obj_type.i = getelementptr inbounds %struct.media_entity, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %obj_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %obj_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i = icmp eq i32 %14, 2
  br i1 %cmp.i, label %if.end12, label %is_media_entity_v4l2_subdev.exit.cleanup25_crit_edge

is_media_entity_v4l2_subdev.exit.cleanup25_crit_edge: ; preds = %is_media_entity_v4l2_subdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end12:                                         ; preds = %is_media_entity_v4l2_subdev.exit
  %type = getelementptr i8, ptr %12, i32 -52
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %.off = add i32 %16, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end12.for.inc_crit_edge, label %if.end12.cleanup25_crit_edge

if.end12.cleanup25_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %links
  br i1 %cmp.not, label %for.inc.cleanup25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

cleanup25:                                        ; preds = %for.inc.cleanup25_crit_edge, %if.end12.cleanup25_crit_edge, %is_media_entity_v4l2_subdev.exit.cleanup25_crit_edge, %if.end9.cleanup25_crit_edge, %if.end.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup25_crit_edge ], [ null, %for.inc.cleanup25_crit_edge ], [ %7, %is_media_entity_v4l2_subdev.exit.cleanup25_crit_edge ], [ %7, %if.end9.cleanup25_crit_edge ], [ %7, %if.end12.cleanup25_crit_edge ], [ %10, %if.end.cleanup25_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef %entity, ptr noundef %name, i32 noundef %num_pads, ptr noundef %ops, i32 noundef %function) local_unnamed_addr #0 align 64 {
entry:
  %format.i = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 2
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  %index4 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0127 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [25 x %struct.vsp1_route], ptr @vsp1_routes, i32 0, i32 %i.0127
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2 = icmp eq i32 %3, %1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %index = getelementptr [25 x %struct.vsp1_route], ptr @vsp1_routes, i32 0, i32 %i.0127, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5 = icmp eq i32 %5, %7
  br i1 %cmp5, label %do.body, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  %route = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 4
  %8 = ptrtoint ptr %route to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %route, align 4
  %lock = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_entity_init.__key) #8
  %9 = ptrtoint ptr %entity to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vsp1, ptr %entity, align 4
  %sub = add i32 %num_pads, -1
  %source_pad = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 9
  %10 = ptrtoint ptr %source_pad to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %source_pad, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_pads, i32 32) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !19

devm_kcalloc.exit.thread:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pads121 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 8
  %13 = ptrtoint ptr %pads121 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pads121, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.body
  %14 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vsp1, align 8
  %16 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef %16, i32 noundef 3520) #8
  %pads = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 8
  %17 = ptrtoint ptr %pads to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %pads, align 4
  %cmp12 = icmp eq ptr %call5.i.i, null
  br i1 %cmp12, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond15.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond15.preheader:                             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17129.not = icmp eq i32 %sub, 0
  br i1 %cmp17129.not, label %for.cond15.preheader.for.end23_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.for.end23_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %i.1130 = phi i32 [ %inc22, %for.body18.for.body18_crit_edge ], [ 0, %for.cond15.preheader.for.body18_crit_edge ]
  %18 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pads, align 4
  %flags = getelementptr %struct.media_pad, ptr %19, i32 %i.1130, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags, align 4
  %inc22 = add nuw i32 %i.1130, 1
  %exitcond132.not = icmp eq i32 %inc22, %sub
  br i1 %exitcond132.not, label %for.body18.for.end23_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.body18.for.end23_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.end23:                                        ; preds = %for.body18.for.end23_crit_edge, %for.cond15.preheader.for.end23_crit_edge
  %21 = tail call i32 @llvm.umax.i32(i32 %sub, i32 1)
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit117.thread, label %devm_kcalloc.exit117, !prof !19

devm_kcalloc.exit117.thread:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #10
  %sources124 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 10
  %24 = ptrtoint ptr %sources124 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sources124, align 4
  br label %cleanup

devm_kcalloc.exit117:                             ; preds = %for.end23
  %25 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsp1, align 8
  %27 = extractvalue { i32, i1 } %22, 0
  %call5.i.i114 = tail call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef %27, i32 noundef 3520) #8
  %sources = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 10
  %28 = ptrtoint ptr %sources to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i114, ptr %sources, align 4
  %cmp29 = icmp eq ptr %call5.i.i114, null
  br i1 %cmp29, label %devm_kcalloc.exit117.cleanup_crit_edge, label %if.end31

devm_kcalloc.exit117.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %devm_kcalloc.exit117
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_pads)
  %cmp32 = icmp ugt i32 %num_pads, 1
  %cond33 = select i1 %cmp32, i32 2, i32 1
  %29 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pads, align 4
  %flags37 = getelementptr %struct.media_pad, ptr %30, i32 %sub, i32 4
  %31 = ptrtoint ptr %flags37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond33, ptr %flags37, align 4
  %subdev38 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13
  %conv = trunc i32 %num_pads to i16
  %32 = load ptr, ptr %pads, align 4
  %call41 = tail call i32 @media_entity_pads_init(ptr noundef %subdev38, i16 noundef zeroext %conv, ptr noundef %32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end31.cleanup_crit_edge, label %if.end45

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end31
  tail call void @v4l2_subdev_init(ptr noundef %subdev38, ptr noundef %ops) #8
  %function48 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 0, i32 3
  %33 = ptrtoint ptr %function48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %function, ptr %function48, align 4
  %media_ops = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 24
  %ops50 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 0, i32 11
  %34 = ptrtoint ptr %ops50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %media_ops, ptr %ops50, align 4
  %flags51 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 4
  %35 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags51, align 4
  %or = or i32 %36, 4
  store i32 %or, ptr %flags51, align 4
  %name52 = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 9
  %37 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vsp1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.dev_name.exit_crit_edge

if.end45.dev_name.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end45.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %42, %if.end.i ], [ %40, %if.end45.dev_name.exit_crit_edge ]
  %call55 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name52, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, ptr noundef %name)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format.i) #8
  %num_pads.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 0, i32 5
  %43 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp38.not.i = icmp eq i16 %44, 1
  br i1 %cmp38.not.i, label %dev_name.exit.vsp1_entity_init_cfg.exit_crit_edge, label %for.body.lr.ph.i

dev_name.exit.vsp1_entity_init_cfg.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_init_cfg.exit

for.body.lr.ph.i:                                 ; preds = %dev_name.exit
  %pad2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format.i, i32 0, i32 1
  %tobool3.not.i = icmp eq ptr %subdev38, null
  %ops.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 6
  %45 = getelementptr inbounds i8, ptr %format.i, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pad.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end23.i.for.body.i_crit_edge ]
  %46 = call ptr @memset(ptr %45, i32 0, i32 80)
  %47 = ptrtoint ptr %pad2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %pad.039.i, ptr %pad2.i, align 4
  %48 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %format.i, align 4
  br i1 %tobool3.not.i, label %for.body.i.if.end23.i_crit_edge, label %if.else.i

for.body.i.if.end23.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.else.i:                                        ; preds = %for.body.i
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %pad4.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %pad4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pad4.i, align 4
  %tobool5.not.i = icmp eq ptr %52, null
  br i1 %tobool5.not.i, label %if.else.i.if.end23.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %set_fmt.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %set_fmt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_fmt.i, align 4
  %tobool8.not.i = icmp eq ptr %54, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.else10.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.else10.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool11.not.i = icmp eq ptr %55, null
  br i1 %tobool11.not.i, label %if.else10.i.if.else17.i_crit_edge, label %land.lhs.true12.i

if.else10.i.if.else17.i_crit_edge:                ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

land.lhs.true12.i:                                ; preds = %if.else10.i
  %set_fmt13.i = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %set_fmt13.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_fmt13.i, align 4
  %tobool14.not.i = icmp eq ptr %57, null
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.else17.i_crit_edge, label %land.lhs.true12.i.if.end23.sink.split.i_crit_edge

land.lhs.true12.i.if.end23.sink.split.i_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split.i

land.lhs.true12.i.if.else17.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

if.else17.i:                                      ; preds = %land.lhs.true12.i.if.else17.i_crit_edge, %if.else10.i.if.else17.i_crit_edge
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %if.else17.i, %land.lhs.true12.i.if.end23.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %54, %if.else17.i ], [ %57, %land.lhs.true12.i.if.end23.sink.split.i_crit_edge ]
  %call21.i = call i32 %.sink.i(ptr noundef nonnull %subdev38, ptr noundef null, ptr noundef nonnull %format.i) #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %land.lhs.true.i.if.end23.i_crit_edge, %if.else.i.if.end23.i_crit_edge, %for.body.i.if.end23.i_crit_edge
  %inc.i = add nuw i32 %pad.039.i, 1
  %58 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %59 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %cmp.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp.i, label %if.end23.i.for.body.i_crit_edge, label %if.end23.i.vsp1_entity_init_cfg.exit_crit_edge

if.end23.i.vsp1_entity_init_cfg.exit_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vsp1_entity_init_cfg.exit

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vsp1_entity_init_cfg.exit:                        ; preds = %if.end23.i.vsp1_entity_init_cfg.exit_crit_edge, %dev_name.exit.vsp1_entity_init_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format.i) #8
  %call58 = call ptr @v4l2_subdev_alloc_state(ptr noundef %subdev38) #8
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %60 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call58, ptr %config, align 4
  %cmp.i118 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  %61 = ptrtoint ptr %call58 to i32
  %spec.select = select i1 %cmp.i118, i32 %61, i32 0
  br label %cleanup

cleanup:                                          ; preds = %vsp1_entity_init_cfg.exit, %if.end31.cleanup_crit_edge, %devm_kcalloc.exit117.cleanup_crit_edge, %devm_kcalloc.exit117.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit117.cleanup_crit_edge ], [ %call41, %if.end31.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit117.thread ], [ %spec.select, %vsp1_entity_init_cfg.exit ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_subdev_alloc_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_entity_destroy(ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %entity) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 13, i32 8
  %4 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_handler, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %5) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  tail call void @v4l2_subdev_free_state(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_free_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @vsp1_entity_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_entity.c", i32 631, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_entity.c", i32 669, i32 47}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!7 = !{ptr @vsp1_routes, !8, !"vsp1_routes", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/vsp1/vsp1_entity.c", i32 580, i32 32}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
