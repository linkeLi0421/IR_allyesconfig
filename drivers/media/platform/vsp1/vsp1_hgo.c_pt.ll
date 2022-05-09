; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_hgo.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_hgo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_histogram_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vsp1_hgo = type { %struct.vsp1_histogram, %struct.anon.95, i8, i32 }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.95 = type { %struct.v4l2_ctrl_handler, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }

@vsp1_hgo_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"vsp1_hgo:199:(&hgo->ctrls.handler)->_lock\00", [54 x i8] zeroinitializer }, align 32
@hgo_max_rgb_control = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9967873, ptr @.str.2, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 1024, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@hgo_num_bins_control = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9967874, ptr @.str.3, i32 9, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 1024, i64 0, ptr null, ptr @hgo_num_bins, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hgo\00", [28 x i8] zeroinitializer }, align 32
@hgo_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr @vsp1_histogram_destroy, ptr @hgo_configure_stream, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hgo_mbus_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8215, i32 4109, i32 24577], [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Maximum RGB Mode\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Number of Bins\00", [17 x i8] zeroinitializer }, align 32
@hgo_num_bins = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 64, i64 256], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 198, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"hgo_max_rgb_control\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 102, i32 38 }
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"hgo_num_bins_control\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 117, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 213, i32 64 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"hgo_entity_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 173, i32 44 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"hgo_mbus_formats\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 182, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 104, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 119, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"hgo_num_bins\00", align 1
@___asan_gen_.32 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_hgo.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 113, i32 18 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @vsp1_hgo_create._key, ptr @.str, ptr @hgo_max_rgb_control, ptr @hgo_num_bins_control, ptr @.str.1, ptr @hgo_entity_ops, ptr @hgo_mbus_formats, ptr @.str.2, ptr @.str.3, ptr @hgo_num_bins], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_hgo_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgo_max_rgb_control to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgo_num_bins_control to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgo_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgo_mbus_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgo_num_bins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_hgo_frame_end(ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @vsp1_histogram_buffer_get(ptr noundef %entity) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %num_bins = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 3
  %2 = ptrtoint ptr %num_bins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp = icmp eq i32 %3, 256
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entity, align 8
  %mmio.i.i = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 12864
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !28
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr = getelementptr i32, ptr %1, i32 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %11 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entity, align 8
  %mmio.i.i112 = getelementptr inbounds %struct.vsp1_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mmio.i.i112 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i112, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %14, i32 12868
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i113) #3, !srcloc !28
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr5 = getelementptr i32, ptr %1, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %incdec.ptr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then2
  %data.0147 = phi ptr [ %incdec.ptr5, %if.then2 ], [ %incdec.ptr10, %for.body.for.body_crit_edge ]
  %i.0146 = phi i32 [ 0, %if.then2 ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entity, align 8
  %mmio.i = getelementptr inbounds %struct.vsp1_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %21, i32 13148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %22 = tail call i32 @llvm.bswap.i32(i32 %i.0146) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %22) #3, !srcloc !31
  %23 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entity, align 8
  %mmio.i.i115 = getelementptr inbounds %struct.vsp1_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %mmio.i.i115 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i115, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %26, i32 13152
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i116) #3, !srcloc !28
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr10 = getelementptr i32, ptr %data.0147, i32 1
  %29 = ptrtoint ptr %data.0147 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %data.0147, align 4
  %inc = add nuw nsw i32 %i.0146, 1
  %exitcond151.not = icmp eq i32 %inc, 256
  br i1 %exitcond151.not, label %for.body.if.end58_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

if.else:                                          ; preds = %if.end
  %max_rgb = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 2
  %30 = ptrtoint ptr %max_rgb to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_rgb, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool11.not = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entity, align 8
  %mmio.i.i123 = getelementptr inbounds %struct.vsp1_device, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %mmio.i.i123 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i123, align 4
  br i1 %tobool11.not, label %if.else25, label %if.then12

if.then12:                                        ; preds = %if.else
  %add.ptr.i.i118 = getelementptr i8, ptr %35, i32 12864
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #3, !srcloc !28
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr14 = getelementptr i32, ptr %1, i32 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %1, align 4
  %39 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %entity, align 8
  %mmio.i.i119 = getelementptr inbounds %struct.vsp1_device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %mmio.i.i119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i119, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %42, i32 12868
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i120) #3, !srcloc !28
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr16 = getelementptr i32, ptr %1, i32 2
  %45 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %incdec.ptr14, align 4
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.then12
  %data.1144 = phi ptr [ %incdec.ptr16, %if.then12 ], [ %incdec.ptr21, %for.body19.for.body19_crit_edge ]
  %i.1143 = phi i32 [ 0, %if.then12 ], [ %inc23, %for.body19.for.body19_crit_edge ]
  %mul = shl nuw nsw i32 %i.1143, 2
  %add = add nuw nsw i32 %mul, 12608
  %46 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entity, align 8
  %mmio.i.i121 = getelementptr inbounds %struct.vsp1_device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %mmio.i.i121 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i.i121, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %49, i32 %add
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #3, !srcloc !28
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr21 = getelementptr i32, ptr %data.1144, i32 1
  %52 = ptrtoint ptr %data.1144 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %data.1144, align 4
  %inc23 = add nuw nsw i32 %i.1143, 1
  %exitcond.not = icmp eq i32 %inc23, 64
  br i1 %exitcond.not, label %for.body19.if.end58_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19

for.body19.if.end58_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

if.else25:                                        ; preds = %if.else
  %add.ptr.i.i124 = getelementptr i8, ptr %35, i32 12592
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i124) #3, !srcloc !28
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr27 = getelementptr i32, ptr %1, i32 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %1, align 4
  %56 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %entity, align 8
  %mmio.i.i125 = getelementptr inbounds %struct.vsp1_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %mmio.i.i125 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i125, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %59, i32 12864
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i126) #3, !srcloc !28
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr29 = getelementptr i32, ptr %1, i32 2
  %62 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %incdec.ptr27, align 4
  %63 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %entity, align 8
  %mmio.i.i127 = getelementptr inbounds %struct.vsp1_device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %mmio.i.i127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i.i127, align 4
  %add.ptr.i.i128 = getelementptr i8, ptr %66, i32 13136
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i128) #3, !srcloc !28
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr31 = getelementptr i32, ptr %1, i32 3
  %69 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %incdec.ptr29, align 4
  %70 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %entity, align 8
  %mmio.i.i129 = getelementptr inbounds %struct.vsp1_device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %mmio.i.i129 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i.i129, align 4
  %add.ptr.i.i130 = getelementptr i8, ptr %73, i32 12596
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130) #3, !srcloc !28
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr33 = getelementptr i32, ptr %1, i32 4
  %76 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %incdec.ptr31, align 4
  %77 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %entity, align 8
  %mmio.i.i131 = getelementptr inbounds %struct.vsp1_device, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %mmio.i.i131 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i.i131, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %80, i32 12868
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132) #3, !srcloc !28
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr35 = getelementptr i32, ptr %1, i32 5
  %83 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %incdec.ptr33, align 4
  %84 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %entity, align 8
  %mmio.i.i133 = getelementptr inbounds %struct.vsp1_device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %mmio.i.i133 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i.i133, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %87, i32 13140
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i134) #3, !srcloc !28
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %incdec.ptr37 = getelementptr i32, ptr %1, i32 6
  %90 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %incdec.ptr35, align 4
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %if.else25
  %i.2145 = phi i32 [ 0, %if.else25 ], [ %inc55, %for.body40.for.body40_crit_edge ]
  %mul41 = shl nuw nsw i32 %i.2145, 2
  %add42 = add nuw nsw i32 %mul41, 12336
  %91 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %entity, align 8
  %mmio.i.i135 = getelementptr inbounds %struct.vsp1_device, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i.i135, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %94, i32 %add42
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i136) #3, !srcloc !28
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %arrayidx = getelementptr i32, ptr %incdec.ptr37, i32 %i.2145
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx, align 4
  %add45 = add nuw nsw i32 %mul41, 12608
  %98 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %entity, align 8
  %mmio.i.i137 = getelementptr inbounds %struct.vsp1_device, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %mmio.i.i137 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i.i137, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %101, i32 %add45
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i138) #3, !srcloc !28
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %add47 = add nuw nsw i32 %i.2145, 64
  %arrayidx48 = getelementptr i32, ptr %incdec.ptr37, i32 %add47
  %104 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx48, align 4
  %add50 = add nuw nsw i32 %mul41, 12880
  %105 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %entity, align 8
  %mmio.i.i139 = getelementptr inbounds %struct.vsp1_device, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %mmio.i.i139 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i.i139, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %108, i32 %add50
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i140) #3, !srcloc !28
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %add52 = add nuw nsw i32 %i.2145, 128
  %arrayidx53 = getelementptr i32, ptr %incdec.ptr37, i32 %add52
  %111 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx53, align 4
  %inc55 = add nuw nsw i32 %i.2145, 1
  %exitcond150.not = icmp eq i32 %inc55, 64
  br i1 %exitcond150.not, label %for.body40.if.end58_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body40

for.body40.if.end58_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

if.end58:                                         ; preds = %for.body40.if.end58_crit_edge, %for.body19.if.end58_crit_edge, %for.body.if.end58_crit_edge
  %size.0 = phi i32 [ 1032, %for.body.if.end58_crit_edge ], [ 792, %for.body40.if.end58_crit_edge ], [ 264, %for.body19.if.end58_crit_edge ]
  tail call void @vsp1_histogram_buffer_complete(ptr noundef %entity, ptr noundef nonnull %call1, i32 noundef %size.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_histogram_buffer_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_buffer_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_hgo_create(ptr noundef %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2664, i32 noundef 3520) #3
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrls = getelementptr inbounds %struct.vsp1_hgo, ptr %call.i, i32 0, i32 1
  %info = getelementptr inbounds %struct.vsp1_device, ptr %vsp1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %gen = getelementptr inbounds %struct.vsp1_device_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp2 = icmp eq i32 %5, 3
  %cond = select i1 %cmp2, i32 2, i32 1
  %call3 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef %cond, ptr noundef nonnull @vsp1_hgo_create._key, ptr noundef nonnull @.str) #3
  %call6 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @hgo_max_rgb_control, ptr noundef null) #3
  %max_rgb = getelementptr inbounds %struct.vsp1_hgo, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %max_rgb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %max_rgb, align 8
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %gen9 = getelementptr inbounds %struct.vsp1_device_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %gen9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gen9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp10 = icmp eq i32 %10, 3
  br i1 %cmp10, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call14 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @hgo_num_bins_control, ptr noundef null) #3
  %num_bins = getelementptr inbounds %struct.vsp1_hgo, ptr %call.i, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %num_bins to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %num_bins, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %max_rgb17 = getelementptr inbounds %struct.vsp1_hgo, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %max_rgb17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %max_rgb17, align 8
  %num_bins18 = getelementptr inbounds %struct.vsp1_hgo, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %num_bins18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 64, ptr %num_bins18, align 4
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 13, i32 8
  %14 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %call22 = tail call i32 @vsp1_histogram_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, i32 noundef 3, ptr noundef nonnull @.str.1, ptr noundef nonnull @hgo_entity_ops, ptr noundef nonnull @hgo_mbus_formats, i32 noundef 3, i32 noundef 1032, i32 noundef 1213223766) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #3
  %15 = inttoptr i32 %call22 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then24 ], [ %call.i, %if.end16.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_histogram_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hgo_configure_stream(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call1 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %entity, ptr noundef %1, i32 noundef 0, i32 noundef 0) #3
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %entity, ptr noundef %3, i32 noundef 0, i32 noundef 256) #3
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13308, i32 noundef 1) #3
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  %shl = shl i32 %5, 16
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %or = or i32 %shl, %7
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 12288, i32 noundef %or) #3
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %shl5 = shl i32 %9, 16
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %call1, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %or7 = or i32 %shl5, %11
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 12292, i32 noundef %or7) #3
  %lock = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %13, i32 noundef 0) #3
  %max_rgb = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %max_rgb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %max_rgb, align 8
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool = icmp ne i32 %17, 0
  %max_rgb9 = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 2
  %frombool = zext i1 %tobool to i8
  %18 = ptrtoint ptr %max_rgb9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %max_rgb9, align 8
  %num_bins = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %num_bins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %num_bins, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cur14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %cur14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur14, align 8
  %arrayidx = getelementptr [2 x i64], ptr @hgo_num_bins, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %24 to i32
  %num_bins16 = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 3
  %25 = ptrtoint ptr %num_bins16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %num_bins16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %27) #3
  %28 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width, align 4
  %mul = shl i32 %29, 1
  %width21 = getelementptr inbounds %struct.v4l2_rect, ptr %call3, i32 0, i32 2
  %30 = ptrtoint ptr %width21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width21, align 4
  %div = udiv i32 %mul, %31
  %div22 = udiv i32 %div, 3
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %mul24 = shl i32 %33, 1
  %height25 = getelementptr inbounds %struct.v4l2_rect, ptr %call3, i32 0, i32 3
  %34 = ptrtoint ptr %height25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height25, align 4
  %div26 = udiv i32 %mul24, %35
  %div27 = udiv i32 %div26, 3
  %num_bins28 = getelementptr inbounds %struct.vsp1_hgo, ptr %entity, i32 0, i32 3
  %36 = ptrtoint ptr %num_bins28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_bins28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %37)
  %cmp = icmp eq i32 %37, 256
  %cond = select i1 %cmp, i32 1024, i32 0
  %38 = ptrtoint ptr %max_rgb9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %max_rgb9, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool31.not = icmp eq i8 %39, 0
  %cond33 = select i1 %tobool31.not, i32 0, i32 128
  %shl35 = shl i32 %div22, 2
  %or34 = or i32 %div27, %shl35
  %or36 = or i32 %or34, %cond
  %or38 = or i32 %or36, %cond33
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 12296, i32 noundef %or38) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @vsp1_hgo_create._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 198, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 213, i32 64}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 104, i32 10}
!7 = !{ptr @hgo_max_rgb_control, !8, !"hgo_max_rgb_control", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 102, i32 38}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 119, i32 10}
!11 = !{ptr @hgo_num_bins_control, !12, !"hgo_num_bins_control", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 117, i32 38}
!13 = !{ptr @hgo_num_bins, !14, !"hgo_num_bins", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 113, i32 18}
!15 = !{ptr @hgo_entity_ops, !16, !"hgo_entity_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 173, i32 44}
!17 = !{ptr @hgo_mbus_formats, !18, !"hgo_mbus_formats", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/vsp1/vsp1_hgo.c", i32 182, i32 27}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 7224171}
!29 = !{i64 2154757030}
!30 = !{i64 2154758385}
!31 = !{i64 7223753}
!32 = !{i8 0, i8 2}
