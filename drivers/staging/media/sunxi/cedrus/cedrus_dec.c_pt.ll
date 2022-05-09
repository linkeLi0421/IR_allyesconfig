; ModuleID = '/llk/IR_all_yes/drivers/staging/media/sunxi/cedrus/cedrus_dec.c_pt.bc'
source_filename = "../drivers/staging/media/sunxi/cedrus/cedrus_dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cedrus_run = type { ptr, ptr, %union.anon.114 }
%union.anon.114 = type { %struct.cedrus_h264_run }
%struct.cedrus_h264_run = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cedrus_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_pix_format, %struct.v4l2_pix_format, i32, %struct.v4l2_ctrl_handler, ptr, %union.anon.115 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.cedrus_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, [2 x %struct.media_pad], ptr, ptr, ptr, [4 x ptr], %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cedrus_dec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 875967059, i64 892744275, i64 1178095702, i64 1395803981]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cedrus_device_run(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %run = alloca %struct.cedrus_run, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %run) #3
  %2 = getelementptr inbounds i8, ptr %run, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #3
  %6 = ptrtoint ptr %run to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %run, align 4
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  %call.i69 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #3
  %dst = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i69, ptr %dst, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hdl = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 5
  %call6 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef nonnull %11, ptr noundef %hdl) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pixelformat = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.sw.epilog_crit_edge [
    i32 1395803981, label %sw.bb
    i32 875967059, label %sw.bb10
    i32 892744275, label %sw.bb17
    i32 1178095702, label %sw.bb28
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750428) #3
  %15 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %15, align 4
  %call8 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750429) #3
  %picture = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %picture to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8, ptr %picture, align 4
  %call9 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750430) #3
  %quantisation = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %quantisation to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9, ptr %quantisation, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call11 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750215) #3
  %19 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call11, ptr %19, align 4
  %call12 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750211) #3
  %pps = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call12, ptr %pps, align 4
  %call13 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750212) #3
  %scaling_matrix = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %scaling_matrix to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call13, ptr %scaling_matrix, align 4
  %call14 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750214) #3
  %slice_params = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 3
  %23 = ptrtoint ptr %slice_params to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call14, ptr %slice_params, align 4
  %call15 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750210) #3
  %sps = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 4
  %24 = ptrtoint ptr %sps to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call15, ptr %sps, align 4
  %call16 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750213) #3
  %pred_weights = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 5
  %25 = ptrtoint ptr %pred_weights to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call16, ptr %pred_weights, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10030320) #3
  %26 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call18, ptr %26, align 4
  %call20 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10030321) #3
  %pps21 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %pps21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call20, ptr %pps21, align 4
  %call22 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10030322) #3
  %slice_params23 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %slice_params23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call22, ptr %slice_params23, align 4
  %call24 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10030324) #3
  %decode_params25 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 3
  %30 = ptrtoint ptr %decode_params25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call24, ptr %decode_params25, align 4
  %call26 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10030323) #3
  %scaling_matrix27 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2, i32 0, i32 4
  %31 = ptrtoint ptr %scaling_matrix27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call26, ptr %scaling_matrix27, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call ptr @cedrus_find_control_data(ptr noundef %priv, i32 noundef 10750408) #3
  %32 = getelementptr inbounds %struct.cedrus_run, ptr %run, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call29, ptr %32, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb17, %sw.bb10, %sw.bb, %if.end.sw.epilog_crit_edge
  %34 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %run, align 4
  %36 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst, align 4
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %35, ptr noundef %37, i1 noundef zeroext true) #3
  %dst_fmt = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 3
  tail call void @cedrus_dst_format_set(ptr noundef %1, ptr noundef %dst_fmt) #3
  %current_codec = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 4
  %38 = ptrtoint ptr %current_codec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %current_codec, align 4
  %arrayidx = getelementptr %struct.cedrus_dev, ptr %1, i32 0, i32 7, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %setup = getelementptr inbounds %struct.cedrus_dec_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %setup, align 4
  call void %43(ptr noundef %priv, ptr noundef nonnull %run) #3
  br i1 %tobool.not, label %sw.epilog.if.end35_crit_edge, label %if.then33

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %hdl34 = getelementptr inbounds %struct.cedrus_ctx, ptr %priv, i32 0, i32 5
  call void @v4l2_ctrl_request_complete(ptr noundef nonnull %11, ptr noundef %hdl34) #3
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %sw.epilog.if.end35_crit_edge
  %44 = ptrtoint ptr %current_codec to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %current_codec, align 4
  %arrayidx38 = getelementptr %struct.cedrus_dev, ptr %1, i32 0, i32 7, i32 %45
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx38, align 4
  %trigger = getelementptr inbounds %struct.cedrus_dec_ops, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %trigger, align 4
  call void %49(ptr noundef %priv) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %run) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cedrus_find_control_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cedrus_dst_format_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
