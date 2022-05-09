; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_hgt.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_hgt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_hgt = type { %struct.vsp1_histogram, %struct.v4l2_ctrl_handler, [12 x i8] }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@vsp1_hgt_create._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vsp1_hgt:197:(&hgt->ctrls)->_lock\00", [62 x i8] zeroinitializer }, align 32
@hgt_hue_areas = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @hgt_hue_areas_ctrl_ops, ptr null, i32 9967873, ptr @.str.2, i32 256, i64 0, i64 255, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 12, i32 0, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hgt\00", [28 x i8] zeroinitializer }, align 32
@hgt_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr @vsp1_histogram_destroy, ptr @hgt_configure_stream, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hgt_mbus_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 24577], [28 x i8] zeroinitializer }, align 32
@hgt_hue_areas_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr @hgt_hue_areas_try_ctrl, ptr @hgt_hue_areas_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Boundary Values for Hue Area\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 197, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"hgt_hue_areas\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 112, i32 38 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 203, i32 64 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"hgt_entity_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 174, i32 44 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"hgt_mbus_formats\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 183, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"hgt_hue_areas_ctrl_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 107, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_hgt.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 115, i32 10 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @vsp1_hgt_create._key, ptr @.str, ptr @hgt_hue_areas, ptr @.str.1, ptr @hgt_entity_ops, ptr @hgt_mbus_formats, ptr @hgt_hue_areas_ctrl_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_hgt_create._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgt_hue_areas to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgt_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgt_mbus_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hgt_hue_areas_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_hgt_frame_end(ptr noundef %entity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @vsp1_histogram_buffer_get(ptr noundef %entity) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %2 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entity, align 8
  %mmio.i.i = getelementptr inbounds %struct.vsp1_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 14160
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !24
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr = getelementptr i32, ptr %1, i32 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity, align 8
  %mmio.i.i32 = getelementptr inbounds %struct.vsp1_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mmio.i.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i32, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %12, i32 14164
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #5, !srcloc !24
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr4 = getelementptr i32, ptr %1, i32 2
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %incdec.ptr, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end
  %data.137 = phi ptr [ %incdec.ptr4, %if.end ], [ %incdec.ptr11, %for.body7.for.body7_crit_edge ]
  %n.036 = phi i32 [ 0, %if.end ], [ %inc, %for.body7.for.body7_crit_edge ]
  %mul8 = shl nuw nsw i32 %n.036, 2
  %add9 = add nuw nsw i32 %mul8, 13392
  %16 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity, align 8
  %mmio.i.i34 = getelementptr inbounds %struct.vsp1_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i34, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %19, i32 %add9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #5, !srcloc !24
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr11 = getelementptr i32, ptr %data.137, i32 1
  %22 = ptrtoint ptr %data.137 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data.137, align 4
  %inc = add nuw nsw i32 %n.036, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body7.for.body7.1_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7

for.body7.for.body7.1_crit_edge:                  ; preds = %for.body7
  br label %for.body7.1

for.body7.1:                                      ; preds = %for.body7.1.for.body7.1_crit_edge, %for.body7.for.body7.1_crit_edge
  %data.137.1 = phi ptr [ %incdec.ptr11.1, %for.body7.1.for.body7.1_crit_edge ], [ %incdec.ptr11, %for.body7.for.body7.1_crit_edge ]
  %n.036.1 = phi i32 [ %inc.1, %for.body7.1.for.body7.1_crit_edge ], [ 0, %for.body7.for.body7.1_crit_edge ]
  %mul8.1 = shl nuw nsw i32 %n.036.1, 2
  %add9.1 = add nuw nsw i32 %mul8.1, 13520
  %23 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entity, align 8
  %mmio.i.i34.1 = getelementptr inbounds %struct.vsp1_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %mmio.i.i34.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i34.1, align 4
  %add.ptr.i.i35.1 = getelementptr i8, ptr %26, i32 %add9.1
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.1) #5, !srcloc !24
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr11.1 = getelementptr i32, ptr %data.137.1, i32 1
  %29 = ptrtoint ptr %data.137.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %data.137.1, align 4
  %inc.1 = add nuw nsw i32 %n.036.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 32
  br i1 %exitcond.1.not, label %for.body7.1.for.body7.2_crit_edge, label %for.body7.1.for.body7.1_crit_edge

for.body7.1.for.body7.1_crit_edge:                ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.1

for.body7.1.for.body7.2_crit_edge:                ; preds = %for.body7.1
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.body7.2.for.body7.2_crit_edge, %for.body7.1.for.body7.2_crit_edge
  %data.137.2 = phi ptr [ %incdec.ptr11.2, %for.body7.2.for.body7.2_crit_edge ], [ %incdec.ptr11.1, %for.body7.1.for.body7.2_crit_edge ]
  %n.036.2 = phi i32 [ %inc.2, %for.body7.2.for.body7.2_crit_edge ], [ 0, %for.body7.1.for.body7.2_crit_edge ]
  %mul8.2 = shl nuw nsw i32 %n.036.2, 2
  %add9.2 = add nuw nsw i32 %mul8.2, 13648
  %30 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entity, align 8
  %mmio.i.i34.2 = getelementptr inbounds %struct.vsp1_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %mmio.i.i34.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i34.2, align 4
  %add.ptr.i.i35.2 = getelementptr i8, ptr %33, i32 %add9.2
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.2) #5, !srcloc !24
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr11.2 = getelementptr i32, ptr %data.137.2, i32 1
  %36 = ptrtoint ptr %data.137.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %data.137.2, align 4
  %inc.2 = add nuw nsw i32 %n.036.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 32
  br i1 %exitcond.2.not, label %for.body7.2.for.body7.3_crit_edge, label %for.body7.2.for.body7.2_crit_edge

for.body7.2.for.body7.2_crit_edge:                ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.2

for.body7.2.for.body7.3_crit_edge:                ; preds = %for.body7.2
  br label %for.body7.3

for.body7.3:                                      ; preds = %for.body7.3.for.body7.3_crit_edge, %for.body7.2.for.body7.3_crit_edge
  %data.137.3 = phi ptr [ %incdec.ptr11.3, %for.body7.3.for.body7.3_crit_edge ], [ %incdec.ptr11.2, %for.body7.2.for.body7.3_crit_edge ]
  %n.036.3 = phi i32 [ %inc.3, %for.body7.3.for.body7.3_crit_edge ], [ 0, %for.body7.2.for.body7.3_crit_edge ]
  %mul8.3 = shl nuw nsw i32 %n.036.3, 2
  %add9.3 = add nuw nsw i32 %mul8.3, 13776
  %37 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %entity, align 8
  %mmio.i.i34.3 = getelementptr inbounds %struct.vsp1_device, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %mmio.i.i34.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i34.3, align 4
  %add.ptr.i.i35.3 = getelementptr i8, ptr %40, i32 %add9.3
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.3) #5, !srcloc !24
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr11.3 = getelementptr i32, ptr %data.137.3, i32 1
  %43 = ptrtoint ptr %data.137.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data.137.3, align 4
  %inc.3 = add nuw nsw i32 %n.036.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 32
  br i1 %exitcond.3.not, label %for.body7.3.for.body7.4_crit_edge, label %for.body7.3.for.body7.3_crit_edge

for.body7.3.for.body7.3_crit_edge:                ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.3

for.body7.3.for.body7.4_crit_edge:                ; preds = %for.body7.3
  br label %for.body7.4

for.body7.4:                                      ; preds = %for.body7.4.for.body7.4_crit_edge, %for.body7.3.for.body7.4_crit_edge
  %data.137.4 = phi ptr [ %incdec.ptr11.4, %for.body7.4.for.body7.4_crit_edge ], [ %incdec.ptr11.3, %for.body7.3.for.body7.4_crit_edge ]
  %n.036.4 = phi i32 [ %inc.4, %for.body7.4.for.body7.4_crit_edge ], [ 0, %for.body7.3.for.body7.4_crit_edge ]
  %mul8.4 = shl nuw nsw i32 %n.036.4, 2
  %add9.4 = add nuw nsw i32 %mul8.4, 13904
  %44 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entity, align 8
  %mmio.i.i34.4 = getelementptr inbounds %struct.vsp1_device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %mmio.i.i34.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i34.4, align 4
  %add.ptr.i.i35.4 = getelementptr i8, ptr %47, i32 %add9.4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.4) #5, !srcloc !24
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr11.4 = getelementptr i32, ptr %data.137.4, i32 1
  %50 = ptrtoint ptr %data.137.4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %data.137.4, align 4
  %inc.4 = add nuw nsw i32 %n.036.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 32
  br i1 %exitcond.4.not, label %for.body7.4.for.body7.5_crit_edge, label %for.body7.4.for.body7.4_crit_edge

for.body7.4.for.body7.4_crit_edge:                ; preds = %for.body7.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.4

for.body7.4.for.body7.5_crit_edge:                ; preds = %for.body7.4
  br label %for.body7.5

for.body7.5:                                      ; preds = %for.body7.5.for.body7.5_crit_edge, %for.body7.4.for.body7.5_crit_edge
  %data.137.5 = phi ptr [ %incdec.ptr11.5, %for.body7.5.for.body7.5_crit_edge ], [ %incdec.ptr11.4, %for.body7.4.for.body7.5_crit_edge ]
  %n.036.5 = phi i32 [ %inc.5, %for.body7.5.for.body7.5_crit_edge ], [ 0, %for.body7.4.for.body7.5_crit_edge ]
  %mul8.5 = shl nuw nsw i32 %n.036.5, 2
  %add9.5 = add nuw nsw i32 %mul8.5, 14032
  %51 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entity, align 8
  %mmio.i.i34.5 = getelementptr inbounds %struct.vsp1_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %mmio.i.i34.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i.i34.5, align 4
  %add.ptr.i.i35.5 = getelementptr i8, ptr %54, i32 %add9.5
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.5) #5, !srcloc !24
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  %incdec.ptr11.5 = getelementptr i32, ptr %data.137.5, i32 1
  %57 = ptrtoint ptr %data.137.5 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %data.137.5, align 4
  %inc.5 = add nuw nsw i32 %n.036.5, 1
  %exitcond.5.not = icmp eq i32 %inc.5, 32
  br i1 %exitcond.5.not, label %for.inc12.5, label %for.body7.5.for.body7.5_crit_edge

for.body7.5.for.body7.5_crit_edge:                ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.5

for.inc12.5:                                      ; preds = %for.body7.5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vsp1_histogram_buffer_complete(ptr noundef %entity, ptr noundef nonnull %call1, i32 noundef 776) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc12.5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_histogram_buffer_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_buffer_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_hgt_create(ptr noundef %vsp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 2664, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrls = getelementptr inbounds %struct.vsp1_hgt, ptr %call.i, i32 0, i32 1
  %call2 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls, i32 noundef 1, ptr noundef nonnull @vsp1_hgt_create._key, ptr noundef nonnull @.str) #5
  %call4 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrls, ptr noundef nonnull @hgt_hue_areas, ptr noundef null) #5
  %ctrl_handler = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 13, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctrls, ptr %ctrl_handler, align 4
  %call7 = tail call i32 @vsp1_histogram_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @hgt_entity_ops, ptr noundef nonnull @hgt_mbus_formats, i32 noundef 1, i32 noundef 776, i32 noundef 1414550358) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #5
  %3 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.then9 ], [ %call.i, %if.end13 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @hgt_hue_areas_try_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %0 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_new, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp3 = icmp ugt i8 %3, %5
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %for.cond.1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %entry
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  %arrayidx1.1 = getelementptr i8, ptr %1, i32 3
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp3.1 = icmp ugt i8 %7, %9
  br i1 %cmp3.1, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %10 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.1, align 1
  %arrayidx1.2 = getelementptr i8, ptr %1, i32 4
  %12 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp3.2 = icmp ugt i8 %11, %13
  br i1 %cmp3.2, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %14 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.2, align 1
  %arrayidx1.3 = getelementptr i8, ptr %1, i32 5
  %16 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp3.3 = icmp ugt i8 %15, %17
  br i1 %cmp3.3, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %18 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.3, align 1
  %arrayidx1.4 = getelementptr i8, ptr %1, i32 6
  %20 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp3.4 = icmp ugt i8 %19, %21
  br i1 %cmp3.4, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %22 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.4, align 1
  %arrayidx1.5 = getelementptr i8, ptr %1, i32 7
  %24 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx1.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp3.5 = icmp ugt i8 %23, %25
  br i1 %cmp3.5, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %26 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx1.5, align 1
  %arrayidx1.6 = getelementptr i8, ptr %1, i32 8
  %28 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx1.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp3.6 = icmp ugt i8 %27, %29
  br i1 %cmp3.6, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %30 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx1.6, align 1
  %arrayidx1.7 = getelementptr i8, ptr %1, i32 9
  %32 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp3.7 = icmp ugt i8 %31, %33
  br i1 %cmp3.7, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %34 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx1.7, align 1
  %arrayidx1.8 = getelementptr i8, ptr %1, i32 10
  %36 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx1.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp3.8 = icmp ugt i8 %35, %37
  br i1 %cmp3.8, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %38 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx1.8, align 1
  %arrayidx1.9 = getelementptr i8, ptr %1, i32 11
  %40 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx1.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp3.9 = icmp ugt i8 %39, %41
  br i1 %cmp3.9, label %for.cond.9.cleanup_crit_edge, label %for.end

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %for.cond.9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %1, align 1
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp9 = icmp ugt i8 %43, %45
  br i1 %cmp9, label %land.lhs.true, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %for.end
  %46 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx1.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %43)
  %cmp15 = icmp ugt i8 %47, %43
  br i1 %cmp15, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %for.end.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.cond.9.cleanup_crit_edge ], [ -22, %for.cond.8.cleanup_crit_edge ], [ -22, %for.cond.7.cleanup_crit_edge ], [ -22, %for.cond.6.cleanup_crit_edge ], [ -22, %for.cond.5.cleanup_crit_edge ], [ -22, %for.cond.4.cleanup_crit_edge ], [ -22, %for.cond.3.cleanup_crit_edge ], [ -22, %for.cond.2.cleanup_crit_edge ], [ -22, %for.cond.1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hgt_hue_areas_s_ctrl(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %hue_areas = getelementptr i8, ptr %1, i32 184
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %2 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_new, align 8
  %4 = call ptr @memcpy(ptr %hue_areas, ptr %3, i32 12)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hgt_configure_stream(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call1 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %entity, ptr noundef %1, i32 noundef 0, i32 noundef 0) #5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %entity, ptr noundef %3, i32 noundef 0, i32 noundef 256) #5
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 14332, i32 noundef 1) #5
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  %shl = shl i32 %5, 16
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %or = or i32 %shl, %7
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13312, i32 noundef %or) #5
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
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13316, i32 noundef %or7) #5
  %lock = getelementptr inbounds %struct.vsp1_hgt, ptr %entity, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %13, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %arrayidx11 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11, align 1
  %conv = zext i8 %15 to i32
  %shl14 = shl nuw nsw i32 %conv, 16
  %conv15 = zext i8 %17 to i32
  %or17 = or i32 %shl14, %conv15
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13324, i32 noundef %or17) #5
  %arrayidx.1 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1, align 1
  %arrayidx11.1 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11.1, align 1
  %conv.1 = zext i8 %19 to i32
  %shl14.1 = shl nuw nsw i32 %conv.1, 16
  %conv15.1 = zext i8 %21 to i32
  %or17.1 = or i32 %shl14.1, %conv15.1
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13328, i32 noundef %or17.1) #5
  %arrayidx.2 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2, align 1
  %arrayidx11.2 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx11.2, align 1
  %conv.2 = zext i8 %23 to i32
  %shl14.2 = shl nuw nsw i32 %conv.2, 16
  %conv15.2 = zext i8 %25 to i32
  %or17.2 = or i32 %shl14.2, %conv15.2
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13332, i32 noundef %or17.2) #5
  %arrayidx.3 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 6
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.3, align 1
  %arrayidx11.3 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 7
  %28 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx11.3, align 1
  %conv.3 = zext i8 %27 to i32
  %shl14.3 = shl nuw nsw i32 %conv.3, 16
  %conv15.3 = zext i8 %29 to i32
  %or17.3 = or i32 %shl14.3, %conv15.3
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13336, i32 noundef %or17.3) #5
  %arrayidx.4 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 8
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4, align 1
  %arrayidx11.4 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 9
  %32 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx11.4, align 1
  %conv.4 = zext i8 %31 to i32
  %shl14.4 = shl nuw nsw i32 %conv.4, 16
  %conv15.4 = zext i8 %33 to i32
  %or17.4 = or i32 %shl14.4, %conv15.4
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13340, i32 noundef %or17.4) #5
  %arrayidx.5 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 10
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.5, align 1
  %arrayidx11.5 = getelementptr %struct.vsp1_hgt, ptr %entity, i32 0, i32 2, i32 11
  %36 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.5, align 1
  %conv.5 = zext i8 %35 to i32
  %shl14.5 = shl nuw nsw i32 %conv.5, 16
  %conv15.5 = zext i8 %37 to i32
  %or17.5 = or i32 %shl14.5, %conv15.5
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13344, i32 noundef %or17.5) #5
  %38 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock, align 4
  tail call void @mutex_unlock(ptr noundef %39) #5
  %40 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width, align 4
  %mul21 = shl i32 %41, 1
  %width22 = getelementptr inbounds %struct.v4l2_rect, ptr %call3, i32 0, i32 2
  %42 = ptrtoint ptr %width22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width22, align 4
  %div = udiv i32 %mul21, %43
  %div23 = udiv i32 %div, 3
  %44 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height, align 4
  %mul25 = shl i32 %45, 1
  %height26 = getelementptr inbounds %struct.v4l2_rect, ptr %call3, i32 0, i32 3
  %46 = ptrtoint ptr %height26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height26, align 4
  %div27 = udiv i32 %mul25, %47
  %div28 = udiv i32 %div27, 3
  %shl29 = shl i32 %div23, 2
  %or31 = or i32 %div28, %shl29
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef 13320, i32 noundef %or31) #5
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
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @vsp1_hgt_create._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 197, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 203, i32 64}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 115, i32 10}
!7 = !{ptr @hgt_hue_areas, !8, !"hgt_hue_areas", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 112, i32 38}
!9 = !{ptr @hgt_hue_areas_ctrl_ops, !10, !"hgt_hue_areas_ctrl_ops", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 107, i32 35}
!11 = !{ptr @hgt_entity_ops, !12, !"hgt_entity_ops", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 174, i32 44}
!13 = !{ptr @hgt_mbus_formats, !14, !"hgt_mbus_formats", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/vsp1/vsp1_hgt.c", i32 183, i32 27}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 7223737}
!25 = !{i64 2154756596}
