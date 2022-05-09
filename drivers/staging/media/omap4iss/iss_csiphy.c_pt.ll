; ModuleID = '/llk/IR_all_yes/drivers/staging/media/omap4iss/iss_csiphy.c_pt.bc'
source_filename = "../drivers/staging/media/omap4iss/iss_csiphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.iss_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, i32, ptr, ptr, %struct.media_entity_enum, %struct.atomic_t, i8, i8, %struct.v4l2_fract, ptr, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_entity_enum = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.iss_v4l2_subdevs_group = type { ptr, i32, %union.anon.94 }
%union.anon.94 = type { %struct.iss_csi2_platform_data }
%struct.iss_csi2_platform_data = type { i8, %struct.iss_csiphy_lanes_cfg, i8 }
%struct.iss_csiphy_lanes_cfg = type { [4 x %struct.iss_csiphy_lane], %struct.iss_csiphy_lane }
%struct.iss_csiphy_lane = type { i8, i8 }
%struct.iss_device = type { %struct.v4l2_device, %struct.media_device, ptr, i32, ptr, i32, [11 x ptr], [11 x ptr], ptr, i64, %struct.mutex, %struct.media_entity_enum, i32, i32, ptr, ptr, %struct.iss_csi2_device, %struct.iss_csi2_device, %struct.iss_csiphy, %struct.iss_csiphy, %struct.iss_ipipeif_device, %struct.iss_ipipe_device, %struct.iss_resizer_device, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iss_csi2_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.iss_video, ptr, i8, i32, i32, i32, i32, i8, i32, ptr, [8 x %struct.iss_csi2_ctx_cfg], [2 x %struct.iss_csi2_timing_cfg], %struct.iss_csi2_ctrl_cfg, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.88, i16, i16, i16, [10 x i16] }
%union.anon.88 = type { i16 }
%struct.iss_video = type { %struct.video_device, i32, %struct.media_pad, %struct.mutex, %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, %struct.iss_pipeline, %struct.mutex, i8, ptr, %struct.spinlock, %struct.list_head, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
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
%struct.iss_csi2_ctx_cfg = type { i8, i8, i8, i16, i8, i16, i16, i16, i32, i32, i8, i8, i8, i8 }
%struct.iss_csi2_timing_cfg = type { i8, i8, i16 }
%struct.iss_csi2_ctrl_cfg = type { i8, i8, i8, i32, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iss_csiphy = type { ptr, %struct.mutex, i8, ptr, i32, i32, i8, i8, %struct.iss_csiphy_lanes_cfg, %struct.iss_csiphy_dphy_cfg }
%struct.iss_csiphy_dphy_cfg = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.iss_ipipeif_device = type { %struct.v4l2_subdev, [3 x %struct.media_pad], [3 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_ipipe_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, i32, i32, %struct.wait_queue_head, %struct.atomic_t }
%struct.iss_resizer_device = type { %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], i32, i32, %struct.iss_video, i32, i32, %struct.wait_queue_head, %struct.atomic_t }

@omap4iss_csiphy_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&phy1->mutex\00", [19 x i8] zeroinitializer }, align 32
@omap4iss_csiphy_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&phy2->mutex\00", [19 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@csiphy_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 77, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CSI2 CIO set power failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"csiphy_set_power\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/omap4iss/iss_csiphy.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csiphy_set_power._entry_ptr = internal global ptr @csiphy_set_power._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 266, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 274, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [47 x i8] c"../drivers/staging/media/omap4iss/iss_csiphy.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 77, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @csiphy_set_power._entry, ptr @csiphy_set_power._entry_ptr, ptr @omap4iss_csiphy_init.__key, ptr @.str, ptr @omap4iss_csiphy_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_csiphy_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4iss_csiphy_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csiphy_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csiphy_config(ptr nocapture noundef readonly %iss, ptr nocapture noundef readonly %csi2_subdev) local_unnamed_addr #0 align 64 {
entry:
  %cam_rx_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %csi2_subdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pipe1 = getelementptr inbounds %struct.media_entity, ptr %csi2_subdev, i32 0, i32 14
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %external = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %external to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %external, align 4
  %host_priv = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %host_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cam_rx_ctrl) #5
  %8 = ptrtoint ptr %cam_rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cam_rx_ctrl, align 4, !annotation !23
  %lanecfg = getelementptr inbounds %struct.iss_v4l2_subdevs_group, ptr %7, i32 0, i32 2, i32 0, i32 1
  %syscon = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 8
  %9 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %syscon, align 8
  %call2 = call i32 @regmap_read(ptr noundef %10, i32 noundef 104, ptr noundef nonnull %cam_rx_ctrl) #5
  %interface = getelementptr inbounds %struct.iss_v4l2_subdevs_group, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interface, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %entry.if.end10_crit_edge [
    i32 0, label %if.end.thread
    i32 1, label %if.then6
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %cam_rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cam_rx_ctrl, align 4
  %and = and i32 %15, -520552449
  %or3 = or i32 %and, 520355840
  store i32 %or3, ptr %cam_rx_ctrl, align 4
  br label %if.end10

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %cam_rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cam_rx_ctrl, align 4
  %and7 = and i32 %17, -1614282753
  %or9 = or i32 %and7, 1612709888
  store i32 %or9, ptr %cam_rx_ctrl, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.thread, %entry.if.end10_crit_edge
  %18 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %syscon, align 8
  %20 = ptrtoint ptr %cam_rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cam_rx_ctrl, align 4
  %call12 = call i32 @regmap_write(ptr noundef %19, i32 noundef 104, i32 noundef %21) #5
  %phy = getelementptr inbounds %struct.iss_csi2_device, ptr %1, i32 0, i32 12
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 8
  %used_data_lanes = getelementptr inbounds %struct.iss_csiphy, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %used_data_lanes to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %used_data_lanes, align 1
  %25 = load ptr, ptr %phy, align 8
  %max_data_lanes152 = getelementptr inbounds %struct.iss_csiphy, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %max_data_lanes152 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_data_lanes152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp14154.not = icmp eq i8 %27, 0
  br i1 %cmp14154.not, label %if.end10.for.end_crit_edge, label %for.body.preheader

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end10
  %conv153 = zext i8 %27 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %conv158 = phi i32 [ %conv, %for.inc.for.body_crit_edge ], [ %conv153, %for.body.preheader ]
  %28 = phi ptr [ %36, %for.inc.for.body_crit_edge ], [ %25, %for.body.preheader ]
  %i.0156 = phi i32 [ %inc52, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %used_lanes.0155 = phi i32 [ %used_lanes.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [4 x %struct.iss_csiphy_lane], ptr %lanecfg, i32 0, i32 %i.0156
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp17 = icmp eq i8 %30, 0
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %pol = getelementptr [4 x %struct.iss_csiphy_lane], ptr %lanecfg, i32 0, i32 %i.0156, i32 1
  %31 = ptrtoint ptr %pol to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp24 = icmp ugt i8 %32, 1
  %add = add nuw nsw i32 %conv158, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv16)
  %cmp33 = icmp ult i32 %add, %conv16
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.end20.cleanup_crit_edge, label %if.end36

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end20
  %shl = shl nuw i32 1, %conv16
  %and41 = and i32 %shl, %used_lanes.0155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool.not = icmp eq i32 %and41, 0
  br i1 %tobool.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %or49 = or i32 %shl, %used_lanes.0155
  %used_data_lanes51 = getelementptr inbounds %struct.iss_csiphy, ptr %28, i32 0, i32 7
  %33 = ptrtoint ptr %used_data_lanes51 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %used_data_lanes51, align 1
  %inc = add i8 %34, 1
  store i8 %inc, ptr %used_data_lanes51, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %for.body.for.inc_crit_edge
  %used_lanes.1 = phi i32 [ %used_lanes.0155, %for.body.for.inc_crit_edge ], [ %or49, %if.end43 ]
  %inc52 = add nuw nsw i32 %i.0156, 1
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy, align 8
  %max_data_lanes = getelementptr inbounds %struct.iss_csiphy, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %max_data_lanes to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_data_lanes, align 4
  %conv = zext i8 %38 to i32
  %cmp14 = icmp ult i32 %inc52, %conv
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = zext i8 %38 to i32
  %phi.bo = add nuw nsw i32 %phi.cast, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end10.for.end_crit_edge
  %.lcssa151 = phi i32 [ 1, %if.end10.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %used_lanes.0.lcssa = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %used_lanes.1, %for.end.loopexit ]
  %.lcssa = phi ptr [ %25, %if.end10.for.end_crit_edge ], [ %36, %for.end.loopexit ]
  %pol53 = getelementptr inbounds %struct.iss_v4l2_subdevs_group, ptr %7, i32 0, i32 2, i32 0, i32 1, i32 1, i32 1
  %39 = ptrtoint ptr %pol53 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pol53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp55 = icmp ugt i8 %40, 1
  br i1 %cmp55, label %for.end.cleanup_crit_edge, label %lor.lhs.false57

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false57:                                  ; preds = %for.end
  %clk = getelementptr inbounds %struct.iss_v4l2_subdevs_group, ptr %7, i32 0, i32 2, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %clk, align 1
  %conv60 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa151, i32 %conv60)
  %cmp65 = icmp ult i32 %.lcssa151, %conv60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp72 = icmp eq i8 %42, 0
  %or.cond146 = or i1 %cmp72, %cmp65
  br i1 %or.cond146, label %lor.lhs.false57.cleanup_crit_edge, label %lor.lhs.false74

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false74:                                  ; preds = %lor.lhs.false57
  %shl78 = shl nuw i32 1, %conv60
  %and79 = and i32 %shl78, %used_lanes.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end82, label %lor.lhs.false74.cleanup_crit_edge

lor.lhs.false74.cleanup_crit_edge:                ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end82:                                         ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #7
  %external_rate = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 12
  %43 = ptrtoint ptr %external_rate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %external_rate, align 4
  %div = udiv i32 %44, 1000
  %used_data_lanes84 = getelementptr inbounds %struct.iss_csiphy, ptr %.lcssa, i32 0, i32 7
  %45 = ptrtoint ptr %used_data_lanes84 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %used_data_lanes84, align 1
  %conv85 = zext i8 %46 to i32
  %mul = shl nuw nsw i32 %conv85, 1
  %div86 = udiv i32 %div, %mul
  %external_bpp = getelementptr inbounds %struct.iss_pipeline, ptr %3, i32 0, i32 13
  %47 = ptrtoint ptr %external_bpp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %external_bpp, align 4
  %mul87 = mul i32 %48, %div86
  %mul88 = mul i32 %mul87, 25
  %sub = add i32 %mul88, 1999999
  %div90 = sdiv i32 %sub, 2000000
  %49 = trunc i32 %div90 to i8
  %conv92 = add i8 %49, -1
  %mul93 = mul i32 %mul87, 90
  %sub95 = add i32 %mul93, 999999
  %div96 = sdiv i32 %sub95, 1000000
  %50 = trunc i32 %div96 to i8
  %conv98 = add i8 %50, 3
  %mutex = getelementptr inbounds %struct.iss_csiphy, ptr %.lcssa, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy, align 8
  %dphy = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %dphy to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv92, ptr %dphy, align 4
  %csi2phy.sroa.5.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %csi2phy.sroa.5.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv98, ptr %csi2phy.sroa.5.0.dphy.sroa_idx, align 1
  %csi2phy.sroa.7.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 2
  %55 = ptrtoint ptr %csi2phy.sroa.7.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %csi2phy.sroa.7.0.dphy.sroa_idx, align 2
  %csi2phy.sroa.9.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 3
  %56 = ptrtoint ptr %csi2phy.sroa.9.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %csi2phy.sroa.9.0.dphy.sroa_idx, align 1
  %csi2phy.sroa.12.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 4
  %57 = ptrtoint ptr %csi2phy.sroa.12.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 14, ptr %csi2phy.sroa.12.0.dphy.sroa_idx, align 4
  %csi2phy.sroa.14.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 5
  %58 = ptrtoint ptr %csi2phy.sroa.14.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %csi2phy.sroa.14.0.dphy.sroa_idx, align 1
  %csi2phy.sroa.15.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 5, i32 1
  %59 = ptrtoint ptr %csi2phy.sroa.15.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %csi2phy.sroa.15.0.dphy.sroa_idx, align 2
  %csi2phy.sroa.16.0.dphy.sroa_idx = getelementptr inbounds %struct.iss_csiphy, ptr %52, i32 0, i32 9, i32 5, i32 2
  %60 = ptrtoint ptr %csi2phy.sroa.16.0.dphy.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %csi2phy.sroa.16.0.dphy.sroa_idx, align 1
  %61 = load ptr, ptr %phy, align 8
  %lanes102 = getelementptr inbounds %struct.iss_csiphy, ptr %61, i32 0, i32 8
  %62 = call ptr @memcpy(ptr %lanes102, ptr %lanecfg, i32 10)
  %63 = load ptr, ptr %phy, align 8
  %mutex104 = getelementptr inbounds %struct.iss_csiphy, ptr %63, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %mutex104) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %lor.lhs.false74.cleanup_crit_edge, %lor.lhs.false57.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -22, %lor.lhs.false57.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %lor.lhs.false74.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cam_rx_ctrl) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csiphy_acquire(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %csi2 = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %csi2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csi2, align 4
  %call = tail call i32 @omap4iss_csi2_reset(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %dphy.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 9
  %2 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dphy.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %ths_settle.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %ths_settle.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ths_settle.i, align 1
  %conv2.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %phy_regs.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 5
  %8 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %7, i32 0, i32 7, i32 %9
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !25
  %tclk_term.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %tclk_term.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tclk_term.i, align 2
  %conv5.i = zext i8 %14 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 18
  %tclk_miss.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %tclk_miss.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %tclk_miss.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %bf.cast.i = zext i8 %bf.lshr.i to i32
  %shl8.i = shl nuw nsw i32 %bf.cast.i, 8
  %or9.i = or i32 %shl8.i, %shl6.i
  %tclk_settle.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %tclk_settle.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tclk_settle.i, align 4
  %conv11.i = zext i8 %17 to i32
  %or13.i = or i32 %or9.i, %conv11.i
  %or14.i = or i32 %or13.i, 188416
  %18 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy, align 4
  %20 = ptrtoint ptr %phy_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #5
  %arrayidx.i30.i = getelementptr %struct.iss_device, ptr %19, i32 0, i32 7, i32 %21
  %23 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i30.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #5, !srcloc !25
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 4
  %cfg_regs.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 4
  %27 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cfg_regs.i, align 4
  %arrayidx.i.i14 = getelementptr %struct.iss_device, ptr %26, i32 0, i32 7, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %30, i32 80
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #5, !srcloc !26
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %max_data_lanes.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 6
  %33 = ptrtoint ptr %max_data_lanes.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %max_data_lanes.i, align 4
  %conv.i16 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp58.not.i = icmp eq i8 %34, 0
  br i1 %cmp58.not.i, label %if.end.csiphy_lanes_config.exit_crit_edge, label %for.body.lr.ph.i

if.end.csiphy_lanes_config.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %csiphy_lanes_config.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %lanes.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %reg.060.i = phi i32 [ %32, %for.body.lr.ph.i ], [ %or19.i, %for.body.i.for.body.i_crit_edge ]
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.059.i, 1
  %mul.i = shl i32 %add.i, 2
  %add2.i = or i32 %mul.i, 3
  %shl.i17 = shl nuw i32 1, %add2.i
  %shl5.i = shl i32 7, %mul.i
  %or.i18 = or i32 %shl.i17, %shl5.i
  %neg.i = xor i32 %or.i18, -1
  %and.i = and i32 %reg.060.i, %neg.i
  %arrayidx.i = getelementptr [4 x %struct.iss_csiphy_lane], ptr %lanes.i, i32 0, i32 %i.059.i
  %pol.i = getelementptr [4 x %struct.iss_csiphy_lane], ptr %lanes.i, i32 0, i32 %i.059.i, i32 1
  %35 = ptrtoint ptr %pol.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl.i17
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 2
  %conv15.i = zext i8 %38 to i32
  %shl18.i = shl i32 %conv15.i, %mul.i
  %or11.i = or i32 %spec.select.i, %shl18.i
  %or19.i = or i32 %or11.i, %and.i
  %exitcond.not.i = icmp eq i32 %add.i, %conv.i16
  br i1 %exitcond.not.i, label %for.body.i.csiphy_lanes_config.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.csiphy_lanes_config.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %csiphy_lanes_config.exit

csiphy_lanes_config.exit:                         ; preds = %for.body.i.csiphy_lanes_config.exit_crit_edge, %if.end.csiphy_lanes_config.exit_crit_edge
  %reg.0.lcssa.i = phi i32 [ %32, %if.end.csiphy_lanes_config.exit_crit_edge ], [ %or19.i, %for.body.i.csiphy_lanes_config.exit_crit_edge ]
  %and20.i = and i32 %reg.0.lcssa.i, -16
  %clk.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 8, i32 1
  %pol22.i = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 8, i32 1, i32 1
  %39 = ptrtoint ptr %pol22.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pol22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool24.not.i = icmp eq i8 %40, 0
  %cond25.i = select i1 %tobool24.not.i, i32 0, i32 8
  %or26.i = or i32 %cond25.i, %and20.i
  %41 = ptrtoint ptr %clk.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %clk.i, align 2
  %conv30.i = zext i8 %42 to i32
  %or32.i = or i32 %or26.i, %conv30.i
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %45 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cfg_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #5
  %arrayidx.i56.i = getelementptr %struct.iss_device, ptr %44, i32 0, i32 7, i32 %46
  %48 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i56.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %49, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %47) #5, !srcloc !25
  %call1 = tail call fastcc i32 @csiphy_set_power(ptr noundef %phy, i32 noundef 134217728)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %csiphy_lanes_config.exit.done_crit_edge

csiphy_lanes_config.exit.done_crit_edge:          ; preds = %csiphy_lanes_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end4:                                          ; preds = %csiphy_lanes_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  %phy_in_use = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 2
  %50 = ptrtoint ptr %phy_in_use to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %phy_in_use, align 4
  br label %done

done:                                             ; preds = %if.end4, %csiphy_lanes_config.exit.done_crit_edge, %entry.done_crit_edge
  %rval.0 = phi i32 [ %call, %entry.done_crit_edge ], [ %call1, %csiphy_lanes_config.exit.done_crit_edge ], [ 0, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %rval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4iss_csi2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @csiphy_set_power(ptr nocapture noundef readonly %phy, i32 noundef %power) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %cfg_regs = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg_regs, align 4
  %arrayidx.i.i = getelementptr %struct.iss_device, ptr %1, i32 0, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %7 = and i32 %6, -25
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %or = or i32 %8, %power
  %or.i = or i32 %or, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #5, !srcloc !25
  %shr = lshr i32 %power, 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %retry_count.0 = phi i8 [ 0, %entry ], [ %spec.select, %do.body.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #5
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %15 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg_regs, align 4
  %arrayidx.i = getelementptr %struct.iss_device, ptr %14, i32 0, i32 7, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !26
  %20 = shl i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  %and = and i32 %20, 100663296
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shr)
  %cmp.not = icmp ne i32 %and, %shr
  %inc = zext i1 %cmp.not to i8
  %spec.select = add nuw i8 %retry_count.0, %inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %spec.select)
  %cmp5 = icmp ult i8 %spec.select, -6
  %or.cond = select i1 %cmp.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %spec.select)
  %cmp8 = icmp eq i8 %spec.select, -6
  br i1 %cmp8, label %do.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.iss_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end13 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4iss_csiphy_release(ptr noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %phy_in_use = getelementptr inbounds %struct.iss_csiphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %phy_in_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @csiphy_set_power(ptr noundef %phy, i32 noundef 0)
  %2 = ptrtoint ptr %phy_in_use to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %phy_in_use, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4iss_csiphy_init(ptr noundef %iss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %csiphy1 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18
  %csiphy2 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19
  %0 = ptrtoint ptr %csiphy1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %iss, ptr %csiphy1, align 4
  %csi2a = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 16
  %csi2 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18, i32 3
  %1 = ptrtoint ptr %csi2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %csi2a, ptr %csi2, align 4
  %max_data_lanes = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18, i32 6
  %2 = ptrtoint ptr %max_data_lanes to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %max_data_lanes, align 4
  %used_data_lanes = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18, i32 7
  %3 = ptrtoint ptr %used_data_lanes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %used_data_lanes, align 1
  %cfg_regs = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %cfg_regs, align 4
  %phy_regs = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18, i32 5
  %5 = ptrtoint ptr %phy_regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %phy_regs, align 4
  %mutex = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 18, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @omap4iss_csiphy_init.__key) #5
  %6 = ptrtoint ptr %csiphy2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %iss, ptr %csiphy2, align 4
  %csi2b = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 17
  %csi23 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19, i32 3
  %7 = ptrtoint ptr %csi23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %csi2b, ptr %csi23, align 4
  %max_data_lanes4 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19, i32 6
  %8 = ptrtoint ptr %max_data_lanes4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %max_data_lanes4, align 4
  %used_data_lanes5 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19, i32 7
  %9 = ptrtoint ptr %used_data_lanes5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %used_data_lanes5, align 1
  %cfg_regs6 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19, i32 4
  %10 = ptrtoint ptr %cfg_regs6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %cfg_regs6, align 4
  %phy_regs7 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19, i32 5
  %11 = ptrtoint ptr %phy_regs7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %phy_regs7, align 4
  %mutex9 = getelementptr inbounds %struct.iss_device, ptr %iss, i32 0, i32 19, i32 1
  tail call void @__mutex_init(ptr noundef %mutex9, ptr noundef nonnull @.str.2, ptr noundef nonnull @omap4iss_csiphy_init.__key.1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @omap4iss_csiphy_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/omap4iss/iss_csiphy.c", i32 266, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @omap4iss_csiphy_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/omap4iss/iss_csiphy.c", i32 274, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/omap4iss/iss_csiphy.c", i32 77, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @csiphy_set_power._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @csiphy_set_power._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2156474989}
!25 = !{i64 4856549}
!26 = !{i64 4856967}
!27 = !{i64 2156474598}
