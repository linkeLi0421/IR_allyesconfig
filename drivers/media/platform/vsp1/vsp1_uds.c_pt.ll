; ModuleID = '/llk/IR_all_yes/drivers/media/platform/vsp1/vsp1_uds.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_uds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.85, i16, i16, i16, [10 x i16] }
%union.anon.85 = type { i16 }
%struct.vsp1_uds = type { %struct.vsp1_entity, i8 }
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
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@uds_entity_ops = internal constant { %struct.vsp1_entity_operations, [40 x i8] } { %struct.vsp1_entity_operations { ptr null, ptr @uds_configure_stream, ptr null, ptr @uds_configure_partition, ptr @uds_max_width, ptr @uds_partition }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uds.%u\00", [25 x i8] zeroinitializer }, align 32
@uds_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uds_pad_ops }, [32 x i8] zeroinitializer }, align 32
@uds_configure_stream.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsp1\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uds_configure_stream\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/vsp1/vsp1_uds.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hscale %u vscale %u\0A\00", [43 x i8] zeroinitializer }, align 32
@uds_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @uds_enum_mbus_code, ptr @uds_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @uds_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@uds_enum_mbus_code.codes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4109, i32 8215], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4109, i64 8215]
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"uds_entity_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 397, i32 44 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 422, i32 16 }
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"uds_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 252, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 280, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"uds_pad_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 244, i32 41 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@___asan_gen_.31 = private constant [42 x i8] c"../drivers/media/platform/vsp1/vsp1_uds.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 117, i32 28 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @uds_entity_ops, ptr @.str, ptr @uds_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uds_pad_ops, ptr @uds_enum_mbus_code.codes], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uds_entity_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uds_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uds_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uds_enum_mbus_code.codes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsp1_uds_set_alpha(ptr nocapture noundef readonly %entity, ptr noundef %dlb, i32 noundef %alpha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %1, 8
  %add.i = add i32 %mul.i, 8972
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %alpha) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsp1_uds_create(ptr noundef %vsp1, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #5
  %0 = call ptr @memset(ptr %name, i32 255, i32 6)
  %1 = ptrtoint ptr %vsp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vsp1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 356, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ops = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @uds_entity_ops, ptr %ops, align 4
  %type = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %type, align 4
  %index4 = getelementptr inbounds %struct.vsp1_entity, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %index, ptr %index4, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %index)
  %call8 = call i32 @vsp1_entity_init(ptr noundef %vsp1, ptr noundef nonnull %call.i, ptr noundef nonnull %name, i32 noundef 2, ptr noundef nonnull @uds_ops, i32 noundef 16389) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  %6 = inttoptr i32 %call8 to ptr
  %spec.select = select i1 %cmp9, ptr %6, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #5
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uds_configure_stream(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %3, i32 noundef 1) #5
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7, align 4
  %sub.i = shl i32 %5, 12
  %mul.i = add i32 %sub.i, -4096
  %sub1.i = add i32 %7, -1
  %div.i = udiv i32 %mul.i, %sub1.i
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call7, i32 0, i32 1
  %10 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height10, align 4
  %sub.i50 = shl i32 %9, 12
  %mul.i51 = add i32 %sub.i50, -4096
  %sub1.i52 = add i32 %11, -1
  %div.i53 = udiv i32 %mul.i51, %sub1.i52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uds_configure_stream.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uds_configure_stream, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entity, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uds_configure_stream.__UNIQUE_ID_ddebug312, ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %div.i, i32 noundef %div.i53) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %scale_alpha = getelementptr inbounds %struct.vsp1_uds, ptr %entity, i32 0, i32 1
  %16 = ptrtoint ptr %scale_alpha to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scale_alpha, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  br i1 %tobool16.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %div.i)
  %cmp = icmp ugt i32 %div.i, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %div.i53)
  %cmp17 = icmp ugt i32 %div.i53, 8191
  %or.cond = select i1 %cmp, i1 true, i1 %cmp17
  br i1 %or.cond, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.else, %land.lhs.true.if.end19_crit_edge
  %multitap.0.off0 = phi i32 [ 1048576, %if.else ], [ 0, %land.lhs.true.if.end19_crit_edge ]
  %cond = select i1 %tobool16.not, i32 0, i32 33554432
  %or = or i32 %multitap.0.off0, %cond
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %mul.i54 = shl i32 %19, 8
  %add.i = add i32 %mul.i54, 8960
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 4095
  br i1 %cmp.i, label %if.then.i, label %if.end19.uds_passband_width.exit_crit_edge

if.end19.uds_passband_width.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %uds_passband_width.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %div.i)
  %cmp1.i = icmp ult i32 %div.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %div.i)
  %cmp2.i = icmp ult i32 %div.i, 32768
  %cond.i = select i1 %cmp2.i, i32 524288, i32 1048576
  %cond3.i = select i1 %cmp1.i, i32 262144, i32 %cond.i
  %div4.i = udiv i32 %cond3.i, %div.i
  %phi.bo = shl nuw nsw i32 %div4.i, 16
  br label %uds_passband_width.exit

uds_passband_width.exit:                          ; preds = %if.then.i, %if.end19.uds_passband_width.exit_crit_edge
  %retval.0.i55 = phi i32 [ %phi.bo, %if.then.i ], [ 4194304, %if.end19.uds_passband_width.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div.i53)
  %cmp.i56 = icmp ugt i32 %div.i53, 4095
  br i1 %cmp.i56, label %if.then.i62, label %uds_passband_width.exit.uds_passband_width.exit64_crit_edge

uds_passband_width.exit.uds_passband_width.exit64_crit_edge: ; preds = %uds_passband_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %uds_passband_width.exit64

if.then.i62:                                      ; preds = %uds_passband_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %div.i53)
  %cmp1.i57 = icmp ult i32 %div.i53, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %div.i53)
  %cmp2.i58 = icmp ult i32 %div.i53, 32768
  %cond.i59 = select i1 %cmp2.i58, i32 524288, i32 1048576
  %cond3.i60 = select i1 %cmp1.i57, i32 262144, i32 %cond.i59
  %div4.i61 = udiv i32 %cond3.i60, %div.i53
  br label %uds_passband_width.exit64

uds_passband_width.exit64:                        ; preds = %if.then.i62, %uds_passband_width.exit.uds_passband_width.exit64_crit_edge
  %retval.0.i63 = phi i32 [ %div4.i61, %if.then.i62 ], [ 64, %uds_passband_width.exit.uds_passband_width.exit64_crit_edge ]
  %or27 = or i32 %retval.0.i63, %retval.0.i55
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  %mul.i66 = shl i32 %21, 8
  %add.i67 = add i32 %mul.i66, 8976
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i67, i32 noundef %or27) #5
  %shl28 = shl i32 %div.i, 16
  %or30 = or i32 %div.i53, %shl28
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  %mul.i69 = shl i32 %23, 8
  %add.i70 = add i32 %mul.i69, 8964
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i70, i32 noundef %or30) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uds_configure_partition(ptr noundef %entity, ptr nocapture noundef readonly %pipe, ptr nocapture noundef readnone %dl, ptr noundef %dlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %partition1 = getelementptr inbounds %struct.vsp1_pipeline, ptr %pipe, i32 0, i32 24
  %0 = ptrtoint ptr %partition1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %partition1, align 4
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call4 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %3, i32 noundef 1) #5
  %width = getelementptr inbounds %struct.vsp1_partition, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %or = or i32 %5, 268435456
  %index.i = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 3
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %7, 8
  %add.i = add i32 %mul.i, 8988
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i, i32 noundef %or) #5
  %width5 = getelementptr inbounds %struct.vsp1_partition, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width5, align 4
  %shl6 = shl i32 %9, 16
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call4, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %or8 = or i32 %shl6, %11
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %mul.i15 = shl i32 %13, 8
  %add.i16 = add i32 %mul.i15, 8996
  tail call void @vsp1_dl_body_write(ptr noundef %dlb, i32 noundef %add.i16, i32 noundef %or8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uds_max_width(ptr noundef %entity, ptr nocapture noundef readnone %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %3, i32 noundef 1) #5
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7, align 4
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call3, align 4
  %div = udiv i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp = icmp ult i32 %div, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div)
  %cmp9 = icmp ult i32 %div, 5
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.else11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div)
  %cmp12 = icmp ult i32 %div, 9
  %. = select i1 %cmp12, i32 1024, i32 2048
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 256, %entry.cleanup_crit_edge ], [ 512, %if.else.cleanup_crit_edge ], [ %., %if.else11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uds_partition(ptr noundef %entity, ptr nocapture noundef readnone %pipe, ptr nocapture noundef %partition, i32 noundef %partition_idx, ptr nocapture noundef %window) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uds_sink = getelementptr inbounds %struct.vsp1_partition, ptr %partition, i32 0, i32 1
  %0 = ptrtoint ptr %window to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %window, align 4
  %2 = ptrtoint ptr %uds_sink to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %uds_sink, align 4
  %uds_source = getelementptr inbounds %struct.vsp1_partition, ptr %partition, i32 0, i32 2
  %3 = load i64, ptr %window, align 4
  %4 = ptrtoint ptr %uds_source to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %uds_source, align 4
  %config = getelementptr inbounds %struct.vsp1_entity, ptr %entity, i32 0, i32 14
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %6, i32 noundef 0) #5
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %call7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %entity, ptr noundef %8, i32 noundef 1) #5
  %width = getelementptr inbounds %struct.vsp1_partition_window, ptr %window, i32 0, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call3, align 4
  %mul = mul i32 %12, %10
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7, align 4
  %div = udiv i32 %mul, %14
  %width11 = getelementptr inbounds %struct.vsp1_partition, ptr %partition, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %width11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %width11, align 4
  %16 = ptrtoint ptr %window to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %window, align 4
  %18 = load i32, ptr %call3, align 4
  %mul13 = mul i32 %18, %17
  %19 = load i32, ptr %call7, align 4
  %div15 = udiv i32 %mul13, %19
  %20 = ptrtoint ptr %uds_sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div15, ptr %uds_sink, align 4
  %21 = load i64, ptr %uds_sink, align 4
  store i64 %21, ptr %window, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uds_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %subdev, ptr noundef %sd_state, ptr noundef %code, ptr noundef nonnull @uds_enum_mbus_code.codes, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uds_enum_frame_size(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %fse) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %which = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 7
  %0 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %which, align 4
  %call1 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %1) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call1, i32 noundef 0) #5
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %2 = ptrtoint ptr %fse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %code = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  %code6 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end8:                                          ; preds = %lor.lhs.false
  %pad = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 1
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %min_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %10 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %min_width, align 4
  %max_width = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %11 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8190, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %12 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %13 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8190, ptr %max_height, align 4
  br label %done

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call3, align 4
  %min_width11 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 3
  %max_width12 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 4
  %sub.i.i = shl i32 %15, 12
  %mul.i.i = add i32 %sub.i.i, -4096
  %mul5.i.i = and i32 %mul.i.i, -16384
  %retval.0.in.i.i = udiv i32 %mul5.i.i, 65535
  %16 = tail call i32 @llvm.umax.i32(i32 %retval.0.in.i.i, i32 3) #5
  %17 = add nuw nsw i32 %16, 1
  %18 = ptrtoint ptr %min_width11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %min_width11, align 4
  %retval.0.in.i1315.i = lshr exact i32 %mul.i.i, 8
  %retval.0.i14.i = or i32 %retval.0.in.i1315.i, 1
  %19 = tail call i32 @llvm.umin.i32(i32 %retval.0.i14.i, i32 8190) #5
  %20 = ptrtoint ptr %max_width12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_width12, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  %min_height13 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 5
  %max_height14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %fse, i32 0, i32 6
  %sub.i.i38 = shl i32 %22, 12
  %mul.i.i39 = add i32 %sub.i.i38, -4096
  %mul5.i.i40 = and i32 %mul.i.i39, -16384
  %retval.0.in.i.i41 = udiv i32 %mul5.i.i40, 65535
  %23 = tail call i32 @llvm.umax.i32(i32 %retval.0.in.i.i41, i32 3) #5
  %24 = add nuw nsw i32 %23, 1
  %25 = ptrtoint ptr %min_height13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %min_height13, align 4
  %retval.0.in.i1315.i42 = lshr exact i32 %mul.i.i39, 8
  %retval.0.i14.i43 = or i32 %retval.0.in.i1315.i42, 1
  %26 = tail call i32 @llvm.umin.i32(i32 %retval.0.i14.i43, i32 8190) #5
  %27 = ptrtoint ptr %max_height14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max_height14, align 4
  br label %done

done:                                             ; preds = %if.else, %if.then10, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.else ], [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %if.end.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uds_set_format(ptr noundef %subdev, ptr noundef %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %subdev, i32 -60
  %lock = getelementptr i8, ptr %subdev, i32 200
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %call2 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %add.ptr.i, ptr noundef %sd_state, i32 noundef %1) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  %format3 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  tail call fastcc void @uds_try_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %3, ptr noundef %format3)
  %4 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad, align 4
  %call6 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef %5) #5
  %6 = call ptr @memcpy(ptr %call6, ptr %format3, i32 48)
  %7 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then9, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 1) #5
  %9 = call ptr @memcpy(ptr %call11, ptr %format3, i32 48)
  %call.i = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %add.ptr.i, ptr noundef nonnull %call2, i32 noundef 0) #5
  %code26.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %code26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %code26.i, align 4
  %code27.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 2
  %12 = ptrtoint ptr %code27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %code27.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call.i, align 4
  %sub.i.i.i = shl i32 %14, 12
  %mul.i.i.i = add i32 %sub.i.i.i, -4096
  %mul5.i.i.i = and i32 %mul.i.i.i, -16384
  %retval.0.in.i.i.i = udiv i32 %mul5.i.i.i, 65535
  %15 = tail call i32 @llvm.umax.i32(i32 %retval.0.in.i.i.i, i32 3) #5
  %16 = add nuw nsw i32 %15, 1
  %retval.0.in.i1315.i.i = lshr exact i32 %mul.i.i.i, 8
  %retval.0.i14.i.i = or i32 %retval.0.in.i1315.i.i, 1
  %17 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call11, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %16) #5
  %20 = tail call i32 @llvm.umin.i32(i32 %retval.0.i14.i.i, i32 %19) #5
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 8190) #5
  %22 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call11, align 4
  %height43.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %height43.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height43.i, align 4
  %sub.i.i98.i = shl i32 %24, 12
  %mul.i.i99.i = add i32 %sub.i.i98.i, -4096
  %mul5.i.i100.i = and i32 %mul.i.i99.i, -16384
  %retval.0.in.i.i101.i = udiv i32 %mul5.i.i100.i, 65535
  %25 = tail call i32 @llvm.umax.i32(i32 %retval.0.in.i.i101.i, i32 3) #5
  %26 = add nuw nsw i32 %25, 1
  %retval.0.in.i1315.i102.i = lshr exact i32 %mul.i.i99.i, 8
  %retval.0.i14.i103.i = or i32 %retval.0.in.i1315.i102.i, 1
  %height44.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 1
  %27 = ptrtoint ptr %height44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height44.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 %26) #5
  %30 = tail call i32 @llvm.umin.i32(i32 %retval.0.i14.i103.i, i32 %29) #5
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 8190) #5
  %32 = ptrtoint ptr %height44.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height44.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 3
  %33 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call11, i32 0, i32 4
  %34 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %colorspace.i, align 4
  br label %done

done:                                             ; preds = %if.then9, %if.end.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end.done_crit_edge ], [ -22, %entry.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uds_try_format(ptr noundef %uds, ptr noundef %sd_state, i32 noundef %pad, ptr nocapture noundef %fmt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pad to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pad, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb25
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %1 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %code, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %2, label %if.then [
    i32 4109, label %sw.bb.if.end_crit_edge
    i32 8215, label %sw.bb.if.end_crit_edge107
  ]

sw.bb.if.end_crit_edge107:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8215, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge, %sw.bb.if.end_crit_edge107
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 4)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 8190)
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 4)
  br label %sw.epilog.sink.split

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %uds, ptr noundef %sd_state, i32 noundef 0) #5
  %code26 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %code26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %code26, align 4
  %code27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 2
  %15 = ptrtoint ptr %code27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %code27, align 4
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 4
  %sub.i.i = shl i32 %17, 12
  %mul.i.i = add i32 %sub.i.i, -4096
  %mul5.i.i = and i32 %mul.i.i, -16384
  %retval.0.in.i.i = udiv i32 %mul5.i.i, 65535
  %18 = tail call i32 @llvm.umax.i32(i32 %retval.0.in.i.i, i32 3) #5
  %19 = add nuw nsw i32 %18, 1
  %retval.0.in.i1315.i = lshr exact i32 %mul.i.i, 8
  %retval.0.i14.i = or i32 %retval.0.in.i1315.i, 1
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %19)
  %23 = tail call i32 @llvm.umin.i32(i32 %retval.0.i14.i, i32 %22)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 8190)
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fmt, align 4
  %height43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %height43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height43, align 4
  %sub.i.i98 = shl i32 %27, 12
  %mul.i.i99 = add i32 %sub.i.i98, -4096
  %mul5.i.i100 = and i32 %mul.i.i99, -16384
  %retval.0.in.i.i101 = udiv i32 %mul5.i.i100, 65535
  %28 = tail call i32 @llvm.umax.i32(i32 %retval.0.in.i.i101, i32 3) #5
  %29 = add nuw nsw i32 %28, 1
  %retval.0.in.i1315.i102 = lshr exact i32 %mul.i.i99, 8
  %retval.0.i14.i103 = or i32 %retval.0.in.i1315.i102, 1
  %height44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 1
  %30 = ptrtoint ptr %height44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height44, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 %29)
  %33 = tail call i32 @llvm.umin.i32(i32 %retval.0.i14.i103, i32 %32)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb25, %if.end
  %.sink106 = phi i32 [ %33, %sw.bb25 ], [ %12, %if.end ]
  %height44.sink = phi ptr [ %height44, %sw.bb25 ], [ %height, %if.end ]
  %34 = tail call i32 @llvm.umin.i32(i32 %.sink106, i32 8190)
  %35 = ptrtoint ptr %height44.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height44.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 3
  %36 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %fmt, i32 0, i32 4
  %37 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %colorspace, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/vsp1/vsp1_uds.c", i32 422, i32 16}
!2 = !{ptr @uds_entity_ops, !3, !"uds_entity_ops", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/vsp1/vsp1_uds.c", i32 397, i32 44}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/vsp1/vsp1_uds.c", i32 280, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @uds_configure_stream.__UNIQUE_ID_ddebug312, !5, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!10 = !{ptr @uds_ops, !11, !"uds_ops", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/vsp1/vsp1_uds.c", i32 252, i32 37}
!12 = !{ptr @uds_pad_ops, !13, !"uds_pad_ops", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/vsp1/vsp1_uds.c", i32 244, i32 41}
!14 = !{ptr @uds_enum_mbus_code.codes, !15, !"codes", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/vsp1/vsp1_uds.c", i32 117, i32 28}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148287283, i64 2148287288, i64 2148287301, i64 2148287345, i64 2148287379, i64 2148287400}
!26 = !{i8 0, i8 2}
