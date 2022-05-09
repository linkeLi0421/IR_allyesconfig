; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_parser.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfi_profile_level = type { i32, i32 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.hfi_platform = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.venus_inst = type { %struct.list_head, %struct.mutex, ptr, %struct.clock_data, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i8, %struct.v4l2_ctrl_handler, %union.anon.95, %struct.v4l2_fh, i32, i32, i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, i8, i8, i32, %struct.wait_queue_head, i32, i32, [32 x %struct.venus_ts_metadata], [32 x i32], i64, %struct.v4l2_fract, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, i32, %struct.completion, i32, i8, ptr, i32, %union.hfi_get_property, i8, i32, i32, i8, i8, i32, %struct.ida }
%struct.clock_data = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%union.anon.95 = type { %struct.vdec_controls, [224 x i8] }
%struct.vdec_controls = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.venus_ts_metadata = type { i8, i64, i64, i32, %struct.v4l2_timecode }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fract = type { i32, i32 }
%union.hfi_get_property = type { [11 x %struct.hfi_buffer_requirements] }
%struct.hfi_buffer_requirements = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hfi_uncompressed_plane_info = type { i32, i32, [1 x %struct.hfi_uncompressed_plane_constraints] }
%struct.hfi_uncompressed_plane_constraints = type { i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4100, i64 4102, i64 4103, i64 4105, i64 4110, i64 4112, i64 2101259]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfi_parser(ptr noundef %core, ptr noundef readonly %inst, ptr nocapture noundef readonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %pl_arr.i = alloca [16 x %struct.hfi_profile_level], align 4
  %caps_arr.i = alloca [32 x %struct.hfi_capability], align 4
  %rawfmts.i = alloca [32 x %struct.raw_formats], align 4
  %enc_codecs.i = alloca i32, align 4
  %dec_codecs.i = alloca i32, align 4
  %count.i = alloca i32, align 4
  %entries.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enc_codecs.i) #3
  %0 = ptrtoint ptr %enc_codecs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enc_codecs.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dec_codecs.i) #3
  %1 = ptrtoint ptr %dec_codecs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dec_codecs.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #3
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entries.i) #3
  %3 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %entries.i, align 4, !annotation !9
  %res.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %4 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hfi_version.i, align 4
  %call.i = tail call ptr @hfi_platform_get(i32 noundef %7) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  %tobool1.not.i = icmp eq ptr %inst, null
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.hfi_platform_parser.exit_crit_edge

if.end.i.hfi_platform_parser.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %hfi_platform_parser.exit

if.end3.i:                                        ; preds = %if.end.i
  %codecs.i = getelementptr inbounds %struct.hfi_platform, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %codecs.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  call void %9(ptr noundef nonnull %enc_codecs.i, ptr noundef nonnull %dec_codecs.i, ptr noundef nonnull %count.i) #3
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %capabilities.i = getelementptr inbounds %struct.hfi_platform, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capabilities.i, align 4
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end_crit_edge, label %if.end12.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end12.i:                                       ; preds = %if.end7.i
  %call11.i = call ptr %11(ptr noundef nonnull %entries.i) #3
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end_crit_edge, label %lor.lhs.false.i

if.end12.i.if.end_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %12 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not.i = icmp eq i32 %13, 0
  br i1 %tobool14.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false15.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not.i = icmp eq i32 %15, 0
  br i1 %tobool16.not.i, label %lor.lhs.false15.i.if.end_crit_edge, label %if.end18.i

lor.lhs.false15.i.if.end_crit_edge:               ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end18.i:                                       ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %enc_codecs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enc_codecs.i, align 4
  %enc_codecs19.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 39
  %18 = ptrtoint ptr %enc_codecs19.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %enc_codecs19.i, align 4
  %19 = ptrtoint ptr %dec_codecs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dec_codecs.i, align 4
  %dec_codecs20.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 40
  %21 = ptrtoint ptr %dec_codecs20.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dec_codecs20.i, align 4
  %codecs_count.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 46
  %22 = ptrtoint ptr %codecs_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %codecs_count.i, align 4
  %max_sessions_supported.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 41
  %23 = ptrtoint ptr %max_sessions_supported.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %max_sessions_supported.i, align 4
  %caps21.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 45
  %24 = call ptr @memset(ptr %caps21.i, i32 0, i32 29568)
  %mul.i = mul i32 %13, 924
  %25 = call ptr @memcpy(ptr %caps21.i, ptr %call11.i, i32 %mul.i)
  br label %hfi_platform_parser.exit

hfi_platform_parser.exit:                         ; preds = %if.end18.i, %if.end.i.hfi_platform_parser.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dec_codecs.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enc_codecs.i) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false15.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.end12.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entries.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dec_codecs.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enc_codecs.i) #3
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool1.not = icmp eq i32 %rem, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool.not.i46 = icmp eq ptr %inst, null
  br i1 %tobool.not.i46, label %if.end3.parser_init.exit_crit_edge, label %lor.lhs.false.i49

if.end3.parser_init.exit_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %parser_init.exit

lor.lhs.false.i49:                                ; preds = %if.end3
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %26 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i, align 4
  %res.i47 = getelementptr inbounds %struct.venus_core, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %res.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %res.i47, align 4
  %hfi_version.i48 = getelementptr inbounds %struct.venus_resources, ptr %29, i32 0, i32 20
  %30 = ptrtoint ptr %hfi_version.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hfi_version.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.end.i50, label %lor.lhs.false.i49.parser_init.exit_crit_edge

lor.lhs.false.i49.parser_init.exit_crit_edge:     ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #5
  br label %parser_init.exit

if.end.i50:                                       ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #5
  %hfi_codec.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 45
  %32 = ptrtoint ptr %hfi_codec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hfi_codec.i, align 8
  %session_type.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %34 = ptrtoint ptr %session_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %session_type.i, align 4
  br label %parser_init.exit

parser_init.exit:                                 ; preds = %if.end.i50, %lor.lhs.false.i49.parser_init.exit_crit_edge, %if.end3.parser_init.exit_crit_edge
  %codecs.0 = phi i32 [ 0, %if.end3.parser_init.exit_crit_edge ], [ %33, %if.end.i50 ], [ 0, %lor.lhs.false.i49.parser_init.exit_crit_edge ]
  %domain.0 = phi i32 [ 0, %if.end3.parser_init.exit_crit_edge ], [ %35, %if.end.i50 ], [ 0, %lor.lhs.false.i49.parser_init.exit_crit_edge ]
  %36 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %res.i, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not = icmp eq i32 %39, 0
  br i1 %cmp.not, label %parser_init.exit.if.end5_crit_edge, label %if.then4

parser_init.exit.if.end5_crit_edge:               ; preds = %parser_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then4:                                         ; preds = %parser_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  %caps = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 45
  %40 = call ptr @memset(ptr %caps, i32 0, i32 29572)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %parser_init.exit.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %tobool6.not159 = icmp ult i32 %size, 4
  br i1 %tobool6.not159, label %if.end5.while.end_crit_edge, label %while.body.lr.ph

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end5
  %caps.i113 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 45
  %max_sessions_supported.i61 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 41
  %dec_codecs1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 40
  %enc_codecs2.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 39
  %codecs_count.i58 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 46
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %word.0163 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %sw.epilog.while.body_crit_edge ]
  %words_count.0162 = phi i32 [ %shr, %while.body.lr.ph ], [ %dec, %sw.epilog.while.body_crit_edge ]
  %domain.1161 = phi i32 [ %domain.0, %while.body.lr.ph ], [ %domain.2, %sw.epilog.while.body_crit_edge ]
  %codecs.1160 = phi i32 [ %codecs.0, %while.body.lr.ph ], [ %codecs.2, %sw.epilog.while.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %word.0163, i32 1
  %41 = ptrtoint ptr %word.0163 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %word.0163, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %while.body.sw.epilog_crit_edge [
    i32 4105, label %sw.bb
    i32 4112, label %sw.bb7
    i32 4110, label %sw.bb8
    i32 4100, label %sw.bb9
    i32 4103, label %sw.bb10
    i32 4102, label %sw.bb11
    i32 2101259, label %sw.bb12
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 4
  %46 = ptrtoint ptr %dec_codecs1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dec_codecs1.i, align 4
  %enc_codecs.i51 = getelementptr i32, ptr %word.0163, i32 2
  %47 = ptrtoint ptr %enc_codecs.i51 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %enc_codecs.i51, align 4
  %49 = ptrtoint ptr %enc_codecs2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %enc_codecs2.i, align 4
  %50 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %res.i, align 4
  %hfi_version.i53 = getelementptr inbounds %struct.venus_resources, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %hfi_version.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hfi_version.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i54 = icmp eq i32 %53, 0
  br i1 %cmp.i54, label %if.then.i, label %sw.bb.parse_codecs.exit_crit_edge

sw.bb.parse_codecs.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %parse_codecs.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %and5.i = and i32 %45, -8705
  %54 = ptrtoint ptr %dec_codecs1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and5.i, ptr %dec_codecs1.i, align 4
  %and7.i = and i32 %48, -8193
  %55 = ptrtoint ptr %enc_codecs2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and7.i, ptr %enc_codecs2.i, align 4
  br label %parse_codecs.exit

parse_codecs.exit:                                ; preds = %if.then.i, %sw.bb.parse_codecs.exit_crit_edge
  %call.i57 = call i32 @_find_next_bit_be(ptr noundef %dec_codecs1.i, i32 noundef 32, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i57)
  %cmp37.i = icmp ult i32 %call.i57, 32
  br i1 %cmp37.i, label %parse_codecs.exit.for.body.i_crit_edge, label %parse_codecs.exit.for.end.i_crit_edge

parse_codecs.exit.for.end.i_crit_edge:            ; preds = %parse_codecs.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

parse_codecs.exit.for.body.i_crit_edge:           ; preds = %parse_codecs.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %parse_codecs.exit.for.body.i_crit_edge
  %bit.038.i = phi i32 [ %call3.i, %for.body.i.for.body.i_crit_edge ], [ %call.i57, %parse_codecs.exit.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %codecs_count.i58 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %codecs_count.i58, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %codecs_count.i58, align 4
  %arrayidx.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %57
  %shl.i = shl nuw i32 1, %bit.038.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl.i, ptr %arrayidx.i, align 4
  %domain.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %57, i32 1
  %59 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %domain.i, align 4
  %valid.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %57, i32 9
  %60 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %valid.i, align 4
  %add.i = add nuw nsw i32 %bit.038.i, 1
  %call3.i = call i32 @_find_next_bit_be(ptr noundef %dec_codecs1.i, i32 noundef 32, i32 noundef %add.i) #3
  %cmp.i59 = icmp ult i32 %call3.i, 32
  br i1 %cmp.i59, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %parse_codecs.exit.for.end.i_crit_edge
  %call4.i = call i32 @_find_next_bit_be(ptr noundef %enc_codecs2.i, i32 noundef 32, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call4.i)
  %cmp639.i = icmp ult i32 %call4.i, 32
  br i1 %cmp639.i, label %for.end.i.for.body7.i_crit_edge, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.end.i.for.body7.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.end.i.for.body7.i_crit_edge
  %bit.140.i = phi i32 [ %call18.i, %for.body7.i.for.body7.i_crit_edge ], [ %call4.i, %for.end.i.for.body7.i_crit_edge ]
  %61 = ptrtoint ptr %codecs_count.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %codecs_count.i58, align 4
  %inc9.i = add i32 %62, 1
  store i32 %inc9.i, ptr %codecs_count.i58, align 4
  %arrayidx10.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %62
  %shl11.i = shl nuw i32 1, %bit.140.i
  %63 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl11.i, ptr %arrayidx10.i, align 4
  %domain13.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %62, i32 1
  %64 = ptrtoint ptr %domain13.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %domain13.i, align 4
  %valid14.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %62, i32 9
  %65 = ptrtoint ptr %valid14.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %valid14.i, align 4
  %add17.i = add nuw nsw i32 %bit.140.i, 1
  %call18.i = call i32 @_find_next_bit_be(ptr noundef %enc_codecs2.i, i32 noundef 32, i32 noundef %add17.i) #3
  %cmp6.i = icmp ult i32 %call18.i, 32
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.sw.epilog_crit_edge

for.body7.i.sw.epilog_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body7.i

sw.bb7:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr, align 4
  %68 = ptrtoint ptr %max_sessions_supported.i61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %max_sessions_supported.i61, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr, align 4
  %video_domains.i = getelementptr i32, ptr %word.0163, i32 2
  %71 = ptrtoint ptr %video_domains.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %video_domains.i, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rawfmts.i) #3
  %73 = call ptr @memset(ptr %rawfmts.i, i32 0, i32 256)
  %format_entries.i = getelementptr i32, ptr %word.0163, i32 2
  %74 = ptrtoint ptr %format_entries.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %format_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not18.i = icmp eq i32 %75, 0
  br i1 %tobool.not18.i, label %sw.bb9.while.end.i_crit_edge, label %while.body.lr.ph.i

sw.bb9.while.end.i_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %sw.bb9
  %plane_info.i = getelementptr i32, ptr %word.0163, i32 3
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i67.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i63, %if.end.i67.while.body.i_crit_edge ]
  %entries.020.i = phi i32 [ %75, %while.body.lr.ph.i ], [ %dec.i, %if.end.i67.while.body.i_crit_edge ]
  %pinfo.019.i = phi ptr [ %plane_info.i, %while.body.lr.ph.i ], [ %add.ptr5.i, %if.end.i67.while.body.i_crit_edge ]
  %num_planes1.i = getelementptr inbounds %struct.hfi_uncompressed_plane_info, ptr %pinfo.019.i, i32 0, i32 1
  %78 = ptrtoint ptr %num_planes1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_planes1.i, align 4
  %80 = ptrtoint ptr %pinfo.019.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pinfo.019.i, align 4
  %arrayidx.i62 = getelementptr [32 x %struct.raw_formats], ptr %rawfmts.i, i32 0, i32 %i.021.i
  %fmt2.i = getelementptr [32 x %struct.raw_formats], ptr %rawfmts.i, i32 0, i32 %i.021.i, i32 1
  %82 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %fmt2.i, align 4
  %83 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %77, ptr %arrayidx.i62, align 4
  %inc.i63 = add nuw i32 %i.021.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %cmp.i64 = icmp ugt i32 %79, 4
  br i1 %cmp.i64, label %while.body.i.while.end.i_crit_edge, label %if.end.i67

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

if.end.i67:                                       ; preds = %while.body.i
  %mul.i65 = shl nuw nsw i32 %79, 4
  %add.ptr.i = getelementptr i8, ptr %pinfo.019.i, i32 8
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i65
  %dec.i = add i32 %entries.020.i, -1
  %tobool.not.i66 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i66, label %if.end.i67.while.end.i_crit_edge, label %if.end.i67.while.body.i_crit_edge

if.end.i67.while.body.i_crit_edge:                ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end.i67.while.end.i_crit_edge:                 ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i67.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %sw.bb9.while.end.i_crit_edge
  %i.1.i = phi i32 [ 0, %sw.bb9.while.end.i_crit_edge ], [ %inc.i63, %while.body.i.while.end.i_crit_edge ], [ %75, %if.end.i67.while.end.i_crit_edge ]
  %mul.i.i = shl i32 %i.1.i, 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.end.i
  %i.01.i.i = phi i32 [ 0, %while.end.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i
  %valid.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i, i32 9
  %84 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %valid.i.i, align 4, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %domain1.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i, i32 1
  %86 = ptrtoint ptr %domain1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %domain1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %domain.1161)
  %cmp2.i.i = icmp eq i32 %87, %domain.1161
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %89, %codecs.1160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %land.lhs.true4.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

land.lhs.true4.i.i:                               ; preds = %if.end.i.i
  %domain5.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i, i32 1
  %90 = ptrtoint ptr %domain5.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %domain5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %domain.1161)
  %cmp6.i.i = icmp eq i32 %91, %domain.1161
  br i1 %cmp6.i.i, label %if.then7.i.i, label %land.lhs.true4.i.i.for.inc.i.i_crit_edge

land.lhs.true4.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %num_fmts2.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i, i32 7
  %92 = ptrtoint ptr %num_fmts2.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_fmts2.i.i, align 4
  %arrayidx.i17.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i, i32 8, i32 %93
  %94 = call ptr @memcpy(ptr %arrayidx.i17.i, ptr %rawfmts.i, i32 %mul.i.i)
  %95 = load i32, ptr %num_fmts2.i.i, align 4
  %add.i.i = add i32 %95, %i.1.i
  store i32 %add.i.i, ptr %num_fmts2.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %land.lhs.true4.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %parse_raw_formats.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

parse_raw_formats.exit:                           ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rawfmts.i) #3
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.body
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %caps_arr.i)
  %98 = call ptr @memset(ptr %caps_arr.i, i32 0, i32 512)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %97)
  %cmp.i68 = icmp ugt i32 %97, 32
  br i1 %cmp.i68, label %sw.bb10.parse_caps.exit_crit_edge, label %if.end.i70

sw.bb10.parse_caps.exit_crit_edge:                ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  br label %parse_caps.exit

if.end.i70:                                       ; preds = %sw.bb10
  %data1.i = getelementptr i32, ptr %word.0163, i32 2
  %mul.i69 = shl nuw nsw i32 %97, 4
  %99 = call ptr @memcpy(ptr %caps_arr.i, ptr %data1.i, i32 %mul.i69)
  br label %for.body.i.i75

for.body.i.i75:                                   ; preds = %for.inc.i.i89.for.body.i.i75_crit_edge, %if.end.i70
  %i.01.i.i71 = phi i32 [ 0, %if.end.i70 ], [ %inc.i.i87, %for.inc.i.i89.for.body.i.i75_crit_edge ]
  %arrayidx.i.i72 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i71
  %valid.i.i73 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i71, i32 9
  %100 = ptrtoint ptr %valid.i.i73 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %valid.i.i73, align 4, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i.i74 = icmp eq i8 %101, 0
  br i1 %tobool.not.i.i74, label %for.body.i.i75.if.end.i.i81_crit_edge, label %land.lhs.true.i.i78

for.body.i.i75.if.end.i.i81_crit_edge:            ; preds = %for.body.i.i75
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i81

land.lhs.true.i.i78:                              ; preds = %for.body.i.i75
  %domain1.i.i76 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i71, i32 1
  %102 = ptrtoint ptr %domain1.i.i76 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %domain1.i.i76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %domain.1161)
  %cmp2.i.i77 = icmp eq i32 %103, %domain.1161
  br i1 %cmp2.i.i77, label %land.lhs.true.i.i78.for.inc.i.i89_crit_edge, label %land.lhs.true.i.i78.if.end.i.i81_crit_edge

land.lhs.true.i.i78.if.end.i.i81_crit_edge:       ; preds = %land.lhs.true.i.i78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i81

land.lhs.true.i.i78.for.inc.i.i89_crit_edge:      ; preds = %land.lhs.true.i.i78
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i89

if.end.i.i81:                                     ; preds = %land.lhs.true.i.i78.if.end.i.i81_crit_edge, %for.body.i.i75.if.end.i.i81_crit_edge
  %104 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i72, align 4
  %and.i.i79 = and i32 %105, %codecs.1160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool3.not.i.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool3.not.i.i80, label %if.end.i.i81.for.inc.i.i89_crit_edge, label %land.lhs.true4.i.i84

if.end.i.i81.for.inc.i.i89_crit_edge:             ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i89

land.lhs.true4.i.i84:                             ; preds = %if.end.i.i81
  %domain5.i.i82 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i71, i32 1
  %106 = ptrtoint ptr %domain5.i.i82 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %domain5.i.i82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %domain.1161)
  %cmp6.i.i83 = icmp eq i32 %107, %domain.1161
  br i1 %cmp6.i.i83, label %if.then7.i.i86, label %land.lhs.true4.i.i84.for.inc.i.i89_crit_edge

land.lhs.true4.i.i84.for.inc.i.i89_crit_edge:     ; preds = %land.lhs.true4.i.i84
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i89

if.then7.i.i86:                                   ; preds = %land.lhs.true4.i.i84
  call void @__sanitizer_cov_trace_pc() #5
  %num_caps.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i71, i32 3
  %108 = ptrtoint ptr %num_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_caps.i.i, align 4
  %arrayidx.i12.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i71, i32 4, i32 %109
  %110 = call ptr @memcpy(ptr %arrayidx.i12.i, ptr %caps_arr.i, i32 %mul.i69)
  %111 = load i32, ptr %num_caps.i.i, align 4
  %add.i.i85 = add i32 %111, %97
  store i32 %add.i.i85, ptr %num_caps.i.i, align 4
  br label %for.inc.i.i89

for.inc.i.i89:                                    ; preds = %if.then7.i.i86, %land.lhs.true4.i.i84.for.inc.i.i89_crit_edge, %if.end.i.i81.for.inc.i.i89_crit_edge, %land.lhs.true.i.i78.for.inc.i.i89_crit_edge
  %inc.i.i87 = add nuw nsw i32 %i.01.i.i71, 1
  %exitcond.not.i.i88 = icmp eq i32 %inc.i.i87, 32
  br i1 %exitcond.not.i.i88, label %for.inc.i.i89.parse_caps.exit_crit_edge, label %for.inc.i.i89.for.body.i.i75_crit_edge

for.inc.i.i89.for.body.i.i75_crit_edge:           ; preds = %for.inc.i.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i75

for.inc.i.i89.parse_caps.exit_crit_edge:          ; preds = %for.inc.i.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %parse_caps.exit

parse_caps.exit:                                  ; preds = %for.inc.i.i89.parse_caps.exit_crit_edge, %sw.bb10.parse_caps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %caps_arr.i)
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pl_arr.i)
  %112 = call ptr @memset(ptr %pl_arr.i, i32 0, i32 128)
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %114)
  %cmp.i90 = icmp ugt i32 %114, 16
  br i1 %cmp.i90, label %sw.bb11.parse_profile_level.exit_crit_edge, label %if.end.i93

sw.bb11.parse_profile_level.exit_crit_edge:       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %parse_profile_level.exit

if.end.i93:                                       ; preds = %sw.bb11
  %profile_level.i = getelementptr i32, ptr %word.0163, i32 2
  %mul.i91 = shl nuw nsw i32 %114, 3
  %115 = call ptr @memcpy(ptr %pl_arr.i, ptr %profile_level.i, i32 %mul.i91)
  br label %for.body.i.i98

for.body.i.i98:                                   ; preds = %for.inc.i.i112.for.body.i.i98_crit_edge, %if.end.i93
  %i.01.i.i94 = phi i32 [ 0, %if.end.i93 ], [ %inc.i.i110, %for.inc.i.i112.for.body.i.i98_crit_edge ]
  %arrayidx.i.i95 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i94
  %valid.i.i96 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i94, i32 9
  %116 = ptrtoint ptr %valid.i.i96 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %valid.i.i96, align 4, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i.i97 = icmp eq i8 %117, 0
  br i1 %tobool.not.i.i97, label %for.body.i.i98.if.end.i.i104_crit_edge, label %land.lhs.true.i.i101

for.body.i.i98.if.end.i.i104_crit_edge:           ; preds = %for.body.i.i98
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i104

land.lhs.true.i.i101:                             ; preds = %for.body.i.i98
  %domain1.i.i99 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i94, i32 1
  %118 = ptrtoint ptr %domain1.i.i99 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %domain1.i.i99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %domain.1161)
  %cmp2.i.i100 = icmp eq i32 %119, %domain.1161
  br i1 %cmp2.i.i100, label %land.lhs.true.i.i101.for.inc.i.i112_crit_edge, label %land.lhs.true.i.i101.if.end.i.i104_crit_edge

land.lhs.true.i.i101.if.end.i.i104_crit_edge:     ; preds = %land.lhs.true.i.i101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i104

land.lhs.true.i.i101.for.inc.i.i112_crit_edge:    ; preds = %land.lhs.true.i.i101
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i112

if.end.i.i104:                                    ; preds = %land.lhs.true.i.i101.if.end.i.i104_crit_edge, %for.body.i.i98.if.end.i.i104_crit_edge
  %120 = ptrtoint ptr %arrayidx.i.i95 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i.i95, align 4
  %and.i.i102 = and i32 %121, %codecs.1160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i102)
  %tobool3.not.i.i103 = icmp eq i32 %and.i.i102, 0
  br i1 %tobool3.not.i.i103, label %if.end.i.i104.for.inc.i.i112_crit_edge, label %land.lhs.true4.i.i107

if.end.i.i104.for.inc.i.i112_crit_edge:           ; preds = %if.end.i.i104
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i112

land.lhs.true4.i.i107:                            ; preds = %if.end.i.i104
  %domain5.i.i105 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i94, i32 1
  %122 = ptrtoint ptr %domain5.i.i105 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %domain5.i.i105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %domain.1161)
  %cmp6.i.i106 = icmp eq i32 %123, %domain.1161
  br i1 %cmp6.i.i106, label %if.then7.i.i109, label %land.lhs.true4.i.i107.for.inc.i.i112_crit_edge

land.lhs.true4.i.i107.for.inc.i.i112_crit_edge:   ; preds = %land.lhs.true4.i.i107
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i112

if.then7.i.i109:                                  ; preds = %land.lhs.true4.i.i107
  call void @__sanitizer_cov_trace_pc() #5
  %num_pl.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i94, i32 5
  %124 = ptrtoint ptr %num_pl.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_pl.i.i, align 4
  %arrayidx.i11.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i94, i32 6, i32 %125
  %126 = call ptr @memcpy(ptr %arrayidx.i11.i, ptr %pl_arr.i, i32 %mul.i91)
  %127 = load i32, ptr %num_pl.i.i, align 4
  %add.i.i108 = add i32 %127, %114
  store i32 %add.i.i108, ptr %num_pl.i.i, align 4
  br label %for.inc.i.i112

for.inc.i.i112:                                   ; preds = %if.then7.i.i109, %land.lhs.true4.i.i107.for.inc.i.i112_crit_edge, %if.end.i.i104.for.inc.i.i112_crit_edge, %land.lhs.true.i.i101.for.inc.i.i112_crit_edge
  %inc.i.i110 = add nuw nsw i32 %i.01.i.i94, 1
  %exitcond.not.i.i111 = icmp eq i32 %inc.i.i110, 32
  br i1 %exitcond.not.i.i111, label %for.inc.i.i112.parse_profile_level.exit_crit_edge, label %for.inc.i.i112.for.body.i.i98_crit_edge

for.inc.i.i112.for.body.i.i98_crit_edge:          ; preds = %for.inc.i.i112
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i98

for.inc.i.i112.parse_profile_level.exit_crit_edge: ; preds = %for.inc.i.i112
  call void @__sanitizer_cov_trace_pc() #5
  br label %parse_profile_level.exit

parse_profile_level.exit:                         ; preds = %for.inc.i.i112.parse_profile_level.exit_crit_edge, %sw.bb11.parse_profile_level.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pl_arr.i)
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %num_entries1.i = getelementptr i32, ptr %word.0163, i32 2
  %128 = ptrtoint ptr %num_entries1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_entries1.i, align 4
  %130 = add i32 %129, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %130)
  %131 = icmp ult i32 %130, -16
  br i1 %131, label %sw.bb12.sw.epilog_crit_edge, label %while.body.lr.ph.i114

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

while.body.lr.ph.i114:                            ; preds = %sw.bb12
  %data2.i = getelementptr i32, ptr %word.0163, i32 3
  br label %while.body.i115

while.body.i115:                                  ; preds = %if.end8.i.while.body.i115_crit_edge, %while.body.lr.ph.i114
  %dec22.in.i = phi i32 [ %129, %while.body.lr.ph.i114 ], [ %dec22.i, %if.end8.i.while.body.i115_crit_edge ]
  %type.020.i = phi ptr [ %data2.i, %while.body.lr.ph.i114 ], [ %incdec.ptr.i, %if.end8.i.while.body.i115_crit_edge ]
  %dec22.i = add i32 %dec22.in.i, -1
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr, align 4
  %134 = and i32 %133, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %switch.i = icmp eq i32 %134, 2
  br i1 %switch.i, label %while.body.i115.for.body.i.i120_crit_edge, label %while.body.i115.if.end8.i_crit_edge

while.body.i115.if.end8.i_crit_edge:              ; preds = %while.body.i115
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

while.body.i115.for.body.i.i120_crit_edge:        ; preds = %while.body.i115
  br label %for.body.i.i120

for.body.i.i120:                                  ; preds = %for.inc.i.i133.for.body.i.i120_crit_edge, %while.body.i115.for.body.i.i120_crit_edge
  %i.01.i.i116 = phi i32 [ %inc.i.i131, %for.inc.i.i133.for.body.i.i120_crit_edge ], [ 0, %while.body.i115.for.body.i.i120_crit_edge ]
  %arrayidx.i.i117 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i116
  %valid.i.i118 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i116, i32 9
  %135 = ptrtoint ptr %valid.i.i118 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %valid.i.i118, align 4, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i.i119 = icmp eq i8 %136, 0
  br i1 %tobool.not.i.i119, label %for.body.i.i120.if.end.i.i126_crit_edge, label %land.lhs.true.i.i123

for.body.i.i120.if.end.i.i126_crit_edge:          ; preds = %for.body.i.i120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i126

land.lhs.true.i.i123:                             ; preds = %for.body.i.i120
  %domain1.i.i121 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i116, i32 1
  %137 = ptrtoint ptr %domain1.i.i121 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %domain1.i.i121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %domain.1161)
  %cmp2.i.i122 = icmp eq i32 %138, %domain.1161
  br i1 %cmp2.i.i122, label %land.lhs.true.i.i123.for.inc.i.i133_crit_edge, label %land.lhs.true.i.i123.if.end.i.i126_crit_edge

land.lhs.true.i.i123.if.end.i.i126_crit_edge:     ; preds = %land.lhs.true.i.i123
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i126

land.lhs.true.i.i123.for.inc.i.i133_crit_edge:    ; preds = %land.lhs.true.i.i123
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i133

if.end.i.i126:                                    ; preds = %land.lhs.true.i.i123.if.end.i.i126_crit_edge, %for.body.i.i120.if.end.i.i126_crit_edge
  %139 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i117, align 4
  %and.i.i124 = and i32 %140, %codecs.1160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool3.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool3.not.i.i125, label %if.end.i.i126.for.inc.i.i133_crit_edge, label %land.lhs.true4.i.i129

if.end.i.i126.for.inc.i.i133_crit_edge:           ; preds = %if.end.i.i126
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i133

land.lhs.true4.i.i129:                            ; preds = %if.end.i.i126
  %domain5.i.i127 = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i116, i32 1
  %141 = ptrtoint ptr %domain5.i.i127 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %domain5.i.i127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %domain.1161)
  %cmp6.i.i128 = icmp eq i32 %142, %domain.1161
  br i1 %cmp6.i.i128, label %if.then7.i.i130, label %land.lhs.true4.i.i129.for.inc.i.i133_crit_edge

land.lhs.true4.i.i129.for.inc.i.i133_crit_edge:   ; preds = %land.lhs.true4.i.i129
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i133

if.then7.i.i130:                                  ; preds = %land.lhs.true4.i.i129
  %143 = ptrtoint ptr %type.020.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %type.020.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777219, i32 %144)
  %cmp.i.i = icmp eq i32 %144, 16777219
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then7.i.i130.for.inc.i.i133_crit_edge

if.then7.i.i130.for.inc.i.i133_crit_edge:         ; preds = %if.then7.i.i130
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i133

if.then.i.i:                                      ; preds = %if.then7.i.i130
  call void @__sanitizer_cov_trace_pc() #5
  %cap_bufs_mode_dynamic.i.i = getelementptr %struct.hfi_plat_caps, ptr %caps.i113, i32 %i.01.i.i116, i32 2
  %145 = ptrtoint ptr %cap_bufs_mode_dynamic.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %cap_bufs_mode_dynamic.i.i, align 4
  br label %for.inc.i.i133

for.inc.i.i133:                                   ; preds = %if.then.i.i, %if.then7.i.i130.for.inc.i.i133_crit_edge, %land.lhs.true4.i.i129.for.inc.i.i133_crit_edge, %if.end.i.i126.for.inc.i.i133_crit_edge, %land.lhs.true.i.i123.for.inc.i.i133_crit_edge
  %inc.i.i131 = add nuw nsw i32 %i.01.i.i116, 1
  %exitcond.not.i.i132 = icmp eq i32 %inc.i.i131, 32
  br i1 %exitcond.not.i.i132, label %for.inc.i.i133.if.end8.i_crit_edge, label %for.inc.i.i133.for.body.i.i120_crit_edge

for.inc.i.i133.for.body.i.i120_crit_edge:         ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i120

for.inc.i.i133.if.end8.i_crit_edge:               ; preds = %for.inc.i.i133
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.inc.i.i133.if.end8.i_crit_edge, %while.body.i115.if.end8.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %type.020.i, i32 1
  %tobool.not.i134 = icmp eq i32 %dec22.i, 0
  br i1 %tobool.not.i134, label %if.end8.i.sw.epilog_crit_edge, label %if.end8.i.while.body.i115_crit_edge

if.end8.i.while.body.i115_crit_edge:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i115

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8.i.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %parse_profile_level.exit, %parse_caps.exit, %parse_raw_formats.exit, %sw.bb8, %sw.bb7, %for.body7.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  %codecs.2 = phi i32 [ %codecs.1160, %while.body.sw.epilog_crit_edge ], [ %codecs.1160, %parse_profile_level.exit ], [ %codecs.1160, %parse_caps.exit ], [ %codecs.1160, %parse_raw_formats.exit ], [ %70, %sw.bb8 ], [ %codecs.1160, %sw.bb7 ], [ %codecs.1160, %for.end.i.sw.epilog_crit_edge ], [ %codecs.1160, %sw.bb12.sw.epilog_crit_edge ], [ %codecs.1160, %for.body7.i.sw.epilog_crit_edge ], [ %codecs.1160, %if.end8.i.sw.epilog_crit_edge ]
  %domain.2 = phi i32 [ %domain.1161, %while.body.sw.epilog_crit_edge ], [ %domain.1161, %parse_profile_level.exit ], [ %domain.1161, %parse_caps.exit ], [ %domain.1161, %parse_raw_formats.exit ], [ %72, %sw.bb8 ], [ %domain.1161, %sw.bb7 ], [ %domain.1161, %for.end.i.sw.epilog_crit_edge ], [ %domain.1161, %sw.bb12.sw.epilog_crit_edge ], [ %domain.1161, %for.body7.i.sw.epilog_crit_edge ], [ %domain.1161, %if.end8.i.sw.epilog_crit_edge ]
  %dec = add nsw i32 %words_count.0162, -1
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end5.while.end_crit_edge
  %codecs.1.lcssa = phi i32 [ %codecs.0, %if.end5.while.end_crit_edge ], [ %codecs.2, %sw.epilog.while.end_crit_edge ]
  %max_sessions_supported = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 41
  %146 = ptrtoint ptr %max_sessions_supported to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_sessions_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool13.not = icmp eq i32 %147, 0
  br i1 %tobool13.not, label %if.then14, label %while.end.if.end16_crit_edge

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %148 = ptrtoint ptr %max_sessions_supported to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 16, ptr %max_sessions_supported, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.end.if.end16_crit_edge
  br i1 %tobool.not.i46, label %if.end16.cleanup_crit_edge, label %lor.lhs.false.i140

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i140:                               ; preds = %if.end16
  %core.i136 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %149 = ptrtoint ptr %core.i136 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %core.i136, align 4
  %res.i137 = getelementptr inbounds %struct.venus_core, ptr %150, i32 0, i32 22
  %151 = ptrtoint ptr %res.i137 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %res.i137, align 4
  %hfi_version.i138 = getelementptr inbounds %struct.venus_resources, ptr %152, i32 0, i32 20
  %153 = ptrtoint ptr %hfi_version.i138 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %hfi_version.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i139 = icmp eq i32 %154, 0
  br i1 %cmp.i139, label %if.end.i142, label %lor.lhs.false.i140.cleanup_crit_edge

lor.lhs.false.i140.cleanup_crit_edge:             ; preds = %lor.lhs.false.i140
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i142:                                      ; preds = %lor.lhs.false.i140
  %caps2.i = getelementptr inbounds %struct.venus_core, ptr %150, i32 0, i32 45
  %session_type.i141 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %155 = ptrtoint ptr %session_type.i141 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %session_type.i141, align 4
  br label %for.body.i145

for.body.i145:                                    ; preds = %for.inc.i.for.body.i145_crit_edge, %if.end.i142
  %i.01.i = phi i32 [ 0, %if.end.i142 ], [ %inc.i148, %for.inc.i.for.body.i145_crit_edge ]
  %arrayidx.i143 = getelementptr %struct.hfi_plat_caps, ptr %caps2.i, i32 %i.01.i
  %157 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i143, align 4
  %and.i = and i32 %158, %codecs.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i144 = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i144, label %for.body.i145.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i145.for.inc.i_crit_edge:                ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i145
  %domain5.i = getelementptr %struct.hfi_plat_caps, ptr %caps2.i, i32 %i.01.i, i32 1
  %159 = ptrtoint ptr %domain5.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %domain5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %156)
  %cmp6.i146 = icmp eq i32 %160, %156
  br i1 %cmp6.i146, label %if.then7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %valid.i147 = getelementptr %struct.hfi_plat_caps, ptr %caps2.i, i32 %i.01.i, i32 9
  %161 = ptrtoint ptr %valid.i147 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %valid.i147, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i145.for.inc.i_crit_edge
  %inc.i148 = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i148, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i145_crit_edge

for.inc.i.for.body.i145_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i145

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %lor.lhs.false.i140.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hfi_platform_parser.exit
  %retval.0 = phi i32 [ 0, %hfi_platform_parser.exit ], [ 4, %if.end.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %lor.lhs.false.i140.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfi_platform_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
