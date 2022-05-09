; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_rpf.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_rpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.96, %struct.vsp1_rwpf_memory, i8, ptr }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.anon.96 = type { %struct.spinlock, %struct.anon.97, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.97 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_dl_ext_cmd = type { ptr, %struct.list_head, i8, i32, ptr, i32, i32, ptr, i32 }
%struct.vsp1_extcmd_auto_fld_body = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@rpf_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr null, ptr @rpf_configure_stream, ptr @rpf_configure_frame, ptr @rpf_configure_partition, ptr null, ptr @rpf_partition }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rpf.%u\00", [25 x i8] zeroinitializer }, align 32
@rpf_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_rwpf_pad_ops }, [32 x i8] zeroinitializer }, align 32
@vsp1_rpf_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rpf%u: failed to initialize controls\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vsp1_rpf_create\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_rpf.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsp1_rpf_create._entry_ptr = internal global ptr @vsp1_rpf_create._entry, section ".printk_index", align 4
@vsp1_rpf_configure_autofld.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to obtain an autofld cmd\00", [32 x i8] zeroinitializer }, align 32
@vsp1_rwpf_pad_ops = external dso_local constant %struct.v4l2_subdev_pad_ops, align 4
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"rpf_entity_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 333, i32 44 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 361, i32 16 }
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"rpf_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 50, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 370, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_rpf.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 205, i32 6 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @vsp1_rpf_create._entry, ptr @vsp1_rpf_create._entry_ptr, ptr @rpf_entity_ops, ptr @.str, ptr @rpf_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpf_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsp1_rpf_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_rpf_create(ptr noundef %vsp1, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 6)
  %1 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 848, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_width = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8190, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8190, ptr %max_height, align 4
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rpf_entity_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %type, align 4
  %index4 = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %index4, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %index)
  %call8 = call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, ptr noundef nonnull %name, i32 noundef 2, ptr noundef nonnull @rpf_ops, i32 noundef 16386) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %call.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsp1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %index) #9
  call void @vsp1_entity_destroy(ptr noundef nonnull %call.i) #6
  %11 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %ctrls = getelementptr inbounds %struct.vsp1_rwpf, ptr %call.i, i32 0, i32 1
  %call18 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrls) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then10 ], [ %11, %do.end ], [ %call.i, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_rwpf_init_ctrls(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpf_configure_stream(ptr noundef %entity, ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fmtinfo1 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 6
  %0 = ptrtoint ptr %fmtinfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmtinfo1, align 4
  %bytesperline = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %bytesperline, align 1
  %shl = shl i32 %3, 16
  %num_planes = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 6
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp ugt i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bytesperline6 = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 1, i32 1
  %6 = ptrtoint ptr %bytesperline6 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %bytesperline6, align 1
  %or = or i32 %7, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pstride.0 = phi i32 [ %or, %if.then ], [ %shl, %entry.if.end_crit_edge ]
  %interlaced = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 22
  %8 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %interlaced, align 1, !range !26
  %10 = zext i8 %9 to i32
  %spec.select = shl i32 %pstride.0, %10
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %12, 8
  %add.i = add i32 %mul.i, 820
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %spec.select) #6
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %call12 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %14, i32 noundef 0) #6
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %call16 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %16, i32 noundef 1) #6
  %hwfmt = getelementptr inbounds %struct.vsp1_format_info, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %hwfmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwfmt, align 4
  %swap_yc = getelementptr inbounds %struct.vsp1_format_info, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %swap_yc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %swap_yc, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool19.not = icmp eq i8 %20, 0
  %infmt.0.v = select i1 %tobool19.not, i32 65536, i32 98304
  %infmt.0 = or i32 %infmt.0.v, %18
  %swap_uv = getelementptr inbounds %struct.vsp1_format_info, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %swap_uv to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %swap_uv, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  %or25 = or i32 %infmt.0, 16384
  %infmt.1 = select i1 %tobool23.not, i32 %infmt.0, i32 %or25
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call12, i32 0, i32 2
  %23 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %code, align 4
  %code27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call16, i32 0, i32 2
  %25 = ptrtoint ptr %code27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp28.not = icmp eq i32 %24, %26
  %or31 = or i32 %infmt.1, 256
  %infmt.2 = select i1 %cmp28.not, i32 %infmt.1, i32 %or31
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 4
  %mul.i109 = shl i32 %28, 8
  %add.i110 = add i32 %mul.i109, 776
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i110, i32 noundef %infmt.2) #6
  %swap = getelementptr inbounds %struct.vsp1_format_info, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %swap, align 4
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i, align 4
  %mul.i112 = shl i32 %32, 8
  %add.i113 = add i32 %mul.i112, 780
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i113, i32 noundef %30) #6
  %brx = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 13
  %33 = ptrtoint ptr %brx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %brx, align 4
  %tobool33.not = icmp eq ptr %34, null
  br i1 %tobool33.not, label %if.end.if.end41_crit_edge, label %if.then34

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %config37 = getelementptr inbounds %struct.vsp1_entity, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %config37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config37, align 4
  %brx_input = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 7
  %37 = ptrtoint ptr %brx_input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %brx_input, align 4
  %call38 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef nonnull %34, ptr noundef %36, i32 noundef %38, i32 noundef 256) #6
  %39 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call38, align 4
  %top40 = getelementptr inbounds %struct.v4l2_rect, ptr %call38, i32 0, i32 1
  %41 = ptrtoint ptr %top40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %top40, align 4
  %phi.bo = shl i32 %40, 16
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.end.if.end41_crit_edge
  %left.0 = phi i32 [ %phi.bo, %if.then34 ], [ 0, %if.end.if.end41_crit_edge ]
  %top.0 = phi i32 [ %42, %if.then34 ], [ 0, %if.end.if.end41_crit_edge ]
  %43 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %interlaced, align 1, !range !26
  %45 = zext i8 %44 to i32
  %spec.select107 = lshr i32 %top.0, %45
  %or48 = or i32 %spec.select107, %left.0
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  %mul.i115 = shl i32 %47, 8
  %add.i116 = add i32 %mul.i115, 784
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i116, i32 noundef %or48) #6
  %alpha = getelementptr inbounds %struct.vsp1_format_info, ptr %1, i32 0, i32 10
  %48 = ptrtoint ptr %alpha to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %alpha, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool49.not = icmp eq i8 %49, 0
  %or51 = select i1 %tobool49.not, i32 1074003968, i32 262144
  %50 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i, align 4
  %mul.i118 = shl i32 %51, 8
  %add.i119 = add i32 %mul.i118, 788
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i119, i32 noundef %or51) #6
  %52 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %entity, align 4
  %info = getelementptr inbounds %struct.vsp1_device, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %gen = getelementptr inbounds %struct.vsp1_device_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp52 = icmp eq i32 %57, 3
  br i1 %cmp52, label %if.then54, label %if.end41.if.end65_crit_edge

if.end41.if.end65_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then54:                                        ; preds = %if.end41
  %58 = ptrtoint ptr %alpha to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %alpha, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool56.not = icmp eq i8 %59, 0
  br i1 %tobool56.not, label %if.then54.if.end64_crit_edge, label %if.then57

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 7
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags, align 1
  %62 = and i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %or63 = or i32 %64, 4096
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.then54.if.end64_crit_edge
  %mult.0 = phi i32 [ %or63, %if.then57 ], [ 0, %if.then54.if.end64_crit_edge ]
  %mult_alpha = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 9
  %65 = ptrtoint ptr %mult_alpha to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mult.0, ptr %mult_alpha, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end41.if.end65_crit_edge
  %66 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i, align 4
  %mul.i121 = shl i32 %67, 8
  %add.i122 = add i32 %mul.i121, 796
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i122, i32 noundef 0) #6
  %68 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index.i, align 4
  %mul.i124 = shl i32 %69, 8
  %add.i125 = add i32 %mul.i124, 808
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i125, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpf_configure_frame(ptr nocapture noundef readonly %entity, ptr noundef %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %alpha = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 8
  %0 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alpha, align 4
  %shl = shl i32 %1, 24
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %3, 8
  %add.i = add i32 %mul.i, 792
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %shl) #6
  %mult_alpha = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 9
  %4 = ptrtoint ptr %mult_alpha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mult_alpha, align 4
  %6 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %alpha, align 4
  %or = or i32 %7, %5
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %mul.i12 = shl i32 %9, 8
  %add.i13 = add i32 %mul.i12, 876
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i13, i32 noundef %or) #6
  %10 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alpha, align 4
  tail call void @vsp1_pipeline_propagate_alpha(ptr noundef %pipe, ptr noundef %dlb, i32 noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpf_configure_partition(ptr noundef %entity, ptr nocapture noundef readonly %pipe, ptr noundef %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem1 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 12
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %mem.sroa.0.0.copyload = load i32, ptr %mem1, align 4
  %mem.sroa.7.0.mem1.sroa_idx = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 12, i32 0, i32 1
  %1 = ptrtoint ptr %mem.sroa.7.0.mem1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %mem.sroa.7.0.copyload = load i32, ptr %mem.sroa.7.0.mem1.sroa_idx, align 4
  %mem.sroa.13.0.mem1.sroa_idx = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 12, i32 0, i32 2
  %2 = ptrtoint ptr %mem.sroa.13.0.mem1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %mem.sroa.13.0.copyload = load i32, ptr %mem.sroa.13.0.mem1.sroa_idx, align 4
  %3 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entity, align 4
  %fmtinfo4 = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 6
  %5 = ptrtoint ptr %fmtinfo4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmtinfo4, align 4
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_rwpf_get_crop(ptr noundef %entity, ptr noundef %8) #6
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %crop.sroa.0.0.copyload = load i32, ptr %call7, align 4
  %crop.sroa.8.0.call7.sroa_idx = getelementptr inbounds i8, ptr %call7, i32 4
  %10 = ptrtoint ptr %crop.sroa.8.0.call7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %crop.sroa.8.0.copyload = load i32, ptr %crop.sroa.8.0.call7.sroa_idx, align 4
  %crop.sroa.13.0.call7.sroa_idx = getelementptr inbounds i8, ptr %call7, i32 8
  %crop.sroa.17.0.call7.sroa_idx = getelementptr inbounds i8, ptr %call7, i32 12
  %11 = ptrtoint ptr %crop.sroa.17.0.call7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %crop.sroa.17.0.copyload = load i32, ptr %crop.sroa.17.0.call7.sroa_idx, align 4
  %partitions = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 23
  %12 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %partition = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 24
  %14 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %partition, align 4
  %width = getelementptr inbounds %struct.vsp1_partition_window, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add = add i32 %17, %crop.sroa.0.0.copyload
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crop.sroa.13.0.in = phi ptr [ %width, %if.then ], [ %crop.sroa.13.0.call7.sroa_idx, %entry.if.end_crit_edge ]
  %crop.sroa.0.0 = phi i32 [ %add, %if.then ], [ %crop.sroa.0.0.copyload, %entry.if.end_crit_edge ]
  %18 = ptrtoint ptr %crop.sroa.13.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %crop.sroa.13.0 = load i32, ptr %crop.sroa.13.0.in, align 4
  %interlaced = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 22
  %19 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %interlaced, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.end.if.end21_crit_edge, label %if.then13

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div131 = lshr i32 %crop.sroa.17.0.copyload, 1
  %vsub = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 9
  %21 = ptrtoint ptr %vsub to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vsub, align 4
  %neg = sub i32 0, %22
  %and = and i32 %div131, %neg
  %div15 = sdiv i32 %crop.sroa.8.0.copyload, 2
  %and19 = and i32 %div15, %neg
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end.if.end21_crit_edge
  %crop.sroa.17.0 = phi i32 [ %and, %if.then13 ], [ %crop.sroa.17.0.copyload, %if.end.if.end21_crit_edge ]
  %crop.sroa.8.0 = phi i32 [ %and19, %if.then13 ], [ %crop.sroa.8.0.copyload, %if.end.if.end21_crit_edge ]
  %shl = shl i32 %crop.sroa.13.0, 16
  %or = or i32 %crop.sroa.17.0, %shl
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %24, 8
  %add.i = add i32 %mul.i, 768
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %or) #6
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 4
  %mul.i134 = shl i32 %26, 8
  %add.i135 = add i32 %mul.i134, 772
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i135, i32 noundef %or) #6
  %bytesperline = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bytesperline, align 1
  %mul = mul i32 %28, %crop.sroa.8.0
  %bpp = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 5
  %29 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bpp, align 4
  %mul33 = mul i32 %30, %crop.sroa.0.0
  %div34129 = lshr i32 %mul33, 3
  %add35 = add i32 %mul, %mem.sroa.0.0.copyload
  %add37 = add i32 %add35, %div34129
  %num_planes = getelementptr inbounds %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 6
  %31 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp38 = icmp ugt i8 %32, 1
  br i1 %cmp38, label %if.end59, label %if.end21.if.end78_crit_edge

if.end21.if.end78_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.end59:                                         ; preds = %if.end21
  %bytesperline44 = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 1, i32 1
  %33 = ptrtoint ptr %bytesperline44 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %bytesperline44, align 1
  %mul45 = mul i32 %34, %crop.sroa.8.0
  %hsub = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 8
  %35 = ptrtoint ptr %hsub to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hsub, align 4
  %div47 = udiv i32 %crop.sroa.0.0, %36
  %arrayidx49 = getelementptr %struct.vsp1_format_info, ptr %6, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx49, align 4
  %mul50 = mul i32 %38, %div47
  %div51130 = lshr i32 %mul50, 3
  %add52 = add i32 %div51130, %mul45
  %add55 = add i32 %add52, %mem.sroa.7.0.copyload
  %add58 = add i32 %add52, %mem.sroa.13.0.copyload
  %info = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 1
  %39 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info, align 4
  %gen = getelementptr inbounds %struct.vsp1_device_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp60 = icmp eq i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp64 = icmp eq i8 %32, 3
  %or.cond = select i1 %cmp60, i1 %cmp64, i1 false
  br i1 %or.cond, label %land.lhs.true66, label %if.end59.if.end78_crit_edge

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

land.lhs.true66:                                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %swap_uv = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 7
  %43 = ptrtoint ptr %swap_uv to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %swap_uv, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool67.not = icmp eq i8 %44, 0
  %spec.select = select i1 %tobool67.not, i32 %add55, i32 %add58
  %spec.select132 = select i1 %tobool67.not, i32 %add58, i32 %add55
  br label %if.end78

if.end78:                                         ; preds = %land.lhs.true66, %if.end59.if.end78_crit_edge, %if.end21.if.end78_crit_edge
  %mem.sroa.7.1 = phi i32 [ %add55, %if.end59.if.end78_crit_edge ], [ %spec.select, %land.lhs.true66 ], [ %mem.sroa.7.0.copyload, %if.end21.if.end78_crit_edge ]
  %mem.sroa.13.1 = phi i32 [ %add58, %if.end59.if.end78_crit_edge ], [ %spec.select132, %land.lhs.true66 ], [ %mem.sroa.13.0.copyload, %if.end21.if.end78_crit_edge ]
  %45 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %interlaced, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool80.not = icmp eq i8 %46, 0
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %if.end78
  %call.i = tail call ptr @vsp1_dl_get_pre_cmd(ptr noundef %dl) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.then81
  %.b91.i = load i1, ptr @vsp1_rpf_configure_autofld.__already_done, align 1
  br i1 %.b91.i, label %land.rhs.i.if.end88_crit_edge, label %if.then.i, !prof !27

land.rhs.i.if.end88_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vsp1_rpf_configure_autofld.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %if.end88

if.end40.i:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %call.i, i32 0, i32 7
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %49 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %48, i32 %50
  %51 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mem1, align 4
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %arrayidx.i, align 1
  %54 = ptrtoint ptr %mem.sroa.7.0.mem1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mem.sroa.7.0.mem1.sroa_idx, align 4
  %top_c0.i = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %48, i32 %50, i32 2
  %56 = ptrtoint ptr %top_c0.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %top_c0.i, align 1
  %57 = ptrtoint ptr %mem.sroa.13.0.mem1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mem.sroa.13.0.mem1.sroa_idx, align 4
  %top_c1.i = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %48, i32 %50, i32 4
  %59 = ptrtoint ptr %top_c1.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %top_c1.i, align 1
  %60 = ptrtoint ptr %bytesperline to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %bytesperline, align 1
  %bytesperline51.i = getelementptr %struct.vsp1_rwpf, ptr %entity, i32 0, i32 5, i32 5, i32 1, i32 1
  %62 = ptrtoint ptr %bytesperline51.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %bytesperline51.i, align 1
  %64 = load i32, ptr %mem1, align 4
  %add.i137 = add i32 %64, %61
  %bottom_y0.i = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %48, i32 %50, i32 1
  %65 = ptrtoint ptr %bottom_y0.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %add.i137, ptr %bottom_y0.i, align 1
  %66 = load i32, ptr %mem.sroa.7.0.mem1.sroa_idx, align 4
  %add58.i = add i32 %66, %63
  %bottom_c0.i = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %48, i32 %50, i32 3
  %67 = ptrtoint ptr %bottom_c0.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %add58.i, ptr %bottom_c0.i, align 1
  %68 = load i32, ptr %mem.sroa.13.0.mem1.sroa_idx, align 4
  %add62.i = add i32 %68, %63
  %bottom_c1.i = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %48, i32 %50, i32 5
  %69 = ptrtoint ptr %bottom_c1.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %add62.i, ptr %bottom_c1.i, align 1
  %70 = load i32, ptr %index.i, align 4
  %add65.i = add i32 %70, 16
  %shl.i = shl nuw i32 1, %add65.i
  %flags.i = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %call.i, i32 0, i32 3
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %72, %shl.i
  %or66.i = or i32 %or.i, 1
  store i32 %or66.i, ptr %flags.i, align 4
  br label %if.end88

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %index.i, align 4
  %mul.i139 = shl i32 %74, 8
  %add.i140 = add i32 %mul.i139, 828
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i140, i32 noundef %add37) #6
  %75 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index.i, align 4
  %mul.i142 = shl i32 %76, 8
  %add.i143 = add i32 %mul.i142, 832
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i143, i32 noundef %mem.sroa.7.1) #6
  %77 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %index.i, align 4
  %mul.i145 = shl i32 %78, 8
  %add.i146 = add i32 %mul.i145, 836
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i146, i32 noundef %mem.sroa.13.1) #6
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.end40.i, %if.then.i, %land.rhs.i.if.end88_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rpf_partition(ptr nocapture noundef readnone %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef writeonly %partition, i32 noundef %partition_idx, ptr nocapture noundef readonly %window) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %window to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %window, align 4
  %2 = ptrtoint ptr %partition to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %partition, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_propagate_alpha(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_rwpf_get_crop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_get_pre_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_rpf.c", i32 361, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_rpf.c", i32 370, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vsp1_rpf_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vsp1_rpf_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @rpf_entity_ops, !11, !"rpf_entity_ops", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/vsp1/vsp1_rpf.c", i32 333, i32 44}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/vsp1/vsp1_rpf.c", i32 205, i32 6}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rpf_ops, !16, !"rpf_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/vsp1/vsp1_rpf.c", i32 50, i32 37}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 2000, i32 1}
