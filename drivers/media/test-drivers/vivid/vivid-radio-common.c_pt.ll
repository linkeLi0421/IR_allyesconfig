; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-radio-common.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-radio-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.95 = type { ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.98, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.99 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.90 }
%union.anon.90 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.100, i32, i32 }
%union.anon.100 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@vivid_radio_bands = dso_local constant { [3 x %struct.v4l2_frequency_band], [32 x i8] } { [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1041, i32 1024000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1025, i32 8320, i32 27360, i32 8, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 2, i32 1025, i32 36800, i32 417600, i32 8, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"vivid_radio_bands\00", align 1
@___asan_gen_.2 = private constant [57 x i8] c"../drivers/media/test-drivers/vivid/vivid-radio-common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 23, i32 34 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @vivid_radio_bands], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_radio_bands to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_radio_rds_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rds_gen = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334
  %radio_rx_rds_use_alternates = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 342
  %0 = ptrtoint ptr %radio_rx_rds_use_alternates to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio_rx_rds_use_alternates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %radio_rds_loop = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 350
  %2 = ptrtoint ptr %radio_rds_loop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_rds_loop, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %radio_tx_rds_controls = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 347
  %4 = ptrtoint ptr %radio_tx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_tx_rds_controls, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %radio_tx_rds_pi = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 114
  %6 = ptrtoint ptr %radio_tx_rds_pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %radio_tx_rds_pi, align 4
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %11, i32 noundef 0) #4
  %12 = ptrtoint ptr %radio_tx_rds_pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %radio_tx_rds_pi, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur, align 8
  %conv = trunc i32 %15 to i16
  %picode = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 2
  %16 = ptrtoint ptr %picode to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %picode, align 2
  %radio_tx_rds_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 115
  %17 = ptrtoint ptr %radio_tx_rds_pty to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %radio_tx_rds_pty, align 8
  %cur7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %cur7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur7, align 8
  %conv9 = trunc i32 %20 to i8
  %pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 3
  %21 = ptrtoint ptr %pty to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9, ptr %pty, align 2
  %radio_tx_rds_mono_stereo = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 116
  %22 = ptrtoint ptr %radio_tx_rds_mono_stereo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %radio_tx_rds_mono_stereo, align 4
  %cur10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %cur10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12 = icmp ne i32 %25, 0
  %mono_stereo = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 4
  %frombool13 = zext i1 %tobool12 to i8
  %26 = ptrtoint ptr %mono_stereo to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool13, ptr %mono_stereo, align 1
  %radio_tx_rds_art_head = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 117
  %27 = ptrtoint ptr %radio_tx_rds_art_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %radio_tx_rds_art_head, align 8
  %cur14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %cur14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16 = icmp ne i32 %30, 0
  %art_head = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 5
  %frombool17 = zext i1 %tobool16 to i8
  %31 = ptrtoint ptr %art_head to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool17, ptr %art_head, align 2
  %radio_tx_rds_compressed = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 118
  %32 = ptrtoint ptr %radio_tx_rds_compressed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %radio_tx_rds_compressed, align 4
  %cur18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %cur18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20 = icmp ne i32 %35, 0
  %compressed = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 6
  %frombool21 = zext i1 %tobool20 to i8
  %36 = ptrtoint ptr %compressed to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool21, ptr %compressed, align 1
  %radio_tx_rds_dyn_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 119
  %37 = ptrtoint ptr %radio_tx_rds_dyn_pty to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %radio_tx_rds_dyn_pty, align 8
  %cur22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 23
  %39 = ptrtoint ptr %cur22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool24 = icmp ne i32 %40, 0
  %dyn_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 7
  %frombool25 = zext i1 %tobool24 to i8
  %41 = ptrtoint ptr %dyn_pty to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool25, ptr %dyn_pty, align 2
  %radio_tx_rds_ta = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 120
  %42 = ptrtoint ptr %radio_tx_rds_ta to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %radio_tx_rds_ta, align 4
  %cur26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 23
  %44 = ptrtoint ptr %cur26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cur26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool28 = icmp ne i32 %45, 0
  %ta = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 8
  %frombool29 = zext i1 %tobool28 to i8
  %46 = ptrtoint ptr %ta to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool29, ptr %ta, align 1
  %radio_tx_rds_tp = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 121
  %47 = ptrtoint ptr %radio_tx_rds_tp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %radio_tx_rds_tp, align 8
  %cur30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 23
  %49 = ptrtoint ptr %cur30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cur30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool32 = icmp ne i32 %50, 0
  %tp = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 9
  %frombool33 = zext i1 %tobool32 to i8
  %51 = ptrtoint ptr %tp to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool33, ptr %tp, align 2
  %radio_tx_rds_ms = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 122
  %52 = ptrtoint ptr %radio_tx_rds_ms to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %radio_tx_rds_ms, align 4
  %cur34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 23
  %54 = ptrtoint ptr %cur34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool36 = icmp ne i32 %55, 0
  %ms = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 10
  %frombool37 = zext i1 %tobool36 to i8
  %56 = ptrtoint ptr %ms to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool37, ptr %ms, align 1
  %psname = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 11
  %radio_tx_rds_psname = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 123
  %57 = ptrtoint ptr %radio_tx_rds_psname to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %radio_tx_rds_psname, align 8
  %p_cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %58, i32 0, i32 26
  %59 = ptrtoint ptr %p_cur to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p_cur, align 4
  %call = tail call i32 @strscpy(ptr noundef %psname, ptr noundef %60, i32 noundef 9) #4
  %radiotext = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 12
  %radio_tx_rds_radiotext = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 124
  %61 = ptrtoint ptr %radio_tx_rds_radiotext to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %radio_tx_rds_radiotext, align 4
  %p_cur39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 26
  %63 = ptrtoint ptr %p_cur39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p_cur39, align 4
  %mul = select i1 %tobool, i32 64, i32 0
  %add.ptr = getelementptr i8, ptr %64, i32 %mul
  %call42 = tail call i32 @strscpy(ptr noundef %radiotext, ptr noundef %add.ptr, i32 noundef 65) #4
  %65 = ptrtoint ptr %radio_tx_rds_pi to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %radio_tx_rds_pi, align 4
  %handler.i125 = getelementptr inbounds %struct.v4l2_ctrl, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %handler.i125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %handler.i125, align 8
  %lock.i126 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %lock.i126 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock.i126, align 4
  tail call void @mutex_unlock(ptr noundef %70) #4
  br label %if.end45

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %radio_rx_freq = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 335
  %71 = ptrtoint ptr %radio_rx_freq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %radio_rx_freq, align 8
  tail call void @vivid_rds_gen_fill(ptr noundef %rds_gen, i32 noundef %72, i1 noundef zeroext %tobool) #4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then5
  %radio_rx_rds_controls = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 340
  %73 = ptrtoint ptr %radio_rx_rds_controls to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %radio_rx_rds_controls, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool46.not = icmp eq i8 %74, 0
  br i1 %tobool46.not, label %if.end45.if.end76_crit_edge, label %if.then47

if.end45.if.end76_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then47:                                        ; preds = %if.end45
  %radio_rx_rds_pty = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 125
  %75 = ptrtoint ptr %radio_rx_rds_pty to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %radio_rx_rds_pty, align 8
  %pty48 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 3
  %77 = ptrtoint ptr %pty48 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pty48, align 2
  %conv49 = zext i8 %78 to i32
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %76, i32 0, i32 2
  %79 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %82, i32 noundef 0) #4
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %76, i32 noundef %conv49) #4
  %83 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %86) #4
  %radio_rx_rds_ta = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 126
  %87 = ptrtoint ptr %radio_rx_rds_ta to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %radio_rx_rds_ta, align 4
  %ta51 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 8
  %89 = ptrtoint ptr %ta51 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ta51, align 1, !range !11
  %91 = zext i8 %90 to i32
  %handler.i.i127 = getelementptr inbounds %struct.v4l2_ctrl, ptr %88, i32 0, i32 2
  %92 = ptrtoint ptr %handler.i.i127 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %handler.i.i127, align 8
  %lock.i.i128 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %lock.i.i128 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lock.i.i128, align 4
  tail call void @mutex_lock_nested(ptr noundef %95, i32 noundef 0) #4
  %call.i129 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %88, i32 noundef %91) #4
  %96 = ptrtoint ptr %handler.i.i127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %handler.i.i127, align 8
  %lock.i2.i130 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %lock.i2.i130 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lock.i2.i130, align 4
  tail call void @mutex_unlock(ptr noundef %99) #4
  %radio_rx_rds_tp = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 127
  %100 = ptrtoint ptr %radio_rx_rds_tp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %radio_rx_rds_tp, align 8
  %tp55 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 9
  %102 = ptrtoint ptr %tp55 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %tp55, align 2, !range !11
  %104 = zext i8 %103 to i32
  %handler.i.i131 = getelementptr inbounds %struct.v4l2_ctrl, ptr %101, i32 0, i32 2
  %105 = ptrtoint ptr %handler.i.i131 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %handler.i.i131, align 8
  %lock.i.i132 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %lock.i.i132 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lock.i.i132, align 4
  tail call void @mutex_lock_nested(ptr noundef %108, i32 noundef 0) #4
  %call.i133 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %101, i32 noundef %104) #4
  %109 = ptrtoint ptr %handler.i.i131 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %handler.i.i131, align 8
  %lock.i2.i134 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %lock.i2.i134 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %lock.i2.i134, align 4
  tail call void @mutex_unlock(ptr noundef %112) #4
  %radio_rx_rds_ms = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 128
  %113 = ptrtoint ptr %radio_rx_rds_ms to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %radio_rx_rds_ms, align 4
  %ms59 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 10
  %115 = ptrtoint ptr %ms59 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ms59, align 1, !range !11
  %117 = zext i8 %116 to i32
  %handler.i.i135 = getelementptr inbounds %struct.v4l2_ctrl, ptr %114, i32 0, i32 2
  %118 = ptrtoint ptr %handler.i.i135 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %handler.i.i135, align 8
  %lock.i.i136 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %lock.i.i136 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %lock.i.i136, align 4
  tail call void @mutex_lock_nested(ptr noundef %121, i32 noundef 0) #4
  %call.i137 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %114, i32 noundef %117) #4
  %122 = ptrtoint ptr %handler.i.i135 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %handler.i.i135, align 8
  %lock.i2.i138 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %lock.i2.i138 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %lock.i2.i138, align 4
  tail call void @mutex_unlock(ptr noundef %125) #4
  %radio_rx_rds_psname = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 129
  %126 = ptrtoint ptr %radio_rx_rds_psname to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %radio_rx_rds_psname, align 8
  %psname63 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 11
  %handler.i.i139 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %handler.i.i139 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %handler.i.i139, align 8
  %lock.i.i140 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %lock.i.i140 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lock.i.i140, align 4
  tail call void @mutex_lock_nested(ptr noundef %131, i32 noundef 0) #4
  %call.i141 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %127, ptr noundef %psname63) #4
  %132 = ptrtoint ptr %handler.i.i139 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %handler.i.i139, align 8
  %lock.i2.i142 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %lock.i2.i142 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %lock.i2.i142, align 4
  tail call void @mutex_unlock(ptr noundef %135) #4
  %radio_rx_rds_radiotext = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 130
  %136 = ptrtoint ptr %radio_rx_rds_radiotext to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %radio_rx_rds_radiotext, align 4
  %radiotext66 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 334, i32 12
  %handler.i.i143 = getelementptr inbounds %struct.v4l2_ctrl, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %handler.i.i143 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %handler.i.i143, align 8
  %lock.i.i144 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %lock.i.i144 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %lock.i.i144, align 4
  tail call void @mutex_lock_nested(ptr noundef %141, i32 noundef 0) #4
  %call.i145 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %137, ptr noundef %radiotext66) #4
  %142 = ptrtoint ptr %handler.i.i143 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %handler.i.i143, align 8
  %lock.i2.i146 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %lock.i2.i146 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lock.i2.i146, align 4
  tail call void @mutex_unlock(ptr noundef %145) #4
  %146 = ptrtoint ptr %radio_rds_loop to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %radio_rds_loop, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool70.not = icmp eq i8 %147, 0
  br i1 %tobool70.not, label %if.then71, label %if.then47.if.end76_crit_edge

if.then47.if.end76_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then71:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #6
  %148 = ptrtoint ptr %radio_rx_rds_use_alternates to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %radio_rx_rds_use_alternates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool73.not = icmp eq i32 %149, 0
  %lnot.ext = zext i1 %tobool73.not to i32
  %150 = ptrtoint ptr %radio_rx_rds_use_alternates to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %lnot.ext, ptr %radio_rx_rds_use_alternates, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.then47.if.end76_crit_edge, %if.end45.if.end76_crit_edge
  tail call void @vivid_rds_generate(ptr noundef %rds_gen) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_rds_gen_fill(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_rds_generate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_radio_g_frequency(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %pfreq, ptr nocapture noundef %vf) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %pfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pfreq, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_s_frequency(ptr noundef %file, ptr nocapture noundef writeonly %pfreq, ptr nocapture noundef readonly %vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #4
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720799, i32 %5)
  %cmp1 = icmp ugt i32 %5, 720799
  call void @__sanitizer_cov_trace_const_cmp4(i32 32081, i32 %5)
  %cmp4 = icmp ult i32 %5, 32081
  %. = select i1 %cmp4, i32 1, i32 2
  %band.0 = select i1 %cmp1, i32 0, i32 %.
  %rangelow = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %band.0, i32 4
  %6 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rangelow, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %rangehigh = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %band.0, i32 5
  %9 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rangehigh, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %12 = ptrtoint ptr %pfreq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pfreq, align 4
  %radio_rx_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 335
  %13 = ptrtoint ptr %radio_rx_freq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %radio_rx_freq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 27361, i32 %14)
  %cmp.i = icmp ult i32 %14, 27361
  %spec.select.i = select i1 %cmp.i, i32 80, i32 800
  %spec.select55.i = select i1 %cmp.i, i32 1600, i32 16000
  %add.i = add i32 %spec.select.i, %14
  %rem.i = urem i32 %add.i, %spec.select55.i
  %sub.i = sub nsw i32 %rem.i, %spec.select.i
  %has_radio_tx.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 70
  %15 = ptrtoint ptr %has_radio_tx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_radio_tx.i, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.if.end6.thread.i_crit_edge, label %if.end6.i

if.end.if.end6.thread.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.thread.i

if.end6.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %radio_tx_freq.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 345
  %17 = ptrtoint ptr %radio_tx_freq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %radio_tx_freq.i, align 8
  %sub5.i = sub i32 %14, %18
  %19 = tail call i32 @llvm.abs.i32(i32 %sub5.i, i1 false) #4
  br label %if.end6.thread.i

if.end6.thread.i:                                 ; preds = %if.end6.i, %if.end.if.end6.thread.i_crit_edge
  %sig_qual_tx.060.i = phi i32 [ 16000, %if.end.if.end6.thread.i_crit_edge ], [ %sub5.i, %if.end6.i ]
  %20 = phi i32 [ 16000, %if.end.if.end6.thread.i_crit_edge ], [ %19, %if.end6.i ]
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp17.not.i = icmp sgt i32 %20, %21
  %radio_rds_loop26.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 350
  br i1 %cmp17.not.i, label %if.end6.thread.i.vivid_radio_calc_sig_qual.exit_crit_edge, label %if.then18.i

if.end6.thread.i.vivid_radio_calc_sig_qual.exit_crit_edge: ; preds = %if.end6.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vivid_radio_calc_sig_qual.exit

if.then18.i:                                      ; preds = %if.end6.thread.i
  %22 = ptrtoint ptr %radio_rds_loop26.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %radio_rds_loop26.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not.i = icmp eq i8 %23, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i, label %if.then18.i.if.end22.i_crit_edge

if.then18.i.if.end22.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.then18.i
  %radio_tx_rds_controls.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 347
  %24 = ptrtoint ptr %radio_tx_rds_controls.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %radio_tx_rds_controls.i, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not.i = icmp eq i8 %25, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %land.lhs.true.i.if.end22.i_crit_edge

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %rds_gen.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 334
  %26 = call ptr @memset(ptr %rds_gen.i, i32 0, i32 684)
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.then18.i.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023999, i32 %14)
  %cmp24.i = icmp ugt i32 %14, 1023999
  %frombool.i = zext i1 %cmp24.i to i8
  br label %vivid_radio_calc_sig_qual.exit

vivid_radio_calc_sig_qual.exit:                   ; preds = %if.end22.i, %if.end6.thread.i.vivid_radio_calc_sig_qual.exit_crit_edge
  %.sink.i = phi i8 [ %frombool.i, %if.end22.i ], [ 0, %if.end6.thread.i.vivid_radio_calc_sig_qual.exit_crit_edge ]
  %sig_qual.0.i = phi i32 [ %sig_qual_tx.060.i, %if.end22.i ], [ %sub.i, %if.end6.thread.i.vivid_radio_calc_sig_qual.exit_crit_edge ]
  %27 = ptrtoint ptr %radio_rds_loop26.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink.i, ptr %radio_rds_loop26.i, align 4
  %mul.i = mul i32 %sig_qual.0.i, 10
  %spec.select56.i = select i1 %cmp.i, i32 %mul.i, i32 %sig_qual.0.i
  %radio_rx_sig_qual.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 337
  %28 = ptrtoint ptr %radio_rx_sig_qual.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select56.i, ptr %radio_rx_sig_qual.i, align 8
  tail call void @vivid_radio_rds_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %vivid_radio_calc_sig_qual.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vivid_radio_calc_sig_qual.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @vivid_radio_bands, !1, !"vivid_radio_bands", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-radio-common.c", i32 23, i32 34}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
